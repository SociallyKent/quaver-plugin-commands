imgui.PushItemFlag(flags, enabled)
imgui.PopItemFlag()
 --you can add multiple flags by putting '+' between them
|""
	'Button'
	imgui_button_flags.None--alt:0
	imgui_button_flags.MouseButtonLeft--alt:1
	imgui_button_flags.MouseButtonRight--alt:2
	imgui_button_flags.MouseButtonMiddle--alt:4
	imgui_button_flags.MouseButtonMask--alt:7
	'input_text_flags' --works with most kinds of input text
	imgui_input_text_flags.None--alt:0
	imgui_input_text_flags.CharsDecimal--alt:1 -- 0123456789.+-*/
	imgui_input_text_flags.CharsHexadecimal--alt:2 -- 0123456789ABCDEFabcdef
	imgui_input_text_flags.CharsScientific--alt:4 -- 0123456789.+-*/eE
	imgui_input_text_flags.CharsUppercase--alt:8 -- filter all spacers
	imgui_input_text_flags.CharsNoBlank--alt:16
	imgui_input_text_flags.AllowTabInput--alt:32
	imgui_input_text_flags.EnterReturnsTrue--alt:64
	imgui_input_text_flags.EscapeClearsAll--alt:128
	imgui_input_text_flags.CtrlEnterForNewLine--alt:256
	imgui_input_text_flags.ReadOnly--alt:512
	imgui_input_text_flags.Password--alt:1024 -- display all characters as '*'
	imgui_input_text_flags.AlwaysOverwrite--alt:2048
	imgui_input_text_flags.AutoSelectAll--alt:4096
	imgui_input_text_flags.ParseEmptyRefVal--alt:8192
	imgui_input_text_flags.DisplayEmptyRefVal--alt:16384
	imgui_input_text_flags.NoHorizontalScroll--alt:32768
	imgui_input_text_flags.NoUndoRedo--alt:65536
	imgui_input_text_flags.CallbackCompletion--alt:131072
	imgui_input_text_flags.CallbackHistory--alt:262144
	imgui_input_text_flags.CallbackAlways--alt:524288
	imgui_input_text_flags.CallbackCharFilter--alt:1048576
	imgui_input_text_flags.CallbackResize--alt:2097152
	imgui_input_text_flags.CallbackEdit--alt:4194304
	'Selectable'
	imgui_selectable_flags.None--alt:0
	imgui_selectable_flags.NoAutoClosePopups--alt:1
	imgui_selectable_flags.SpanAllColumns--alt:2
	imgui_selectable_flags.AllowDoubleClick--alt:4
	imgui_selectable_flags.Disabled--alt:8
	imgui_selectable_flags.AllowOverlap--alt:16
	imgui_selectable_flags.Highlight--alt:32
	'tree_node_flags'
	imgui_tree_node_flags.None--alt:0
	imgui_tree_node_flags.Selected--alt:1
	imgui_tree_node_flags.Framed--alt:2
	imgui_tree_node_flags.AllowOverlap--alt:4
	imgui_tree_node_flags.NoTreePushOnOpen--alt:8
	imgui_tree_node_flags.NoAutoOpenOnLog--alt:16
	imgui_tree_node_flags.CollapsingHeader--alt:26
	imgui_tree_node_flags.DefaultOpen--alt:32
	imgui_tree_node_flags.OpenOnDoubleClick--alt:64
	imgui_tree_node_flags.OpenOnArrow--alt:128
	imgui_tree_node_flags.Leaf--alt:256
	imgui_tree_node_flags.Bullet--alt:512 -- replace arrow with bullet point
	imgui_tree_node_flags.FramePadding--alt:1024
	imgui_tree_node_flags.SpanAvailWidth--alt:2048
	imgui_tree_node_flags.SpanFullWidth--alt:4096
	imgui_tree_node_flags.SpanTextWidth--alt:8192
	imgui_tree_node_flags.SpanAllColumns--alt:16384
	imgui_tree_node_flags.NavLeftJumpsBackHere--alt:32768
