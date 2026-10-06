# dotfiles

My MacBook dotfiles.

## Setup

```bash
git clone https://github.com/realfizz/.dotfiles.git ~/.config/nix-darwin
```

```bash
cd ~/.config/nix-darwin
```

```bash
nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake .#mac
```
