module Toolbar = {
  type componentProps = {
    center?: React.element,
    children?: React.element,
    end?: React.element,
    start?: React.element,
    unstyled?: bool,
  }

  @module("primereact/toolbar") @react.component(: componentProps)
  external make: componentProps => React.element = "Toolbar"
}
