## Intro
Recently I switched to [NvChad](https://nvchad.com) for neovim editing. However, it does not support LaTex (compile,pdf preview, customized snippets) well. Here is my solution.
## Features

- Tex Compilation. I used [VimTex](https://github.com/lervag/vimtex), with `skim` as the PDF viewer. It also suports forward/backward search.
- Fast Editting. The famous [Latex-snippet-vim] does not work well with NvChad, so I found an ``mirror'' using LuaSnip instead: [luasnip-latex-snippets.nvim] 
## Install
- append the code in  `plugins.lua` to your NvChad custom folder, i.e. `~/.config/nvim/lua/custom/` 

