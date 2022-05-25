local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
  return
end

onedarkpro.setup({
  dark_theme = "onedark", -- The default dark theme
  light_theme = "onelight", -- The default light theme
  -- Theme can be overwritten with 'onedark' or 'onelight' as a string
  theme = function()
      if vim.o.background == "dark" then
          return config.dark_theme
      else
          return config.light_theme
      end
  end,
})
onedarkpro.load()