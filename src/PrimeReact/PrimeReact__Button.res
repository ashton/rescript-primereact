type position = Left | Top | Bottom | Right
type severity = Success | Help | Warning | Secondary | Info | Danger
type size = Small | Large
type tooltipEvent = Both | Focus | Hover
type tooltipOpts = {
  at?: string,
  autoHide?: bool,
  autoZIndex?: bool,
  baseZIndex?: int,
  className?: string,
  closeOnEscape?: bool,
  disabled?: bool,
  event?: tooltipEvent,
  hideDelay?: int,
  hideEvent?: string,
  mouseTrack?: bool,
  mouseTrackLeft?: int,
  mouseTrackTop?: int,
  my?: string,
  position?: position,
  showDelay?: int,
  showEvent?: string,
  showOnDisable?: bool,
  unstyled?: bool,
}

type componentProps = {
  badge?: string,
  badgeClassName?: string,
  children?: React.element,
  disabled?: bool,
  //icon
  iconPos?: position,
  label?: string,
  link?: bool,
  loading?: bool,
  //loadingIcon
  outlined?: bool,
  plain?: bool,
  raised?: bool,
  rounded?: bool,
  severity: severity,
  size?: size,
  text?: bool,
  tooltip?: string,
  tooltipOptions?: tooltipOpts,
  unstyled?: bool,
  visible?: bool,
}

@module("primereact/button") @react.component(: componentProps)
external make: componentProps => React.element = "Button"
