type severity = Success | Warning | Info | Danger
type size = Normal | Large | XLarge

type componentProps = {
  children: React.element,
  severity: option<severity>,
  size: option<size>,
  unstyled: bool,
  value: string,
}

@module("primereact/badge") @react.component(: componentProps)
external make: componentProps => React.element = "Badge"
