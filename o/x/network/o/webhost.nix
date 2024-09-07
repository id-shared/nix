{ pkgs, ... }: {
  systemd = {
    services = {
      nginx = {
        serviceConfig = {
          ProtectHome = "read-only";
        };
      };
    };
  };

  services = {
    vnstat = {
      enable = true;
    };
    nginx = {
      virtualHosts = {
        "x.x" = {
          sslCertificateKey = "/etc/network/o/x.x.key";
          sslCertificate = "/etc/network/o/x.x.crt";
          root = "/home/x/htm";
          quic = true;
          forceSSL = true;
          enableACME = false;
        };
      };
      package = pkgs.nginxQuic.override {
        openssl = pkgs.libressl;
      };
      user = "x";
      enable = true;
    };
  };

  security = {
    pki = {
      certificateFiles = [
        ./x.x.crt
      ];
    };
    acme = {
      maxConcurrentRenewals = 64;
      defaults = {
        email = "x@x.x";
      };
      acceptTerms = true;
    };
  };

  networking = {
    hosts = {
      "127.0.0.1" = [
        "x.x"
      ];
      "::1" = [
        "x.x"
      ];
    };
  };

  environment = {
    etc = {
      "network/o/x.x.csr" = {
        source = ./x.x.csr;
        enable = true;
      };
      "network/o/x.x.crt" = {
        source = ./x.x.crt;
        enable = true;
      };
      "network/o/x.x.key" = {
        source = ./x.x.key;
        enable = true;
      };
    };
  };
}
