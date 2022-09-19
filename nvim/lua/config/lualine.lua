local M = {}

function M.setup()
		  
	require("lualine").setup {
		-- Global options
		options = {
			icons_enabled = true,
			theme = "auto",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignorefocus = {},
			always_divide_middle = true,
      globalstatus = false,
			-- refresh = {
			-- 	statusline = 1000,
			-- 	tabline = 1000,
			-- 	winbar = 1000,
			-- },
		},

		-- General component options
		sections = {
			lualine_a = { "mode",},
			lualine_b = { "branch",},
			lualine_c = {
				-- Specific component options
				{
					"buffers", -- buffers component options
					show_filename_only = true,   -- Shows shortened relative path when set to false.
					hide_filename_extension = false,   -- Hide filename extension when set to true.
					show_modified_status = true, -- Shows indicator when the buffer is modified.

					mode = 2, -- 0: Shows buffer name
										-- 1: Shows buffer index
										-- 2: Shows buffer name + buffer index
										-- 3: Shows buffer number
										-- 4: Shows buffer name + buffer number
																					                                                      
					-- max_length = vim.o.columns * 2 /3, -- Maximum width of buffers component,
																							 -- it can also be a function that returns
																							 -- the value of `max_length` dynamically.
					filetype_names = {
						TelescopePrompt = "Telescope",
						dashboard = "Dashboard",
						packer = "Packer",
						fzf = "FZF",
						alpha = "Alpha"
					}, -- Shows specific buffer name for that filetype ({ `filetype` = `buffer_name`, ... })

					-- buffers_color = { -- Same values as the general color option can be used here.
					--   active = "lualine_{section}_normal", -- Color for active buffer.
					-- 	inactive = "lualine_{section}_inactive", -- Color for inactive buffer.
					-- },

					symbols = {
						modified = " ●", -- Text to show when the buffer is modified
						alternate_file = "#", -- Text to show to identify the alternate file
						directory = "", -- Text to show when the buffer is a directory
					},
				},
				 
				{
					"diagnostics", -- diagnostics component options
								       
					-- Table of diagnostic sources, available sources are:
					--   "nvim_lsp", "nvim_diagnostic", "nvim_workspace_diagnostic", "coc", "ale", "vim_lsp".
					-- or a function that returns a table as such:
					--   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
					sources = { "nvim_diagnostic", "coc" },
                        
					-- Displays diagnostics for the defined severity types
					sections = { "error", "warn", "info", "hint" },
                                    
					diagnostics_color = {
						-- Same values as the general color option can be used here.
						error = "DiagnosticError", -- Changes diagnostics" error color.
						warn  = "DiagnosticWarn", -- Changes diagnostics" warn color.
						info  = "DiagnosticInfo", -- Changes diagnostics" info color.
						hint  = "DiagnosticHint", -- Changes diagnostics" hint color.
					},
                                                                                        
					symbols = { error = "E", warn = "W", info = "I", hint = "H" },
					colored = true, -- Displays diagnostics status in color if set to true.
					update_in_insert = false, -- Update diagnostics in insert mode.
					always_visible = false, -- Show diagnostics even if there are none.
				},
			},
		
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},

		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "buffers", "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {},
	}

end

return M
