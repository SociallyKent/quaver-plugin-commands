imgui.

imgui.GetStyleColorName
|"Show"
	imgui.ShowStyleEditor()--(¿@ref?)
	--[[string?]]
	imgui.ShowStyleSelector(name)
|"StyleColors" -- built in styles
	imgui.StyleColorsClassic()--(¿ImGuiStylePtr?)
	imgui.StyleColorsDark()--(¿ImGuiStylePtr?)
	imgui.StyleColorsLight()--(¿ImGuiStylePtr?)
|""
	--[[varable, vector4, imgui_color_edit_flags, {x, y}]]
	imgui.ColorButton(name, value, ¿flags, ¿size)
	--[[varable, vector3, imgui_color_edit_flags]]
	imgui.ColorEdit3(name, value, ¿flags)
	--[[varable, vector4, imgui_color_edit_flags]]
	imgui.ColorEdit4(name, value, ¿flags)
	--[[varable, vector3, imgui_color_edit_flags]]
	imgui.ColorPicker3(name, value, ¿flags)
	--[[varable, vector4, imgui_color_edit_flags, numeric?]]
	imgui.ColorPicker4(name, value, ¿flags, ¿ref_col)

	--[[imgui_color_edit_flags]]
	imgui.SetColorEditOptions(flags)
|"StyleColor"
	--[[imgui_col, color]]
	imgui.PushStyleColor(index, color)
	--[[numeric]]
	imgui.PopStyleColor(¿count)
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
	--[[imgui_style_var, numeric|vector2]]
	imgui.PushStyleVar(index, value)
	--[[numeric]]
	imgui.PopStyleVar(¿count)

	--imgui.PushStyleVar(imgui_style_var.[action], numeric|{numeric, numeric})
	'imgui_style_var.'
	imgui_style_var.Alpha--alt:0
	imgui_style_var.DisabledAlpha--alt:1
	--[[{numeric >0, numeric >0}]]
	imgui_style_var.WindowPadding--alt:2 [[vector2]]
	--[[numeric >0]]
	imgui_style_var.WindowRounding--alt:3
	imgui_style_var.WindowBorderSize--alt:4
	--[[{numeric, numeric}]]
	imgui_style_var.WindowMinSize--alt:5
	imgui_style_var.WindowTitleAlign--alt:6
	--[[numeric > 0]]
	imgui_style_var.ChildRounding--alt:7
	imgui_style_var.ChildBorderSize--alt:8
	--[[numeric > 0]]
	imgui_style_var.PopupRounding--alt:9
	imgui_style_var.PopupBorderSize--alt:10
	--[[{numeric > 0, numeric > 0}]]
	imgui_style_var.FramePadding--alt:11 [[vector2]]
	--[[numeric > 0]]
	imgui_style_var.FrameRounding--alt:12
	imgui_style_var.FrameBorderSize--alt:13
	--[[{numeric > 0, numeric > 0}]]
	imgui_style_var.ItemSpacing--alt:14 [[vector2]]
	imgui_style_var.ItemInnerSpacing--alt:15
	imgui_style_var.IndentSpacing--alt:16
	--[[{numeric > 0, numeric > 0}]]
	imgui_style_var.CellPadding--alt:17 [[vector2]]
	imgui_style_var.ScrollbarSize--alt:18
	--[[numeric > 0]]
	imgui_style_var.ScrollbarRounding--alt:19
	imgui_style_var.GrabMinSize--alt:20
	--[[numeric > 0]]
	imgui_style_var.GrabRounding--alt:21
	--[[numeric > 0]]
	imgui_style_var.TabRounding--alt:22
	imgui_style_var.TabBorderSize--alt:23
	imgui_style_var.TabBarBorderSize--alt:24
	imgui_style_var.TabBarOverlineSize--alt:25
	imgui_style_var.TableAngledHeadersAngle--alt:26
	imgui_style_var.TableAngledHeadersTextAlign--alt:27
	--[[{numeric 0-1, numeric 0-1}]]
	imgui_style_var.ButtonTextAlign--alt:28
	imgui_style_var.SelectableTextAlign--alt:29
	imgui_style_var.SeparatorTextBorderSize--alt:30
	imgui_style_var.SeparatorTextAlign--alt:31
	--[[{numeric > 0, numeric > 0}]]
	imgui_style_var.SeparatorTextPadding--alt:32 [[vector2]]
	imgui_style_var.DockingSeparatorSize--alt:33
	imgui_style_var.COUNT--alt:34
