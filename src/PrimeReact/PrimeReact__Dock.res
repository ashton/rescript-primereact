type position = Left | Right | Top | Bottom

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

type componentProps = {
  children?: React.element,
  footer?: React.element,
  header?: React.element,
  magnification?: bool,
  model?: array<menuItem>,
  position: position,
  tabIndex: int,
  unstyled: bool,
  onBlur: ReactEvent.Focus.t => unit,
  onFocus: ReactEvent.Focus.t => unit,
}

@module("primereact/dock") @react.component(: componentProps)
external make: componentProps => React.element = "Dock"
