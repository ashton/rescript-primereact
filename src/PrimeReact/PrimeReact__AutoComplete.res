type changeEvent<'value> = {
  value: 'value,
  checked: bool,
  originalEvent: ReactEvent.Form.t,
}
type selectEvent<'value> = {value: 'value, originalEvent: ReactEvent.Form.t}
type unselectEvent<'value> = {value: 'value, originalEvent: ReactEvent.Form.t}
type dropdownClickEvent = {query: string}
type completeEvent = {query: string}

type onChangeEvent<'value> = {value: 'value}
type dropdownMode = Blank | Current
type variant = Filled | Outlined
type componentProps<'value> = {
  autoFocus?: bool,
  autoHighlight?: bool,
  children?: React.element,
  className?: string,
  delay?: int,
  disabled?: bool,
  dropdown?: bool,
  dropdownAriaLabel?: string,
  dropdonwAutoFocus?: bool,
  //dropdownIcon
  dropdownMode?: dropdownMode,
  emptyMessage?: string,
  field?: string,
  id?: string,
  inputClassName?: string,
  inputId?: string,
  inputRef?: React.ref<React.element>,
  // inputStyle
  invalid?: bool,
  //itemTemplate
  //loadingIcon
  maxLength?: int,
  minLength?: int,
  multiple?: bool,
  name?: string,
  optionGroupChildren?: string,
  optionGroupLabel?: string,
  // optionGroupTemplate
  panelClassName?: string,
  //panelFooterTemplate
  //panelStyle
  placeholder?: string,
  //pt
  //ptOptions
  readOnly?: bool,
  // removeTokenIcon
  required?: bool,
  scrollHeight?: string,
  // selectedItemTemplate
  selectionLimit?: int,
  showEmptyMessage?: bool,
  size?: int,
  suggestions?: array<'value>,
  tooltip?: string,
  //tooltipOptions
  //transitionOptions
  _type?: string,
  unstyled?: bool,
  value: 'value,
  variant: variant,
  //callbacks
  completeMethod: completeEvent => unit,
  onBlur: ReactEvent.Focus.t => unit,
  onChange: onChangeEvent<'value> => unit,
  onClear: unit => unit,
  onClick: ReactEvent.Mouse.t => unit,
  onContextMenu: ReactEvent.Mouse.t => unit,
  onDbClick: ReactEvent.Mouse.t => unit,
  onDropDownClick: ReactEvent.Mouse.t => unit,
  onFocus: ReactEvent.Focus.t => unit,
  onHide: unit => unit,
  onKeyPress: ReactEvent.Keyboard.t => unit,
  onKeyUp: ReactEvent.Keyboard.t => unit,
  onMouseDown: ReactEvent.Mouse.t => unit,
  onSelect: selectEvent<'value> => unit,
  onShow: unit => unit,
  onUnselect: unselectEvent<'value> => unit,
}

@module("primereact/autocomplete") @react.component(: componentProps<'value>)
external make: componentProps<'value> => React.element = "AutoComplete"
