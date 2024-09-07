{ lib, ... }: {
  home = {
    file =
      lib.foldl'
        (
          x: v:
            {
              ".local/share/fonts/${v}" = {
                source = ./pragmata-pro/${v};
                enable = true;
              };
            }
            // x
        )
        { } [
        "PragmataProBold.ttf"
        "PragmataProBoldItalic.ttf"
        "PragmataProBoldItalicLiga.ttf"
        "PragmataProBoldLiga.ttf"
        "PragmataProItalic.ttf"
        "PragmataProItalicLiga.ttf"
        "PragmataProMonoBold.ttf"
        "PragmataProMonoBoldItalic.ttf"
        "PragmataProMonoBoldItalicLiga.ttf"
        "PragmataProMonoBoldLiga.ttf"
        "PragmataProMonoItalic.ttf"
        "PragmataProMonoItalicLiga.ttf"
        "PragmataProMonoRegular.ttf"
        "PragmataProMonoRegularLiga.ttf"
        "PragmataProRegularLiga.ttf"
      ];
  };
}
