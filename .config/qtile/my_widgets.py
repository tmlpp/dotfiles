from libqtile import widget
from datetime import datetime, timezone
from pathlib import Path
from zoneinfo import ZoneInfo

import requests
import subprocess


class NordPoolPrice(widget.base.ThreadPoolText):

    defaults = [
        ('update_interval', 60.0, 'Update interval for Nord Pool electricity price widget'),
        ('format', '⚡{flag} {price} c/kWh', 'Electricity price widget format'),
        ('vat_percent', 0, 'VAT percentage to be added'),
        ('energy_tax', 0, 'Energy tax amount'),
        ('transfer_fee', 0, 'Electrisity transfer fee'),
        ('area', 'fi', 'Nord Pool market area'),
        ('notify_price_change', False, 'Whether to show notification when price changes'),
    ]

    flags = {'ee': '🇪🇪', 'fi':'🇫🇮', 'lv': '🇱🇻', 'lt': '🇱🇹'}

    class FetchError(Exception):
        """Custom exception for API fetching errors."""
        pass


    def fetch_current_price(self) -> float:
        try:
            res = requests.get(f'https://dashboard.elering.ee/api/nps/price/{self.area.upper()}/current')
            res.raise_for_status()
            data = res.json()['data'][0]
            net_energy_price = data['price']
        except Exception as e:
            raise self.FetchError(f'Failed to fetch value: {e}')
        return net_energy_price


    def calculate_total_price(self, net_price: float) -> float:
        net_total = net_price / 10 + self.transfer_fee + self.energy_tax
        gross_total = round(net_total * (1 + self.vat_percent / 100), 2)
        return gross_total


    def price_change_notification(self, price: float):
        path = Path("/tmp/qtile_nordpool_price")
        new_price = str(price)

        if path.exists() and path.stat().st_size > 0:
            old_price = path.read_text().strip()
            if old_price == new_price:
                return
            if old_price < new_price:
                subprocess.run(['notify-send',
                                '-u', 'low',
                                '-t', '3000',
                                'Nordpool Widget', f'{old_price} ↗️ {new_price}'])
            else:
                subprocess.run(['notify-send',
                                '-u', 'low',
                                '-t', '3000',
                                'Nordpool Widget', f'{old_price} ↘️ {new_price}'])
            path.write_text(str(new_price))


    def poll(self):
        try:
            net_eur_per_MWh = self.fetch_current_price()
        except self.FetchError:
            return self.format.format(flag = self.flags[self.area], price = '-----')
        gross_total = self.calculate_total_price(net_eur_per_MWh)
        if self.notify_price_change:
            self.price_change_notification(gross_total)
        return self.format.format(flag = self.flags[self.area], price = gross_total)


    def __init__(self, **config):
        super().__init__("", **config)
        self.add_defaults(NordPoolPrice.defaults)

