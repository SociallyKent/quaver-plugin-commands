 --you can add multiple flags by putting '+' between them
|""
	-- 'Button'
	-- 'Checkbox'
	-- 'CollapsingHeader'
	-- 'Columns'
	-- 'Drag'
	'input_text_flags' --works with every kind of input text
	imgui_input_text_flags.CharsDecimal--alt:1 -- 0123456789.+-*/
	imgui_input_text_flags.CharsHexadecimal--alt:2 -- 0123456789ABCDEFabcdef
	imgui_input_text_flags.CharsUppercase--alt:8
	imgui_input_text_flags.CharsNoBlank--alt:16 -- filter spacer
	imgui_input_text_flags.EnterReturnsTrue--alt:64
	imgui_input_text_flags.ReadOnly--alt:512 -- display only
	imgui_input_text_flags.Password--alt:1024 -- display all characters as '*' --alt:512
	imgui_input_text_flags.AutoSelectAll--alt:4096
	imgui_input_text_flags.Resize
	imgui_input_text_flags.AlwaysAutoResize
	-- 'ListBox'
	-- 'ProgressBar'
	-- 'Selectable'
	-- 'Slider'
	-- 'Spacers'
	-- 'Text'
	'tree_node_flags'
	imgui_tree_node_flags.AllowItemOverlap--alt:4
	imgui_tree_node_flags.NoTreePushOnOpen--alt:8
	imgui_tree_node_flags.NoAutoOpenOnLog--alt:16
	imgui_tree_node_flags.DefaultOpen--alt:32
	imgui_tree_node_flags.OpenOnDoubleClick--alt:64
	imgui_tree_node_flags.OpenOnArrow--alt:128
	imgui_tree_node_flags.Leaf--alt:256
	imgui_tree_node_flags.Bullet--alt:512 -- replace arrow with bullet point
	imgui_tree_node_flags.FramePadding--alt:1024
	imgui_tree_node_flags.SpanAvailWidth--alt:2048
	imgui_tree_node_flags.SpanFullWidth--alt:4096
	imgui_tree_node_flags.NavLeftJumpsBackHere--alt:32768	
|"window_flags"
	imgui_window_flags.NoTitleBar--Alt:1
	imgui_window_flags.NoResize--Alt:2
	imgui_window_flags.NoMove--Alt:4
	imgui_window_flags.NoScrollbar--Alt:8
	14 -- Always show vertical scrollbar
	15 -- Show second resize option (has new function)
	imgui_window_flags.NoScrollWithMouse--Alt:16
	imgui_window_flags.NoCollapse--Alt:32
	imgui_window_flags.NoDecoration--Alt:43
	imgui_window_flags.AlwaysAutoResize--Alt:64
	imgui_window_flags.NoBackground--Alt:128
	imgui_window_flags.NoSavedSettings--Alt:256
	imgui_window_flags.NoMouseInputs--Alt:512
	imgui_window_flags.MenuBar--Alt:1024
	imgui_window_flags.HorizontalScrollbar--Alt:2048
	imgui_window_flags.NoFocusOnAppearing--Alt:4096
	imgui_window_flags.NoBringToFrontOnFocus--Alt:8192
	imgui_window_flags.NoNavInputs--Alt:65536
	imgui_window_flags.NoNavFocus--Alt:131072
	imgui_window_flags.NoNav--Alt:196608
	imgui_window_flags.NoInputs--Alt:197120
	imgui_window_flags.UnsavedDocument--Alt:262144
	imgui_window_flags.ChildMenu--Alt:26843546
|"hovered_flags"
	imgui_hovered_flags.ChildWindows -- IsWindowHovered() only
	imgui_hovered_flags.RootWindow -- IsWindowHovered() only
	imgui_hovered_flags.AnyWindow -- IsWindowHovered() only
	imgui_hovered_flags.AllowWhenBlockedByPopup
	imgui_hovered_flags.AllowWhenBlockedByModal
	imgui_hovered_flags.AllowWhenBlockedByActiveItem
	imgui_hovered_flags.AllowWhenOverlapped
	imgui_hovered_flags.AllowWhenDisabled
	imgui_hovered_flags.RectOnly -- undefined
|"color_edit_flags"	
	imgui_color_edit_flags.NoAlpha --  ColorEdit, ColorPicker, ColorButton: ignore Alpha component (will only read 3 components from the input pointer).
	imgui_color_edit_flags.NoPicker --  ColorEdit: disable picker when clicking on colored square.
	imgui_color_edit_flags.NoOptions --  ColorEdit: disable toggling options menu when right-clicking on inputs/small preview.
	imgui_color_edit_flags.NoSmallPreview --  ColorEdit, ColorPicker: disable colored square preview next to the inputs. (e.g. to show only the inputs)
	imgui_color_edit_flags.NoInputs --  ColorEdit, ColorPicker: disable inputs sliders/text widgets (e.g. to show only the small preview colored square).
	imgui_color_edit_flags.NoTooltip --  ColorEdit, ColorPicker, ColorButton: disable tooltip when hovering the preview.
	imgui_color_edit_flags.NoLabel --  ColorEdit, ColorPicker: disable display of inline text label (the label is still forwarded to the tooltip and picker).
	imgui_color_edit_flags.NoSidePreview --  ColorPicker: disable bigger color preview on right side of the picker, use small colored square preview instead.
	imgui_color_edit_flags.NoDragDrop --  ColorEdit: disable drag and drop target. ColorButton: disable drag and drop source.
	imgui_color_edit_flags.NoBorder --  ColorButton: disable border (which is enforced by default)
	imgui_color_edit_flags.AlphaBar --  ColorEdit, ColorPicker: show vertical alpha bar/gradient in picker.
	imgui_color_edit_flags.AlphaPreview --  ColorEdit, ColorPicker, ColorButton: display preview as a transparent color over a checkerboard, instead of opaque.
	18 --  ColorEdit, ColorPicker, ColorButton: display half opaque / half checkerboard, instead of opaque.
	imgui_color_edit_flags.HDR --  (WIP) ColorEdit: Currently only disable 0.0f..1.0f limits in RGBA edition (note: you probably want to use imgui_color_edit_flags.Float flag as well).
	imgui_color_edit_flags.DisplayRGB -- [Display] ColorEdit: override display type among RGB/HSV/Hex. ColorPicker: select any combination using one or more of RGB/HSV/Hex.
	imgui_color_edit_flags.DisplayHSV -- [Display]
	imgui_color_edit_flags.DisplayHex -- [Display]
	imgui_color_edit_flags.Uint8 -- [DataType] ColorEdit, ColorPicker, ColorButton: display values formatted as 0..255.
	imgui_color_edit_flags.Float -- [DataType] ColorEdit, ColorPicker, ColorButton: display values formatted as 0.0f..1.0f floats instead of 0..255 integers. No round-trip of value via integers.
	imgui_color_edit_flags.PickerHueBar -- [Picker] ColorPicker: bar for Hue, rectangle for Sat/Value.
	imgui_color_edit_flags.PickerHueWheel -- [Picker] ColorPicker: wheel for Hue, triangle for Sat/Value.
	imgui_color_edit_flags.InputRGB -- [Input]  ColorEdit, ColorPicker: input and output data in RGB format.
	imgui_color_edit_flags.InputHSV -- [Input]  ColorEdit, ColorPicker: input and output data in HSV format.
	
	
