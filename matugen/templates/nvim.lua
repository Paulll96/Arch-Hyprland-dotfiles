vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "{{colors.on_surface.default.hex}}" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

vim.api.nvim_set_hl(0, "Comment", { fg = "{{colors.outline.default.hex}}", italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = "{{colors.primary.default.hex}}", bold = true })
vim.api.nvim_set_hl(0, "String", { fg = "{{colors.tertiary.default.hex}}" })
vim.api.nvim_set_hl(0, "Function", { fg = "{{colors.secondary.default.hex}}" })
vim.api.nvim_set_hl(0, "Type", { fg = "{{colors.primary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "Constant", { fg = "{{colors.tertiary_container.default.hex}}" })
vim.api.nvim_set_hl(0, "Number", { fg = "{{colors.error.default.hex}}" })
vim.api.nvim_set_hl(0, "Operator", { fg = "{{colors.on_surface.default.hex}}" })

vim.api.nvim_set_hl(0, "LineNr", { fg = "{{colors.outline.default.hex}}" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "{{colors.primary.default.hex}}", bold = true })
