local status_ok, kanagawa = pcall(require, "kanagawa")
if not status_ok then
  return
end

kanagawa.setup({
  -- disable italics
  commentStyle = { italic = false },
  keywordStyle = { italic = false },
  variablebuiltinStyle = { italic = false },
})

vim.cmd "colorscheme kanagawa"