|"begin"|"end"
	'Child'
	imgui_child_flags.None--alt:0
	imgui_child_flags.Border--alt:1
	imgui_child_flags.AlwaysUseWindowPadding--alt:2
	imgui_child_flags.ResizeX--alt:4
	imgui_child_flags.ResizeY--alt:8
	imgui_child_flags.AutoResizeX--alt:16
	imgui_child_flags.AutoResizeY--alt:32
	imgui_child_flags.AlwaysAutoResize--alt:64
	imgui_child_flags.FrameStyle--alt:128
	imgui_child_flags.NavFlattened--alt:256
	'Combo'
	imgui_combo_flags.None--alt:0
	imgui_combo_flags.PopupAlignLeft--alt:1
	imgui_combo_flags.HeightSmall--alt:2 -- Max ~4 items visible
	imgui_combo_flags.HeightRegular--alt:4 -- Max ~8 items visible 
	imgui_combo_flags.HeightLarge--alt:8 -- Max ~20 items visible
	imgui_combo_flags.HeightLargest--alt:16 -- As many items visible as possible
	imgui_combo_flags.HeightMask--alt:30
	imgui_combo_flags.NoArrowButton--alt:32 -- Display only preview
	imgui_combo_flags.NoPreview--alt:64 -- Display only arrow button
	imgui_combo_flags.WidthFitPreview--alt:128
	'DragDrop'
	imgui_drag_drop_flags.None--alt:0
	imgui_drag_drop_flags.SourceNoPreviewTooltip--alt:1
	imgui_drag_drop_flags.SourceNoDisableHover--alt:2
	imgui_drag_drop_flags.SourceNoHoldToOpenOthers--alt:4
	imgui_drag_drop_flags.SourceAllowNullID--alt:8
	imgui_drag_drop_flags.SourceExtern--alt:16
	imgui_drag_drop_flags.PayloadAutoExpire--alt:32
	imgui_drag_drop_flags.PayloadNoCrossContext--alt:64
	imgui_drag_drop_flags.PayloadNoCrossProcess--alt:128
	imgui_drag_drop_flags.AcceptBeforeDelivery--alt:1024
	imgui_drag_drop_flags.AcceptNoDrawDefaultRect--alt:2048
	imgui_drag_drop_flags.AcceptPeekOnly--alt:3072
	imgui_drag_drop_flags.AcceptNoPreviewTooltip--alt:4096
	'TabBar'/'TabItem'
	--crashes
	'Table'
	imgui_table_flags.None--alt:0
	imgui_table_flags.Resizable--alt:1
	imgui_table_flags.Reorderable--alt:2
	imgui_table_flags.Hideable--alt:4
	imgui_table_flags.Sortable--alt:8
	imgui_table_flags.NoSavedSettings--alt:16
	imgui_table_flags.ContextMenuInBody--alt:32
	imgui_table_flags.RowBg--alt:64
	imgui_table_flags.BordersInnerH--alt:128
	imgui_table_flags.BordersOuterH--alt:256
	imgui_table_flags.BordersH--alt:384
	imgui_table_flags.BordersInnerV--alt:512
	imgui_table_flags.BordersInner--alt:640
	imgui_table_flags.BordersOuterV--alt:1024
	imgui_table_flags.BordersOuter--alt:1280
	imgui_table_flags.BordersV--alt:1536
	imgui_table_flags.Borders--alt:1920
	imgui_table_flags.NoBordersInBody--alt:2048
	imgui_table_flags.NoBordersInBodyUntilResize--alt:4096
	imgui_table_flags.SizingFixedFit--alt:8192
	imgui_table_flags.SizingFixedSame--alt:16384
	imgui_table_flags.SizingStretchProp--alt:24576
	imgui_table_flags.SizingStretchSame--alt:32768
	imgui_table_flags.SizingMask--alt:57344
	imgui_table_flags.NoHostExtendX--alt:65536
	imgui_table_flags.NoHostExtendY--alt:131072
	imgui_table_flags.NoKeepColumnsVisible--alt:262144
	imgui_table_flags.PreciseWidths--alt:524288
	imgui_table_flags.NoClip--alt:1048576
	imgui_table_flags.PadOuterX--alt:2097152
	imgui_table_flags.NoPadOuterX--alt:4194304
	imgui_table_flags.NoPadInnerX--alt:8388608
	imgui_table_flags.ScrollX--alt:16777216
	imgui_table_flags.ScrollY--alt:33554432
	imgui_table_flags.SortMulti--alt:67108864
	imgui_table_flags.SortTristate--alt:134217728
	imgui_table_flags.HighlightHoveredColumn--alt:268435456

