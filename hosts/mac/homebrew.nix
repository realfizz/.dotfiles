_: {
  homebrew = {
    enable = true;
    taps = [
      "barutsrb/tap"
      "ralph/spotifly"
    ];
    brews = [
      "apktool"
      "capnp"
      "cbonsai"
      "cfr-decompiler"
      "cmatrix"
      "duti"
      "glfw"
      "herdr"
      "jadx"
      "lefthook"
      "librsvg"
      "llvm"
      "mingw-w64"
      "nmap"
      "opentofu"
      "rsync"
      "sevenzip"
      "temporal"
      "tmux"
      "tty-clock"
      "unar"
      "vineflower"
      "wimlib"
      "xmake"
      "zig"
    ];
    onActivation = {
      autoUpdate = false;
      upgrade = false;
      cleanup = "none";
    };

    casks = [
      "alt-tab"
      "balenaetcher"
      "caffeine"
      "chatgpt"
      "codex"
      "codexbar"
      "ghostty"
      "google-chrome"
      "grok-build"
      "helium-browser"
      "keepassxc"
      "keka"
      "mullvad-vpn"
      "obsidian"
      "barutsrb/tap/omniwm"
      "orbstack"
      "paper-design"
      "prismlauncher"
      "raycast"
      "ralph/spotifly/spotifly"
      "signal"
      "stats"
      "steam"
      "tailscale-app"
      "time-out"
      "whatsapp"
      "wispr-flow"
      "zed"
      "zen"
    ];
  };
}
