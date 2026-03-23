return {
	{
	  "yetone/avante.nvim",
	  event = "VeryLazy",
	  lazy = false,
	  version = false, -- set this if you want to always pull the latest change
	  opts = {
		-- add any opts here
        provider = "openai",
        mode = "legacy",
        providers = {
          openai = {
            endpoint = "https://api.openai.com/v1",
            -- model = "gpt-4.1-mini",
            model = "gpt-5.1",
            -- api_version = "gpt-4.1-2025-04-14",
            api_version = "gpt-5.1-2025-11-13",
            timeout = 30000,
            -- disable_tools = true,
            disable_tools = false,
            extra_request_body = {
              temperature = 0,
              -- max_tokens = 32768,
              max_completion_tokens = 32768,
            },
          },
        },
	  },
	  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	  build = "make",
	  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	  dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		"zbirenbaum/copilot.lua", -- for providers='copilot'
		{
		  -- support for image pasting
		  "HakonHarnes/img-clip.nvim",
		  event = "VeryLazy",
		  opts = {
			-- recommended settings
			default = {
			  embed_image_as_base64 = false,
			  prompt_for_file_name = false,
			  drag_and_drop = {
				insert_mode = true,
			  },
			  -- required for Windows users
			  use_absolute_path = true,
			},
		  },
		},
		{
		  -- Make sure to set this up properly if you have lazy=true
		  'MeanderingProgrammer/render-markdown.nvim',
		  opts = {
			file_types = { "markdown", "Avante" },
		  },
		  ft = { "markdown", "Avante" },
		},
	  },
	},
	{
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
    {
        'nvim-telescope/telescope.nvim',
        -- tag = '0.1.8',
        version = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.config").setup(
                {
                    ensure_installed = {
                        "c",
                        "html",
                        "javascript",
                        "lua",
                        "python",
                        "vim",
                    },
                    highlight = {
                        enable = true,
                    },
                    indent = {
                        enable = true,
                        disable = { "python" },
                    },
                }
            )
        end
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
    },
    {
        "tpope/vim-dadbod",
        name = "vim-dadbod",
        priority = 1000,
    },
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod", lazy = true },
            { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
        },
        -- Optional
        cmd = {
            "DBUI",
            "DBUIToggle",
            "DBUIAddConnection",
            "DBUIFindBuffer",
        },
        init = function()
            -- Your DBUI confiuration
            vim.g.db_ui_use_nerd_fonts = 1
        end,
    {
        "neovim/nvim-lspconfig",
        name = "nvim-lspconfig",
    },
    {
        "williamboman/mason-lspconfig.nvim",
        name = "mason-lspconfig",
    },
    {
        "williamboman/mason.nvim",
        name = "mason",
    },
}
