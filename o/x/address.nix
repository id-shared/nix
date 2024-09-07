{ lib, ... }: {
  location = {
    longitude = 0.0;
    latitude = 0.0;
    provider = "geoclue2";
  };
  i18n = {
    extraLocaleSettings = {
      LC_ADDRESS = lib.mkForce "en_US.UTF-8";
      LC_IDENTIFICATION = lib.mkForce "en_US.UTF-8";
      LC_MEASUREMENT = lib.mkForce "en_US.UTF-8";
      LC_MONETARY = lib.mkForce "en_US.UTF-8";
      LC_NAME = lib.mkForce "en_US.UTF-8";
      LC_NUMERIC = lib.mkForce "en_US.UTF-8";
      LC_PAPER = lib.mkForce "en_US.UTF-8";
      LC_TELEPHONE = lib.mkForce "en_US.UTF-8";
      LC_TIME = lib.mkForce "en_US.UTF-8";
    };
    defaultLocale = lib.mkForce "en_US.UTF-8";
  };
  time = {
    timeZone = lib.mkForce "Asia/Kolkata";
  };
}
