local remap = require("remap")

return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        remaps = get_harpoon_remaps(harpoon)

        for _, mapping in ipairs(remaps) do
            vim.api.nvim_set_keymap(
                "n",
                mapping[1],
                "",
                {noremap = true, silent = true, callback = mapping[2]}
            )
        end
    end
}

