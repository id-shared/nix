{ pkgs, ... }:
{
  imports = [
    # ./x/virtual/virt-manager.nix
    ./x/virtual.nix
    ./x/textual.nix
    ./x/storage.nix
    ./x/program.nix
    ./x/oxidant.nix
    ./x/network/o/webhost.nix
    ./x/network.nix
    ./x/machine/o/bt.nix
    ./x/machine/o.nix
    ./x/machine/i/logitech.nix
    ./x/machine/i.nix
    ./x/graphic.nix
    ./x/console.nix
    ./x/address.nix
  ];

  users = {
    groups = {
      x = {
        members = [ "x" ];
        name = "x";
      };
    };
    extraUsers = {
      x = {
        extraGroups = [
          "wheel"
          "video"
          "input"
          "audio"
        ];
        useDefaultShell = true;
        packages = with pkgs; [
          # shadowsocks-rust
          # proxychains
          # proxify

          wayvnc
          socat
        ];
        isNormalUser = true;
        hashedPassword = "$6$HarayKrsna$/REyoGIFTRfEw.szoS3giVwCnIwPxDpRZWdYc1kjz6n.ZqQJih/DRJ/YnUKAEQJjqEQCkDRN4ULrnqYqjd1cp1";
      };
    };
    mutableUsers = false;
    defaultUserShell = pkgs.fish;
  };

  services = {
    xserver = {
      xkb = {
        options = "ctrl:swap_lwin_lctl";
        layout = "us";
      };
      enable = true;
    };
    flatpak = {
      enable = true;
    };
    displayManager = {
      defaultSession = "none";
      ly = {
        enable = true;
      };
    };
  };

  programs = {
    fish = {
      interactiveShellInit = ''
        set pure_threshold_command_duration 4
        set pure_shorten_window_title_current_directory_length 4
        set pure_shorten_prompt_current_directory_length 4
        set pure_begin_prompt_with_current_directory true

        set pure_symbol_prefix_root_prompt "₹"
        set pure_symbol_container_prefix "¢"
        set pure_symbol_ssh_prefix "\$"
        set pure_symbol_prompt "/"

        set pure_show_prefix_root_prompt true
        set pure_show_system_time false

        set pure_enable_single_line_prompt true
        set pure_enable_git false

        set fish_greeting
      '';
      enable = true;
    };
  };

  nixpkgs = {
    config = {
      permittedInsecurePackages = [
        "python-2.7.18.8-env"
        "python-2.7.18.8"
      ];
    };
  };

  environment = {
    sessionVariables = { };
    systemPackages = with pkgs; [
      (python2.withPackages (python-pkgs: with python-pkgs; [ ]))

      home-manager
      timelimit
      parallel
      libressl
      killall

      nixfmt-rfc-style
      nixd
    ];
    defaultPackages = with pkgs; [
      pavucontrol
      p7zip
      file

      nodejs_22
      go-task
      bun

      dmg2img
      iat

      fishPlugins.pure
      curlHTTP3
      ldns
    ];
  };
}
