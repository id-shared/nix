let
  yaml = import ./setting/yaml.nix;
  html = import ./setting/html.nix;
  file = import ./setting/file.nix;
  eslint = import ./setting/eslint.nix;
  editor = import ./setting/editor.nix;
  design = import ./setting/design.nix;
  colour = import ./setting/colour.nix;
in
yaml
// html
// file
// eslint
// editor
// design
// colour
// {
  "[nix]" = {
    "editor.defaultFormatter" = "jnoortheen.nix-ide";
  };
  "screencastMode.keyboardOptions" = {
    "showCommandGroups" = false;
    "showCommands" = true;
    "showKeybindings" = true;
    "showKeys" = true;
    "showSingleEditorCursorMoves" = true;
  };
  "css.lint.validProperties" = [ ];
  "css.customData" = [ ];
  "typescript.workspaceSymbols.scope" = "currentProject";
  "typescript.workspaceSymbols.excludeLibrarySymbols" = true;
  "typescript.validate.enable" = true;
  "typescript.updateImportsOnFileMove.enabled" = "always";
  "typescript.tsserver.web.typeAcquisition.enabled" = true;
  "typescript.tsserver.web.projectWideIntellisense.suppressSemanticErrors" = false;
  "typescript.tsserver.web.projectWideIntellisense.enabled" = true;
  "typescript.tsserver.watchOptions" = { };
  "typescript.tsserver.useSyntaxServer" = "never";
  "typescript.tsserver.nodePath" = "node";
  "typescript.tsserver.maxTsServerMemory" = 3072;
  "typescript.tsserver.log" = "off";
  "typescript.tsserver.experimental.useVsCodeWatcher" = false;
  "typescript.tsserver.experimental.enableProjectDiagnostics" = true;
  "typescript.tsserver.enableTracing" = true;
  "typescript.tsserver.enableRegionDiagnostics" = false;
  "typescript.tsc.autoDetect" = "on";
  "typescript.surveys.enabled" = false;
  "typescript.suggestionActions.enabled" = true;
  "typescript.suggest.paths" = true;
  "typescript.suggest.objectLiteralMethodSnippets.enabled" = true;
  "typescript.suggest.jsdoc.generateReturns" = true;
  "typescript.suggest.includeCompletionsForImportStatements" = true;
  "typescript.suggest.includeAutomaticOptionalChainCompletions" = true;
  "typescript.suggest.enabled" = true;
  "typescript.suggest.completeJSDocs" = true;
  "typescript.suggest.completeFunctionCalls" = true;
  "typescript.suggest.classMemberSnippets.enabled" = true;
  "typescript.suggest.autoImports" = true;
  "typescript.reportStyleChecksAsWarnings" = true;
  "typescript.referencesCodeLens.showOnAllFunctions" = true;
  "typescript.referencesCodeLens.enabled" = true;
  "typescript.preferences.useAliasesForRenames" = false;
  "typescript.preferences.renameMatchingJsxTags" = true;
  "typescript.preferences.quoteStyle" = "double";
  "typescript.preferences.preferTypeOnlyAutoImports" = true;
  "typescript.preferences.jsxAttributeCompletionStyle" = "braces";
  "typescript.preferences.includePackageJsonAutoImports" = "on";
  "typescript.preferences.importModuleSpecifierEnding" = "auto";
  "typescript.preferences.importModuleSpecifier" = "project-relative";
  "typescript.preferences.autoImportFileExcludePatterns" = [ ];
  "typescript.preferGoToSourceDefinition" = true;
  "typescript.locale" = "en";
  "typescript.inlayHints.variableTypes.suppressWhenTypeMatchesName" = false;
  "typescript.inlayHints.variableTypes.enabled" = false;
  "typescript.inlayHints.propertyDeclarationTypes.enabled" = false;
  "typescript.inlayHints.parameterTypes.enabled" = false;
  "typescript.inlayHints.parameterNames.suppressWhenArgumentMatchesName" = false;
  "typescript.inlayHints.parameterNames.enabled" = "none";
  "typescript.inlayHints.functionLikeReturnTypes.enabled" = false;
  "typescript.inlayHints.enumMemberValues.enabled" = false;
  "typescript.implementationsCodeLens.showOnInterfaceMethods" = true;
  "typescript.implementationsCodeLens.enabled" = true;
  "typescript.format.enable" = false;
  "typescript.experimental.updateImportsOnPaste" = false;
  "typescript.enablePromptUseWorkspaceTsdk" = false;
  "typescript.disableAutomaticTypeAcquisition" = false;
  "typescript.check.npmIsInstalled" = true;
  "typescript.autoClosingTags" = true;
  "testing.autoRun.delay" = 250;
  "sortLines.sortEntireFile" = true;
  "sortLines.ignoreUnselectedLastLine" = false;
  "sortLines.filterBlankLines" = true;
  "redhat.telemetry.enabled" = false;
  "nix.serverSettings" = {
    "nixd" = {
      "formatting" = {
        "command" = [ "nixfmt" ];
      };
    };
  };
  "nix.serverPath" = "nixd";
  "nix.formatterPath" = "nixfmt";
  "nix.enableLanguageServer" = true;
  "js/ts.implicitProjectConfig.target" = "ESNext";
  "js/ts.implicitProjectConfig.strictNullChecks" = true;
  "js/ts.implicitProjectConfig.strictFunctionTypes" = true;
  "js/ts.implicitProjectConfig.module" = "ESNext";
  "js/ts.implicitProjectConfig.experimentalDecorators" = false;
  "js/ts.implicitProjectConfig.checkJs" = true;
  "javascript.validate.enable" = false;
  "javascript.updateImportsOnFileMove.enabled" = "always";
  "javascript.format.enable" = false;
  "inlineChat.mode" = "live";
  "inlineChat.holdToSpeech" = true;
  "inlineChat.finishOnType" = false;
  "inlineChat.accessibleDiffView" = "on";
  "inlineChat.acceptedOrDiscardBeforeSave" = true;
  "http.experimental.systemCertificatesV2" = true;
  "git.verboseCommit" = true;
  "git.showProgress" = true;
  "git.openRepositoryInParentFolders" = "always";
  "git.enabled" = true;
  "git.enableSmartCommit" = true;
  "git.defaultBranchName" = "x";
  "git.decorations.enabled" = false;
  "git.confirmSync" = false;
  "git.autofetch" = true;
  "extensions.ignoreRecommendations" = false;
  "extensions.autoUpdate" = false;
  "css.validate" = false;
  "css.trace.server" = "off";
  "css.lint.zeroUnits" = "error";
  "css.lint.vendorPrefix" = "error";
  "css.lint.unknownVendorSpecificProperties" = "error";
  "css.lint.unknownProperties" = "error";
  "css.lint.unknownAtRules" = "error";
  "css.lint.universalSelector" = "error";
  "css.lint.propertyIgnoredDueToDisplay" = "error";
  "css.lint.important" = "error";
  "css.lint.importStatement" = "ignore";
  "css.lint.ieHack" = "error";
  "css.lint.idSelector" = "error";
  "css.lint.hexColorLength" = "error";
  "css.lint.fontFaceProperties" = "error";
  "css.lint.float" = "error";
  "css.lint.emptyRules" = "error";
  "css.lint.duplicateProperties" = "error";
  "css.lint.compatibleVendorPrefixes" = "error";
  "css.lint.boxModel" = "error";
  "css.lint.argumentsInColorFunction" = "error";
  "css.hover.references" = true;
  "css.hover.documentation" = true;
  "css.format.spaceAroundSelectorSeparator" = true;
  "css.format.preserveNewLines" = false;
  "css.format.newlineBetweenSelectors" = true;
  "css.format.newlineBetweenRules" = true;
  "css.format.maxPreserveNewLines" = 2;
  "css.format.enable" = true;
  "css.format.braceStyle" = "collapse";
  "css.completion.triggerPropertyValueCompletion" = true;
  "css.completion.completePropertyWithSemicolon" = true;
  "comments.visible" = true;
  "comments.useRelativeTime" = true;
  "comments.openView" = "firstFile";
  "comments.maxHeight" = true;
  "comments.collapseOnResolve" = true;
  "breadcrumbs.enabled" = false;
  "application.experimental.rendererProfiling" = true;
}
