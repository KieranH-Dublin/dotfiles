local remap = require("remap")

return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys=get_telescope_remaps(),
    config=function()
        require("telescope").setup()
    end,
}
