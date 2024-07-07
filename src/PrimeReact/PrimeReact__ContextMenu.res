module ContextMenu = {
  type componentProps = {
    ariaLabel?: string,
    ariaLabelledBy?: string,
    autoZIndex?: bool,
    baseZIndex?: int,
    breakpoint?: string,
    children?: React.element,
    global?: bool,
    model?: array<PrimeReact__MenuItem.t>,
    scrollHeight?: string,
    unstyled?: bool,
    onHide?: ReactEvent.Synthetic.t => unit,
    onShow?: ReactEvent.Synthetic.t => unit,
  }

  @module("primereact/contextmenu") @react.component(: componentProps)
  external make: componentProps => React.element = "ContextMenu"
}
