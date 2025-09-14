local lazy = require("lazy")
return {
	{
		"stevearc/conform.nvim",
		event = "BufWritePre", -- uncomment for format on save
		opts = require("configs.conform"),
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			require("configs.lspconfig")
		end,
	},

	-- Markdown preview plugin
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	},

	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
		},
	},
	-- git
	{
		"tpope/vim-fugitive",
		cmd = { "Git", "Gedit", "Gsplit", "Gdiffsplit" },
		lazy = false,
	},

	-- php configuration
	{
		"jwalton512/vim-blade",
		ft = { "php", "blade.php" },
		config = function()
			vim.g.blade_custom_delimiters = { php = { "{{", "}}" } } -- Laravel-style syntax
		end,
	},

	-- python lsp configuration
	{
		"microsoft/pyright",
		ft = { "python" },
	},

	-- rust lsp configuration
	{
		"rust-lang/rust-analyzer",
		lazy = false,
	},
	{
		"rust-lang/rust.vim",
		ft = "rust",
		init = function()
			vim.g.rustfmt_autosave = 1
		end,
	},
	{
		"saecki/crates.nvim",
		ft = { "toml" },
		config = function()
			require("crates").setup({
				completion = {
					cmp = {
						enabled = true,
					},
				},
			})
			require("cmp").setup.buffer({
				sources = { { name = "crates" } },
			})
		end,
	},
	-- {
	--   "mrcjkb/rustaceanvim",
	--   version = "^5", -- Recommended
	--   lazy = false, -- This plugin is already lazy
	-- },

	-- java lsp configuration
	{
		"mfussenegger/nvim-jdtls",
		ft = { "java" },
	},

	-- flutter lsp configuration
	{
		"nvim-flutter/flutter-tools.nvim",
		lazy = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
		config = true,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"vim",
				"vimdoc",
				"lua",
				"html",
				"css",
				"python",
				"rust",
				"java",
				"javascript",
				"typescript",
				"tsx",
				"dockerfile",
				"bash",
				"c",
				"cpp",
				"markdown",
			},
		},
	},
	-- lualine plugin for statusline
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = { theme = "auto" },
			sections = {
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = { "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
		})
	end,
}
