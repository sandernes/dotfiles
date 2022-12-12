local status_ok, ufo = pcall(require, "ufo")
if not status_ok then
  return
end


ufo.setup({
  provider_selector = function(bufnr, filetype, buftype)
    return { 'treesitter', 'indent' }
  end
})

-- this plugin sets foldmethod to manual
-- rebind to recursively close and open all the manually created folds
vim.keymap.set('n', 'zR', ufo.openAllFolds)
vim.keymap.set('n', 'zM', ufo.closeAllFolds)


-- foldlevels are unusable
vim.opt.foldlevel = 99 -- a large foldlevel value is needed for this plugin
vim.opt.foldlevelstart = 99 -- start with all folds open

vim.cmd(
  [[
  augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
  augroup END
  ]]
)
