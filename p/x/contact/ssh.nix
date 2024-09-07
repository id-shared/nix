{
  services = {
    ssh-agent = {
      enable = true;
    };
  };
  programs = {
    ssh = {
      matchBlocks = {
        "x.x" = {
          hostname = "*";
          identityFile = "~/.ssh/id_ed25519";
        };
      };
      controlPersist = "no";
      compression = true;
      enable = true;
    };
  };

  home = {
    file = {
      ".ssh/id_ed25519.pub" = {
        source = ./ssh/id_ed25519.pub;
        enable = true;
      };
      ".ssh/id_ed25519" = {
        source = ./ssh/id_ed25519;
        enable = true;
      };
      ".ssh/id_rsa.pub" = {
        source = ./ssh/id_rsa.pub;
        enable = true;
      };
      ".ssh/id_rsa" = {
        source = ./ssh/id_rsa;
        enable = true;
      };
    };
  };
}