|"window_flags"
	imgui_window_flags.None--alt:0
	imgui_window_flags.NoTitleBar--alt:1
	imgui_window_flags.NoResize--alt:2
	imgui_window_flags.NoMove--alt:4
	imgui_window_flags.NoScrollbar--alt:8
	imgui_window_flags.NoScrollWithMouse--alt:16
	imgui_window_flags.NoCollapse--alt:32
	imgui_window_flags.NoDecoration--alt:43
	imgui_window_flags.AlwaysAutoResize--alt:64
	imgui_window_flags.NoBackground--alt:128
	imgui_window_flags.NoSavedSettings--alt:256
	imgui_window_flags.NoMouseInputs--alt:512
	imgui_window_flags.MenuBar--alt:1024
	imgui_window_flags.HorizontalScrollbar--alt:2048
	imgui_window_flags.NoFocusOnAppearing--alt:4096
	imgui_window_flags.NoBringToFrontOnFocus--alt:8192
	imgui_window_flags.AlwaysVerticalScrollbar--alt:16384
	imgui_window_flags.AlwaysHorizontalScrollbar--alt:32768
	imgui_window_flags.NoNavInputs--alt:65536
	imgui_window_flags.NoNavFocus--alt:131072
	imgui_window_flags.NoNav--alt:196608
	imgui_window_flags.NoInputs--alt:197120
	imgui_window_flags.UnsavedDocument--alt:262144 --puts a bullet next to window name
	imgui_window_flags.NoDocking--alt:524288
	imgui_window_flags.ChildWindow--alt:16777216
	imgui_window_flags.Tooltip--alt:33554432
	imgui_window_flags.Popup--alt:67108864
	imgui_window_flags.Modal--alt:134217728
	imgui_window_flags.ChildMenu--alt:268435456
	imgui_window_flags.DockNodeHost--alt:536870912
|"focused_flags"
	imgui_focused_flags.None--alt:0
	imgui_focused_flags.ChildWindows--alt:1
	imgui_focused_flags.RootWindow--alt:2
	imgui_focused_flags.RootAndChildWindows--alt:3
	imgui_focused_flags.AnyWindow--alt:4
	imgui_focused_flags.NoPopupHierarchy--alt:8
	imgui_focused_flags.DockHierarchy--alt:16
|"hovered_flags"
	imgui_hovered_flags.None--alt:0
	imgui_hovered_flags.ChildWindows--alt:1
	imgui_hovered_flags.RootWindow--alt:2
	imgui_hovered_flags.RootAndChildWindows--alt:3
	imgui_hovered_flags.AnyWindow--alt:4
	imgui_hovered_flags.NoPopupHierarchy--alt:8
	imgui_hovered_flags.DockHierarchy--alt:16
	imgui_hovered_flags.AllowWhenBlockedByPopup--alt:32
	imgui_hovered_flags.AllowWhenBlockedByActiveItem--alt:128
	imgui_hovered_flags.AllowWhenOverlappedByItem--alt:256
	imgui_hovered_flags.AllowWhenOverlappedByWindow--alt:512
	imgui_hovered_flags.AllowWhenOverlapped--alt:768
	imgui_hovered_flags.RectOnly--alt:928
	imgui_hovered_flags.AllowWhenDisabled--alt:1024
	imgui_hovered_flags.NoNavOverride--alt:2048
	imgui_hovered_flags.ForTooltip--alt:4096
	imgui_hovered_flags.Stationary--alt:8192
	imgui_hovered_flags.DelayNone--alt:16384
	imgui_hovered_flags.DelayShort--alt:32768
	imgui_hovered_flags.DelayNormal--alt:65536
	imgui_hovered_flags.NoSharedDelay--alt:131072
|"color_edit_flags"	
	imgui_color_edit_flags.None--alt:0
	imgui_color_edit_flags.NoAlpha--alt:2
	imgui_color_edit_flags.NoPicker--alt:4
	imgui_color_edit_flags.NoOptions--alt:8
	imgui_color_edit_flags.NoSmallPreview--alt:16
	imgui_color_edit_flags.NoInputs--alt:32
	imgui_color_edit_flags.NoTooltip--alt:64
	imgui_color_edit_flags.NoLabel--alt:128
	imgui_color_edit_flags.NoSidePreview--alt:256
	imgui_color_edit_flags.NoDragDrop--alt:512
	imgui_color_edit_flags.NoBorder--alt:1024
	imgui_color_edit_flags.AlphaBar--alt:65536
	imgui_color_edit_flags.AlphaPreview--alt:131072
	imgui_color_edit_flags.AlphaPreviewHalf--alt:262144
	imgui_color_edit_flags.HDR--alt:524288
	imgui_color_edit_flags.DisplayRGB--alt:1048576
	imgui_color_edit_flags.DisplayHSV--alt:2097152
	imgui_color_edit_flags.DisplayHex--alt:4194304
	imgui_color_edit_flags.DisplayMask--alt:7340032
	imgui_color_edit_flags.Uint8--alt:8388608
	imgui_color_edit_flags.Float--alt:16777216
	imgui_color_edit_flags.DataTypeMask--alt:25165824
	imgui_color_edit_flags.PickerHueBar--alt:33554432
	imgui_color_edit_flags.PickerHueWheel--alt:67108864
	imgui_color_edit_flags.PickerMask--alt:100663296
	imgui_color_edit_flags.InputRGB--alt:134217728
	imgui_color_edit_flags.DefaultOptions--alt:177209344
	imgui_color_edit_flags.InputHSV--alt:268435456
	imgui_color_edit_flags.InputMask--alt:402653184
	Disctions:
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
