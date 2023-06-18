local lang = {}

lang["fatih/vim-go"] = {
	lazy = true,
	ft = "go",
	build = ":GoInstallBinaries",
	config = require("lang.vim-go"),
}
lang["simrat39/rust-tools.nvim"] = {
	lazy = true,
	ft = "rust",
	config = require("lang.rust-tools"),
	dependencies = { "nvim-lua/plenary.nvim" },
}
lang["Saecki/crates.nvim"] = {
	lazy = true,
	event = "BufReadPost Cargo.toml",
	config = require("lang.crates"),
	dependencies = { "nvim-lua/plenary.nvim" },
}
lang["iamcco/markdown-preview.nvim"] = {
	lazy = true,
	ft = "markdown",
	build = ":call mkdp#util#install()",
}
lang["epwalsh/obsidian.nvim"] = {
	lazy = true,
	ft = "markdown",
	config = require("lang.obsidian"),
	dependencies = {
		-- Required.
		"nvim-lua/plenary.nvim",
		-- Optional, for completion.
		"hrsh7th/nvim-cmp",
		-- Optional, for search and quick-switch functionality.
		"nvim-telescope/telescope.nvim",
		-- Optional, alternative to nvim-treesitter for syntax highlighting.
		"godlygeek/tabular",
		"preservim/vim-markdown",
	},
}
lang["chrisbra/csv.vim"] = {
	lazy = true,
	ft = "csv",
}
return lang
