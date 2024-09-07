{
  services = {
    remmina = {
      systemdService = {
        startupFlags = [ "--icon" ];
        enable = false;
      };
      enable = true;
      addRdpMimeTypeAssoc = true;
    };
  };
}
