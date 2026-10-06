_: {
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      user.name = "RealFizz";
      user.email = "180948081+realfizz@users.noreply.github.com";
      init.defaultBranch = "main";
      pull.rebase = true;
      push.autoSetupRemote = true;
      fetch.prune = true;
      rebase.updateRefs = true;
      merge.conflictStyle = "zdiff3";
      core.editor = "nvim";
      core.autocrlf = "input";
      color.ui = "auto";
      delta = {
        navigate = true;
        line-numbers = true;
        side-by-side = true;
      };
      interactive.diffFilter = "delta --color-only";
      delta.syntax-theme = "ansi";
    };
  };
}
