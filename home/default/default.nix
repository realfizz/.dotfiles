{
  config,
  pkgs,
  username,
  ...
}: {
  home = {
    inherit username;
    homeDirectory = "/Users/${username}";
    stateVersion = "26.05";
    file = {
      ".hushlogin".text = "";
      "Library/Application Support/com.mitchellh.ghostty/config.ghostty".source = ../../config/ghostty/config.ghostty;
    };
    packages = with pkgs; [
      aria2
      bat
      btop
      chezmoi
      cmake
      delta
      eza
      fastfetch
      fd
      fzf
      go-task
      geist-font
      gh
      git
      git-lfs
      jq
      nerd-fonts.jetbrains-mono
      lazygit
      mise
      ninja
      packwiz
      pkg-config
      python312
      ripgrep
      rustup
      shellcheck
      shfmt
      starship
      tokei
      uv
      vesktop
      yq-go
      zoxide
    ];
    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      PAGER = "less -FRX";
    };
    sessionPath = [
      "${config.home.homeDirectory}/.opencode/bin"
      "/opt/homebrew/bin"
    ];
  };

  imports = [
    ./desktop.nix
    ./development.nix
    ./fish.nix
    ./git.nix
    ./programs.nix
  ];

  targets.darwin.copyApps = {
    enable = true;
    directory = "Applications";
  };

  xdg = {
    enable = true;
    configFile = {
      "fastfetch/config.jsonc".source = ../../config/fastfetch/config.jsonc;
      "ghostty/shaders".source = ../../config/ghostty/shaders;
      "ghostty/themes".source = ../../config/ghostty/themes;
      "mise/config.toml".source = ../../config/mise/config.toml;
      "zed/settings.json" = {
        source = ../../config/zed/settings.json;
        force = true;
      };
    };
  };
}
