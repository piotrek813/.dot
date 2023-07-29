local Util = {};

-- https://github.com/lettertwo/config/blob/0b56ed8f5b0e8c1186ca29cbf8623ed64976568e/nvim/lua/util/init.lua
function Util.close_floats()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if vim.api.nvim_win_get_config(win).relative == "win" then
      vim.api.nvim_win_close(win, false)
    end
  end
end

-- https://github.com/lettertwo/config/blob/0b56ed8f5b0e8c1186ca29cbf8623ed64976568e/nvim/lua/util/init.lua
function Util.clear_highlights()
  vim.cmd("nohlsearch")
  if Util.lsp_active() then
    vim.lsp.buf.clear_references()
    for _, buffer in pairs(Util.visible_buffers()) do
      vim.lsp.util.buf_clear_references(buffer)
    end
  end
end

return Util;
