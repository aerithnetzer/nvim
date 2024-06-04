return {
  {
    "jghauser/papis.nvim",
    version = "0.2.0",
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("papis").setup({
        -- Your configuration goes here
        papis_python = {
          dir = "~/Documents/papers",
          info_name = "info.yaml",
          notes_name = [[notes.norg]],
        },
        enable_keymaps = true,
      })
    end,
  },
}
