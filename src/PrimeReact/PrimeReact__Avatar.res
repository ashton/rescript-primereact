type shape = Square | Circle
type size = Normal | Large | XLarge

type componentProps = {
  children: React.element,
  //icon
  image: string,
  imageAlt: string,
  imageFallback: string,
  label: string,
  shape: shape,
  size: size,
  template: React.element,
  unstyled: bool,
  onClick: ReactEvent.Mouse.t => unit,
  onImageError: ReactEvent.Synthetic.t => unit,
}

@module("primereact/avatar") @react.component(: componentProps)
external make: componentProps => React.element = "Avatar"
