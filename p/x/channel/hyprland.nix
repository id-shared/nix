{ pkgs, ... }:
{
  wayland = {
    windowManager = {
      hyprland = {
        xwayland = {
          enable = true;
        };
        systemd = {
          enableXdgAutostart = false;
          enable = true;
        };
        settings = {
          xwayland = {
            use_nearest_neighbor = false;
            force_zero_scaling = false;
          };
          workspace = [ "name:special, rounding:false, gapsout:0, gapsin:0, decorate:false, border:false" ];
          windowrulev2 = [
            "fullscreenstate 0 2,class:^.+$"
            "noinitialfocus,class:^.+$"
          ];
          windowrule = [ ];
          monitor = [ ",5120x2880,0x0,1,bitdepth,10" ];
          misc = {
            vrr = 0;
            vfr = true;
            render_ahead_safezone = 1;
            render_ahead_of_time = false;
            new_window_takes_over_fullscreen = 1;
            mouse_move_focuses_monitor = true;
            mouse_move_enables_dpms = true;
            key_press_enables_dpms = true;
            force_default_wallpaper = 0;
            focus_on_activate = false;
            enable_swallow = true;
            disable_splash_rendering = true;
            disable_hyprland_logo = true;
            disable_autoreload = false;
            close_special_on_empty = true;
            background_color = "rgba(FFFFFFFF)";
            animate_mouse_windowdragging = false;
            animate_manual_resizes = false;
            always_follow_on_dnd = false;
            allow_session_lock_restore = true;
          };
          master = {
            special_scale_factor = 0.8;
            orientation = "right";
            new_on_top = false;
            mfact = 0.625;
            allow_small_split = false;
          };
          input = {
            sensitivity = 0.0;
            repeat_rate = 50;
            repeat_delay = 250;
            natural_scroll = true;
            mouse_refocus = false;
            kb_options = "compose:ralt, ctrl:swap_lwin_lctl";
            kb_layout = "us";
            force_no_accel = true;
            follow_mouse = 0;
            float_switch_override_focus = 2;
          };
          group = {
            groupbar = {
              enabled = true;
            };
          };
          gestures = {
            workspace_swipe = true;
          };
          general = {
            resize_on_border = true;
            no_border_on_floating = false;
            layout = "master";
            gaps_out = 0.0;
            gaps_in = 0.0;
            "col.inactive_border" = "rgba(BFBFBFFF)";
            "col.active_border" = "rgba(BFBFBFFF)";
            border_size = 0;
            apply_sens_to_raw = true;
            allow_tearing = false;
          };
          exec-once = [
            "[workspace special:browser silent] MOZ_ENABLE_WAYLAND=1 firefox"
            "[workspace special:command silent] foot btop"
            "[workspace special:manager silent] minder"

            "[workspace 1 silent] code-insiders --ozone-platform=wayland"
            "[workspace 1 silent] foot"
          ];
          env = [
            "HYPRCURSOR_THEME,dot-red"
            "HYPRCURSOR_SIZE,6"
            "NIXOS_OZONE_WL,1"
          ];
          dwindle = {
            use_active_for_splits = false;
            split_width_multiplier = 0.5;
            special_scale_factor = 0.8;
            smart_split = false;
            smart_resizing = true;
            pseudotile = true;
            preserve_split = true;
            permanent_direction_override = true;
            no_gaps_when_only = 0;
            force_split = 1;
            default_split_ratio = 1.0;
          };
          decoration = {
            blur = {
              xray = true;
              special = false;
              new_optimizations = true;
              enabled = false;
            };

            shadow_scale = 1.0;
            shadow_render_power = 1;
            shadow_range = 1;
            shadow_offset = "0 0";
            shadow_ignore_window = true;
            drop_shadow = false;
            "col.shadow_inactive" = "rgba(BFBFBFFF)";
            "col.shadow" = "rgba(BFBFBFFF)";

            screen_shader = "~/.config/hypr/shading.glsl";
            rounding = 0;

            dim_strength = 6.25e-2;
            dim_special = 0.0;
            dim_inactive = false;
            dim_around = 0.0;
          };
          debug = {
            suppress_errors = false;
            error_limit = 4;
            error_position = 1;
            enable_stdout_logs = true;
            disable_logs = true;
            damage_tracking = 0;
            damage_blink = false;
            colored_stdout_logs = true;
          };
          # cursor = {
          #   zoom_factor = 1.0;
          #   no_warps = true;
          #   no_hardware_cursors = true;
          #   inactive_timeout = 0;
          #   hotspot_padding = 1;
          #   hide_on_touch = false;
          #   hide_on_key_press = false;
          #   default_monitor = "eDP-1";
          #   enable_hyprcursor = true;
          # };
          binds = {
            workspace_back_and_forth = false;
            scroll_event_delay = 250;
            pass_mouse_when_bound = false;
            allow_workspace_cycles = false;
          };
          bindm = [
            "mod4      , mouse:273, resizewindow"
            "mod4      , mouse:272, movewindow"
          ];
          bindl = [
            ", XF86AudioRaiseVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 4%+"
            ", XF86AudioLowerVolume,  exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 4%-"
            ", XF86AudioMicMute,      exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
            ", XF86AudioMute,         exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
            ", XF86MonBrightnessUp,   exec, brightnessctl set 4%+"
            ", XF86MonBrightnessDown, exec, brightnessctl set 4%-"
          ];
          bind = [
            "mod4 shift, backspace, movetoworkspace, special:command"
            "mod4      , backspace, togglespecialworkspace, command"
            "mod4 shift, space, movetoworkspace, special:browser"
            "mod4      , space, togglespecialworkspace, browser"
            "mod4 shift, tab, movetoworkspace, special:manager"
            "mod4      , tab, togglespecialworkspace, manager"
            "mod4 shift, return, exec, rofi -show window"
            "mod4      , return, exec, rofi -show drun"
            "mod4 shift, escape, exec, sleep 1; hyprctl dispatch dpms off"
            "mod4      , escape, exec, loginctl lock-session"
            "mod4 shift, right, movewindow, r"
            "mod4      , right, movefocus, r"
            "mod4 shift, left, movewindow, l"
            "mod4      , left, movefocus, l"
            "mod4 shift, down, movewindow, d"
            "mod4      , down, movefocus, d"
            "mod4 shift, up, movewindow, u"
            "mod4      , up, movefocus, u"
            "mod4 shift, f, fullscreen, 1"
            "mod4      , f, fullscreen, 0"
            "mod4 shift, q, exit"
            "mod4      , q, killactive"
            "mod4 shift, 9, movetoworkspace, 9"
            "mod4      , 9, workspace, 9"
            "mod4 shift, 8, movetoworkspace, 8"
            "mod4      , 8, workspace, 8"
            "mod4 shift, 7, movetoworkspace, 7"
            "mod4      , 7, workspace, 7"
            "mod4 shift, 6, movetoworkspace, 6"
            "mod4      , 6, workspace, 6"
            "mod4 shift, 5, movetoworkspace, 5"
            "mod4      , 5, workspace, 5"
            "mod4 shift, 4, movetoworkspace, 4"
            "mod4      , 4, workspace, 4"
            "mod4 shift, 3, movetoworkspace, 3"
            "mod4      , 3, workspace, 3"
            "mod4 shift, 2, movetoworkspace, 2"
            "mod4      , 2, workspace, 2"
            "mod4 shift, 1, movetoworkspace, 1"
            "mod4      , 1, workspace, 1"
          ];
          animations = {
            enabled = false;
          };
        };
        extraConfig = "";
        enable = true;
      };
    };
  };

  programs = {
    hyprlock = {
      settings = {
        general = {
          text_trim = true;
          no_fade_in = false;
          hide_cursor = true;
          grace = 0;
          disable_loading_bar = false;
        };

        background = [
          {
            path = "screenshot";
            blur_size = 8;
            blur_passes = 3;
          }
        ];

        input-field = [
          {
            size = "256, 64";
            shadow_passes = 2;
            position = "0, -80";
            placeholder_text = "";
            outline_thickness = 5;
            outer_color = "rgb(24, 25, 38)";
            monitor = "";
            inner_color = "rgb(91, 96, 120)";
            font_color = "rgb(202, 211, 245)";
            fade_on_empty = false;
            dots_center = true;
          }
        ];
      };
      enable = true;
    };
  };

  services = {
    hypridle = {
      settings = {
        general = {
          unlock_cmd = "";
          lock_cmd = "pidof ${pkgs.hyprlock}/bin/hyprlock || ${pkgs.hyprlock}/bin/hyprlock";
          ignore_dbus_inhibit = false;
          before_sleep_cmd = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off";
          after_sleep_cmd = "${pkgs.hyprland}/bin/hyprctl dispatch dpms on";
        };

        listener = [
          {
            timeout = 256;
            on-timeout = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off";
            on-resume = "${pkgs.hyprland}/bin/hyprctl dispatch dpms on";
          }
          {
            timeout = 256;
            on-timeout = "${pkgs.hyprlock}/bin/hyprlock";
            on-resume = "";
          }
        ];
      };
      enable = true;
    };
  };

  home = {
    file = {
      ".config/hypr/shading.glsl" = {
        source = ./hyprland/shading.glsl;
        enable = true;
      };
    };
  };
}
