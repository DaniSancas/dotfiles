# dotfiles
Personal dotfiles to synchronize & applications to install

## Applications to synchronize

### Bat

> A cat clone with wings.

https://github.com/sharkdp/bat

```sh
sudo apt install bat

# Creates an alias to `bat` instead of default `batcat` command
mkdir -p ~/.local/bin
ln -s /usr/bin/batcat ~/.local/bin/bat
```

### FD

> A simple, fast and user-friendly alternative to 'find'

https://github.com/sharkdp/fd

```sh
sudo apt install fd-find
```

### FZF

> 🌸 A command-line fuzzy finder

https://github.com/junegunn/fzf

```sh
sudo apt install fzf
```

### LSD

> The next gen ls command 

https://github.com/lsd-rs/lsd

```sh
sudo apt install lsd
```

### Starship

> The minimal, blazing-fast, and infinitely customizable prompt for any shell!

https://starship.rs/

Warning: Needs [NerdFonts](#nerdfonts)

```sh
curl -sS https://starship.rs/install.sh | sh
```

### NerdFonts

> Iconic font aggregator, collection, & patcher.

https://github.com/ryanoasis/nerd-fonts
