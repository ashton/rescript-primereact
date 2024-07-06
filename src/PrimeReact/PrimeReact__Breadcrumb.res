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
  className?: string,
  template?: React.element,
  data?: string,
}

and menuItems = ShallowMenu(array<menuItem>) | DeepMenu(array<array<menuItem>>)

type componentProps = {
  children?: React.element,
  home: menuItem,
  model: array<menuItem>,
  //separatorIcon
  unstyled?: bool,
}
