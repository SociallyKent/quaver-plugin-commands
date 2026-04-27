boolean -- true or false
number|numeric -- 1 
string -- "one" or "1"
table|vector -- [1, "one"}

tostring()
tonumber()

setmetatable()
getmetatable()

__index 
print|error
table
	t = {} --(item, ...)
	'table.'
	table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
	table.insert(table, position, value) -- if no posiion is given; defaults to last
	table.remove(table, position) -- if no posiion is given; defaults to last
	table.pack() | table.unpack(table)
	table.sort(table)

imgui.
|Detect
|"Mouse"
	'MouseDragDelta'
	imgui.GetMouseDragDelta()
	imgui.ResetMouseDragDelta()
	'IsMouse'
	IsMouseDown
	IsMouseClicked
	IsMouseReleased
	IsMouseDoubleClicked
	IsMouseHoveringRect
	IsMousePosValid
	IsAnyMouseDown
	IsMouseDragging
|"Show"
	imgui.ShowAboutWindow()
	imgui.ShowDemoWindow()
	imgui.ShowFontSelector()--crashes
	imgui.ShowMetricsWindow()
	imgui.ShowStyleEditor()
	imgui.ShowStyleSelector()--crashes
	imgui.ShowUserGuide()
	--tofind
	ShowAboutWindow
