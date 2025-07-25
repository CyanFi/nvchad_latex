local plugins = {
  {
    "nvimtools/none-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "debugpy",
        "mypy",
        "ruff",
        "pyright",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  --
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 1
      vim.g.vimtex_syntax_enabled = 1
      vim.g.vimtex_indent_enabled = 0

      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_skim_sync=1
      vim.g.vimtex_view_skim_activate =1
      -- vim.g.snipmate_snippets_path = '~/.config/snippets/'
    end,
  },
  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true;
      vim.g.copilot_assume_mapped = true;
      vim.g.copilot_tab_fallback = "";
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
    end
  },
  {
  "iurimateus/luasnip-latex-snippets.nvim",
  -- vimtex isn't required if using treesitter
  requires = { "L3MON4D3/LuaSnip", "lervag/vimtex" },
  config = function()
    require'luasnip-latex-snippets'.setup()
    -- or setup({ use_treesitter = true })
    require("luasnip").config.setup { enable_autosnippets = true }
    -- Modify existing snippets using higher priority and util function from luasnip-latex-snippets
      local ls = require("luasnip")
      local s = ls.snippet
      local i = ls.insert_node
      local fmta = require("luasnip.extras.fmt").fmta
      local utils = require("luasnip-latex-snippets.util.utils")
      local not_math = utils.with_opts(utils.not_math, false) -- when using treesitter, change false to true

      ls.add_snippets("tex", {
        s({trig = "mk", snippetType="autosnippet", priority=100},
          fmta("$<>$<>", { i(1), i(2), }), {condition = not_math}
        ),
        -- ...
      })
  end,
  }
}
return plugins
