local M = {}

function M.setup()
	require("nvim-treesitter.configs").setup {
		-- A list of parser names, or "all"
		ensure_installed = {"lua", "javascript", "typescript", "python", "vim", "java", "html", "css", "scss", "json" },

		-- Install languages synchronously (only applied to `ensure_installed`)
		sync_install = true,
            
		highlight = {
			-- `false` will disable the whole extension
			enable = true,
		},
	}
end

return M
