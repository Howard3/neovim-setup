This is just my personal Neovim setup.

# Setup 
Packer needs to be installed to work, so first run:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

then, when in neovim, run `:PackerSync`

## Telescope / Grep Search
The telescope grep search requires [ripgrep](https://github.com/BurntSushi/ripgrep)
to be installed locally. 

## Go / Structrue
gotags is required 
```bash
go install github.com/jstemmer/gotags@latest
```
for [structrue](https://github.com/crusj/structrue-go.nvim) 
