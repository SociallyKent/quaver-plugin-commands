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

isSelected

detect action
	'IsKey' 
	--Shift, Control, Alt - place Left or Right before
	--Arrows - Left, Up, Down, Right
	utils.IsKeyPressed(keys.) | utils.IsKeyReleased(keys.) 
	utils.IsKeyDown(keys.)	  | utils.IsKeyUp(keys.)
	'IsMouse'
	;--0 = true, 1 = false
	imgui.IsMouseClicked(0 or 1)
	imgui.IsMouseReleased(0 or 1)
	imgui.IsMouseDown(0 or 1)
	'IsWindowHovered'/'IsItemHovered'	
	imgui.IsWindowHovered()
	imgui.IsItemHovered()
table
	t = {} --(item, ...)
	'table.'
	table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
	table.insert(table, position, value) -- if no posiion is given; defaults to last
	table.remove(table, position) -- if no posiion is given; defaults to last
	table.pack() | table.unpack()
	table.sort()
----
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
	'Button'
		imgui.Button(text)--(text, size{x, y})
		imgui.SmallButton(text)--(text, size{x, y})
		imgui.InvisibleButton()
		imgui.ArrowButton()
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
		imgui.InputTextFloat(text, value)--(text, value, step, step fast, format, flags)
		imgui.InputTextInt(text, value)--same as float
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
	imgui.BeginTable(text, count, flags) | imgui.EndTable()
		--
		imgui.TableNextColumn()
	'Tooltip'
	imgui.BeginTooltip() | imgui.EndTooltip()
		--
		imgui.SetTooltip() | imgui.SetTooltipV()
	--to find:
	BeginPopup
	BeginPopupModal
|"set"|"get"
	'CursorPos'/'WindowPos'
	imgui.SetCursorPos({x, y}) | imgui.GetCursorPos()
	imgui.SetCursorPosX(x) | imgui.GetCursorPosX()
	imgui.SetCursorPosY(y) | imgui.GetCursorPosY()
	imgui.SetCursorStartPos() | imgui.GetCursorStartPos()
	imgui.SetCursorScreenPos() | imgui.GetCursorScreenPos() 
	imgui.SetWindowPos() | imgui.GetWindowPos()
	'CursorScreenPos'/'Window'
	'FontSize'/'WindowSize'
	imgui.SetFontSize() | imgui.GetFontSize()
	imgui.SetWindowFontScale() | imgui.GetWindowFontScale()
	imgui.SetWindowSize() | imgui.GetWindowSize()
	imgui.SetNextWindowSizeConstraints()
	'ClipboardText'
	imgui.SetClipboardText(value) | imgui.GetClipboardText()
	'DrawList'
	imgui.GetOverlayDrawList()
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
	'GetContentRegion'/'GetWindowContentRegion'
		all have:
		imgui.[]Max()
		imgui.[]Avail()
		exclusive:
		--GetWindowContentRegion
		imgui.[]Min()
	--to find:
	CalcItemWidth()
	SetNextWindowContentSize
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
|"StyleColors" -- built in styles
	imgui.StyleColorsDark() 
	imgui.StyleColorsClassic() 
	imgui.StyleColorsLight() 
|"imgui_"
	'style_var'
	imgui_style_var.Alpha
	imgui_style_var.WindowPadding--{x, y}
	imgui_style_var.WindowRounding--x
	imgui_style_var.WindowBorderSize--x
	imgui_style_var.WindowMinSize--{x, y}
	imgui_style_var.WindowTitleAlign--{x, y}
	imgui_style_var.ChildRounding--x
	imgui_style_var.ChildBorderSize--x
	imgui_style_var.PopupRounding--x
	imgui_style_var.PopupBorderSize--x
	imgui_style_var.FramePadding--{x, y}
	imgui_style_var.FrameRounding--x
	imgui_style_var.FrameBorderSize--x
	imgui_style_var.ItemSpacing--{x, y}
	imgui_style_var.ItemInnerSpacing--{x, y}
	imgui_style_var.IndentSpacing--x
	imgui_style_var.ScrollbarSize--x
	imgui_style_var.ScrollbarRounding--x
	imgui_style_var.GrabMinSize--x
	imgui_style_var.GrabRounding--x
	imgui_style_var.TabRounding--x
	imgui_style_var.ButtonTextAlign--{x, y}
	imgui_style_var.SelectableTextAlign--{x, y}
	'style_col.'
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
	map.TimingGroups
	map.DefaultScrollGroup
	map.GlobalScrollGroup
	map.EditorLayers[]
	map.LastSelectedScrollGroupId
	map.GetCommonBpm()
	map.GetNearestSnapTimeFromTime()
	
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
----scrollvelocities
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
	action_type.AddHitObject | action_type.RemoveHitObject
	action_type.AddHitObjectBatch | action_type.RemoveHitObjectbatch
	ResnapHitObjects
	FlipHitObjects
	SwapLanes
	MoveHitObjects
	ReverseHitObjects
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
	action.ChangeTimingGroupColor
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
	
everything gets ran 1 time.
	
os.
	os.clock()
	os.date()
	os.time()
