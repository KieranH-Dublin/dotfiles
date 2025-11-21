return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { 
                "pyright",
                "ruff",
                "cssls",
                "html",
                "dockerls",
                "docker_compose_language_service",
                "postgres_lsp",
                "marksman",
                "jsonls",
                "jqls",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}

