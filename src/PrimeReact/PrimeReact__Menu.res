type menuAlignment = Left | Right

type rec menuItem = {
  id?: string,
  label?: string,
  icon?: string,
  url?: string,
  items?: menuItems,
  expanded?: bool,
  disabled?: bool,
  visible?: bool,
  target?: string,
  separator?: bool,
  //style
  className?: string,
  template?: React.element,
  data?: string,
}

and menuItems = ShallowMenu(array<menuItem>) | DeepMenu(array<array<menuItem>>)

type compoenentProps = {
  autoZIndex?: bool,
  baseZIndex?: int,
  children?: React.element,
  closeOnEscape?: bool,
  model: array<menuItem>,
  popup?: bool,
  popupAlignment?: menuAlignment,
  tabIndex?: int,
  unstyled?: bool,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
  onHide?: ReactEvent.Focus.t => unit,
  onShow?: ReactEvent.Focus.t => unit,
}

@module("primereact/menu") @react.component(: compoenentProps)
external make: compoenentProps => React.element = "Menu"

let makeMenuItem = (
  ~id: option<string>=?,
  ~label: option<string>=?,
  ~icon: option<string>=?,
  ~url: option<string>=?,
  ~items: option<menuItems>=?,
  ~expanded: option<bool>=?,
  ~disabled: option<bool>=?,
  ~visible: option<bool>=?,
  ~target: option<string>=?,
  ~separator: option<bool>=?,
  //style
  ~className: option<string>=?,
  ~template: option<React.element>=?,
  ~data: option<string>=?,
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
}
