# --put before table/string to get the length
print()
ipairs()
pairs()
goto name | ::name::
local
return

or
not
and
do

nil -- no value
true
false

boolean -- true or false
number|numeric -- 1 
string -- "one" or "1"
table|vector -- {1, "one"}
[[ ]] " " ' '

--[=[ 
tostring()
tonumber()
setmetatable() getmetatable() rawequal() rawget() rawlen() rawset()
print|error
-- ]=]

table.
	table.concat
	table.insert
	table.pack
	pack
	table.remove
	table.sort
	table.unpack
	unpack
	
	table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
	table.insert(table, position, value) -- if no posiion is given; defaults to last
	table.remove(table, position) -- if no posiion is given; defaults to last
	table.pack() | table.unpack(table)
	table.sort(table)
string.
	string.byte
	string.char
	string.contains
	string.dump
	string.endsWith
	string.find
	string.format
	string.gmatch
	string.gsub
	string.len
	string.lower
	string.match
	string.rep
	string.reverse
	string.startsWith
	string.sub
	string.unicode
	string.upper
os.
package.

----

imgui.CalcListClipping
imgui.GetFrameCount
imgui.GetTime()


imgui.
|Detect
	"Mouse"
		--[=[ imgui_mouse_button ]=]
		imgui.GetMouseClickedCount(button)
		--[=[  ]=]
		imgui.GetMouseCursor()
		--[=[ imgui_mouse_button, numeric ]=]
		imgui.GetMouseDragDelta(¿button, ¿threshold)
			--[=[ imgui_mouse_button, numeric ]=]
			imgui.IsMouseDragging(button, ¿threshold)
			--[=[ imgui_mouse_button ]=]
			imgui.ResetMouseDragDelta(¿button)
		imgui.GetMousePos()
		imgui.GetMousePosOnOpeningCurrentPopup()
		imgui.IsAnyMouseDown()
		--[=[ imgui_mouse_button, boolean ]=]
		imgui.IsMouseClicked(button, ¿repeat)
		--[=[ imgui_mouse_button ]=]
		imgui.IsMouseDoubleClicked(button)
		imgui.IsMouseDown(button)
		--[=[ {x, y}, {x, y}, boolean ]=]
		imgui.IsMouseHoveringRect(min, max, ¿clip)
		--[=[ {x, y} ]=]
		imgui.IsMousePosValid(¿pos)
		--[=[ imgui_mouse_button ]=]
		imgui.IsMouseReleased(button)
		--[=[ imgui_mouse_cursor ]=]
		imgui.SetMouseCursor(cursor)
		--[=[ boolean ]=]
		imgui.SetNextFrameWantCaptureMouse(value)
	"keyboard"
		--Alt, Shift, Control:
		imgui_key.Left[[Key]] imgui_key.Right[[Key]]
		--(Arrow keys) Up, Down, Left, Right:
		imgui_key.[[Dirrection]]Arrow
		--Letters
		imgui_key.[[Key]]
		--[=[ imgui_key, numeric, numeric ]=]
		imgui.GetKeyPressedAmount(key, delay, rate)
		imgui.GetKeyName(key)--[=[ imgui_key ]=]
		imgui.GetKeyIndex(key)--[=[ imgui_key ]=]
	
		--[=[ imgui_key? ]=]
		imgui.IsKeyChordPressed(key_chord)
		imgui.IsKeyDown(key) [=[ imgui_key ]=]
		--[=[ imgui_key, boolean ]=]
		imgui.IsKeyPressed(key, ¿repeat)
		imgui.IsKeyReleased(key)--[=[ imgui_key ]=]
	
		imgui.SetItemKeyOwner(key)--[=[ imgui_key ]=]
		--[=[ numeric ]=]
		imgui.SetKeyboardFocusHere(¿offset)
		--[=[ boolean ]=]
		imgui.SetNextFrameWantCaptureKeyboard(capture)
	
		--[=[ imgui_key?, imgui_input_flags ]=]
		imgui.ShortCut(key_chord, ¿flags)
	
	--[=[ (boolean)
	imgui.CaptureKeyboardFromApp(?) ]=]
|"Show"
	ShowAboutWindow() : void
    ShowAboutWindow(ref bool p_open) : void
    ShowDebugLogWindow() : void
    ShowDebugLogWindow(ref bool p_open) : void
    ShowDemoWindow() : void
    ShowDemoWindow(ref bool p_open) : void
    ShowFontSelector(ReadOnlySpan<char> label) : void
    ShowFontSelector(string label) : void
    ShowIDStackToolWindow() : void
    ShowIDStackToolWindow(ref bool p_open) : void
    ShowMetricsWindow() : void
    ShowMetricsWindow(ref bool p_open) : void
    ShowStyleEditor() : void
    ShowStyleEditor(ImGuiStylePtr @ref) : void
    ShowStyleSelector(ReadOnlySpan<char> label) : bool
    ShowStyleSelector(string label) : bool
    ShowUserGuide() : void
	
	imgui.ShowAboutWindow()
	imgui.ShowDemoWindow()
	imgui.ShowFontSelector()--crashes
	imgui.ShowMetricsWindow()
	imgui.ShowStyleEditor()
	imgui.ShowStyleSelector()--crashes
	imgui.ShowUserGuide()
	
	imgui.ShowDebugLogWindow()
