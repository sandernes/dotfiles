local status_ok, neotest = pcall(require, "neotest")
if not status_ok then
  return
end

neotest.setup({
  adapters = {
    require("neotest-python"),
    require("neotest-go")
  },
  quickfix = {
    enabled = true,
    open = false,
  }
})

vim.cmd [[ command! TestNearest execute 'lua require("neotest").run.run()' ]]
vim.cmd [[ command! TestFile execute 'lua require("neotest").run.run(vim.fn.expand("%"))' ]]
vim.cmd [[ command! TestOutputOpen execute 'lua require("neotest").output.open()' ]]
vim.cmd [[ command! TestSummaryToggle execute 'lua require("neotest").summary.toggle()' ]]
