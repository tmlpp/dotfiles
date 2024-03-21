return {
	'nvim-neorg/neorg',
	build = ':Neorg sync-parsers',
	lazy = false,
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('neorg').setup({
			load = {
				['core.defaults'] = {},
				['core.concealer'] = {
					config = {
            icons = {
              heading =  {
                icons = {'■'}
              }
            }
					},
				},
				['core.dirman'] = {
					config = {
						workspaces = {
							notes = '~/syncdir/neorg',
						},
					},
				},
			},
		})
	end,
}
