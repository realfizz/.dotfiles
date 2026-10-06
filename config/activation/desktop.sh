/usr/bin/defaults write eu.exelban.Stats CPU_state -bool true
/usr/bin/defaults write eu.exelban.Stats CPU_widget -string mini
/usr/bin/defaults write eu.exelban.Stats RAM_state -bool true
/usr/bin/defaults write eu.exelban.Stats RAM_widget -string mini
/usr/bin/defaults write eu.exelban.Stats Network_state -bool true
/usr/bin/defaults write eu.exelban.Stats Network_widget -string speed
/usr/bin/defaults write eu.exelban.Stats Disk_state -bool true
/usr/bin/defaults write eu.exelban.Stats Disk_widget -string mini
/usr/bin/defaults write eu.exelban.Stats Battery_state -bool true
/usr/bin/defaults write eu.exelban.Stats Battery_widget -string battery

mkdir -p "$HOME/.config/omniwm"
ln -sfn "$HOME/.config/nix-darwin/config/omniwm/settings.toml" "$HOME/.config/omniwm/settings.toml"

if [ -d "$HOME/.config/nvim-src" ]; then
  ln -sfn "$HOME/.config/nvim-src" "$HOME/.config/nvim"
fi

/usr/bin/defaults write com.lwouis.alt-tab-macos menubarIconShown -string false
/usr/bin/defaults write com.steipete.codexbar launchAtLogin -bool true
/usr/bin/defaults write com.steipete.codexbar refreshFrequency -string fiveMinutes
/usr/bin/defaults write com.steipete.codexbar menuBarDisplayMode -string both
/usr/bin/defaults write com.steipete.codexbar mergeIcons -bool true
/usr/bin/defaults write com.steipete.codexbar hidePersonalInfo -bool true

if [ -x /opt/homebrew/bin/codexbar ] && [ -f "$HOME/.local/share/opencode/auth.json" ]; then
  /opt/homebrew/bin/codexbar config enable --provider opencode
fi

if [ -x /opt/homebrew/bin/duti ]; then
  /opt/homebrew/bin/duti -s net.imput.helium http
fi
