-- vim.cmd "colorscheme default"

-- local colorscheme = "onedark"
local colorscheme = "tokyonight"
-- local colorscheme = "catppuccin"
-- local colorscheme = "onedarkpro"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then 
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

if colorscheme == "onedark" then 
  require "user.themes.onedark"
elseif colorscheme == "tokyonight" then
  require "user.themes.tokyonight"
elseif colorscheme == "catppuccin" then 
  require "user.themes.catppuccin"
elseif colorscheme == "onedarkpro" then 
  require "user.themes.onedarkpro"
end
