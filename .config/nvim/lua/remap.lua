-- [[ Set up keymaps ]] See `:h vim.keymap.set()`, `:h mapping`, `:h keycodes`

-- Use <Esc> to exit terminal mode
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')


-- Map <C-j>, <C-k>, <C-h>, <C-l> to navigate between windows in any modes
vim.keymap.set({ 'n' }, '<C-h>', '<C-w>h')
vim.keymap.set({ 'n' }, '<C-j>', '<C-w>j')
vim.keymap.set({ 'n' }, '<C-k>', '<C-w>k')
vim.keymap.set({ 'n' }, '<C-l>', '<C-w>l')
vim.keymap.set({ 't', 'i' }, '<C-h>', '<C-\\><C-n><C-h>')
vim.keymap.set({ 't', 'i' }, '<C-j>', '<C-\\><C-n><C-j>')
vim.keymap.set({ 't', 'i' }, '<C-k>', '<C-\\><C-n><C-k>')
vim.keymap.set({ 't', 'i' }, '<C-l>', '<C-\\><C-n><C-l>')

