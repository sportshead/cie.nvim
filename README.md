# cie.nvim

Part of my [larger project](https://github.com/sportshead/cie-pseudocode) to provide language tooling for Cambridge IGCSE/A Level Computer Science pseudocode.

Syntax highlighting support for CIE pseudocode in neovim using [tree-sitter-cie](https://github.com/sportshead/tree-sitter-cie).

This currently only supports IGCSE syntax. A Level syntax support is planned, but is slightly different and incompatible, so will probably have a different file extension.

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
    "sportshead/cie.nvim",
    config = true,
    dependencies = {"nvim-treesitter/nvim-treesitter"},
    lazy = false, -- `ft = "cie"` won't work since the filetype is registered in the plugin
}
```

Make sure to run `:TSInstall cie` after loading the plugin.
