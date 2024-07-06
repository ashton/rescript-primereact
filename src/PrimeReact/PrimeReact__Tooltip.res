module Tooltip = {
  type tooltipEventType = Both | Focus | Hover
  type position = Left | Top | Bottom | Right | Mouse
  type target = String(string) | List(string) | Component(React.element)

  type tooltipEvent = {
    originalEvent: ReactEvent.Synthetic.t,
    target: React.element,
  }

  type componentProps = {
    at?: string,
    autoHide?: bool,
    autoZIndex?: bool,
    baseZIndex?: bool,
    children?: React.element,
    className?: string,
    closeOnEscape?: bool,
    content?: React.element,
    disabled?: bool,
    event?: tooltipEventType,
    hideDelay?: int,
    hideEvent?: string,
    id?: string,
    mouseTrack?: bool,
    mouseTrackLeft?: int,
    mouseTrackRight?: int,
    mouseTrackTop?: int,
    my?: string,
    position?: position,
    showDelay?: int,
    showEvent?: string,
    showOnDisabled?: bool,
    //style
    target?: target,
    unstyled?: bool,
    updateDelay?: int,
    onBeforeHide: tooltipEvent => unit,
    onBeforeShow: tooltipEvent => unit,
    onHide: tooltipEvent => unit,
    onShow: tooltipEvent => unit,
  }

  @module("primereact/tooltip") @react.component(: componentProps)
  external make: componentProps => React.element = "Tooltip"
}
