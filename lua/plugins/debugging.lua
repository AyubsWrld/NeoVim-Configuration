return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Existing Lua configuration
      dap.adapters.lua = {
        type = "executable",
        command = "/path/to/lua-language-server", -- Adjust this path
        args = {},
      }

      dap.configurations.lua = {
        {
          type = "lua",
          request = "launch",
          name = "Launch Lua script",
          program = function()
            return vim.fn.input("Path to Lua file: ", vim.fn.getcwd() .. "/", "file")
          end,
        },
      }

      -- C++ configuration
      dap.adapters.lldb = {
        type = "executable",
        command = "/path/to/lldb-vscode", -- Adjust this path to point to your LLDB executable
        name = "lldb",
      }

      dap.configurations.cpp = {
        {
          name = "Launch",
          type = "lldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }

      -- Key mappings for dap (existing)
      vim.keymap.set("n", "<Leader>d", dap.continue)
      vim.keymap.set("n", "<Leader>so", dap.step_over)
      vim.keymap.set("n", "<Leader>si", dap.step_into)
      vim.keymap.set("n", "<Leader>s0", dap.step_out)
      vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint)
      vim.keymap.set("n", "<Leader>B", function()
        dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
      end)
      vim.keymap.set("n", "<Leader>lp", function()
        dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
      end)
      vim.keymap.set("n", "<Leader>dr", dap.repl.open)
      vim.keymap.set("n", "<Leader>dl", dap.run_last)
      vim.keymap.set({ "n", "v" }, "<Leader>dh", function()
        require("dap.ui.widgets").hover()
      end)
      vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
        require("dap.ui.widgets").preview()
      end)
      vim.keymap.set("n", "<Leader>df", function()
        local widgets = require("dap.ui.widgets")
        widgets.centered_float(widgets.frames)
      end)
      vim.keymap.set("n", "<Leader>ds", function()
        local widgets = require("dap.ui.widgets")
        widgets.centered_float(widgets.scopes)
      end)
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    requires = {
      "mfussenegger/nvim-dap",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("dapui").setup()
    end,
  },
}
