type menuAlignment = Left | Right

type rec menuItem = {
  id?: string,
  label?: string,
  icon?: React.element,
  url?: string,
  items: menuItems,
  expanded?: bool,
  disabled?: bool,
  visible?: bool,
  target?: string,
  separator?: bool,
  //style
  className: string,
  template: React.element,
  data: string,
}

and menuItems = ShallowMenu(array<menuItem>) | DeepMenu(array<array<menuItem>>)

type compoenentProps = {
  autoZIndex?: bool,
  baseZIndex: int,
  children?: React.element,
  closeOnEscape: bool,
  model: array<menuItem>,
  popup: bool,
  popupAlignment: menuAlignment,
  tabIndex: int,
  unstyled: bool,
  onBlur: ReactEvent.Focus.t => unit,
  onFocus: ReactEvent.Focus.t => unit,
  onHide: ReactEvent.Focus.t => unit,
  onShow: ReactEvent.Focus.t => unit,
}

@module("primereact/menu") @react.component(: compoenentProps)
external make: compoenentProps => React.element = "Menu"
