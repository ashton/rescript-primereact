type direction = Left | Right | Up | Down | UpLeft | UpRight | DownLeft | DownRight
type form = Linear | Circle | SemiCircle | QuarterCircle

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
  buttonClassName?: string,
  //buttonStyle
  buttonTemplate?: React.element,
  children?: React.element,
  direction?: direction,
  disabled?: bool,
  //hideIcon
  hideOnClickOutside?: bool,
  mask?: bool,
  maskClassName?: string,
  //    maskStyle?: string,
  model?: array<menuItem>,
  radius?: int,
  rotateAnimation?: bool,
  //showIcon
  transitionDelay?: int,
  @as("type") _type?: form,
  unstyled?: bool,
  visible?: bool,
  onClick?: ReactEvent.Mouse.t => unit,
  onHide?: ReactEvent.Synthetic.t => unit,
  onShow?: ReactEvent.Synthetic.t => unit,
  onVisibleChange?: bool => unit,
}

@module("primereact/speeddial") @react.component(: componentProps)
external make: componentProps => React.element = "SpeedDial"