|
	--[[vector4]]
	imgui.ColorConvertFloat4ToU32(RGBA)--returns: uint
	--all numeric
	imgui.ColorConvertHSVtoRGB(h, s, v, r, g, b)
	--all numeric
	imgui.ColorConvertRGBtoHSV(r, g, b, h, s, v)
	--[[uint]]
	imgui.ColorConvertU32ToFloat4(U32)--returns: RGBA
	imgui.GetStyle()--returns: ImGuiStylePtr
	--[[imgui_col]]
	imgui.GetStyleColorName(index)
	--[[imgui_col]]
	imgui.GetStyleColorVec4(index)
	--[[color|imgui_col]]
	imgui.GetColorU32(color|index)
|"color_edit_flags"	-- [[old, replace with new]]
	imgui_color_edit_flags.None--alt:0
	imgui_color_edit_flags.NoAlpha--alt:2 -- ColorEdit, ColorPicker, ColorButton
	imgui_color_edit_flags.NoPicker--alt:4 -- ColorEdit
	imgui_color_edit_flags.NoOptions--alt:8 -- ColorEdit
	imgui_color_edit_flags.NoSmallPreview--alt:16 -- ColorEdit, ColorPicker
	imgui_color_edit_flags.NoInputs--alt:32 -- ColorEdit, ColorPicker
	imgui_color_edit_flags.NoTooltip--alt:64 -- ColorEdit, ColorPicker, ColorButton
	imgui_color_edit_flags.NoLabel--alt:128 -- ColorEdit, ColorPicker
	imgui_color_edit_flags.NoSidePreview--alt:256 -- ColorPicker
	imgui_color_edit_flags.NoDragDrop--alt:512 -- ColorEdit, ColorButton
	imgui_color_edit_flags.NoBorder--alt:1024 -- ColorButton
	imgui_color_edit_flags.AlphaBar--alt:65536 -- ColorEdit, ColorPicker
	imgui_color_edit_flags.AlphaPreview--alt:131072 -- ColorEdit, ColorPicker, ColorButton
	imgui_color_edit_flags.AlphaPreviewHalf--alt:262144 -- ColorEdit, ColorPicker, ColorButton
	imgui_color_edit_flags.HDR--alt:524288 -- ColorEdit
	imgui_color_edit_flags.DisplayRGB--alt:1048576
	imgui_color_edit_flags.DisplayHSV--alt:2097152
	imgui_color_edit_flags.DisplayHex--alt:4194304
	imgui_color_edit_flags.DisplayMask--alt:7340032
	imgui_color_edit_flags.Uint8--alt:8388608 -- [[0-255]] ColorEdit, ColorPicker, ColorButton
	imgui_color_edit_flags.Float--alt:16777216 -- [[0-1]] ColorPicker, ColorButton
	imgui_color_edit_flags.DataTypeMask--alt:25165824
	imgui_color_edit_flags.PickerHueBar--alt:33554432 -- ColorPicker
	imgui_color_edit_flags.PickerHueWheel--alt:67108864 -- ColorPicker
	imgui_color_edit_flags.PickerMask--alt:100663296 -- ColorPicker
	imgui_color_edit_flags.InputRGB--alt:134217728 -- ColorEdit, ColorPicker: input + output in 0-255
	imgui_color_edit_flags.DefaultOptions--alt:177209344
	imgui_color_edit_flags.InputHSV--alt:268435456 -- ColorEdit, ColorPicker: input + output in HSV.
	imgui_color_edit_flags.InputMask--alt:402653184
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
