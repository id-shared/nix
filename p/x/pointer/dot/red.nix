{ lib, ... }: {
  home = {
    file =
      lib.foldl'
        (
          x: v:
            {
              ".local/share/icons/dot-red/${v}" = {
                source = "./∤/dot-red/${v}";
                enable = true;
              };
            }
            // x
        )
        { } [
        "index.theme"
        "cursors/wait2"
        "cursors/wait1"
        "cursors/pointer9"
        "cursors/pointer8"
        "cursors/pointer7"
        "cursors/pointer6"
        "cursors/pointer5"
        "cursors/pointer4"
        "cursors/pointer3"
        "cursors/pointer2"
        "cursors/pointer13"
        "cursors/pointer12"
        "cursors/pointer11"
        "cursors/pointer10"
        "cursors/pointer1"
        "cursors/link8"
        "cursors/link7"
        "cursors/link6"
        "cursors/link5"
        "cursors/link4"
        "cursors/link3"
        "cursors/link2"
        "cursors/link1"
        "cursor.theme"
      ];
  };
}
