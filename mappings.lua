local M = {}

M.dap = {
  plugin = true,
  n = {
	["<leader>mm"] = {
      "<cmd> !make <CR>",
      "Build makefile",
    },
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>tt"] = {
      "<cmd> TroubleToggle <CR>",
      "Toggle trouble"
    }
  }
}

return M
