{ extensions, pkgs, ... }:
{
  programs = {
    vscode = {
      userTasks = { };
      userSettings = import ./code/setting.nix;
      package = (pkgs.vscode.override { isInsiders = true; }).overrideAttrs (o2: {
        src = (
          builtins.fetchTarball {
            url = "https://code.visualstudio.com/sha/download?build=insider&os=linux-x64&e=6";
            sha256 = "06pc6p0z69amsiz0g087pwy3z9mih9jk4qs3plh4dvpp41k4p45h";
          }
        );
        meta = {
          name = "vscode-insiders";
          mainProgram = "code";
          description = "Visual Studio Code Insiders edition";
        };
        version = "latest";
        buildInputs = o2.buildInputs ++ [ pkgs.krb5 ];
      });
      mutableExtensionsDir = true;
      languageSnippets = import ./code/snippet.nix;
      keybindings = import ./code/keybind.nix;
      globalSnippets = { };
      extensions = with extensions.vscode-marketplace; [
        tyriar.sort-lines
        redhat.vscode-yaml
        pascalreitermann93.vscode-yaml-sort
        ms-vscode.live-server
        ms-python.python
        likebot.vscode-empty-themes
        jnoortheen.nix-ide
        dbaeumer.vscode-eslint
      ];
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      enable = true;
    };
  };

  home = {
    file = {
      "codedit.css" = {
        source = ./code/codedit.css;
        enable = true;
      };
      "codedit.js" = {
        source = ./code/codedit.js;
        enable = true;
      };
    };
  };
}