|""
	--[["##text" = invisable]]
	--ex	imgui.button("##can't see me") imgui.button("can see me")
	---Does not work with imgui.Text
	'Bullet'
		imgui.Bullet()
		--[[varable]]
		imgui.BulletText(value)
	'Button'
		--[[name, imgui_dir]]
		imgui.ArrowButton(name, dirrection)
		--[[varable, {x, y}]]
		imgui.Button(name, ¿size)
		--[[varable, {x, y}, imgui_button_flags]]
		imgui.InvisibleButton(name, size, ¿flags)
		--[[varable, numeric?, numeric?]]
		imgui.RadioButton(name, value, ¿value_button)
		--[[varable]]
		imgui.SmallButton(name)
	'Checkbox'
		--[[varable, boolean]]
		imgui.CheckBox(name, value)
		--[[varable, ?, ?]]
		imgui.CheckBoxFlags(name, id, value)
	'CollapsingHeader'
		--[[varable, boolean, imgui_tree_node_flags]]
		imgui.CollapsingHeader(name, ¿visable, ¿flags)--(text, flags)/(text, state, flags)
	'Columns'
		--[[numeric, imgui_id, boolean]]
		imgui.Columns(¿count, ¿id, ¿border)
		imgui.GetColumnCount()
		imgui.GetColumnIndex()
		imgui.NextColumn()
		imgui.SetColumnOffset() | imgui.GetColumnOffset()
		imgui.SetColumnWidth() | imgui.GetColumnWidth()
	'Combo'
		--[[varable, numeric, string|vector, numeric]]
		imgui.Combo(name, item, items, ¿length)--if string: "item1\0...\0" : otherwise the usual {item1, ...}
		--[[varable, varable, imgui_combo_flags]]
		imgui.BeginCombo(name, preview, ¿flags)
	'Drag'
		--[[varable, numeric, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.DragFloat(name, value, ¿speed, ¿min, ¿max, ¿format, ¿flags)		
			DragFloat2 DragFloat3 DragFloat4--[[same, but value = vector{2/3/4}]]
		--[[varable, numeric, numeric, numeric, numeric, numeric, format, format, imgui_slider_flags]]
		imgui.DragFloatRange2(name, min, max, ¿speed, ¿min, ¿max, ¿format, ¿max_format, ¿flags)
		--[[varable, numeric, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.DragInt(name, value, ¿speed, ¿min, ¿max, ¿format, ¿flags)
			DragInt2 DragInt3 DragInt4--[[same, but value = vector{2/3/4}]]
		--[[varable, numeric, numeric, numeric, numeric, numeric, format, format, imgui_slider_flags]]
		imgui.DragIntRange2(name, min, max, ¿speed, ¿min, ¿max, ¿format, ¿max_format, ¿flags)
		--[[varable, imgui_data_type, dependant numeric, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.DragScalar(name, data, value, ¿speed, ¿min, ¿max, ¿format, ¿flags)
		--[[varable, imgui_data_type, dependant numeric, numeric?, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.DragScalarN(name, data, value, components, ¿speed, ¿min, ¿max, ¿format, ¿flags)
	'InputText'
		--[[varable, {numeric, numeric}, numeric, numeric, format, imgui_input_text_flags]]
		imgui.InputDouble(name, value, ¿step, ¿step_fast, ¿format, ¿flags)
		--[[varable, numeric, numeric, numeric, format, imgui_input_text_flags]]
		imgui.InputFloat(name, value, ¿step, ¿step_fast, ¿format, ¿flags)
			InputFloat2 InputFloat3 InputFloat4--[[name, vector{2/3/4}, ¿flags]]
		--[[varable, numeric, numeric, numeric, imgui_input_text_flags]]
		imgui.InputInt(name, value, ¿step, ¿step_fast, ¿flags)
			InputInt2 InputInt3 InputInt4--[[name, vector{2/3/4}, ¿flags]]
		--[[varable, imgui_data_type, dependant numeric, numeric, numeric, format, imgui_input_text_flags]]
		imgui.InputScaler(name, data, value, ¿step, ¿step_fast, ¿format, ¿flags)
		--[[varable, imgui_data_type, dependant numeric, numeric?, numeric, numeric, format, imgui_input_text_flags_flags]]
		imgui.InputScalerN(name, data, value, components, ¿step, ¿step_fast, ¿format, ¿flags)
		--[[varable, varable, numeric, imgui_input_text_flags_flags, ?, ?]]
		imgui.InputText(name, value, length, ¿flags, ¿callback, ¿user_data)
		--[[varable, varable, numberic, {x, y}, imgui_input_text_flags_flags, ?, ?]]
		imgui.InputTextMultiline(name, value, length, size, ¿flags, ¿callback, ¿user_data)
		--[[varable, varable, varable, numeric, imgui_input_text_flags_flags, ?, ?]]
		imgui.InputTextWithHint(name, hint, value, length, ¿flags, ¿callback, ¿user_data)
	'ListBox'
		--[[varable, numeric, vector, numeric, numeric]]
		imgui.ListBox(name, item, items, count, ¿length)
		--[[varable, {x, y}]]
		imgui.BeginListBox(name, ¿size)
		imgui.EndListBox()
	'PlotHistogram'/'PlotLines'
		--[[string, vector{numeric...}, numeric, numeric, varable, numeric, numeric, {x, y}, numeric?]]
		imgui.PlotHistogram(name, value, length, ¿offset, ¿overlay, ¿min, ¿max, ¿size, ¿stride)
		--[[string, vector{numeric...}, numeric, numeric, varable, numeric, numeric, {x, y}, numeric?]]
		imgui.PlotLines(name, value, length, ¿offset, ¿overlay, ¿min, ¿max, ¿size, ¿stride)
	'ProgressBar'
		--[[numeric/numeric, {x, y}, varable]]
		imgui.ProgressBar(fraction, ¿size, ¿overlay)
	'Selectable'
		--(varable, boolean, imgui_selectable_flags, {x, y})
		imgui.Selectable(name, value, ¿flags, ¿size))
	'Slider'
		--[[varable, radious, numeric, numeric, format, imgui_slider_flags]]
		imgui.SliderAngle(name, value, ¿min, ¿max, ¿format, ¿flags)
		--[[varable, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.SliderFloat(name, value, min, max, ¿format, ¿flags)--(text, value, min, max)
			SliderFloat2 SliderFloat3 SliderFloat4--same, but value = vector{2/3/4}
		--[[varable, numeric, numeric, numeric, format, imgui_slider_flags]]
		imgui.SliderInt(name, value, min, max, ¿format, ¿flags)--same as Float
			SliderInt2 SliderInt3 SliderInt4--same, but value = vector{2/3/4}
		--[[varable, imgui_data_type, numeric, numeric?, numeric?, format, imgui_slider_flags]]
		imgui.SliderScaler(name, data, value, min, max, ¿format, ¿flag)
		--[[varable, imgui_data_type, dependant numeric, numeric?, numeric?, format, imgui_slider_flags]]
		imgui.SliderScalerN(name, data, value, min, max, ¿format, ¿flag)
	'Spacers'
		imgui.Dummy()
		imgui.NewLine()
		imgui.PlotHistogram()
		imgui.PlotLines()
		imgui.SameLine(¿offset, ¿space)
		imgui.Separator()
		imgui.Spacing()
	'Text'
		--[[varable]]
		imgui.BulletText(value)
		--[[varable, varable]]
		imgui.LableText(value1, value2)
		--[[varable]]
		imgui.SeparatorText(value)
		--[[varable]]
		imgui.Text(value)
		
		imgui.TextColored(color, text)
		imgui.TextDisabled(text)
		imgui.TextLink(text)
		imgui.TextLinkOpenURL()
		imgui.TextUnformatted(text)
		imgui.TextWrapped(text)
	'Tree'
		imgui.GetTreeNodeToLabelSpacing()
		imgui.TreeNode(text)-- -- imgui.TreeNodeV(string)
		imgui.TreeNodeEx(text)--(text, flags) -- imgui.TreeNodeExV(string)
		imgui.TreePush(string) | imgui.TreePop()
	'Value'
	imgui.Value("ab", 0)
	--to find:
	imgui.AlignTextToFramePadding()
	imgui.AlignTextToFramePadding()
	imgui.SetNextItemOpen()--(state)
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
	'Group'
	imgui.BeginGroup() | imgui.EndGroup()
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
		--
		imgui.TableSetColumnIndex() | imgui.TableGetColumnIndex()
	BeginTable()--user begin into a table
		BeginChild()--(if ScrollX/ScrollY is set)
		imgui.TableBeginInitMemory()--first time table is used
		imgui.TableResetSettings()--on settings reset
		imgui.TableLoadSettings()--on settings load
		imgui.TableBeginApplyRequests()--apply queued resizing/reordering/hiding requests
			imgui.TableSetColumnWidth()--apply resizing width(for mouse resize, often requested by previous frame)
				imgui.TableUpdateColumnsWeightFromWidth()--recompute columns weights(of stretch columns) from the irrespective width
	imgui.TableSetupColumn()--user submit columns details(optional)
	imgui.TableSetupScrollFreeze()--user submit scroll freeze information(optional)
	--
	--internal only--imgui.TableUpdateLayout()--follow up to Begin imgui.Table():setup everything:widths, columns positions, clipping rectangles.Automatically called by the FIRST call to imgui.TableNextRow() or imgui.TableHeadersRow().
		imgui.TableSetupDrawChannels()--setup ImDrawList channels
		imgui.TableUpdateBorders()--detect hovering columns for resize, a head of contents submission
		imgui.TableBeginContextMenuPopup()
			imgui.TableDrawDefaultContextMenu()--draw right-click context menu contents
	--
	imgui.TableHeadersRow() or imgui.TableHeader()--user submit a headers row (optional)
		imgui.TableSortSpecsClickColumn()--when left-clicked: alter sort order and sort direction
		imgui.TableOpenContextMenu()--when right-clicked: trigger opening of the default context menu
	imgui.TableGetSortSpecs()--user queries updated sort specs(optional,generally after submitting headers)
	imgui.TableNextRow()--user begin into a new row(also automatically called by imgui.TableHeadersRow())
		imgui.TableEndRow()--finish existing row
		imgui.TableBeginRow()--add a new row
	imgui.TableSetColumnIndex()/imgui.TableNextColumn()--user begin into a cell
		imgui.TableEndCell()--close existing column/cell
		imgui.TableBeginCell()--enter into current column/cell
	--[...]									--user emit contents
	--
	EndTable()	--user ends the table
		TableDrawBorders()--draw outer borders, inner vertical borders
		TableMergeDrawChannels()--merge draw channels if clipping isn't required
		EndChild()--(if Scroll X/Scroll Y is set)
		TableSetColumnIndex() / TableNextColumn()
			TableBeginCell() | TableEndCell()
		imgui.TableNextColumn()
		imgui.TableGetSortSpecs
		imgui.TableSetupScrollFreeze()
		imgui.TableSetupColumn()
		imgui.TableHeadersRow()
		imgui.TableUpdateLayout
		imgui.TableSetupDrawChannels
		imgui.TableUpdateBorders
		imgui.TableSetColumnWidth
		imgui.TableNextRow
		imgui.PushID() | imgui.PopID()
		TableResized
		TableResizedColumnNextWidth
		AutoFitSingleColumn
		InstanceCurrent
		ReorderColumn
		ReorderColumnDir
		HeldHeaderColumn
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
	'FontSize'/'WindowSize'
	imgui.SetFontSize() | imgui.GetFontSize()
	imgui.SetWindowFontScale() | imgui.GetWindowFontScale()
	imgui.SetWindowSize() | imgui.GetWindowSize()
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
|"push"|"pop"
	;--push overrides current style      | pop restores previous style
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
	imgui.GetKeyName
	imgui.GetTime()
	imgui.GetFrameCount()
	imgui.CalcTextSize(Text)
	imgui.GetFrameHeight()
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
math.ceil(x)--(x, ...)-- returns the first value
math.floor(x)--(x, ...)-- returns the last value
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

Quaver:
Custom Commands:
state.
	state.SelectedHitObjects[]
	state.SelectedScrollGroupId
	
	state.CurrentBookmark
	state.CurrentLayer
	state.CurrentScrollFactor
	state.CurrentScrollVelocity
	state.CurrentSnap 
	state.CurrentTimingPoint
	state.SetValue(varable, value) | state.GetValue(varable)
	
	state.SongTime
	state.DeltaTime
	
	state.WindowSize -- Size of Game Window
	
	-- state.CurrentSnap
	-- state.Scale
map.
|""
	map.Bookmarks[]
	map.HitObjects[]
	map.EditorLayers[]
	map.ScrollSpeedFactors[]
	map.ScrollVelocities[]
	map.TimingGroups[]
	map.TimingPoints[]
	 --Shift X bitwise right by Y
	--X numeric
	--Y numeric
	bit32.arshift(X, Y)
	 --get bitwise and
	bit32.band(...)
	 --get bitwise not
	--X numeric
	bit32.bnot(X)
	 --get bitwise or
	bit32.bor(...)
	 --get bitwise xor
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
userdata--place after userdata to get that select data value
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

10: CreateLayer
11: RemoveLayer
12: RenameLayer
13: MoveToLayer
14: ColorLayer
15: ToggleLayerVisibility

16: AddScrollVelocity
17: RemoveScrollVelocity
18: AddScrollVelocityBatch
19: RemoveScrollVelocityBatch

20: AddTimingPoint
21: RemoveTimingPoint
22: AddTimingPointBatch
23: RemoveTimingPointBatch

24: ChangePreviewTime

25: ChangeTimingPointOffset
26: ChangeTimingPointBpm
27: ChangeTimingPointSignature
28: ChangeTimingPointHidden
29: ResetTimingPoint
30: ChangeTimingPointBpmBatch
31: ChangeTimingPointSignatureBatch
32: ChangeTimingPointOffsetBatch

33: ChangeScrollVelocityOffsetBatch
34: ChangeScrollVelocityMultiplierBatch

35: ApplyOffset
36: ResnapHitObjects
37: Batch
38: ReverseHitObjects

39: AddBookmark
40: AddBookmarkBatch
41: EditBookmark
42: RemoveBookmark
43: RemoveBookmarkBatch
44: ChangeBookmarkOffsetBatch

45: CreateTimingGroup
46: RemoveTimingGroup
47: RenameTimingGroup
48: MoveObjectsToTimingGroup
49: ColorTimingGroup
50: AddTimingGroupBatch
51: RemoveTimingGroupBatch

52: AddScrollSpeedFactor
53: AddScrollSpeedFactorBatch
54: ChangeScrollSpeedFactorMultiplierBatch
55: ChangeScrollSpeedFactorLaneMaskBatch
56: ChangeScrollSpeedFactorOffsetBatch
57: RemoveScrollSpeedFactor
58: RemoveScrollSpeedFactorBatch

-1: None
----book-mark
	action_type.AddBookmark	| action_type.RemoveBookmark
	action_type.AddBookmarkBatch--alt:40
	action_type.RemoveBookmarkbatch--alt:43
	action_type.EditBookmarkBatch
	ChangeBookmarkOffsetBatch
----hit-object
	action_type.PlaceHitObject--alt:0
	action_type.RemoveHitObject--alt:1
	action_type.RemoveHitObjectbatch--alt:3
	action_type.PlaceHitObjectBatch--alt:4
	action_type.FlipHitObjects--alt:5
	action_type.ResnapHitObjects--alt:6
	action_type.SwapLanes--alt:6
	action_type.MoveHitObjects--alt:7
	action_type.ReverseHitObjects--alt:38
----scroll-velocity (sv)
	ation_type.AddScrollVelocityBatch
----scroll-speed-factor (ssf)
	action_type.AddScrollSpeedFactor--alt:52
	action_type.RemoveScrollSpeedFactor--alt:57
	action_type.AddScrollSpeedFactorBatch--alt:53
	action_type.RemoveScrollSpeedFactorBatch--alt:58
----timing-point
	action_type.AddTimingPoint | action_type.RemoveTimingPoint
	action_type.AddTimingPointBatch | action_type.RemoveTimingPointBatch
	ChangeTimingPointBpm
	ChangeTimingPointOffset
	ResetTimingPoint
	ChangeTimingPointSignature
	ChangeTimingPointHidden
----layers
	action_type.AddLayer | action_type.RemoveLayer
	action_type.MoveToLayer
----timing-group
	action_type.CreateTimingGroup
	RemoveTimingGroup
	action_type.MoveObjectsToTimingGroup
	RenameTimingGroup
	ChangeTimingGroupColor
	MoveToTimingGroup?
----misc
	ChangePreviewTime
	ApplyOffset
actions.
	
----hit-object
	actions.PlaceHitObject() | actions.RemoveHitObject()
	actions.PlaceHitObjectBatch({}) | actions.RemoveHitObjectBatch({})
	actions.MoveHitObject()
	actions.MoveHitObjectBatch({})
----scroll-speed-factor
	actions.PlaceScrollSpeedFactor	| actions.RemoveScrollSpeedFactor
	actions.PlaceScrollSpeedFactorBatch({})
	actions.RemoveScrollSpeedFactorBatch({})
	actions.ChangeScrollSpeedFactorOffsetBatch() actions.ChangeScrollSpeedFactorMultiplierBatch()
----scroll-velocity
	actions.PlaceScrollVelocity	| actions.RemoveScrollVelocity
	actions.PlaceScrollVelocityBatch({}) | actions.RemoveScrollVelocityBatch({})
	actions.ChangeScrollVelocityOffsetBatch() actions.ChangeScrollVelocityMultiplierBatch()
----timing-point
	actions.PlaceTimingPoint() | actions.RemoveTimingPoint()
	actions.PlaceTimingPointBatch({}) | actions.RemoveTimingPointBatch({})
	actions.ChangeTimingPointOffset() | actions.ChangeTimingPointOffsetBatch({}) ; actions.ChangeTimingPointBpm() | actions.ChangeTimingPointBpmBatch({}) ; actions.ChangeTimingPointSignature() | actions.ChangeTimingPointSignatureBatch({}) ; actions.ChangeTimingPointHidden() ; actions.ResetTimingPoint()
----layers
	actions.CreateLayer() | actions.RemoveLayer()
	actions.RenameLayer() ; actions.ChangeLayerColor()
	actions.MoveHitObjectsToLayer()	; actions.ToggleLayerVisibility()
----misc
	actions.Undo() | actions.Redo()
	actions.ResnapNotes()
	actions.ResizeLongNote()
	actions.GoToObjects()
	actions.SetHitObjectSelection()
	actions.ChangeTimingGroupColor
	actions.DetectBpm() ;; actions.SetPreviewTime() ;; actions.TriggerEvent()
utils.
	--(numeric, string)
	utils.CreateBookmark(StartTime, Note)
	--(numeric, numeric, numeric, ?, ?, ?)
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
os.
	os.clock()
	os.date()
	os.time()
keys         = {
0: None
8: Back
9: Tab
13: Enter
19: Pause
20: CapsLock
21: Kana
25: Kanji
27: Escape
28: ImeConvert
29: ImeNoConvert
32: Space
33: PageUp
34: PageDown
35: End
36: Home
37: Left
38: Up
39: Right
40: Down
41: Select
42: Print
43: Execute
44: PrintScreen
45: Insert
46: Delete
47: Help
48: D0
49: D1
50: D2
51: D3
52: D4
53: D5
54: D6
55: D7
56: D8
57: D9
65: A
66: B
67: C
68: D
69: E
70: F
71: G
72: H
73: I
74: J
75: K
76: L
77: M
78: N
79: O
80: P
81: Q
82: R
83: S
84: T
85: U
86: V
87: W
88: X
89: Y
90: Z
91: LeftWindows
92: RightWindows
93: Apps
95: Sleep
96: NumPad0
97: NumPad1
98: NumPad2
99: NumPad3
100: NumPad4
101: NumPad5
102: NumPad6
103: NumPad7
104: NumPad8
105: NumPad9
106: Multiply
107: Add
108: Separator
109: Subtract
110: Decimal
111: Divide
112: F1
113: F2
114: F3
115: F4
116: F5
117: F6
118: F7
119: F8
120: F9
121: F10
122: F11
123: F12
124: F13
125: F14
126: F15
127: F16
128: F17
129: F18
130: F19
131: F20
132: F21
133: F22
134: F23
135: F24
144: NumLock
145: Scroll
160: LeftShift
161: RightShift
162: LeftControl
163: RightControl
164: LeftAlt
165: RightAlt
166: BrowserBack
167: BrowserForward
168: BrowserRefresh
169: BrowserStop
170: BrowserSearch
171: BrowserFavorites
172: BrowserHome
173: VolumeMute
174: VolumeDown
175: VolumeUp
176: MediaNextTrack
177: MediaPreviousTrack
178: MediaStop
179: MediaPlayPause
180: LaunchMail
181: SelectMedia
182: LaunchApplication1
183: LaunchApplication2
186: OemSemicolon
187: OemPlus
188: OemComma
189: OemMinus
190: OemPeriod
191: OemQuestion
192: OemTilde
193: OemColon
194: OemExclamationMark
195: PunctuatedU
196: Asterisk
197: Caret
198: DollarSign
199: OemCloseParenthesis
200: Squared
202: ChatPadGreen
203: ChatPadOrange
219: OemOpenBrackets
220: OemPipe
221: OemCloseBrackets
222: OemQuotes
223: Oem8
226: OemBackslash
229: ProcessKey
242: OemCopy
243: OemAuto
244: OemEnlW
246: Attn
247: Crsel
248: Exsel
249: EraseEof
250: Play
251: Zoom
253: Pa1
254: OemClear
None--alt:0 Reserved.
Back--alt:8
Tab--alt:9
Enter--alt:13
CapsLock--alt:20
Escape--alt:27
Space--alt:32
PageUp--alt:33
PageDown--alt:34
End--alt:35
Home--alt:36
Left--alt:37
Up--alt:38
Right--alt:39
Down--alt:40
Select--alt:41
Print--alt:42
Execute--alt:43
PrintScreen--alt:44
Insert--alt:45
Delete--alt:46
Help--alt:47
D0--alt:48 Used for miscellaneous characters; varys by keyboard.
D1--alt:49 Used for miscellaneous characters; varys by keyboard.
D2--alt:50 Used for miscellaneous characters; varys by keyboard.
D3--alt:51 Used for miscellaneous characters; varys by keyboard.
D4--alt:52 Used for miscellaneous characters; varys by keyboard.
D5--alt:53 Used for miscellaneous characters; varys by keyboard.
D6--alt:54 Used for miscellaneous characters; varys by keyboard.
D7--alt:55 Used for miscellaneous characters; varys by keyboard.
D8--alt:56 Used for miscellaneous characters; varys by keyboard.
D9--alt:57 Used for miscellaneous characters; varys by keyboard.
A--alt:65
B--alt:66
C--alt:67
D--alt:68
E--alt:69
F--alt:70
G--alt:71
H--alt:72
I--alt:73
J--alt:74
K--alt:75
L--alt:76
M--alt:77
N--alt:78
O--alt:79
P--alt:80
Q--alt:81
R--alt:82
S--alt:83
T--alt:84
U--alt:85
V--alt:86
W--alt:87
X--alt:88
Y--alt:89
Z--alt:90
LeftWindows--alt:91
RightWindows--alt:92
Apps--alt:93
Sleep--alt:95 Computer Sleep key.
NumPad0--alt:96
NumPad1--alt:97
NumPad2--alt:98
NumPad3--alt:99
NumPad4--alt:100
NumPad5--alt:101
NumPad6--alt:102
NumPad7--alt:103
NumPad8--alt:104
NumPad9--alt:105
Multiply--alt:106
Add--alt:107
Separator--alt:108
Subtract--alt:109
Decimal--alt:110
Divide--alt:111
F1--alt:112
F2--alt:113
F3--alt:114
F4--alt:115
F5--alt:116
F6--alt:117
F7--alt:118
F8--alt:119
F9--alt:120
F10--alt:121
F11--alt:122
F12--alt:123
F13--alt:124
F14--alt:125
F15--alt:126
F16--alt:127
F17--alt:128
F18--alt:129
F19--alt:130
F20--alt:131
F21--alt:132
F22--alt:133
F23--alt:134
F24--alt:135
NumLock--alt:144
Scroll--alt:145
LeftShift--alt:160
RightShift--alt:161
LeftControl--alt:162
RightControl--alt:163
LeftAlt--alt:164
RightAlt--alt:165
BrowserBack--alt:166
BrowserForward--alt:167
BrowserRefresh--alt:168
BrowserStop--alt:169
BrowserSearch--alt:170
BrowserFavorites--alt:171
BrowserHome--alt:172 Browser Start and Homekey.
VolumeMute--alt:173
VolumeDown--alt:174
VolumeUp--alt:175
MediaNextTrack--alt:176
MediaPreviousTrack--alt:177
MediaStop--alt:178
MediaPlayPause--alt:179
LaunchMail--alt:180
SelectMedia--alt:181
LaunchApplication1--alt:182
LaunchApplication2--alt:183
OemSemicolon--alt:186
OemPlus--alt:187
OemComma--alt:188
OemMinus--alt:189
OemPeriod--alt:190
OemQuestion--alt:191
OemTilde--alt:192
OemColon--alt:193
OemExclamationMark--alt:194
PunctuatedU--alt:195
Asterisk--alt:196
Caret--alt:197
DollarSign--alt:198
OemCloseParenthesis--alt:199
Squared--alt:200
OemOpenBrackets--alt:219 US keyboard.
OemPipe--alt:220 US keyboard.
OemCloseBrackets--alt:221 US keyboard.
OemQuotes--alt:222 US keyboard.
Oem8--alt:223 US keyboard.
OemBackslash--alt:226 The OEM angle bracket or backslash key on the RT102 key keyboard.
ProcessKey--alt:229 IME PROCESS key.
Attn--alt:246
Crsel--alt:247
Exsel--alt:248
EraseEof--alt:249
Play--alt:250
Zoom--alt:251
Pa1--alt:253
OemClear--alt:254 
ChatPadGreen--alt:0xCA
ChatPadOrange--alt:0xCB
Pause--alt:0x13 
ImeConvert--alt:0x1c
ImeNoConvert--alt:0x1d
Kana--alt:0x15 Japanese keyboard
Kanji--alt:0x19 Japanese keyboard
OemAuto--alt:0xf3
OemCopy--alt:0xf2
OemEnlW--alt:0xf4
}
