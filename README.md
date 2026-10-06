# dotfiles

Nix-darwin and Home Manager for my Apple Silicon Mac.

```bash
git clone https://github.com/realfizz/.dotfiles.git ~/.config/nix-darwin
cd ~/.config/nix-darwin
nix run nix-darwin/nix-darwin-26.05#darwin-rebuild -- switch --flake .#mac
```

Neovim and OpenCode stay out of this repo.
