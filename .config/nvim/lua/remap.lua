-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- Navigate windows with <Control-direction>
vim.keymap.set({ 'n' }, '<C-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<C-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<C-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<C-l>', '<C-w>l')
vim.keymap.set({ 't', 'i' }, '<C-h>', '<C-\\><C-n><C-h>')
vim.keymap.set({ 't', 'i' }, '<C-j>', '<C-\\><C-n><C-j>')
vim.keymap.set({ 't', 'i' }, '<C-k>', '<C-\\><C-n><C-k>')
vim.keymap.set({ 't', 'i' }, '<C-l>', '<C-\\><C-n><C-l>')

function get_telescope_remaps()
	return	{
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope find files" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope live grep" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope buffers" },
		{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope help tags" },
	}
end

function get_harpoon_remaps(harpoon)
	return	{
		{"<leader>ha", function() harpoon:list():add() end},
		{"<leader>hf", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end},

		{"<leader>hy", function() harpoon:list():select(1) end},
		{"<leader>hu", function() harpoon:list():select(2) end},
		{"<leader>hi", function() harpoon:list():select(3) end},
		{"<leader>ho", function() harpoon:list():select(4) end},

		-- Toggle previous & next buffers stored within Harpoon list
		{"<leader>hb", function() harpoon:list():prev() end},
		{"<leader>hn", function() harpoon:list():next() end},
	}
end

