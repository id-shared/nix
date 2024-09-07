{
  services = {
    pipewire = {
      wireplumber = {
        extraConfig = {
          pipewire = {
            "92-low-latency" = {
              context = {
                properties = {
                  default = {
                    clock = {
                      rate = 48000;
                      quantum = 32;
                      min-quantum = 32;
                      max-quantum = 32;
                    };
                  };
                };
              };
            };
          };
          bluetoothEnhancements = {
            "monitor.bluez.properties" = {
              "bluez5.roles" = [
                "hsp_hs"
                "hsp_ag"
                "hfp_hf"
                "hfp_ag"
              ];
              "bluez5.enable-sbc-xq" = true;
              "bluez5.enable-msbc" = true;
              "bluez5.enable-hw-volume" = true;
            };
          };
        };
        enable = true;
      };
      pulse = {
        enable = true;
      };
      jack = {
        enable = true;
      };
      audio = {
        enable = true;
      };
      alsa = {
        support32Bit = true;
        enable = true;
      };
      raopOpenFirewall = true;
      enable = true;
    };
    blueman = {
      enable = true;
    };
  };

  hardware = {
    bluetooth = {
      settings = {
        General = {
          FastConnectable = true;
          Experimental = true;
          ControllerMode = "dual";
          Enable = "Source,Sink,Media,Socket";
        };
      };
      powerOnBoot = true;
      enable = true;
    };
  };
}
