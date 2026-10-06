_: {
  programs = {
    atuin = {
      enable = true;
      enableFishIntegration = true;
      forceOverwriteSettings = true;
      settings = {
        auto_sync = false;
        filter_mode = "global";
        search_mode = "fuzzy";
      };
    };

    bat = {
      enable = true;
      config.theme = "base16";
    };

    eza = {
      enable = true;
      enableFishIntegration = false;
      git = true;
      icons = "auto";
    };

    fzf = {
      enable = true;
      enableFishIntegration = true;
    };

    zoxide = {
      enable = true;
      enableFishIntegration = true;
      options = ["--cmd cd"];
    };

    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };
  };
}
