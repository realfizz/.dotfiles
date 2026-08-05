# .dotfiles

My macOS dotfiles.

## What's inside

- `.zshrc` — shell cfg
- `.config/ghostty` — terminal cfg, shaders, themes
- `.config/zed` — editor settings + themes
- `.config/starship.toml` — prompt
- `.config/fastfetch` — fastfetch cfg

## Setup

```bash
git clone https://github.com/realfizz/.dotfiles.git ~/.dotfiles
cd ~/.dotfiles

ln -s ~/.dotfiles/.config/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/.config/zed ~/.config/zed
ln -s ~/.dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/.config/fastfetch ~/.config/fastfetch
ln -s ~/.dotfiles/.zshrc ~/.zshrc

brew bundle --file=~/.dotfiles/extras/Brewfile
```

## License

[MIT](./LICENSE)
