imgui.
|"Show"
	imgui.ShowStyleEditor()
|"StyleColors" -- built in styles
	imgui.StyleColorsDark() 
	imgui.StyleColorsClassic() 
	imgui.StyleColorsLight()
|"StyleColor"
	imgui.PushStyleColor()
	imgui.PopStyleColor()
	--imgui.PushStyleColor(imgui_col.[target], [{color}])
	'imgui_col.'
	imgui_col.Border
	imgui_col.BorderShadow
	imgui_col.Button
	imgui_col.ButtonActive
	imgui_col.ButtonHovered
	imgui_col.CheckMark
	imgui_col.ChildBg
	imgui_col.DockingEmptyBg
	imgui_col.DockingPreview
	imgui_col.DragDropTarget
	imgui_col.FrameBg
	imgui_col.FrameBgActive
	imgui_col.FrameBgHovered
	imgui_col.Header
	imgui_col.HeaderActive
	imgui_col.HeaderHovered
	imgui_col.MenuBarBg
	imgui_col.ModalWindowDimBg
	imgui_col.NavHighlight
	imgui_col.NavWindowingDimBg
	imgui_col.NavWindowingHighlight
	imgui_col.PlotHistogram
	imgui_col.PlotHistogramHovered
	imgui_col.PlotLines
	imgui_col.PlotLinesHovered
	imgui_col.PopupBg
	imgui_col.ResizeGrip
	imgui_col.ResizeGripActive
	imgui_col.ResizeGripHovered
	imgui_col.ScrollbarBg
	imgui_col.ScrollbarGrab
	imgui_col.ScrollbarGrabActive
	imgui_col.ScrollbarGrabHovered
	imgui_col.Separator
	imgui_col.SeparatorActive
	imgui_col.SeparatorHovered
	imgui_col.SliderGrab
	imgui_col.SliderGrabActive
	imgui_col.Tab
	imgui_col.TabDimmed
	imgui_col.TabDimmedSelected
	imgui_col.TabDimmedSelectedOverline
	imgui_col.TabHovered
	imgui_col.TabSelected
	imgui_col.TabSelectedOverline
	imgui_col.TableBorderLight
	imgui_col.TableBorderStrong
	imgui_col.TableHeaderBg
	imgui_col.TableRowBg
	imgui_col.TableRowBgAlt
	imgui_col.Text
	imgui_col.TextDisabled
	imgui_col.TextLink
	imgui_col.TextSelectedBg
	imgui_col.TitleBg
	imgui_col.TitleBgActive
	imgui_col.TitleBgCollapsed
	imgui_col.WindowBg
|"StyleVar"
	imgui.PushStyleVar()
	imgui.PopStyleVar()
	--imgui.PushStyleVar(imgui_style_var.[action], ([numeric] or {[numeric], [numeric]}))
	'imgui_style_var.'
	imgui_style_var.Alpha()
	imgui_style_var.ButtonTextAlign()
	imgui_style_var.COUNT
	imgui_style_var.CellPadding()
	imgui_style_var.ChildBorderSize({})
	imgui_style_var.ChildRounding({})
	imgui_style_var.DisabledAlpha()
	imgui_style_var.FrameBorderSize()
	imgui_style_var.FramePadding({})
	imgui_style_var.FrameRounding()
	imgui_style_var.GrabMinSize()
	imgui_style_var.GrabRounding({})
	imgui_style_var.IndentSpacing({})
	imgui_style_var.ItemInnerSpacing({})
	imgui_style_var.ItemSpacing({})
	imgui_style_var.PopupBorderSize({})
	imgui_style_var.PopupRounding()
	imgui_style_var.ScrollbarRounding()
	imgui_style_var.ScrollbarSize()
	imgui_style_var.SelectableTextAlign({0-1, 0-1})
	imgui_style_var.SeparatorTextAlign()
	imgui_style_var.SeparatorTextBorderSize({})
	imgui_style_var.SeparatorTextPadding()
	imgui_style_var.TabRounding({})
	imgui_style_var.WindowBorderSize()
	imgui_style_var.WindowMinSize({})
	imgui_style_var.WindowPadding({})
	imgui_style_var.WindowRounding()
	imgui_style_var.WindowTitleAlign({})
	
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
	
	ImVec4 ColorConvertU32ToFloat4(ImU32 in)
	ImU32 ColorConvertFloat4ToU32(const ImVec4& in)
	void ColorConvertRGBtoHSV(float r, float g, float b, float& out_h, float& out_s, float& out_v)
	void ColorConvertHSVtoRGB(float h, float s, float v, float& out_r, float& out_g, float& out_b)
|"imgui.GetWindowDrawList()."/"imgui.GetOverlayDrawList()."
	'Shape Filled'
	AddCircleFilled({x, y}, radius, color)
	AddTriangleFilled({x, y}, {x2, y2}, {x3, y3}, color)
	AddNgonFilled({x, y}, radius, color)
	AddQuadFilled({x, y}, {x2, y2}, {x3, y3}, {x4, y4}, color)
	'Line'/'Text'
	AddLine({x, y}, {x2, y2}, color, thickness)
	AddText({x, y}, color, text)
	'path'
	PathBezierCubicCurveTo({x, y}, {x2, y2}, {x3, y3}, {x4, y4})
	
	PathStroke(color, thickness)
	PathFillConcave(color) | PathFillConvex(color)
