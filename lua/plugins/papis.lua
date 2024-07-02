return {
  "jghauser/papis.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    "MunifTanjim/nui.nvim",
    "pysan3/pathlib.nvim",
    "nvim-neotest/nvim-nio",
    -- if not already installed, you may also want:
    -- "nvim-telescope/telescope.nvim",
    -- "hrsh7th/nvim-cmp",
  },
  config = function()
    require("papis").setup({
      -- Your configuration goes here
      papis_python = {
        dir = "/Users/ysc4337/OneDrive - Northwestern University/library",
        info_name = "info.yaml",
        notes_name = [[notes.norg]],
      },
      enable_keymaps = true,
      init_filetypes = { "markdown", "norg", "yaml" },
    })
  end,
}
