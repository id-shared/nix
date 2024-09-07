{
  services = {
    glance = {
      settings = {
        pages = [
          {
            columns = [
              {
                size = "full";
                widgets = [
                  {
                    type = "calendar";
                  }
                ];
              }
            ];
            name = "Calendar";
          }
        ];
      };
      enable = true;
    };
  };
}
