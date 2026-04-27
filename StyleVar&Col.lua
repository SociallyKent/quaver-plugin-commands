imgui.
imgui.GetStyleColorName
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
	imgui_col.Text--alt:0
	imgui_col.TextDisabled--alt:1
	imgui_col.WindowBg--alt:2
	imgui_col.ChildBg--alt:3
	imgui_col.PopupBg--alt:4
	imgui_col.Border--alt:5
	imgui_col.BorderShadow--alt:6
	imgui_col.FrameBg--alt:7
	imgui_col.FrameBgHovered--alt:8
	imgui_col.FrameBgActive--alt:9
	imgui_col.TitleBg--alt:10
	imgui_col.TitleBgActive--alt:11
	imgui_col.TitleBgCollapsed--alt:12
	imgui_col.MenuBarBg--alt:13
	imgui_col.ScrollbarBg--alt:14
	imgui_col.ScrollbarGrab--alt:15
	imgui_col.ScrollbarGrabHovered--alt:16
	imgui_col.ScrollbarGrabActive--alt:17
	imgui_col.CheckMark--alt:18
	imgui_col.SliderGrab--alt:19
	imgui_col.SliderGrabActive--alt:20
	imgui_col.Button--alt:21
	imgui_col.ButtonHovered--alt:22
	imgui_col.ButtonActive--alt:23
	imgui_col.Header--alt:24
	imgui_col.HeaderHovered--alt:25
	imgui_col.HeaderActive--alt:26
	imgui_col.Separator--alt:27
	imgui_col.SeparatorHovered--alt:28
	imgui_col.SeparatorActive--alt:29
	imgui_col.ResizeGrip--alt:30
	imgui_col.ResizeGripHovered--alt:31
	imgui_col.ResizeGripActive--alt:32
	imgui_col.TabHovered--alt:33
	imgui_col.Tab--alt:34
	imgui_col.TabSelected--alt:35
	imgui_col.TabSelectedOverline--alt:36
	imgui_col.TabDimmed--alt:37
	imgui_col.TabDimmedSelected--alt:38
	imgui_col.TabDimmedSelectedOverline--alt:39
	imgui_col.DockingPreview--alt:40
	imgui_col.DockingEmptyBg--alt:41
	imgui_col.PlotLines--alt:42
	imgui_col.PlotLinesHovered--alt:43
	imgui_col.PlotHistogram--alt:44
	imgui_col.PlotHistogramHovered--alt:45
	imgui_col.TableHeaderBg--alt:46
	imgui_col.TableBorderStrong--alt:47
	imgui_col.TableBorderLight--alt:48
	imgui_col.TableRowBg--alt:49
	imgui_col.TableRowBgAlt--alt:50
	imgui_col.TextLink--alt:51
	imgui_col.TextSelectedBg--alt:52
	imgui_col.DragDropTarget--alt:53
	imgui_col.NavHighlight--alt:54
	imgui_col.NavWindowingHighlight--alt:55
	imgui_col.NavWindowingDimBg--alt:56
	imgui_col.ModalWindowDimBg--alt:57
	imgui_col.COUNT--alt:58
|"StyleVar"
	imgui.PushStyleVar()
	imgui.PopStyleVar()
	--imgui.PushStyleVar(imgui_style_var.[action], ([numeric] or {[numeric], [numeric]}))
	'imgui_style_var.'
	imgui_style_var.Alpha--alt:0
	imgui_style_var.DisabledAlpha--alt:1
	imgui_style_var.WindowPadding--alt:2
	imgui_style_var.WindowRounding--alt:3
	imgui_style_var.WindowBorderSize--alt:4
	imgui_style_var.WindowMinSize--alt:5
	imgui_style_var.WindowTitleAlign--alt:6
	imgui_style_var.ChildRounding--alt:7
	imgui_style_var.ChildBorderSize--alt:8
	imgui_style_var.PopupRounding--alt:9
	imgui_style_var.PopupBorderSize--alt:10
	imgui_style_var.FramePadding--alt:11
	imgui_style_var.FrameRounding--alt:12
	imgui_style_var.FrameBorderSize--alt:13
	imgui_style_var.ItemSpacing--alt:14 [[vector2]]
	imgui_style_var.ItemInnerSpacing--alt:15
	imgui_style_var.IndentSpacing--alt:16
	imgui_style_var.CellPadding--alt:17
	imgui_style_var.ScrollbarSize--alt:18
	imgui_style_var.ScrollbarRounding--alt:19
	imgui_style_var.GrabMinSize--alt:20
	imgui_style_var.GrabRounding--alt:21
	imgui_style_var.TabRounding--alt:22
	imgui_style_var.TabBorderSize--alt:23
	imgui_style_var.TabBarBorderSize--alt:24
	imgui_style_var.TabBarOverlineSize--alt:25
	imgui_style_var.TableAngledHeadersAngle--alt:26
	imgui_style_var.TableAngledHeadersTextAlign--alt:27
	imgui_style_var.ButtonTextAlign--alt:28
	imgui_style_var.SelectableTextAlign--alt:29
	imgui_style_var.SeparatorTextBorderSize--alt:30
	imgui_style_var.SeparatorTextAlign--alt:31
	imgui_style_var.SeparatorTextPadding--alt:32
	imgui_style_var.DockingSeparatorSize--alt:33
	imgui_style_var.COUNT--alt:34
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
	
|"color_edit_flags"	-- [[old, replace with new]]
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
