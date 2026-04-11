function end
function name()
	script
end

if then (else/elseif) end
if boolean then
	script
	(else script/elseif boolean then script)--can repeat after elseif
end

for i=0, (in )0(, 0) do end
for do
	(break)--stop script loop
end

repeat until
repeat
	script
until boolean

while do (break) end
while boolean do 
	script
	(break)--stop script loop
end
\n --newline
# --put before table to get the length
print()
ipairs()
pairs()
goto name | ::name::
sub
min
max
rad
time
lines
local
return

or
not
and

nil -- no value
true
false


boolean -- true or false
number
string
table

tostring()
tonumber()

setmetatable()
getmetatable()

__index 
error
luaL_checknumber
luaL_len
table
	t = {} --(item, ...)
	'table.'
	table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
	table.insert(table, position, value) -- if no posiion is given; defaults to last
	table.remove(table, position) -- if no posiion is given; defaults to last
	table.pack() | table.unpack(table)
	table.sort(table)
----
isSelected

imgui.CalcListClipping
imgui.GetFrameCount
imgui.GetTime()


imgui.
|Detect
	--Alt, Shift, Control:
	imgui_key.Left[[Key]] imgui_key.Right[[Key]]
	--(Arrow keys) Up, Down, Left, Right:
	imgui_key.[[Dirrection]]Arrow
	--Letters
	imgui_key.[[Key]]
	
	--(imgui_key)
	imgui.GetKeyIndex(key)
	
	--(imgui_key)
	imgui.IsKeyDown(key)
	--(imgui_key, boolean)
	imgui.IsKeyPressed(key, ¿repeat)
	--(imgui_key)
	imgui.IsKeyReleased(key)
	
	--(?, numric, numeric)
	imgui.GetKeyPressedAmount(index, ¿?repeat_delay, ¿?rate)
	--(boolean)
	imgui.CaptureKeyboardFromApp(?)
|"Show"
	imgui.ShowStyleEditor()
	imgui.ShowDemoWindow()
	imgui.ShowMetricsWindow()
	imgui.ShowStyleSelector()--crashes
	imgui.ShowFontSelector()--crashes
	imgui.ShowUserGuide()
	--tofind
	ShowAboutWindow
|""
	---- "##text" = invisable
	--ex 	imgui.button("##can't see me") imgui.button("can see me")
	---Does not work with imgui.Text
	'Button'
		--(string, {x, y})
		imgui.Button(name, size)
		imgui.ColorButton(name, col, ¿flags, ¿size)
		imgui.SmallButton(name)--(text, size{x, y})
		imgui.InvisibleButton(name, size{x, y})
		imgui.ArrowButton(name, dirrection) -- dirrection = 0, 1, 2, or 3
	'Checkbox'
		imgui.CheckBox()
		imgui.CheckBoxFlags()
	'CollapsingHeader'
		imgui.CollapsingHeader(text)--(text, flags)/(text, state, flags)
	'Columns'
		imgui.Columns(numeric)
		imgui.GetColumnCount()
		imgui.GetColumnIndex()
		imgui.NextColumn()
		imgui.SetColumnOffset() | imgui.GetColumnOffset()
		imgui.SetColumnWidth() | imgui.GetColumnWidth()
	'Drag'
		imgui.DragFloat(text, value)--(text, value, speed, min, max)
		imgui.DragInt(text, value)--same as Float
		imgui.DragScaler(text)
	'InputText'
		--(string, varable, varable, varable, string_format, imgui_flags)
		imgui.InputDouble(name, value, step, step_fast, ¿format, ¿flags)
		--(string, varable, varable, varable, string_format, imgui_flags)
		imgui.InputFloat(name, value, step, faststep, ¿format, ¿flags)
		--(string, varable, varable, varable, string_format, imgui_flags)
		imgui.InputInt(name, value, step, faststep, ¿format, ¿flags)
		--(string, varable, numeric, imgui_flags)
		imgui.InputText(name, value, length, ¿flags)
		--(string, varable, numberic, {x, y}, imgui_flags)
		imgui.InputTextMultiline(name, value, length, size, ¿flags)
		--(string, imgui_data, ¿numeric, ¿numeric, string_format, imgui_flags)
		imgui.InputTextScaler(name, data_type, ¿?step, ¿?step_fast, ¿format, ¿flags)
		--(varable, varable, numeric, numeric, imgui_flags)
		imgui.InputTextWithHint(name, hint, value, length, ¿flags)
	'ListBox'
		imgui.BeginListBox(name, ¿size)
		imgui.EndListBox()
		imgui.ListBox(name, item, items, item count, height_in_items)
	'ProgressBar'
		imgui.ProgressBar()
	'Selectable'
		--(string, boolean, imgui_flags, {x, y})
		imgui.Selectable((text, ¿state, ¿flags, ¿size))
	'Slider'
		imgui.SliderAngle(text)--(text, radius, degree min, degree max)
		imgui.SliderFloat(text, value)--(text, value, min, max)
		imgui.SliderInt(text, value)--same as Float
		imgui.SliderScaler(text)
	'Spacers'
		imgui.Dummy()
		imgui.NewLine()
		imgui.PlotHistogram()
		imgui.PlotLines()
		imgui.SameLine(¿offset, ¿space)
		imgui.Separator()
		imgui.Spacing()
	'Text'
		imgui.BulletText(text)
		imgui.LabelText(text, text)
		imgui.SeparatorText(text)
		imgui.Text(text)
		imgui.TextColored(color, text)
		imgui.TextDisabled(text)
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
	imgui.BeginTabBar(string, flags) | imgui.EndTabBar
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
	'MouseDragDelta'
	imgui.GetMouseDragDelta()
	imgui.ResetMouseDragDelta()
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
map.
|""
	map.Bookmarks[]
	map.HitObjects[]
	map.EditorLayers[]
	map.ScrollSpeedFactors[]
	map.ScrollVelocities[]
	map.TimingGroups[]
	map.TimingPoints[]
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
	
	utils.IsKeyPressed
	utils.IsKeyDown
	utils.IsKeyReleased
	utils.IsKeyUp
