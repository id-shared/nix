{
  programs = {
    waybar = {
      settings = {
        x = {
          modules-right = [
            "temprature"
            "battery"
            "disk"
            "memory"
            "cpu"
          ];
          modules-left = [
            "clock"
          ];
          modules-center = [
            "wlr/taskbar"
            "hyprland/workspaces"
          ];
          "hyprland/workspaces" = {
            persistent-workspaces = {
              "*" = 5;
            };
            format-icons = {
              "default" = "";
              "active" = "";
              "3" = "";
              "2" = "";
              "1" = "";
            };
            format = "{name}: {icon}";
          };
          temprature = {
            "format" = "{temperatureC}°C";
          };
          battery = {
            format = "{capacity}% {icon}";
            format-icons = [
              ""
              ""
              ""
              ""
              ""
            ];
          };
          disk = {
            interval = 1;
            format = "{percentage_used}%";
            path = "/";
          };
          memory = {
            interval = 1;
            format = "{percentage}% {swapPercentage}%";
            max-length = 10;
          };
          cpu = {
            max-length = 10;
            interval = 1;
            format = "{usage}% {avg_frequency}GHz";
          };
          clock = {
            format-alt = "{:%a, %d. %b  %H:%M}";
          };
          spacing = 4;
          position = "top";
          mode = "dock";
          margin = "0 0 0 0";
          layer = "bottom";
          height = 20;
          fixed-center = true;
        };
      };
      enable = true;
    };
  };
}
