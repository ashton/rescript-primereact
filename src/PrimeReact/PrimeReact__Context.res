module Provider = {
  type valueProps = {unstyled?: bool}
  type providerProps = {
    children?: React.element,
    value?: valueProps,
  }

  @module("primereact/api") @react.component(: providerProps)
  external make: providerProps => React.element = "PrimeReactProvider"
}
