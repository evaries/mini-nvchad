local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").prettierd
    },
    typescript = {
      require("formatter.filetypes.typescript").prettierd
    },
    astro = {
      require("formatter.filetypes.astro").prettierd
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M