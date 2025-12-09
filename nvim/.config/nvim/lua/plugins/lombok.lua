return {
  {
    "mfussenegger/nvim-jdtls",

    opts = function(_, opts)
      local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
      local lombok_path = jdtls_path .. "/lombok.jar"

      if vim.fn.filereadable(lombok_path) == 1 then
        opts.cmd = opts.cmd or {}
        table.insert(opts.cmd, "--jvm-arg=-javaagent:" .. lombok_path)
      end

      return opts
    end,
  },
}
