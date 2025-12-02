# 🐧 Personal Linux Dotfiles — Because Tweaking Is a Lifestyle

> ⚠️ BE AWARED: Most of this README is made with AI because I am a Developer and I don't like documentations :)
> (Yes, it was produced by AI. No, it won't babysit your setup — good luck.)

Welcome to my floating collection of configuration sorcery. These dotfiles keep my terminal, shell, and editor behaving the way I like — productive, a little quirky, and keen on good fonts.

If you're here to borrow ideas, steal snippets, or just marvel at my tendency to tweak, go ahead. Just don't blame me if you end up spending three hours theming your prompt.

## What’s inside? (high level)
- shell configs (zsh)
- editor configs (vim)
- terminal configs (alacritty)
- git configs (git)
- a tiny helper script to refresh GNU Stow symlinks (refresh-stow.sh)

## Tools you’ll want to have (and why)
- [zsh](https://zsh.sourceforge.io/) — A sensible, friendly shell. Faster to configure and nicer to use than plain bash.
  - Recommended plugin manager: [zinit](https://github.com/zdharma-continuum/zinit) — fast, flexible, and lazy-loading.
- [starship](https://starship.rs) — A blazing-fast, highly-customizable prompt. Minimal fuss, maximum style. (Makes your prompt look like you have your life together — even if you don't.)
- [stow](https://www.gnu.org/software/stow/) — Manage symlinks for your dotfiles. Keeps things tidy and reversible.
- [alacritty](https://github.com/alacritty/alacritty) — A GPU-accelerated terminal emulator; fast and minimal.
- [Vim](https://www.vim.org) — If you're here, you know what's Vim
  - [vim-plug](https://github.com/junegunn/vim-plug) — for easy plugin management in vim.

## Fonts
- [Nerd Fonts](https://www.nerdfonts.com) — patched fonts with icons/glyphs used by prompts and statuslines.
  - I use FiraCode Nerd Font (FiraCode NF) right now — patched Fira Code with Nerd Font glyphs.
  - Quick install: download the FiraCode Nerd Font from [Nerd Fonts](https://www.nerdfonts.com), install to your system (e.g. ~/.local/share/fonts or /usr/share/fonts), then run `fc-cache -f -v`. This ensures starship, alacritty and vim can render icons correctly.
  - Because apparently icons are now a personality trait. Choose wisely.

## Where to look for plugin lists and config
- zsh / zinit
  - Look for zshrc or zinit snippet under the zsh directory in this repo (common filenames: zsh/.zshrc or zsh/zinit.zsh). That's where zinit commands live.
  - Typical zinit lines look like:
    - `zinit light zsh-users/zsh-autosuggestions`
    - `zinit load zsh-users/zsh-syntax-highlighting`
  - Common zinit plugins used here (examples you should find or can add):
    - zsh-users/zsh-autosuggestions — real-time suggestions from history
    - zsh-users/zsh-syntax-highlighting — highlight commands as you type
    - zsh-users/zsh-completions — extra completions
    - rupa/z — quick directory jumping by frecency
    - mafredri/zsh-async — async helpers for faster startup
  - To add or remove plugins: edit the zinit block in your zsh config and restart the shell.

- vim / vim-plug
  - Plugin list is usually declared in .vimrc or in vim/plugin files in this repo. vim-plug is expected (autoload/plug.vim).
  - Install plugins from the command line:
    - Open vim and run `:PlugInstall`
    - Or run headlessly: `vim +PlugInstall +qall`
  - Common vim plugins used here (examples you should find or can add):
    - junegunn/fzf and junegunn/fzf.vim — fuzzy finder (needs fzf binary)
    - tpope/vim-fugitive — git integration
    - tpope/vim-sensible — sane defaults
    - preservim/nerdtree or nvim-tree (file tree)
    - vim-airline/vim-airline or nyoom-engineering/galaxyline — status/tabline
    - sheerstan/vim-polyglot or vim-polyglot — language packs and syntax
    - airblade/vim-gitgutter — show git diff in gutter
  - To update plugins: `:PlugUpdate` or `vim +PlugUpdate +qall`.

- starship
  - Config normally lives in `~/.config/starship.toml` (or config/starship.toml in this repo). Edit to tune prompt segments and look.

- alacritty
  - Config lives at `~/.config/alacritty/alacritty.yml` (or in this repo's alacritty directory). Fonts, padding, and colors are set there.

- stow & refresh script
  - Use GNU stow to create symlinks from this repo into your home/config directories.
  - Quick example:
    - `stow zsh -t ~`
    - `stow config -t ~/.config`
  - Use the included helper to refresh: `./refresh-stow.sh`

## Quick start (because nobody likes reading long manuals)
1. Install prerequisites: zsh, stow, alacritty, starship, vim, and zinit/vim-plug.
2. Stow the pieces you want: `stow zsh -t ~`, `stow vim -t ~`, `stow config -t ~/.config`.
2.1. Or simply run `./refresh-stow.sh` you mooron
3. Install shell and editor plugins:
   - Start a new shell to let zinit fetch plugins.
   - Run `vim +PlugInstall +qall` for vim plugins.
4. Tweak starship and alacritty configs in `~/.config` after stowing.

## A few helpful notes
- The `refresh-stow.sh` in this repo automates repeated `stow -R` calls. Use it when you change files and want to reapply symlinks.
- If something overwrites your files, stow will warn you — inspect and proceed carefully.
- Plugin lists may be spread between .zshrc, zinit snippets, .vimrc, or files under `~/.config` — search the repo for `zinit` and `Plug` to find exact entries.
- And yes, you'll probably tweak this file again within a week. That's how this works.

## License & attitude
- Use at your own risk. Credit appreciated but not required.
- Pull requests, ideas, and coffee tips are welcome.

Enjoy poking around. If your terminal starts smiling back at you, I consider that a win.
