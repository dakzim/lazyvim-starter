return {
  -- lualine
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
}
