type componentProps = {
  ariaLabel?: string,
  ariaLabelledBy?: string,
  children?: React.element,
  end?: React.element,
  // menuIcon
  model?: array<PrimeReact__MenuItem.t>,
  start?: React.element,
  // submenuIcon
  unstyled?: bool,
  onBlur?: ReactEvent.Focus.t => unit,
  onFocus?: ReactEvent.Focus.t => unit,
}

@module("primereact/menubar") @react.component(: componentProps)
external make: componentProps => React.element = "Menubar"
