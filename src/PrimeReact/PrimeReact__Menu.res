type menuAlignment = Left | Right

type compoenentProps = {
  autoZIndex?: bool,
  baseZIndex?: int,
  children?: React.element,
  closeOnEscape?: bool,
  model: array<PrimeReact__MenuItem.t>,
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
