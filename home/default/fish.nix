_: {
  programs.fish = {
    enable = true;
    shellAliases = {
      cat = "bat";
      ls = "eza";
      ll = "eza -lah --git";
      la = "eza -a --git";
      tree = "eza --tree --git-ignore";
      v = "nvim";
      g = "git";
      tailscale = "env TAILSCALE_BE_CLI=1 /Applications/Tailscale.app/Contents/MacOS/Tailscale";
    };
    shellAbbrs = {
      gst = "git status";
      gco = "git checkout";
      gc = "git commit";
      gp = "git push";
      gl = "git pull";
      ff = "fzf --preview 'bat --style=numbers --color=always {}'";
      ".." = "cd ..";
      "..." = "cd ../..";
      t = "tmux attach || tmux new -s Work";
      h = "herdr";
      c = "opencode --auto";
    };
    functions.fish_prompt.body = builtins.readFile ../../config/fish/fish_prompt.fish;
    interactiveShellInit = ''
      set -g fish_greeting
      mise activate fish | source
      direnv hook fish | source
    '';
  };
}
