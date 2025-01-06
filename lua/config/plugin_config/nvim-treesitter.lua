-- lua/treesitter.lua

require('nvim-treesitter.configs').setup {
    -- List of parser names, or "all"
    ensure_installed = {
        "c",
        "cpp",
        "lua",
        "python",
        "javascript",
        "typescript",
        "html",
        "css",
        "rust",
        "go",
        "java",
        "json",
        "yaml",
        -- Add more languages as needed
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    -- Highlighting configuration
    highlight = {
        enable = true,              -- Enable syntax highlighting
        additional_vim_regex_highlighting = false, -- Disable Vim's regex-based highlighting
    },

    -- Indentation configuration
    indent = {
        enable = true,              -- Enable treesitter-based indentation
        disable = { "python" },     -- Disable for specific languages if needed
    },

    -- Incremental selection configuration
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    -- Textobjects configuration
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj
            keymaps = {
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- Set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>a"] = "@parameter.inner",
            },
            swap_previous = {
                ["<leader>A"] = "@parameter.inner",
            },
        },
    },

    -- Additional modules can be configured here
}

