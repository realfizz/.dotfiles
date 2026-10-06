_: {
  system.defaults = {
    NSGlobalDomain = {
      AppleShowAllExtensions = true;
      KeyRepeat = 2;
      InitialKeyRepeat = 15;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticDashSubstitutionEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticQuoteSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      "com.apple.swipescrolldirection" = false;
      NSNavPanelExpandedStateForSaveMode = true;
      NSNavPanelExpandedStateForSaveMode2 = true;
    };

    dock = {
      autohide = true;
      "autohide-delay" = 0.0;
      "autohide-time-modifier" = 0.15;
      launchanim = false;
      mineffect = "scale";
      minimize-to-application = true;
      mru-spaces = false;
      orientation = "left";
      show-recents = false;
      tilesize = 32;
    };

    spaces.spans-displays = false;

    finder = {
      AppleShowAllExtensions = true;
      CreateDesktop = false;
      FXDefaultSearchScope = "SCcf";
      FXPreferredViewStyle = "clmv";
      NewWindowTarget = "Home";
      ShowPathbar = true;
      ShowStatusBar = true;
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = false;
      ShowRemovableMediaOnDesktop = false;
    };

    WindowManager = {
      EnableStandardClickToShowDesktop = false;
      HideDesktop = true;
      StandardHideDesktopIcons = true;
      StandardHideWidgets = true;
      StageManagerHideWidgets = true;
    };

    menuExtraClock = {
      Show24Hour = true;
      ShowAMPM = false;
      ShowDate = 0;
      ShowDayOfWeek = false;
      ShowSeconds = false;
    };

    screencapture = {
      disable-shadow = true;
      type = "png";
    };

    CustomUserPreferences = {
      "com.apple.AdLib" = {
        allowApplePersonalizedAdvertising = false;
      };
      "com.apple.assistant.analytics" = {
        "Assistant Analytics Enabled" = false;
      };
      "com.apple.symbolichotkeys" = {
        AppleSymbolicHotKeys = {
          "64" = {
            enabled = false;
          };
        };
      };
    };
  };
}
