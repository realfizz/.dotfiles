{
  pkgs,
  username,
  ...
}: {
  imports = [
    ./defaults.nix
    ./homebrew.nix
  ];

  nixpkgs.hostPlatform = "aarch64-darwin";

  system.primaryUser = username;
  system.stateVersion = 7;

  users.users.${username} = {
    home = "/Users/${username}";
    shell = pkgs.fish;
  };

  nix = {
    settings = {
      "experimental-features" = ["nix-command" "flakes"];
      "trusted-users" = ["root" username];
      "extra-experimental-features" = ["nix-command" "flakes"];
    };
    gc = {
      automatic = true;
      options = "--delete-older-than 30d";
    };
    optimise.automatic = true;
  };

  environment.variables = {
    HOMEBREW_NO_ANALYTICS = "1";
    HOMEBREW_NO_ENV_HINTS = "1";
  };

  programs.fish.enable = true;
  environment.shells = [pkgs.fish];

  security.pam.services.sudo_local.enable = false;

  networking.applicationFirewall = {
    enable = true;
    enableStealthMode = true;
    allowSigned = true;
    allowSignedApp = true;
    blockAllIncoming = false;
  };

  nix-homebrew = {
    enable = true;
    user = username;
    enableRosetta = true;
    autoMigrate = true;
  };
}
