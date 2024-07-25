return {
  -- lualine.nvim
  -- 时间显示到秒
  -- 修改分隔符
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.sections.lualine_z = {
        function()
          return " " .. os.date("%H:%M:%S")
        end,
      }
      opts.options.section_separators = ""
      opts.options.component_separators = "┃"
    end,
  },

  -- flash.nvim
  -- 取消 f t F T 增强
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          enabled = false,
        },
      },
    },
  },
}
