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
	table.pack() | table.unpack()
	table.sort()
----
isSelected

|Detect Input
	'IsKey' 
	--Shift, Control, Alt - place Left or Right before
	--Arrows - Left, Up, Down, Right
	utils.IsKeyPressed(keys.) | utils.IsKeyReleased(keys.) 
	utils.IsKeyDown(keys.)	  | utils.IsKeyUp(keys.)
	'IsMouse'
	;--0 = true, 1 = false
	--or you can do
	;--"Left", "Right"
	imgui.IsMouseClicked()
	imgui.IsMouseReleased()
	imgui.IsMouseDown()
	'IsWindowHovered'/'IsItemHovered'	
	imgui.IsWindowHovered()
	imgui.IsItemHovered()
|Detect
	imgui.GetMousePos()
	imgui.IsMousePosValid()
	imgui.IsMouseDragging() -- Detect dragging a window
	imgui.GetScrollY()
	imgui.GetScrollX()
imgui.
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
		imgui.Button(text)--(text, size{x, y})
		imgui.SmallButton(text)--(text, size{x, y})
		imgui.InvisibleButton(text, size{x, y})
		imgui.ArrowButton(text, dirrection) -- dirrection = 0, 1, 2, or 3
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
		imgui.InputDouble()
		imgui.InputText(text, value)--(text, value, flags)
		imgui.InputFloat(text, value)--(text, value, step, step fast, format, flags)
		imgui.InputInt(text, value)--same as float
		imgui.InputTextMultiline(text, value)--(text, value, length, size{x, y}, flags)
		imgui.InputTextScaler(text)
		imgui.InputTextWithHint(text, hint, value)--(text, hint, value, length, flags)
	'ListBox'
		imgui.BeginListBox(text)| imgui.EndListBox() -- can use too imgui.ListBoxHeader(text) | imgui.ListBoxFooter()
		imgui.ListBox(text)
	'ProgressBar'
		imgui.ProgressBar()
	'Selectable'
		imgui.Selectable(text)--(text, state, flags)
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
		imgui.SameLine()--(both space, single space)
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
	--to find:
	imgui.AlignTextToFramePadding()
	imgui.AlignTextToFramePadding()
	imgui.SetNextItemOpen()--(state)
|"begin"|"end"
	imgui.Begin(text, flags) | imgui.End()
	'Child'
	imgui.BeginChild(text) | imgui.EndChild()
	'Combo'
	imgui.BeginCombo() | imgui.EndCombo()
	'DragDrop'
	imgui.BeginDragDropSource() | imgui.SetDragDropPayload() |imgui.EndDragDropSource()
	imgui.BeginDragDropTarget() | imgui.EndDragDropTarget()
		--
		imgui.AcceptDragDropPayload()
		imgui.GetDragDropPayload("MY_PAYLOAD", 1, 1)
	'Group'
	imgui.BeginGroup() | imgui.EndGroup()
	'Menu'/'MenuBar'/'MainMenuBar'
	imgui.BeginMenu(text) | imgui.EndMenu()
	imgui.BeginMenuBar() | imgui.EndMenuBar()
	imgui.BeginMainMenuBar() | imgui.EndMainMenuBar()
		--
		imgui.MenuItem(text)
	'TabBar'/'TabItem'
	imgui.BeginTabBar(string, flags) | imgui.EndTabBar
	imgui.BeginTabItem(text) | imgui.EndTabItem()
	'Table'
	BeginTableEx
	TableFindByID
	imgui.BeginTable(text, count, flags) | imgui.EndTable()
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
	imgui.TableUpdateLayout()--follow up to Begin imgui.Table():setup everything:widths, columns positions, clipping rectangles.Automatically called by the FIRST call to imgui.TableNextRow() or imgui.TableHeadersRow().
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
Mathematics:
+ --- Addition
- --- Subtraction/Subtract
/ --- Division/Dividing
* --- Multiply/Timesing
^ --- Exponentiation/Power
^0.5 --- Square Root
math.abs(x) -- absolute
math.acos(x) -- arc cosine
math.cos(x) -- cosine
math.cosh(x) -- hyperbolic cosine
math.sin(x) -- sine
math.sinh(x) -- hyperbolic sine
math.asin(x) -- arc sine
math.tan(x) -- tangent
math.tanh(x) -- hyperbolic tangent
math.atan(x) -- arc tangent
math.atan2(y, x)
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
  --example: if x = 4 and y = 2, it returns 0, because 4 is a multiple of two; if x = 4 and y = 3, it returns 1, because 4 is not a multiple of 3
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
	state.CurrentTimingPoint
	state.CurrentBookmark
	state.CurrentScrollVelocity
	state.CurrentScrollFactor
	state.CurrentLayer
	state.CurrentSnap 
	state.SetValue(varable, value) | state.GetValue(varable)
	
	state.DeltaTime
map.
|""
	map.HitObjects[]
	map.Bookmarks[]
	map.ScrollVelocities[]
	map.ScrollSpeedFactors[]
	map.TimingPoints[]
	map.MineCount
	map.TimingGroups
	map.DefaultScrollGroup
	map.GlobalScrollGroup
	map.EditorLayers[]
	map.LastSelectedScrollGroupId
	map.GetCommonBpm()
	map.GetNearestSnapTimeFromTime()
	
	map.InitialScrollSpeedFactor
	
	map.GetBookmarkAt()
	map.GetHitObjectAt()
	map.GetTimingPointAt
	map.GetScrollVelocityAt
	map.GetScrollSpeedFactorAt
|"Song Data"
	Editor.GetBeatSnapDivisors()
	map.ToString()
	map.TrackLength
	map.GetKeyCount()
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
	action_type.AddBookmarkBatch | action_type.RemoveBookmarkbatch
	EditBookmark
	ChangeBookmarkOffsetBatch
----hit-object
	action_type.PlaceHitObject | action_type.RemoveHitObject
	action_type.PlaceHitObjectBatch | action_type.RemoveHitObjectbatch
	action_type.ResnapHitObjects
	action_type.FlipHitObjects
	action_type.SwapLanes
	action_type.MoveHitObjects
	action_type.ReverseHitObjects
----scroll-speed-factor (ssf)
	action_type.AddScrollSpeedFactor | action_type.RemoveScrollSpeedFactor
	action_type.AddScrollSpeedFactorBatch | action_type.RemoveScrollSpeedFactorBatch
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
----misc
	ChangePreviewTime
	ApplyOffset
actions.
----hit-object
	actions.PlaceHitObject() | actions.RemoveHitObject()
	actions.PlaceHitObjectBatch({}) | actions.RemoveHitObjectBatch({})
	actions.MoveHitObject()
	actions.MoveHitObjectBatch({})
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
----book-mark
	utils.CreateBookmark(starttime, text)
----hit-object
	utils.CreateHitObject(starttime, lane)
----scroll-velocity
	utils.CreateScrollVelocity(starttime, value)
----scroll-velocity-factor (ssf)
	utils.CreateScrollSpeedFactor(starttime, value)
----timing-point
	utils.CreateTimingPoint(starttime, value, signature)
----timing-group / scroll-group
	utils.CreateScrollGroup(svs, initialSV, colorRgb)
	utils.GenerateTimingGroupId()
	utils.GenerateTimingGroupIds()
	utils.MillisecondsToTime()

os.
	os.clock()
	os.date()
	os.time()
