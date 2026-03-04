return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        -- We disable the preset and define exactly what we want
        preset = "none",

        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

        -- This ensures Enter is what actually completes the snippet/word
        ["<CR>"] = { "accept", "fallback" },

        -- Keep the standard Neovim shortcuts working just in case
        ["<C-n>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide" },
      },
    },
  },
}
