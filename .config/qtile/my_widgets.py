from libqtile import widget
from datetime import datetime, timezone
from zoneinfo import ZoneInfo
import requests

def convert_nord_pool_price(price, vat = 0.0):
    return round(price / 1000 * 100 * (1 + vat / 100), 2)


flags = {'ee': '🇪🇪', 'fi':'🇫🇮', 'lv': '🇱🇻', 'lt': '🇱🇹'}

class Nord_Pool_Current(widget.base.ThreadPoolText):
    defaults = [
        ('update_interval', 60.0, 'Update interval for Nord Pool electricity price widget'),
        ('format', '⚡{flag} {price} c/kWh', 'Bus stop widget format'),
        ('vat_percent', 0, 'VAT percentage to be added'),
        ('area', 'fi', 'Nord Pool market area'),
    ]

    def fetch_current_price(self):
        data = requests.get(f'https://dashboard.elering.ee/api/nps/price/{self.area.upper()}/current').json()
        return convert_nord_pool_price(data['data'][0]['price'], vat = self.vat_percent)


    def poll(self):
        price = self.fetch_current_price()
        return self.format.format(flag = flags[self.area], price = price)


    def __init__(self, **config):
        super().__init__("", **config)
        self.add_defaults(Nord_Pool_Current.defaults)

