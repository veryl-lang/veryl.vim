# veryl.vim

This is a Vim plugin for [Veryl](https://github.com/dalance/veryl).

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'veryl-lang/veryl.vim'
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'veryl-lang/veryl.vim',
}
```

## Language Server

Language server for Veryl is provided at [Veryl](https://github.com/dalance/veryl).
The following plugins support Veryl language server.

### [vim-lsp-settings](https://github.com/mattn/vim-lsp-settings)

While editing a veryl file (*.veryl) :

```
:LspInstallServer
```

### [mason](https://github.com/williamboman/mason.nvim)

```
:MasonInstall veryl-ls
```

### [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)

```lua
require('lspconfig')['veryl_ls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
}
```
