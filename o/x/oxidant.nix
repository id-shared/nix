{ lib, ... }:
{
  systemd = { };

  system = {
    nixos = {
      tags = [ "x" ];
      variant_id = "x";
      label = "x";
    };
    stateVersion = "24.05";
  };

  swapDevices = lib.mkForce [ ];

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  nix = {
    settings = {
      trusted-users = [
        "@wheel"
        "root"
      ];
      experimental-features = [
        "nix-command"
        "flakes"
      ];
    };
  };

  boot = {
    tmp = {
      cleanOnBoot = true;
    };
    loader = {
      systemd-boot = {
        consoleMode = "max";
        configurationLimit = 16;
        enable = true;
      };
      efi = {
        canTouchEfiVariables = true;
      };
      timeout = 1;
    };
    kernelParams = [ "acpi_backlight=video" ];
    kernel = {
      sysctl = {
        "vm.swappiness" = 0;

        #"net.ipv4.udp_wmem_min" = 65535;
        #"net.ipv4.udp_rmem_min" = 65535;
        #"net.ipv4.udp_mem" = "1048575 4194303 16777215";
        #"net.ipv4.tcp_wmem" = "1048575 4194303 16777215";
        #"net.ipv4.tcp_tw_reuse" = 1;
        #"net.ipv4.tcp_tw_recycle" = 1;
        #"net.ipv4.tcp_syncookies" = 1;
        #"net.ipv4.tcp_synack_retries" = 255;
        #"net.ipv4.tcp_rmem" = "1048575 4194303 16777215";
        #"net.ipv4.tcp_rfc1337" = 1;
        #"net.ipv4.tcp_mem" = "1048575 4194303 16777215";
        #"net.ipv4.tcp_max_tw_buckets" = 1048575;
        #"net.ipv4.tcp_keepalive_time" = 4095;
        #"net.ipv4.tcp_keepalive_probes" = 15;
        #"net.ipv4.tcp_keepalive_intvl" = 255;
        #"net.ipv4.tcp_fin_timeout" = 255;
        #"net.ipv4.ip_unprivileged_port_start" = 1;
        #"net.ipv4.ip_local_port_range" = "1 65535";
        #"net.core.wmem_max" = 1048575;
        #"net.core.wmem_default" = 1048575;
        #"net.core.somaxconn" = 1048575;
        #"net.core.rmem_max" = 1048575;
        #"net.core.rmem_default" = 1048575;
        #"net.core.optmem_max" = 1048575;
        #"net.core.netdev_max_backlog" = 65535;
      };
    };
    initrd = {
      network = {
        ssh = {
          hostKeys = [ ];
          enable = false;
        };
        enable = true;
      };
    };
    extraModprobeConfig = ''
      options hid_apple swap_fn_leftctrl=1
      options hid_apple fnmode=2
    '';
    readOnlyNixStore = false;
    isContainer = false;
  };
}
