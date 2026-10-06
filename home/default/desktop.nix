{lib, ...}: {
  launchd.agents = {
    omniwm = {
      enable = true;
      config = {
        ProgramArguments = ["/usr/bin/open" "-a" "/Applications/OmniWM.app"];
        RunAtLoad = true;
      };
    };

    stats = {
      enable = true;
      config = {
        ProgramArguments = ["/usr/bin/open" "-a" "/Applications/Stats.app"];
        RunAtLoad = true;
      };
    };

    time-out = {
      enable = true;
      config = {
        ProgramArguments = ["/usr/bin/open" "-a" "/Applications/Time Out.app"];
        RunAtLoad = true;
      };
    };
  };

  home.activation.configureDesktop = lib.hm.dag.entryAfter ["writeBoundary"] ''
    ${builtins.readFile ../../config/activation/desktop.sh}
  '';
}
