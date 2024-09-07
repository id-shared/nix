{
  services = {
    wstunnel = {
      servers = {
        x = {
          restrictTo = {
            host = "127.0.0.1";
            port = 22;
          };
          listen = {
            host = "[::]";
            port = 8080;
          };
          enableHTTPS = true;
          autoStart = true;
        };
      };
      enable = true;
    };
  };
}
