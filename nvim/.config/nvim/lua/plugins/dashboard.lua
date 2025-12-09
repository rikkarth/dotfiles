return {
  -- Remove LazyVim Header
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = [[ ]],
      },
    },
  },
}
