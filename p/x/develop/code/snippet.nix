{
  typescriptreact = {
    switch = {
      body = [
        "switch (A.can) {"
        "case Is.same ($1) ($2):"
        "  return $3;"
        "default:"
        "  return $4;"
        "}"
      ];
      description = "switch";
      prefix = [
        "switch"
      ];
    };
    import = {
      body = [
        "const $1= await import (`$2`);"
      ];
      description = "import";
      prefix = [
        "import"
      ];
    };
  };
}
