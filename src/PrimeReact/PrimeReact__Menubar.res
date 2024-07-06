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
  ariaLabel: string,
  ariaLabelledBy: string,
  children: React.element,
  end: React.element,
  // menuIcon
  model: array<menuItem>,
  start: React.element,
  // submenuIcon
  unstyled: bool,
  onBlur: ReactEvent.Focus.t => unit,
  onFocus: ReactEvent.Focus.t => unit,
}

@module("primereact/menubar") @react.component(: componentProps)
external make: componentProps => React.element = "Menubar"
