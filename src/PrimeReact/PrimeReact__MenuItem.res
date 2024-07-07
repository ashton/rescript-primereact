type rec t = {
  id?: string,
  label?: string,
  icon?: string,
  url?: string,
  items?: ts,
  expanded?: bool,
  disabled?: bool,
  visible?: bool,
  target?: string,
  separator?: bool,
  //style
  className?: string,
  template?: React.element,
  data?: string,
  command?: unit => unit,
}

and ts = ShallowMenu(array<t>) | DeepMenu(array<array<t>>)

let make = (
  ~id: option<string>=?,
  ~label: option<string>=?,
  ~icon: option<string>=?,
  ~url: option<string>=?,
  ~items: option<ts>=?,
  ~expanded: option<bool>=?,
  ~disabled: option<bool>=?,
  ~visible: option<bool>=?,
  ~target: option<string>=?,
  ~separator: option<bool>=?,
  //style
  ~className: option<string>=?,
  ~template: option<React.element>=?,
  ~data: option<string>=?,
  ~command: option<unit => unit>=?,
) => {
  ?id,
  ?label,
  ?icon,
  ?url,
  ?items,
  ?expanded,
  ?disabled,
  ?visible,
  ?target,
  ?separator,
  ?className,
  ?template,
  ?data,
  ?command,
}