|""
	--[[ "##text" = invisable ]]
	--ex	imgui.button("##can't see me") imgui.button("can see me")
	---Does not work with imgui.Text
	'Bullet'
		--[=[  ]=]
		imgui.Bullet()
		--[=[ varable ]=]
		imgui.BulletText(value)
	'Button'
		--[=[ name, imgui_dir ]=]
		imgui.ArrowButton(name, dirrection)
		--[=[ varable, {x, y} ]=]
		imgui.Button(name, ¿size)
		--[=[ varable, {x, y}, imgui_button_flags ]=]
		imgui.InvisibleButton(name, size, ¿flags)
		--[=[ varable, numeric?, numeric? ]=]
		imgui.RadioButton(name, value, ¿value_button)
		--[=[ varable ]=]
		imgui.SmallButton(name)
	'Checkbox'
		--[=[ varable, boolean ]=]
		imgui.CheckBox(name, value)
		--[=[ varable, ?, ? ]=]
		imgui.CheckBoxFlags(name, id, value)
	'CollapsingHeader'
		--[=[ varable, boolean, imgui_tree_node_flags ]=]
		imgui.CollapsingHeader(name, ¿visable, ¿flags)--(text, flags)/(text, state, flags)
	'Combo'
		--[=[ varable, numeric, string|vector, numeric ]=]
		imgui.Combo(name, item, items, ¿length)--if string: "item1\0...\0" : otherwise the usual {item1, ...}
		--[=[ varable, varable, imgui_combo_flags ]=]
		imgui.BeginCombo(name, preview, ¿flags)
		imgui.EndCombo()
	'Drag'
		--[=[ varable, numeric, numeric, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.DragFloat(name, value, ¿speed, ¿min, ¿max, ¿format, ¿flags) [=[ boolean, numeric ]=]	
			DragFloat2 DragFloat3 DragFloat4--same, but value = vector{2/3/4}
		--[=[ varable, numeric, numeric, numeric, numeric, numeric, format, format, imgui_slider_flags ]=]
		imgui.DragFloatRange2(name, value1, value2, ¿speed, ¿min, ¿max, ¿format, ¿max_format, ¿flags)
		--[=[ varable, numeric, numeric, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.DragInt(name, value, ¿speed, ¿min, ¿max, ¿format, ¿flags) [=[ boolean, numeric ]=]
			DragInt2 DragInt3 DragInt4--same, but value = vector{2/3/4}
		--[=[ varable, numeric, numeric, numeric, numeric, numeric, format, format, imgui_slider_flags ]=]
		imgui.DragIntRange2(name, min, max, ¿speed, ¿min, ¿max, ¿format, ¿max_format, ¿flags)
		--[=[ varable, imgui_data_type, dependant numeric, numeric, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.DragScalar(name, data, value, ¿speed, ¿min, ¿max, ¿format, ¿flags)
			--[=[ varable, imgui_data_type, dependant numeric, numeric?, numeric, numeric, numeric, format, imgui_slider_flags ]=]
			imgui.DragScalarN(name, data, value, components, ¿speed, ¿min, ¿max, ¿format, ¿flags)
	'InputText'
			---'Double' refers to decimal numbers (1.0/1.5/2.0). Will also take non decimal numbers.
		--[=[ varable, numeric(double), numeric, numeric, format, imgui_input_text_flags ]=]
		imgui.InputDouble(name, value, ¿step, ¿step_fast, ¿format, ¿flags)
		--[=[ varable, numeric, numeric, numeric, format, imgui_input_text_flags ]=]
		imgui.InputFloat(name, value, ¿step, ¿step_fast, ¿format, ¿flags)
			InputFloat2 InputFloat3 InputFloat4--(name, table{2/3/4}, ¿format, ¿flags)
		--[=[ varable, numeric, numeric, numeric, imgui_input_text_flags ]=]
		imgui.InputInt(name, value, ¿step, ¿step_fast, ¿flags)
			InputInt2 InputInt3 InputInt4--(name, table{2/3/4}, ¿format, ¿flags)
		--[=[ varable, imgui_data_type, dependant numeric, numeric, numeric, format, imgui_input_text_flags ]=]
		imgui.InputScaler(name, data, value, ¿step, ¿step_fast, ¿format, ¿flags)
			--[=[ varable, imgui_data_type, dependant numeric, numeric?, numeric, numeric, format, imgui_input_text_flags_flags ]=]
			imgui.InputScalerN(name, data, value, components, ¿step, ¿step_fast, ¿format, ¿flags)
		--[=[ varable, varable, numeric, imgui_input_text_flags_flags, ?, ? ]=]
		imgui.InputText(name, value, length, ¿flags, ¿callback, ¿user_data)
		--[=[ varable, varable, numeric, {x, y}, imgui_input_text_flags_flags, ?, ? ]=]
		imgui.InputTextMultiline(name, value, length, size, ¿flags, ¿callback, ¿user_data)
		--[=[ varable, varable, varable, numeric, imgui_input_text_flags_flags, ?, ? ]=]
		imgui.InputTextWithHint(name, hint, value, length, ¿flags, ¿callback, ¿user_data)
	'ListBox'
		--[=[ varable, numeric, vector, numeric, numeric ]=]
		imgui.ListBox(name, item, items, count, ¿length)
		--[=[ varable, {x, y} ]=]
		imgui.BeginListBox(name, ¿size)
		imgui.EndListBox()
	'Menu'
		imgui.BeginMainMenuBar()
		imgui.EndMainMenuBar()
		--[=[ varable, ¿boolean|string, ¿nil|boolean, ¿nil|boolean ]=]
		imgui.MenuItem(name, ¿enabled|shortcut, ¿|value, ¿|enabled)
		--[=[ varable, boolean ]=]
		imgui.BeginMenu(name, ¿enabled)
		imgui.EndMenu()
		imgui.BeginMenuBar()
		imgui.EndMenuBar()
	'PlotHistogram'/'PlotLines'
		--[=[ string, vector{numeric...}, numeric, numeric, varable, numeric, numeric, {x, y}, numeric? ]=]
		imgui.PlotHistogram(name, value, length, ¿offset, ¿overlay, ¿min, ¿max, ¿size, ¿stride)
		--[=[ string, vector{numeric...}, numeric, numeric, varable, numeric, numeric, {x, y}, numeric? ]=]
		imgui.PlotLines(name, value, length, ¿offset, ¿overlay, ¿min, ¿max, ¿size, ¿stride)
	'ProgressBar'
		--[=[ numeric/numeric, {x, y}, varable ]=]
		imgui.ProgressBar(fraction, ¿size, ¿overlay)
	'Selectable'/'MultiSelect'
		--(varable, boolean, imgui_selectable_flags, {x, y})
		imgui.Selectable(name, value, ¿flags, ¿size))
		--[=[ imgui_multi_select_flags, numeric, numeric ]=]
		imgui.BeginMultiSelect(flags, ¿length, ¿count)
		imgui.EndMultiSelect()--returns: ImGuiMultiSelectIOPtr
	'Slider'
		--[=[ varable, radious, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.SliderAngle(name, value, ¿min, ¿max, ¿format, ¿flags)
		--[=[ varable, numeric, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.SliderFloat(name, value, min, max, ¿format, ¿flags)
			SliderFloat2 SliderFloat3 SliderFloat4--same, but value = vector{2/3/4}
			--[=[ varable, {x, y}, numeric, numeric, numeric, format, imgui_slider_flags ]=]
			imgui.VSliderFloat(name, size, value, min, max, ¿format, ¿flags)
		--[=[ varable, numeric, numeric, numeric, format, imgui_slider_flags ]=]
		imgui.SliderInt(name, value, min, max, ¿format, ¿flags)
			SliderInt2 SliderInt3 SliderInt4--same, but value = vector{2/3/4}
			--[=[ varable, imgui_data_type, dependant numeric, numeric?, numeric?, format, imgui_slider_flags ]=]
			imgui.VSliderInt(name, size, value, min, max, ¿format, ¿flag)
		--[=[ varable, imgui_data_type, numeric, numeric?, numeric?, format, imgui_slider_flags ]=]
		imgui.SliderScalar(name, data, value, min, max, ¿format, ¿flag)
			--[=[ varable, imgui_data_type, dependant numeric, numeric?, numeric?, format, imgui_slider_flags ]=]
			imgui.SliderScalarN(name, data, value, min, max, ¿format, ¿flag)
			--[=[ varable, imgui_data_type, numeric, numeric, numeric, format, imgui_slider_flags ]=]
			imgui.VSliderScalar(name, size, data, value, min, max, ¿format, ¿flag)
	'Spacers'
		imgui.Dummy()
		imgui.NewLine()
		imgui.PlotHistogram()
		imgui.PlotLines()
		imgui.SameLine(¿offset, ¿space)
		imgui.Separator()
		imgui.Spacing()
	'Text'
		--[=[ varable ]=]
		imgui.BulletText(value)
		--[=[ varable, varable ]=]
		imgui.LabelText(value1, value2)
		--[=[ varable ]=]
		imgui.SeparatorText(value)
		--[=[ varable ]=]
		imgui.Text(value)
		--[=[ vector4, varable ]=]
		imgui.TextColored(color, value)
		--[=[ varable ]=]
		imgui.TextDisabled(value)
		--[=[ varable ]=]
		imgui.TextLink(value)
		--[=[ varable, string ]=]
		imgui.TextLinkOpenURL(value, ¿link)
		--[=[ varable ]=]
		imgui.TextUnformatted(value)
		--[=[ varable ]=]
		imgui.TextWrapped(value)
	'TreeNode'
		--[=[ varable, string? ]=]
		imgui.TreeNode(name, ¿value)
		--[=[ varable, imgui_tree_node_flags, string? ]=]
		imgui.TreeNodeEx(name, ¿flags, ¿value)
		--[=[ varable ]=]
		imgui.TreePush(name)
		imgui.TreePop()
		-- imgui.TreeNodeV(string)
	'Tab'
		--[=[ varable, imgui_tab_bar_flags ]=]
		imgui.BeginTabBar(name, ¿flags)
		imgui.EndTabBar()
		--[=[ varable, imgui_tab_item_flags ]=]
		imgui.TabItemButton(name, ¿flags)
		--[=[ varable? ]=]
		imgui.SetTabItemClosed(id)
		--[=[ varable, boolean, imgui_tab_item_flags ]=]
		imgui.BeginTabItem(name, ¿open, ¿flags)
		imgui.EndTabItem()
	'Value'
		--[=[ varable, varable|format ]=]
		imgui.Value(value1, value2)
	'Misc'
		imgui.Separator()
|"spacers"
	'Columns'
		--[=[ numeric, imgui_id, boolean ]=]
		imgui.Columns(¿count, ¿id, ¿border)
		imgui.GetColumnIndex()
		--[=[ numeric ]=]
		imgui.GetColumnOffset(¿column)
		--[=[ numeric, numeric ]=]
		imgui.SetColumnOffset(column, offset)
		imgui.GetColumnsCount()
		--[=[ numeric ]=]
		imgui.GetColumnWidth(¿column)
		--[=[ numeric, numeric ]=]
		imgui.SetColumnWidth(column, width)
	'Indent'
		--[=[ numeric ]=]
		imgui.Indent(¿width)
		--[=[ numeric ]=]
		imgui.Unindent(¿width) [=[ ]=]
	'Table'
		--[=[ string, numeric, imgui_table_flags, {x, y}, numeric ]=]
		imgui.BeginTable(name, columns, ¿flags, ¿size, ¿width) [=[ boolean ]=]
		--[=[  ]=]
		imgui.EndTable() [=[  ]=]
		--[=[  ]=]
		imgui.TableAngledHeadersRow() [=[  ]=]
		--[=[  ]=]
		imgui.TableGetColumnCount() [=[ numeric ]=]
		--[=[ numeric ]=]
		imgui.TableGetColumnFlags(¿column) [=[ imgui_table_flags ]=]
		--[=[  ]=]
		imgui.TableGetColumnIndex() [=[ numeric ]=]
		--[=[ numeric ]=]
		imgui.TableGetColumnName(¿column) [=[ string ]=]
		--[=[  ]=]
		imgui.TableGetHoveredColumn() [=[ numeric ]=]
		--[=[  ]=]
		imgui.TableGetRowIndex() [=[ numeric ]=]
		--[=[ imgui_table_row_flags, numeric ]=]
		imgui.TableNextRow(¿flags, ¿minimum-height) [=[  ]=]
		--[=[ imgui_table_bg_target, numeric, numeric ]=]
		imgui.TableSetBgColor(target, color, ¿column) [=[  ]=]
		--[=[ numeric, boolean ]=]
		imgui.TableSetColumnEnabled(column, enabled) [=[  ]=] 
		--[=[ numeric ]=]
		imgui.TableSetColumnIndex(column) [=[  ]=]
		--[=[ string, imgui_table_column_flags, numeric, numeric? ]=]
		imgui.TableSetupColumn(name, ¿flags, ¿width, ¿user_id) [=[  ]=]
		--[=[ numeric, numeric ]=]
		imgui.TableSetupScrollFreeze(column, row) [=[  ]=]
		
		imgui.TableGetColumnIndex
		--[=[ numeric ]=]
		imgui.TableGetColumnName(¿column)
		imgui.TableGetHoveredColumn
		imgui.TableGetRowIndex
		imgui.TableGetSortSpecs
		--[=[ varable ]=]
		imgui.TableHeader(name)
		imgui.TableHeadersRow
		imgui.TableNextColumn
		--[=[ imgui_table_row_flags, numeric ]=]
		imgui.TableNextRow(¿flags, ¿min_length)
		--[=[ imgui_table_bg_target, color, numeric ]=]
		imgui.TableSetBgColor(target, color, ¿column)
		--[=[ numeric, boolean ]=]
		imgui.TableSetColumnEnabled(column, value)
		--[=[ numeric ]=]
		imgui.TableSetColumnIndex(column)
		---[=[ varable, imgui_table_column_flags, numeric, numeric? ]=]
		imgui.TableSetupColumn(name, ¿flags, ¿width, ¿user_id)
		--[=[ numeric, numeric ]=]
		imgui.TableSetupScrollFreeze(columns, rows)
		--[=[ varable, numberic, imgui_table_flags, {x, y}, numeric ]=]
		imgui.BeginTable(name, columns, ¿flags, ¿size, ¿width)
		imgui.EndTable()
	'Misc'
		--[=[ {x, y} ]=]
		imgui.Dummy(size)
		imgui.NewLine()
		--[=[ numeric, numeric ]=]
		imgui.SameLine(¿offset-x, ¿spacing)
		imgui.Spacing()

|
	'ToolTip'
		--[=[ varable ]=]
		imgui.SetTooltip(name)
		--[=[ varable ]=]
		imgui.SetItemTooltip
		imgui.BeginItemTooltip()
		imgui.EndTooltip()
|"begin"|"end"
	imgui.Begin(Text, ¿p_open, ¿flags)
	imgui.End()
	'Child'
	--(string, table, imgui_ID)
	imgui.BeginChild(Text, ¿Size, ¿child_flags, ¿window_flags)
	imgui.EndChild()
	'Combo'
	imgui.BeginCombo(Text, preview_value, flags)
	imgui.EndCombo()
	'DragDrop'
	imgui.BeginDragDropSource() | imgui.SetDragDropPayload() |imgui.EndDragDropSource()
	imgui.BeginDragDropTarget() | imgui.EndDragDropTarget()
		--
		imgui.AcceptDragDropPayload()
		imgui.GetDragDropPayload("MY_PAYLOAD", 1, 1)
	'Disabled'
	imgui.BeginDisabled() | imgui.EndDisabled()
	'Frame'
	imgui.BeginFrame() | imgui.EndFrame()
	'Group'
	imgui.BeginGroup() | imgui.EndGroup()
	'ListBox'
	imgui.BeginListBox(name, ¿size)
	imgui.EndListBox()
	'Menu'/'MenuBar'/'MainMenuBar'
	-- imgui.BeginMenuBar()
	-- imgui.EndMenuBar()
	-- imgui.BeginMainMenuBar()
	-- imgui.EndMainMenuBar()
	--(string, boolean)
	imgui.BeginMenu(Name, ¿?Enable)
	imgui.EndMenu()
	--(string, ?, boolean, boolean)
	imgui.MenuItem(Name, ¿?Shortcut, ¿?Selected, ¿?Enable)
	'MulitiSelect'
	imgui.BeginMultiSelect(flags, selection_size, items_count)
	'TabBar'/'TabItem'
	imgui.BeginTabBar(string, flags) | imgui.EndTabBar()
	imgui.BeginTabItem(text) | imgui.EndTabItem()
	'Table'
	BeginTableEx
	TableFindByID
	imgui.BeginTable(string, columns, flags, outer_size, inner_width)
	imgui.EndTable()
	'Tooltip'
	imgui.BeginTooltip() | imgui.EndTooltip()
		--
		imgui.SetTooltip() | imgui.SetTooltipV()
	--to find:
	BeginPopup
	BeginPopupModal
|"get"
	imgui.GetMainViewport()
	imgui.GetWindowViewport()
|"set"|"get"
	'CursorPos'/'WindowPos'
	imgui.SetCursorPos({x, y}) | imgui.GetCursorPos()
	imgui.SetCursorPosX(x) | imgui.GetCursorPosX()
	imgui.SetCursorPosY(y) | imgui.GetCursorPosY()
	imgui.SetCursorStartPos() | imgui.GetCursorStartPos()
	imgui.SetCursorScreenPos() | imgui.GetCursorScreenPos() 
	imgui.SetWindowPos() | imgui.GetWindowPos()
	'Window'
	imgui.SetWindowCollapsed(¿name, collapsed, ¿condition)--[=[ string, boolean, imgui_cond ]=][=[ ]=]
	imgui.GetWindowCollapsed(¿name, collapsed, ¿condition)--[=[ string, boolean, imgui_cond ]=][=[ ]=]
	
	imgui.SetWindowFocus(¿name)--[=[ string ]=][=[ ]=]
	
	imgui.SetWindowPos(¿name, pos, ¿condition)--[=[ string, {x, y}, imgui_cond ]=][=[ ]=]
	imgui.GetWindowPos()--[=[  ]=][=[ {x, y} ]=]
	
	imgui.SetWindowSize(¿name, pos, ¿condition)--[=[ string, {x, y}, imgui_cond ]=][=[ ]=]
	imgui.GetWindowSize()--[=[  ]=][=[ {x, y} ]=]
	imgui.GetWindowWidth()--[=[  ]=][=[ numeric ]=]
	imgui.GetWindowHeight()--[=[  ]=][=[ numeric ]=]

	'FontSize'/'WindowSize'
	imgui.SetFontSize() | imgui.GetFontSize()
	imgui.SetWindowFontScale() | imgui.GetWindowFontScale()
	imgui.SetWindowSize() | imgui.GetWindowSize()
	imgui.GetWindowWidth()
	imgui.GetWindowHeight()
	'ClipboardText'
	imgui.SetClipboardText(value) | imgui.GetClipboardText()
	'DrawList'
	imgui.GetOverlayDrawList()
	imgui.GetForegroundDrawList()
	imgui.GetWindowDrawList()
	'TextLineHeight'/'FrameHeight'
	imgui.TextLineHeight()
	imgui.FrameHeight()
			all have:
			imgui.[]WithSpacing()
	'NextItemWidth'
	imgui.SetNextItemWidth
	'NextWindowSize'
	imgui.SetNextWindowSizeConstraints({x_min, y_min}, {x_max, y_max})
	'GetContentRegion'/'GetWindowContentRegion'
		all have:
		imgui.[]Max()
		imgui.[]Avail()
		exclusive:
		--GetWindowContentRegion
		imgui.[]Min()
	--to find:
	CalcItemWidth()
	CalcTextSizeImpl()
|"push"|"pop"
	;--push overrides current style	  | pop restores previous style
	'StyleCol'/'StyleVar'
	imgui.PushStyleCol(imgui_style_col.) | imgui.PopStyleCol(imgui_style_col.)
	imgui.PushStyleVar(imgui_style_var.) | imgui.PopStyleVar(imgui_style_var.)
	'TextWrapPos'
	imgui.PushTextWrapPos() | imgui.PopTextWrapPos()
	'ItemWidth'
	imgui.PushItemWidth(numeric) | imgui.PopItemWidth()
	'AllowKeyboardFocus'
	imgui.PushAllowKeyboardFocus() | imgui.PopAllowKeyboardFocus()
	'ButtonRepeat'
	imgui.PushButtonRepeat() | imgui.PopButtonRepeat()
	'Font'
	imgui.PushFont() | imgui.PopFont()

	imgui.PushClipRect(min{x, y}, max{x, y}, boolean) | imgui.PopClipRect
|Utils
	'item'
		imgui.IsAnyItemActive()
		imgui.IsAnyItemActive()
		imgui.IsItemToggledOpen()
		imgui.IsItemDeactivatedAfterEdit()
		imgui.GetItemRectMax()
		imgui.GetItemRectMin()
		imgui.GetItemRectSize()
		imgui.SetItemAllowOverlap()
	'text'
		imgui.CalcTextSize(text, textend, hidedoubldashext, wrapwidth)
	--[=[ numeric|{min, max}, numeric ]=]
	imgui.IsRectVisible(min|size, max|)
	imgui.GetKeyName
	--Global imgui time
	imgui.GetTime()
	--Global imgui frame count
	imgui.GetFrameCount()
	imgui.CalcTextSize(Text)
	imgui.GetFrameHeight()
--| to find:
imgui.SetNextItemSelectionUserData(?)
imgui.GetMainViewport() : ImGuiViewportPtr
imgui.DockSpace
imgui.DebugLog(string fmt) : void
imgui.GetPlatformIO() : ImGuiPlatformIOPtr
Mathematics:
+ --- Addition
- --- Subtraction/Subtract
/ --- Division/Dividing
* --- Multiply/Timesing
^ --- Exponentiation/Power
^0.5 --- Square Root
% ---
math.abs(x) -- absolute
math.acos(x) -- arc cosine
math.cos(x) -- cosine
math.cosh(x) -- hyperbolic cosine
math.asin(x) -- arc sine
math.sin(x) -- sine
math.sinh(x) -- hyperbolic sine
math.atan(x) -- arc tangent
math.atan2(y, x) ---
math.tan(x) -- tangent
math.tanh(x) -- hyperbolic tangent
math.ceil(x) -- rounds up to the neariest integer
math.floor(x) -- rounds down to the neariest integer
math.max(x)--(x, ...)-- returns the highest value
math.min(x)--(x, ...)-- returns the lowest value
math.exp(x) -- exponential
math.pow(x, y) -- exponentiation/power
math.deg(x) -- return angle of value in degrees; output is in radians
math.rad(x) -- return angle of value in radians; output is in degrees
math.huge -- represents a higher or equal number, no matter what it is
math.pi -- represents π
math.modf(x) -- returns whole value aswell as the fractional value
  --example: if x = 2.56, it returns 2 and 0.56. if x = 7, it returns 7 and 0, because 7 has no number in a decimal point.
math.fmod(x, y) -- x = dividend, y = divisor/modulus 
  --example: if x = 499, y = 360, it returns 139 because 499 cannot fit into 360 so it wrapped it around until it could. (does not return amount of wraps needed)
math.frexp(x)
math.ldexp(m, e) -- returns m2^e
math.log(x, base) -- logarithm -- if no base is given; defaults to e
math.random(x, y) -- returns a random number between x and y. -- if no value is given; defaults to (0, 1)
math.randomseed(x)
math.sqrt(x) -- square root

bit32:
 --Shift X bitwise right by Y
--X numeric
--Y numeric
bit32.arshift(X, Y)
 --get bitwise-and
bit32.band(...)
 --get bitwise-not
--X numeric
bit32.bnot(X)
 --get bitwise or
bit32.bor(...)
 --get bitwise-xor
bit32.bxor
 --get bitwise 'and' and if different from zero.
bit32.btest(...)
--N numeric
bit32.extract(n, field, ¿width)
--N numeric
--V numeric
bit32.replace(n, v, field, ¿width)
 --bit shift X rotated left by Y
bit32.lrotate(X, Y)
 --bit shift X rotated right by Y
bit32.rrotate(X, Y)
 --bit shift X shifted left by Y
bit32.lshift(X, Y)
 --bit shift X shifted right by Y
bit32.rshift(X, Y)

coroutine.create(  )--[=[  ]=][=[  ]=]
coroutine.resume(  )--[=[  ]=][=[  ]=]
coroutine.running(  )--[=[  ]=][=[  ]=]
coroutine.status(  )--[=[  ]=][=[  ]=]
coroutine.wrap(  )--[=[  ]=][=[  ]=]
coroutine.yield(  )--[=[  ]=][=[  ]=]

Quaver:
Custom Commands:
state.
	state.SelectedHitObjects[]
	--to select a TimingGroup within lua: state.SelectedScrollGroupId = [Name of the TG]
	state.SelectedScrollGroupId
	state.SelectedScrollGroup.InitialScrollVelocity
	
	state.CurrentBookmark
	state.CurrentLayer
	state.CurrentScrollFactor
	state.CurrentScrollVelocity
	state.CurrentSnap
	state.CurrentTimingPoint
	state.SetValue(label, value)--[=[ string, variable ]=][=[  ]=]
	state.GetValue(label)--[=[ string ]=][=[ variable ]=]
	
	state.SongTime [=[ numeric ]=]
	state.DeltaTime [=[ numeric ]=] -- Time since last frame
	state.IsWindowHovered [=[ boolean ]=] -- Size of Game Window
	state.WindowSize [=[ {x, y} ]=] -- Size of Game Window
	state.Scale [=[ numeric ]=] -- ImGui scale
map.
|""
	map.Bookmarks[]
	map.HitObjects[]
	map.EditorLayers[]
	map.ScrollSpeedFactors[]
	map.ScrollVelocities[]
	map.TimingGroups[]
	map.TimingPoints[]
	--(in context) Express STRING as Lua code
	expr(STRING)
	--(in context) Evaluate STRING as Lua code
	eval(STRING)
	map.DefaultScrollGroup
	map.DefaultLayer
	
	map.GetCommonBpm()
	map.GetNearestSnapTimeFromTime(DirrectUpwards, Snap, Time)
	map.GetTimingGroup(TimingGroupID)
	map.GetTimingGroupIds()
	map.GetTimingGroupObjects(TimingGroupID)
	map.GetTimingPointLength(TimingPoint)
	map.GlobalScrollGroup
	
	map.LastSelectedScrollGroupId
	map.MineCount
	
	map.InitialScrollSpeedFactor
	
	map.getBookmarkAt(Time, )
	map.getHitObjectAt(Time, )
	map.getScrollSpeedFactorAt(Time, ¿TimingGroupID)
	map.getScrollVelocityAt(Time, ¿TimingGroupID)
	map.getTimingPointAt(Time, )
|"Song Data"
	map.Mode
	map.Normalized
	map.LegacyLNRendering
	state.CurrentSnap
	map.GetKeyCount()
	map.ToString()
	map.TrackLength
|""
	map.GetTimingGroup
	map.GetTimingGroupIds()[]
	map.GetTimingGroupObjects
Values
----bookmarks
	.StartTime
	.Note
----editorlayers
	.Name
	.Hidden
	.ColorRgb
----hitobjects
	.StartTime
	.Lane
	.EndTime
	.HitSound
	.Type
	.KeySounds
	.EditorLayer
	.TimingGroup
	.IsLongNote
	.JudgementCount
----scrollspeedfactors
	.StartTime
	.Multiplier
	.IsEditableInLuaScript
----scrollvelocities
	.StartTime
	.Multiplier
	.IsEditableInLuaScript
----scrollgroups
	.ScrollVelocities
	.ScrollSpeedFactors
	.InitialScrollVelocity
----timinggroups
	.ScrollVelocities
	.ColorRgb
	.Hidden
----timingpoints
	.StartTime
	.Bpm
	.Signature
	.Hidden
	.IsEditableInLuaScript
	.MillisecondsPerBeat
events

actions.
----perform & createeditoraction
	actions.Perform()---(utils.CreateEditorAction(action_type.))
	actions.PerformBatch({})---({utils.CreateEditorAction(action_type.), ...})

action_type.
----book-mark
40: AddBookmark
41: AddBookmarkBatch
42: EditBookmark
43: RemoveBookmark
44: RemoveBookmarkBatch
45: ChangeBookmarkOffsetBatch
----hit-object
0: PlaceHitObject
1: RemoveHitObject
2: ResizeLongNote
3: RemoveHitObjectBatch
4: PlaceHitObjectBatch
5: FlipHitObjects
6: SwapLanes
7: MoveHitObjects
8: AddHitsound
9: RemoveHitsound
37: ResnapHitObjects
39: ReverseHitObjects
----scroll-velocity (sv)
17: AddScrollVelocity
18: RemoveScrollVelocity
19: AddScrollVelocityBatch
20: RemoveScrollVelocityBatch
34: ChangeScrollVelocityOffsetBatch
35: ChangeScrollVelocityMultiplierBatch	
----scroll-speed-factor (ssf)
53: AddScrollSpeedFactor
54: AddScrollSpeedFactorBatch
55: ChangeScrollSpeedFactorMultiplierBatch
56: ChangeScrollSpeedFactorLaneMaskBatch
57: ChangeScrollSpeedFactorOffsetBatch
58: RemoveScrollSpeedFactor
59: RemoveScrollSpeedFactorBatch
----layers
10: CreateLayer
11: RemoveLayer
12: RenameLayer
13: MoveToLayer
14: MoveLayer
15: ColorLayer
16: ToggleLayerVisibility
----timing-point
21: AddTimingPoint
22: RemoveTimingPoint
23: AddTimingPointBatch
24: RemoveTimingPointBatch
26: ChangeTimingPointOffset
27: ChangeTimingPointBpm
28: ChangeTimingPointSignature
29: ChangeTimingPointHidden
30: ResetTimingPoint
31: ChangeTimingPointBpmBatch
32: ChangeTimingPointSignatureBatch
33: ChangeTimingPointOffsetBatch
----timing-group (TG, SG)
46: CreateTimingGroup
47: RemoveTimingGroup
48: RenameTimingGroup
49: MoveObjectsToTimingGroup
50: ColorTimingGroup
51: AddTimingGroupBatch
52: RemoveTimingGroupBatch

36: ApplyOffset
38: Batch
25: ChangePreviewTime

actions.
	{
----book-mark (BM)
	--[=[ userdata ]=]--[=[ numeric, string ]=]
	AddBookmark(Mark)|(Time, String)
	AddBookmarkBatch(Marks)--[=[ {userdata¿...} ]=]
	--[=[ {userdata¿...}, numeric ]=]
	ChangeBookmarkBatchOffset(Marks, Offset)
	--[=[ userdata, string ]=]
	EditBookmark(Mark, String)
	--[=[ userdata ]=]
	RemoveBookmark(Mark)
	RemoveBookmarkBatch(Marks)--[=[ {userdata¿...} ]=]
----hit-object (Note, HO)
	--[=[ userdata ]=]--[=[ numeric, numeric, numeric, string, numeric?, string, `HitObjectType ]=]
	PlaceHitObject(Note)|(Lane, StartTime, ¿EndTime, ¿Layer, ¿HitSounds, ¿GroupId, ¿Type)
	PlaceHitObjectBatch(Notes)--[=[ {userdata¿...} ]=]
	--[=[ userdata ]=]
	RemoveHitObject(Note)
	RemoveHitObjectBatch(Notes)--[=[ {userdata¿...} ]=]
	--[=[ userdata, numeric, numeric ]=]
	ResizeLongNote(Note, originalTime, time)
	--[=[ {numeric¿...}, {userdata¿...} ]=]
	ResnapNotes(Snaps, Note)
	--[=[ {userdata¿...} ]=]
	SetHitObjectSelection(Notes)
	--[=[ userdata, {userdata¿...} ]=]
	MoveHitObjectsToLayer(Layer, Notes)
	--[=[ {userdata¿...}, string ]=]
	MoveObjectsToTimingGroup(Notes, GroupId)
----layers
	--[=[ userdata, numeric, numeric, numeric ]=]
	ChangeLayerColor(Layer, R, G, B)
	--[=[ userdata, numeric ]=]
	CreateLayer(Layer, Index)
	--[=[ userdata ]=]
	RemoveLayer(Layer)
	--[=[ userdata, string ]=]
	RenameLayer(Layer, Name)
	--[=[ userdata ]=]
	ToggleLayerVisibility(Layer)
		--[=[ userdata, {userdata¿...} ]=]
		MoveHitObjectsToLayer(Layer, Notes)
----scroll-speed-factor (SSF)
----scroll-velocity (SV)
	--[=[ userdata, userdata ]=]
	PlaceScrollVelocity(Scroll, scrollGroup)
	PlaceScrollVelocityBatch(Scrolls, scrollGroup)--[=[ {userdata¿...}, userdata ]=]
	--[=[ userdata, userdata ]=]
	RemoveScrollVelocity(Scroll, scrollGroup)
	RemoveScrollVelocityBatch(Scrolls, scrollGroup)--[=[ {userdata¿...}, userdata ]=]
----timing-group (TG, SG)
	--[=[ string, numeric, numeric, numeric ]=]
	ChangeTimingGroupColor(Group, R, G, B)
	--[=[ string ]=]
	RemoveTimingGroup(Group)
	--[=[ string, string ]=]
	RenameTimingGroup(Group, Id)
	PlaceTimingGroup(string id, TimingGroup timingGroup, List<HitObjectInfo> hitObjectInfos)
		--[=[ {userdata¿...}, string ]=]
		MoveObjectsToTimingGroup(Notes, Id)
----timing-point (TP)
	--[=[ userdata, numeric ]=]
	ChangeTimingPointBpm(Point, bpm)
	ChangeTimingPointBpmBatch(Points, bpm)--[=[ {userdata¿...}, numeric ]=]
	--[=[ userdata, boolean ]=]
	ChangeTimingPointHidden(Point, Hidden)
	--[=[ userdata, numeric ]=]
	ChangeTimingPointOffset(Point, Offset)
	ChangeTimingPointOffsetBatch(Points, Offset)--[=[ {userdata¿...}, numeric ]=]
	--[=[ userdata ]=]
	PlaceTimingPoint(Point)
	PlaceTimingPointBatch(Points)--[=[ {userdata¿...} ]=]
	--[=[ userdata ]=]
	RemoveTimingPoint(Point)
	RemoveTimingPointBatch(Points)--[=[ {userdata¿...} ]=]
	--[=[ userdata ]=]
	ResetTimingPoint(Point)
----misc
	Destroy()
	--[=[ numeric|string? ]=]
	GoToObjects(input)
	Redo()
	Undo()
	--[=[ userdata ]=]
	Perform(Action)
	--[=[ {userdata¿...} ]=]
	PerformBatch(Actions)
	--[=[ numeric ]=]
	SetPreviewTime(Time)
	}

utils.
	{
	--(numeric, string)
	utils.CreateBookmark(StartTime, Note)
	--(numeric, numeric, ¿numeric, ?, ?, ?, ?)
	utils.CreateHitObject(StartTime, Lane, ¿EndTime, ¿HitSound, ¿EditorLayer, ¿Type)
	--(numeric, numeric, boolean)
	utils.CreateScrollVelocity(StartTime, Multiplier, ¿IsEditableInLuaScript)
	--(numeric, numeric, boolean)
	utils.CreateScrollSpeedFactor(StartTime, Multiplier, ¿IsEditableInLuaScript)
	--(numeric, numeric, numeric|string, boolean)
	utils.CreateTimingPoint(StartTime, Bpm, Signature, ¿Hidden)
	--(table?|userdata, numeric, vector(R,G,B))
	utils.CreateScrollGroup(ScrollVelocities, InitialScrollVelocity, ColorRgb)
	--(string)
	utils.GenerateTimingGroupId(¿?Prefix)
	--(numeric, string)
	utils.GenerateTimingGroupIds(Count, ¿?Prefix)
----editor-layer
	--(string, boolean, vector(R,G,B))
	utils.CreateEditorLayer(Name, ¿?Hidden, ¿?ColorRgb)
	
	utils.MillisecondsToTime()
	utils.ToHalf()
	utils.ToFloat()
	
	utils.IsKeyPressed
	utils.IsKeyDown
	utils.IsKeyReleased
	utils.IsKeyUp
	}



imgui_data_type
imgui_dir
imgui_nav_input

imgui_mouse_cursor--GetMouseCursor
imgui_mouse_button

imgui_key
imgui_key_mod

imgui_config_flags
imgui_backend_flags
imgui_combo_flags
imgui_tab_bar_flags
imgui_drag_drop_flags
imgui_tab_item_flags
imgui_input_text_flags
imgui_selectable_flags
imgui_table_flags
imgui_tree_node_flags

imgui_window_flags
imgui_cond--setwindow
imgui_hovered_flags
imgui_focused_flags

imgui_col
imgui_style_var
imgui_color_edit_flags
|os.
	os.clock()
	os.date()
	os.time()

vector.
	--table = (vector or table)|numeric
	vector.Abs(table)
	--[=[ table, table|numeric ]=]
	vector.Add(table, value)
	--[=[ vector|numeric, vector|numeric, vector|numeric ]=]
	vector.Clamp(table, min, max)
	vector.Cross(table, table)--?
	--[=[ table|numeric, table|numeric ]=]
	vector.Distance(value, value)
	vector.DistanceSquared(table, table)
	vector.Divide(table, value)
	vector.Dot(?, ?)
	vector.Length(?)
	vector.Lerp(?, ?, ?)
	vector.Max(?, ?)
	vector.Min(?, ?)
	vector.Modulo(?, ?)
	vector.Multiply(?, ?)
	vector.Negate(?, ?)
	--[=[ numeric, numeric, numeric, numeric ]=]
	vector.New(x, y, z, w)
	vector.Normalize(table)
	vector.One(?)
	vector.Reflect(?, ?)
	vector.RemEuclid(?, ?)
	vector.SquareRoot(?)
	vector.Subtract(value, value)--{x = , y = }
	vector.Table(table)
	vector.UnitW(vector)--{0, 0, 0, 1}
	vector.UnitX(vector)--{1, 0, 0, 0}
	vector.UnitY(vector)--{0, 1, 0, 0}
	vector.UnitZ(vector)--{0, 0, 1, 0}
	vector.Unpack(?)
	vector.Zero
	
	
	vector3
	vector4

| MoonSharp
-- prime table (unsure what it does; though is a limited table)
primetable = ${ ... }
string.contains(string, string)
string.startsWith(string, string)
string.endsWith(string, string)
string.unicode(string, ¿start, ¿end)
--- turns a json-like string into a table
json.parse(string)
--- turns a table into a json-like string
json.serialize(table)
json.isNull(varable)
json.null()
| MetaTables
rawequal
rawget
rawlen
rawset
__index
__newindex
__tostring --[=[ tostring ]=]
__concat --[=[ .. ]=]
__call
__len
__metatable --[=[ getmetatable ]=]
__add --	+
__mod -- %
__mul --	*
__sub --	-
__div --	/
__unm --	negation
__pow --	^
__eq --	=
__lt --	>  (less than)
__le --	>= (Less than or Equal)
__mode -- weaktable options ("k", "v", "kv", "s")
__ipairs
__pairs
__gc

__name
__shr
__idiv
__shl
__close
__iterator

MetaTable = {}
__index--on call Table[Key]
	MetaTable.__index = function(TABLE, KEY)
		[=[
		If TABLE[KEY] exsists; return TABLE[KEY]
		Otherwise; return this function
		 ]=]
	end
__newindex--on call Table[Key] = Value
	MetaTable.__newindex = function(TABLE, KEY, VALUE)
		[=[
		If TABLE[KEY] exsists; return TABLE[KEY]
		Otherwise; return this function
		 ]=]
	end
__len--on call #Table
	MetaTable.__len = function(TABLE)
		[=[
		Always; return this function
		 ]=]
	end
__metatable
	MetaTable.__metatable = "not your business"
	getmetatable(Table)--> not your business
	setmetatable(Table, {})--> error: cannot change protected metatable
__mode
	MetaTable.__metatable = "k"-- modes can be "k", "v", "kv", or "s'
