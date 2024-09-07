{
  virtualisation = {
    libvirtd = {
      enable = true;
    };
  };
  users = {
    extraGroups = {
      libvirtd = {
        members = [
          "x"
        ];
      };
    };
  };
  programs = {
    virt-manager = {
      enable = true;
    };
  };
}
