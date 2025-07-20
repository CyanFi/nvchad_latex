local M = {}
M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}
-- M.dap = {
--   plugin = true,
--   n = {
--     ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
--   }
-- }
--
-- M.dap_python = {
--   plugin = true,
--   n = {
--     ["<leader>dpr"] = {
--       function()
--         require('dap-python').test_method()
--       end,
--     }
--   }
-- }

-- M.vimtex = {
--   plugin = true,
--   n = {
--     ["<leader>tc"] = function()
--       vim.cmd("VimtexCompile")
--     end,
--     ["<leader>tv"] = function()
--       vim.cmd("VimtexView")
--     end,
--     ["<leader>tq"] = function()
--       vim.cmd("VimtexStop")
--     end
--   }
-- }
return M
