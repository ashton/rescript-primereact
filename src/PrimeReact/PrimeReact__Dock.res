type position = Left | Right | Top | Bottom

type componentProps = {
  children?: React.element,
  footer?: React.element,
  header?: React.element,
  magnification?: bool,
  model?: array<PrimeReact__MenuItem.t>,
  position?: position,
  tabIndex?: int,
  unstyled?: bool,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
}

@module("primereact/dock") @react.component(: componentProps)
external make: componentProps => React.element = "Dock"
