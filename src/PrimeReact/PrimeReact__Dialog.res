type position = Center | Left | Top | Bottom | Right | BottomRight | BottomLeft | TopRight | TopLeft

type dialogMaximizeEvent = {originalEvent: ReactEvent.Synthetic.t, maximized: bool}

type componentProps = {
  ariaCloseIconLabel?: string,
  baseZIndex?: int,
  blockScroll?: bool,
  breakPoints?: Dict.t<string>,
  children?: React.element,
  className?: string,
  closable?: bool,
  //closeIcon
  closeOnEscape?: bool,
  content?: React.element,
  contentClassName?: string,
  //contentStyle
  dismissableMask?: bool,
  draggable?: bool,
  focusOnShow?: bool,
  footer?: React.element,
  header?: React.element,
  headerClassName?: string,
  //headerStyle
  icons?: React.element,
  id?: string,
  keepInViewport?: bool,
  maskClassName?: string,
  //maskStyle
  maximizable?: bool,
  maximized?: bool,
  //maximizeIcon
  //minimizeIcon
  minX?: float,
  minY?: float,
  modal?: bool,
  position?: position,
  resizable?: string,
  rtl?: bool,
  showHeader?: bool,
  //style
  //transitionOptions
  unstyled?: bool,
  visible?: bool,
  onClick: ReactEvent.Pointer.t => unit,
  onDrag: ReactEvent.Mouse.t => unit,
  onDragEnd: ReactEvent.Mouse.t => unit,
  onDragStart: ReactEvent.Mouse.t => unit,
  onHide: string => unit,
  onMaskClick: ReactEvent.Mouse.t => unit,
  onMaximize: dialogMaximizeEvent => unit,
  onResize: ReactEvent.Mouse.t => unit,
  onResizeEnd: ReactEvent.Mouse.t => unit,
  onResizeStart: ReactEvent.Mouse.t => unit,
  onShow: unit => unit,
}

@module("primereact/dialog") @react.component(: componentProps)
external make: componentProps => React.element = "Dialog"
