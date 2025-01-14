let
  letter-spacing = 0;
  word-wrap = 96;
  text-type = "'PragmataPro Mono Liga', monospace";
  text-size = 15;
  text-high = 1;
in
{
  "editor.unicodeHighlight.allowedLocales" = { };
  "editor.unicodeHighlight.allowedCharacters" = {
    "α" = true;
    "·" = true;
  };
  "editor.rulers" = [
    word-wrap
  ];
  "editor.quickSuggestions" = {
    "strings" = "off";
    "other" = "on";
    "comments" = "off";
  };
  "editor.codeActionsOnSave" = { };
  "workbench.startupEditor" = "none";
  "workbench.settings.editor" = "json";
  "workbench.editorLargeFileConfirmation" = 1;
  "workbench.editor.untitled.labelFormat" = "name";
  "workbench.editor.splitSizing" = "distribute";
  "workbench.editor.showIcons" = true;
  "workbench.editor.revealIfOpen" = true;
  "workbench.editor.preventPinnedEditorClose" = "keyboardAndMouse";
  "workbench.editor.openSideBySideDirection" = "right";
  "workbench.editor.openPositioning" = "right";
  "workbench.editor.navigationScope" = "editorGroup";
  "workbench.editor.mouseBackForwardToNavigate" = true;
  "workbench.editor.languageDetection" = true;
  "workbench.editor.labelFormat" = "short";
  "workbench.editor.historyBasedLanguageDetection" = true;
  "workbench.editor.focusRecentEditorAfterClose" = true;
  "workbench.editor.enablePreviewFromQuickOpen" = false;
  "workbench.editor.enablePreviewFromCodeNavigation" = true;
  "workbench.editor.enablePreview" = true;
  "workbench.editor.empty.hint" = "text";
  "workbench.editor.editorActionsLocation" = "hidden";
  "workbench.editor.decorations.colors" = true;
  "workbench.editor.decorations.badges" = true;
  "workbench.editor.customLabels.enabled" = true;
  "workbench.editor.closeOnFileDelete" = true;
  "workbench.editor.closeEmptyGroups" = false;
  "workbench.editor.centeredLayoutAutoResize" = true;
  "workbench.editor.alwaysShowEditorActions" = true;
  "markdown.preview.lineHeight" = text-high;
  "markdown.preview.fontSize" = text-size;
  "markdown.preview.fontFamily" = "-apple-system, BlinkMacSystemFont, 'Segoe WPC', 'Segoe UI', system-ui, 'Ubuntu', 'Droid Sans', sans-serif";
  "terminal.integrated.smoothScrolling" = true;
  "terminal.integrated.scrollback" = 1000;
  "terminal.integrated.mouseWheelScrollSensitivity" = 1;
  "terminal.integrated.lineHeight" = text-high;
  "terminal.integrated.letterSpacing" = letter-spacing;
  "terminal.integrated.ignoreBracketedPasteMode" = false;
  "terminal.integrated.gpuAcceleration" = "on";
  "terminal.integrated.fontWeightBold" = "normal";
  "terminal.integrated.fontWeight" = "normal";
  "terminal.integrated.fontSize" = text-size;
  "terminal.integrated.fontFamily" = text-type;
  "terminal.integrated.enableImages" = true;
  "terminal.integrated.enableFileLinks" = "on";
  "terminal.integrated.defaultProfile.linux" = "fish";
  "terminal.integrated.customGlyphs" = true;
  "terminal.integrated.cursorStyleInactive" = "line";
  "terminal.integrated.cursorStyle" = "line";
  "terminal.integrated.accessibleViewPreserveCursorPosition" = true;
  "terminal.explorerKind" = "integrated";
  "notebook.output.lineHeight" = 0;
  "notebook.output.fontSize" = 0;
  "notebook.output.fontFamily" = "";
  "notebook.markup.fontSize" = text-size;
  "notebook.diff.overviewRuler" = false;
  "html.format.wrapLineLength" = letter-spacing;
  "editor.wrappingStrategy" = "simple";
  "editor.wrappingIndent" = "none";
  "editor.wordWrapColumn" = word-wrap;
  "editor.wordWrap" = "off";
  "editor.wordSeparators" = "~!@#^&*()+{}|:\"<>?`-=[]\\;',./";
  "editor.wordSegmenterLocales" = "en-US";
  "editor.wordBreak" = "keepAll";
  "editor.wordBasedSuggestions" = "matchingDocuments";
  "editor.useTabStops" = true;
  "editor.unusualLineTerminators" = "prompt";
  "editor.unicodeHighlight.nonBasicASCII" = true;
  "editor.unicodeHighlight.invisibleCharacters" = true;
  "editor.unicodeHighlight.includeStrings" = false;
  "editor.unicodeHighlight.includeComments" = false;
  "editor.unicodeHighlight.ambiguousCharacters" = true;
  "editor.unfoldOnClickAfterEndOfLine" = true;
  "editor.trimAutoWhitespace" = true;
  "editor.tabSize" = 2;
  "editor.tabFocusMode" = false;
  "editor.tabCompletion" = "onlySnippets";
  "editor.suggestSelection" = "first";
  "editor.suggestOnTriggerCharacters" = true;
  "editor.suggestLineHeight" = 0;
  "editor.suggestFontSize" = 0;
  "editor.suggest.snippetsPreventQuickSuggestions" = false;
  "editor.suggest.selectionMode" = "always";
  "editor.suggest.preview" = false;
  "editor.suggest.matchOnWordStartOnly" = false;
  "editor.suggest.localityBonus" = false;
  "editor.suggest.insertMode" = "insert";
  "editor.suggest.filterGraceful" = true;
  "editor.stickyTabStops" = false;
  "editor.stickyScroll.enabled" = false;
  "editor.stablePeek" = true;
  "editor.snippets.codeActions.enabled" = true;
  "editor.snippetSuggestions" = "inline";
  "editor.smoothScrolling" = true;
  "editor.smartSelect.selectSubwords" = true;
  "editor.smartSelect.selectLeadingAndTrailingWhitespace" = true;
  "editor.showUnused" = true;
  "editor.showFoldingControls" = "never";
  "editor.showDeprecated" = true;
  "editor.semanticHighlighting.enabled" = true;
  "editor.selectionHighlight" = true;
  "editor.selectionClipboard" = true;
  "editor.scrollbar.verticalScrollbarSize" = 8;
  "editor.scrollbar.vertical" = "hidden";
  "editor.scrollbar.scrollByPage" = false;
  "editor.scrollbar.ignoreHorizontalScrollbarInContentHeight" = false;
  "editor.scrollbar.horizontalScrollbarSize" = 8;
  "editor.scrollbar.horizontal" = "hidden";
  "editor.scrollPredominantAxis" = true;
  "editor.scrollBeyondLastLine" = false;
  "editor.scrollBeyondLastColumn" = 4;
  "editor.screenReaderAnnounceInlineSuggestion" = true;
  "editor.roundedSelection" = true;
  "editor.renderWhitespace" = "trailing";
  "editor.renderLineHighlightOnlyWhenFocus" = true;
  "editor.renderLineHighlight" = "none";
  "editor.renderFinalNewline" = "dimmed";
  "editor.renderControlCharacters" = true;
  "editor.rename.enablePreview" = true;
  "editor.quickSuggestionsDelay" = 250;
  "editor.peekWidgetDefaultFocus" = "editor";
  "editor.pasteAs.showPasteSelector" = "afterPaste";
  "editor.pasteAs.enabled" = true;
  "editor.padding.top" = 0;
  "editor.padding.bottom" = 0;
  "editor.overviewRulerBorder" = false;
  "editor.occurrencesHighlight" = "multiFile";
  "editor.multiCursorPaste" = "spread";
  "editor.multiCursorModifier" = "alt";
  "editor.mouseWheelZoom" = false;
  "editor.mouseWheelScrollSensitivity" = 1;
  "editor.minimap.enabled" = false;
  "editor.maxTokenizationLineLength" = 20000;
  "editor.matchBrackets" = "always";
  "editor.links" = true;
  "editor.linkedEditing" = true;
  "editor.lineNumbers" = "off";
  "editor.lineHeight" = text-high;
  "editor.lightbulb.enabled" = "off";
  "editor.letterSpacing" = letter-spacing;
  "editor.largeFileOptimizations" = true;
  "editor.language.colorizedBracketPairs" = null;
  "editor.language.brackets" = null;
  "editor.insertSpaces" = true;
  "editor.inlineSuggest.suppressSuggestions" = true;
  "editor.inlineSuggest.showToolbar" = "always";
  "editor.inlineSuggest.fontFamily" = "default";
  "editor.inlineSuggest.enabled" = true;
  "editor.inlineCompletionsAccessibilityVerbose" = true;
  "editor.inlayHints.padding" = false;
  "editor.inlayHints.fontSize" = 0;
  "editor.inlayHints.fontFamily" = "";
  "editor.inlayHints.enabled" = "offUnlessPressed";
  "editor.indentSize" = "tabSize";
  "editor.hover.sticky" = false;
  "editor.hover.hidingDelay" = 250;
  "editor.hover.enabled" = false;
  "editor.hover.delay" = 250;
  "editor.hover.above" = true;
  "editor.hideCursorInOverviewRuler" = true;
  "editor.guides.indentation" = true;
  "editor.guides.highlightActiveIndentation" = true;
  "editor.guides.highlightActiveBracketPair" = false;
  "editor.guides.bracketPairsHorizontal" = false;
  "editor.guides.bracketPairs" = false;
  "editor.glyphMargin" = false;
  "editor.formatOnType" = false;
  "editor.formatOnSaveMode" = "file";
  "editor.formatOnSave" = true;
  "editor.formatOnPaste" = false;
  "editor.fontWeight" = "normal";
  "editor.fontVariations" = true;
  "editor.fontSize" = text-size;
  "editor.fontLigatures" = true;
  "editor.fontFamily" = text-type;
  "editor.foldingStrategy" = "indentation";
  "editor.foldingMaximumRegions" = 1024;
  "editor.foldingImportsByDefault" = true;
  "editor.foldingHighlight" = true;
  "editor.folding" = true;
  "editor.find.seedSearchStringFromSelection" = "always";
  "editor.find.loop" = true;
  "editor.find.cursorMoveOnType" = true;
  "editor.find.autoFindInSelection" = "never";
  "editor.find.addExtraSpaceOnTop" = false;
  "editor.fastScrollSensitivity" = 5;
  "editor.experimentalWhitespaceRendering" = "font";
  "editor.experimentalInlineEdit.showToolbar" = "onHover";
  "editor.experimentalInlineEdit.fontFamily" = text-type;
  "editor.experimentalInlineEdit.enabled" = true;
  "editor.experimental.asyncTokenizationVerification" = false;
  "editor.experimental.asyncTokenizationLogging" = false;
  "editor.experimental.asyncTokenization" = true;
  "editor.emptySelectionClipboard" = true;
  "editor.dropIntoEditor.showDropSelector" = "afterDrop";
  "editor.dropIntoEditor.enabled" = true;
  "editor.dragAndDrop" = true;
  "editor.detectIndentation" = false;
  "editor.definitionLinkOpensInPeek" = false;
  "editor.defaultFormatter" = null;
  "editor.defaultFoldingRangeProvider" = null;
  "editor.defaultColorDecorators" = true;
  "editor.cursorWidth" = 0;
  "editor.cursorSurroundingLinesStyle" = "all";
  "editor.cursorSurroundingLines" = 0;
  "editor.cursorStyle" = "line";
  "editor.cursorSmoothCaretAnimation" = "on";
  "editor.cursorBlinking" = "solid";
  "editor.copyWithSyntaxHighlighting" = true;
  "editor.comments.insertSpace" = true;
  "editor.comments.ignoreEmptyLines" = true;
  "editor.colorDecoratorsLimit" = 1024;
  "editor.colorDecoratorsActivatedOn" = "clickAndHover";
  "editor.colorDecorators" = true;
  "editor.codeLensFontSize" = 0;
  "editor.codeLensFontFamily" = text-type;
  "editor.codeLens" = false;
  "editor.codeActions.triggerOnFocusChange" = true;
  "editor.codeActionWidget.showHeaders" = true;
  "editor.codeActionWidget.includeNearbyQuickFixes" = true;
  "editor.bracketPairColorization.independentColorPoolPerBracketType" = true;
  "editor.bracketPairColorization.enabled" = false;
  "editor.autoSurround" = "languageDefined";
  "editor.autoIndent" = "advanced";
  "editor.autoClosingQuotes" = "always";
  "editor.autoClosingOvertype" = "always";
  "editor.autoClosingDelete" = "always";
  "editor.autoClosingComments" = "always";
  "editor.autoClosingBrackets" = "always";
  "editor.accessibilitySupport" = "off";
  "editor.accessibilityPageSize" = 10;
  "editor.acceptSuggestionOnEnter" = "on";
  "editor.acceptSuggestionOnCommitCharacter" = true;
  "chat.editor.wordWrap" = "off";
  "chat.editor.lineHeight" = 0;
  "chat.editor.fontWeight" = "default";
  "chat.editor.fontSize" = text-size;
  "chat.editor.fontFamily" = "default";
}
