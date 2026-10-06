# agents

this repo is nix-darwin and home manager for one apple silicon mac. the username is set in flake.nix and passed into the modules.

after a config change, run `nix flake check` and `darwin-rebuild build --flake .#mac`. apply with `darwin-rebuild switch --flake .#mac`. don't say a switch worked unless you read its output. `nix flake update` only when the pins are meant to move. `darwin-rebuild --list-generations` lists what's installed.

flake.nix is the pins and the `mac` output. hosts/mac is the machine. home/default is the user. config/ holds ghostty, fastfetch, mise, omniwm, the fish prompt, and the desktop activation script.

nvim is not committed. the config lives at ~/.config/nvim-src and is linked on activation when that directory is there. opencode has its own repo. never import its .env or node_modules.

nix and home manager own durable packages and settings. homebrew is for gui apps and formulae that aren't already nix packages. don't install the same tool both ways. fish stays in home manager. bash and zsh stay around for posix scripts.

don't commit secrets, raycast exports, private keys, or generated app data. don't disable sip, the signed system volume, filevault, security updates, or spotlight. don't delete protected apple apps or add broad launchctl, pf, or mdutil hacks. no generic bootstrap or migration scripts.

new files stay ascii unless the format already isn't.

tokyo night dark3, blue6, and terminal_black are foregrounds. don't assign light wash hexes to them in light mode. don't set vim.o.background from AppleInterfaceStyle. that disables nvim's terminal background query, so ghostty can be light while nvim stays on the dark palette with Normal fg #ededed. follow vim.o.background and paint Normal with colors.bg, not NONE.

done means the paths exist, flake check passes, the darwin build passes before activation, and the diff is only what was asked for. permission prompts go in the readme instead of being skipped.
