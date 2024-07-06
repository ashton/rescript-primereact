module ContextMenu = {
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
    autoZIndex: bool,
    baseZIndex: int,
    breakpoint: string,
    children: React.element,
    global: bool,
    model: array<menuItem>,
    scrollHeight: string,
    unstyled: bool,
    onHide: ReactEvent.Synthetic.t => unit,
    onShow: ReactEvent.Synthetic.t => unit,
  }

  @module("primereact/contextmenu") @react.component(: componentProps)
  external make: componentProps => React.element = "ContextMenu"
}
