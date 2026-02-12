{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions = with pkgs.vscode-extensions; [
        # Direnv
        mkhl.direnv

        # Nix
        jnoortheen.nix-ide
        
        # Python
        ms-python.python
        charliermarsh.ruff
        # ms-toolsai.jupyter

        # Java
        # vscjava.vscode-java-pack

        # # C/C++
        # ms-vscode.cpptools

        # # C#
        # ms-dotnettools.csharp
      ];
      userSettings = {
        # "editor.fontSize" = 14;
        "editor.formatOnSave" = true;
      };
    };
  };
}