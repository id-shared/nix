{
  programs = {
    btop = {
      settings = {
        zfs_arc_cached = false;
        vim_keys = false;
        use_fstab = true;
        update_ms = 100;
        truecolor = true;
        theme_background = false;
        temp_scale = "celsius";
        swap_disk = true;
        shown_boxes = "proc mem net cpu";
        show_uptime = true;
        show_swap = true;
        show_io_stat = true;
        show_disks = true;
        show_cpu_freq = true;
        show_coretemp = true;
        show_battery = true;
        selected_battery = "Auto";
        rounded_corners = true;
        proc_tree = true;
        proc_sorting = "memory";
        proc_reversed = false;
        proc_per_core = false;
        proc_mem_bytes = true;
        proc_left = true;
        proc_info_smaps = true;
        proc_gradient = false;
        proc_filter_kernel = true;
        proc_cpu_graphs = false;
        proc_colors = true;
        presets = "mem:0:block,net:0:block,cpu:0:block";
        only_physical = false;
        net_upload = 100;
        net_sync = true;
        net_iface = "enp4s0";
        net_download = 100;
        net_auto = true;
        mem_graphs = false;
        mem_below_net = false;
        log_level = "DEBUG";
        io_mode = false;
        io_graph_speeds = "";
        io_graph_combined = false;
        graph_symbol_proc = "block";
        graph_symbol_net = "block";
        graph_symbol_mem = "block";
        graph_symbol_cpu = "block";
        graph_symbol = "block";
        force_tty = false;
        disks_filter = "exclude=/boot";
        disk_free_priv = true;
        custom_cpu_name = "";
        cpu_single_graph = false;
        cpu_sensor = "Auto";
        cpu_invert_lower = true;
        cpu_graph_upper = "user";
        cpu_graph_lower = "system";
        cpu_core_map = "";
        cpu_bottom = true;
        color_theme = "whiteout";
        clock_format = "%X";
        check_temp = true;
        base_10_sizes = false;
        background_update = true;
      };
      enable = true;
    };
  };
}