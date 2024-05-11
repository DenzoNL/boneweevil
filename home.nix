{ config, pkgs, lib, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "denzo";
  home.homeDirectory = "/home/denzo";

  home.packages = with pkgs; [
    _1password-gui
    whatsapp-for-linux
  ];

  imports = [
    ./zsh.nix
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

    # Install firefox.
  programs.firefox = {
    enable = true;
  };

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  programs.git = {
    enable = true;
  };

  # Configure my IDE, VSCode
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      dbaeumer.vscode-eslint
      eamodio.gitlens
      gitlab.gitlab-workflow
      hashicorp.terraform
      jnoortheen.nix-ide
      mkhl.direnv
      ms-azuretools.vscode-docker
      octref.vetur
      redhat.vscode-yaml
      rust-lang.rust-analyzer
      yzhang.markdown-all-in-one
      zhuangtongfa.material-theme
    ];
  };
}
