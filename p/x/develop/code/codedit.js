($=>{
  const action9= z=>{
    const selector_exp= `.explorer-folders-view > .monaco-list > .monaco-scrollable-element > .monaco-list-rows > .monaco-list-row > .monaco-tl-row > .monaco-tl-contents > .monaco-icon-label > .monaco-icon-label-container > .monaco-icon-name-container > .label-name > .monaco-highlighted-label`;
    const selector_tab= `.tab > .monaco-icon-label > .monaco-icon-label-container > .monaco-icon-name-container > .label-name`;
    const element_list= Element.pull (`${selector_exp}, ${selector_tab}`) (z);

    return Element.each (element=>{
      const text= element.textContent;
      switch (true) {
      case eq (true) (text.endsWith (`.tsx`)):
        return Text.push (text.replaceAll (/\.tsx$/gu, ``)) (element);
      default:
        return false;
      }
    }) (element_list);
  };
  const action5= z=>{
    const find_1= `div.monaco-editor`;
    const pull_1= Element.pull (find_1) (z);

    return Element.each (_z=>{
      const find_2= `div.margin`;
      const find_3= `div.editor-scrollable`;
      const pull_2= Element.pull (find_2) (_z);
      const pull_3= Element.pull (find_3) (_z);

      Element.each (__z=>{
        // element_2.style.width= `${character_width}px`;

        return __z;
      }) (pull_2);

      Element.each (___z=>{
        // element_3.style.left= `${character_width}px`;

        return ___z;
      }) (pull_3);

      return true;
    }) (pull_1);
  };
  const action1= f=>z=>{
    const line_list= Line.list (z);

    return Element.each (line=>{
      const span_list= Span.list (line);

      return Element.each (span=>{
        return f (span);
      }) (span_list);
    }) (line_list);
  };
  const sector9= f=>{
    // eslint-disable-next-line no-undef
    return sector1 (f) (document);
  };
  const sector1= f=>z=>{
    return {
      action9: action9 (z),
      action5: action5 (z),
      action1: Element.each (action1 (f)) (Editor.list (z)),
    };
  };
  const style=   z=>{
    // eslint-disable-next-line functional/immutable-data
    z.style= `font-size: 15px;`;

    return z;
  };
  const actor=   f=>z=>{
    return Element.text (f) (z);
  };
  const az=      z_=>{
    return sector9 (Turn.to);
  };

  // eslint-disable-next-line no-undef
  addEventListener (`mouseover`, az);

  // eslint-disable-next-line no-undef
  addEventListener (`mouseup`, az);

  // eslint-disable-next-line no-undef
  addEventListener (`keyup`, az);

  const Replace= {
    switch: z=>{
      Text.push (z.textContent.replaceAll (/^switch$/gu, ``)) (z);

      return Element.text (_z=>{
        // eslint-disable-next-line functional/immutable-data
        _z.style= `font-size: 0`;

        return Element.next (__z=>{
          // eslint-disable-next-line functional/immutable-data
          __z.style= `font-size: 0`;

          return __z;
        }) (_z);
      }) (z);
    },
    return: z=>{
      Text.push (z.textContent.replaceAll (/^return$/gu, `↑`)) (z);

      return actor (style) (z);
    },
    default: z=>{
      Text.push (z.textContent.replaceAll (/^default$/gu, `|`)) (z);

      return actor (style) (z);
    },
    case: z=>{
      Text.push (z.textContent.replaceAll (/^case$/gu, `|`)) (z);

      return actor (style) (z);
    },
    await: z=>{
      Text.push (z.textContent.replaceAll (/^await$/gu, `←`)) (z);

      return actor (style) (z);
    },
    async: z=>{
      Text.push (z.textContent.replaceAll (/^async$/gu, `↓`)) (z);

      return actor (style) (z);
    },
  };
  const Convert= {
    inter: z=>{
      Text.push (z.textContent.replaceAll (/^\./gu, ` `)) (z);

      return actor (style) (z);
    },
    equal: z=>{
      Text.push (z.textContent.replaceAll (/^=/gu, `:`)) (z);

      return actor (style) (z);
    },
    close: z=>{
      Text.push (z.textContent.replaceAll (/^;/gu, `﹒`)) (z);

      return actor (style) (z);
    },
    aside: z=>{
      Text.push (z.textContent.replaceAll (/^,/gu, `﹒`)) (z);

      return actor (style) (z);
    },
    arrow: z=>{
      Text.push (z.textContent.replaceAll (/^=>/gu, `/ `)) (z);

      return actor (style) (z);
    },
  };
  const Turn=    {
    to: z=>{
      const text= z.textContent;
      const zone= z.className;
      switch (true) {
      case eq (zone) (`mtk7 mtki`):
        switch (true) {
        case (/^return$/gu).test (text):
          return Replace.return (z);
        case (/^switch$/gu).test (text):
          return Replace.switch (z);
        case (/^default$/gu).test (text):
          return Replace.default (z);
        case (/^case$/gu).test (text):
          return Replace.case (z);
        case (/^await$/gu).test (text):
          return Replace.await (z);
        case (/^async$/gu).test (text):
          return Replace.async (z);
        default:
          return actor (_z=>_z) (z);
        }
      case eq (zone) (`mtk1 mtki mtks`):
        switch (true) {
        case (/^[=][>]$/gu).test (text):
          return Convert.arrow (z);
        default:
          return actor (_z=>_z) (z);
        }
      case eq (zone) (`mtk1 mtki`):
        switch (true) {
        case (/^[=]$/gu).test (text):
          return Convert.equal (z);
        case (/^[.]$/gu).test (text):
          return Convert.inter (z);
        case (/^[;]$/gu).test (text):
          return Convert.close (z);
        case (/^[,]$/gu).test (text):
          return Convert.aside (z);
        default:
          return actor (_z=>_z) (z);
        }
      default:
        return actor (_z=>_z) (z);
      }
    },
  };
  const Span=    {
    list: z=>{
      return Element.pull (`span > span[class]`) (z);
    },
  };
  const Line=    {
    list: z=>{
      return Element.pull (`div.view-lines > div.view-line`) (z);
    },
  };
  const Editor=  {
    list: z=>{
      return Element.pull (`div.editor-instance`) (z);
    },
  };
  const Text=    {
    push: v=>z=>{
      // eslint-disable-next-line functional/immutable-data
      z.textContent= v;

      return z;
    },
  };
  const Element= {
    text: f=>z=>{
      const next= z.nextSibling;

      z.setAttribute (`text`, z.textContent);
      switch (true) {
      // eslint-disable-next-line unicorn/no-null
      case eq (null) (next):
        return f (z);
      default:
        z.setAttribute (`next`, next.textContent);

        return f (z);
      }
    },
    pull: v=>z=>{
      return z.querySelectorAll (v);
    },
    pose: z=>{
      return A.to_number (z.style.top);
    },
    next: f=>z=>{
      const next= z.nextSibling;
      switch (true) {
      // eslint-disable-next-line unicorn/no-null
      case eq (null) (next):
        return true;
      default:
        f (next);

        return Element.next (f) (next);
      }
    },
    each: f=>z=>{
      return loop (f) (z);
    },
  };
  const A= {
    to_number: z=>{
      return Number (z.replaceAll (/px$/gu, ``));
    },
    remove_n2: z=>{
      return A.pure (number=>! eq (2) (number)) (z);
    },
    pure: f=>z=>{
      return z.filter (f);
    },
    loop: f=>e=>{
      const back= [];
      // eslint-disable-next-line functional/no-loop-statements
      for (const node of e) {
      // eslint-disable-next-line functional/immutable-data
        back.push (f (node));
      }
      return back;
    },
    eq: n=>z=>{
      return Object.is (n, z);
    },
    each: f=>z=>{
      return z.map (f);
    },
    adjunct_n3: e=>{
      return flat (1) (each (number=>{
        const current= Number (number);

        return [
          current,
        ];
      }) (e));
    },
  };
  const loop= f=>e=>{
    const back= [];
    // eslint-disable-next-line functional/no-loop-statements
    for (const node of e) {
      // eslint-disable-next-line functional/immutable-data
      back.push (f (node));
    }
    return back;
  };
  const flat= n=>z=>{
    return z.flat (n);
  };
  const each= f=>z=>{
    return z.map (f);
  };
  const eq=   a=>z=>{
    return Object.is (a, z);
  };

  return $;
}) (globalThis);
