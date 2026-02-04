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
	'IsKey' --left/Right: Shift, Control, Alt
	utils.IsKeyPressed(keys.) | utils.IsKeyReleased(keys.) 
	utils.IsKeyDown(keys.)	  | utils.IsKeyUp(keys.)
	'IsMouse'
	;--0 = true, 1 = false
	imgui.IsMouseClicked(0 or 1)
	imgui.IsMouseReleased(0 or 1)
	imgui.IsMouseDown(0 or 1)
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
	ShowAboutWindow
	imgui.ShowStyleEditor()
	imgui.ShowDemoWindow()
	imgui.ShowMetricsWindow()
	imgui.ShowStyleSelector()
	imgui.ShowFontSelector()
	imgui.ShowUserGuide()
|"flags./imgui_"[ --you can add multiple by putting '+' between them
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
	--Button
	--Checkbox
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
	'window_flags'
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
	'hovered_flags'
	imgui_hovered_flags.ChildWindows -- IsWindowHovered() only
	imgui_hovered_flags.RootWindow -- IsWindowHovered() only
	imgui_hovered_flags.AnyWindow -- IsWindowHovered() only
	imgui_hovered_flags.AllowWhenBlockedByPopup
	imgui_hovered_flags.AllowWhenBlockedByModal
	imgui_hovered_flags.AllowWhenBlockedByActiveItem
	imgui_hovered_flags.AllowWhenOverlapped
	imgui_hovered_flags.AllowWhenDisabled
	imgui_hovered_flags.RectOnly -- undefined
|""
	'Tree'/'CollapsingHeader'
	imgui.TreeNode(text)-- -- imgui.TreeNodeV(string)
	imgui.TreeNodeEx(text)--(text, flags) -- imgui.TreeNodeExV(string)
	imgui.TreePush(string) | imgui.TreePop()
	imgui.CollapsingHeader(text)--(text, flags)/(text, state, flags)
		'misc'
		imgui.GetTreeNodeToLabelSpacing()
		imgui.SetNextItemOpen()--(state)
	'Button'
	imgui.Button(text)--(text, size{x, y})
	imgui.SmallButton(text)--(text, size{x, y})
	imgui.InvisibleButton()
	imgui.ArrowButton()
	'Checkbox'
	imgui.CheckBox()
		imgui.CheckboxFlags()
	'Text'
	---these can be all lowercase
	imgui.TextUnformatted(text)
	imgui.Text(text)
	imgui.TextWrapped(text)
	imgui.TextColored(color, text)
	imgui.TextDisabled(text)
	imgui.LabelText(text, text)
	BulletText
	imgui.SeparatorText(text)
	imgui.TextLinkOpenURL()
	'Spacers'
	imgui.Columns(numeric) | imgui.NextColumn()
	imgui.Separator()
	imgui.Spacing()
	imgui.Dummy()
	imgui.SameLine()--(space left both, space left single)
	imgui.NewLine()
	imgui.PlotLines()
	imgui.PlotHistogram()
	'Selectable'
	imgui.Selectable(text)--(text, state, flags)
	'misc'
	imgui.ProgressBar()
	'IsWindowHovered'/'IsItemHovered'	
	imgui.IsWindowHovered()
	imgui.IsItemHovered()
	'Drag'/'Slider'/'InputText'
	all have:
		imgui.[]Float(text, value)--slider:(text, value, min, max)-drag:(text, value, speed, min, max)inputtext:(text, value, step, step fast, ¿format?, flags)
		imgui.[]Int(text, value)--same as Float
		imgui.[]Scaler(text)
	exclusives:
		'Slider'
		imgui.SliderAngle(text)--(text, radius, degree min, degree max)
		'InputText'
		imgui.InputTextMultiline(text, value)--(text, value, length, size{x, y}, flags)
		imgui.InputTextWithHint(text, hint, value)--(text, hint, value, length, flags)
		imgui.InputDouble()
	--to find:
	AlignTextToFramePadding()
	ListBox()
	ListBoxHeader()/BeginListBox() | ListBoxFooter()/EndListBox()
|"begin"|"end"
	imgui.Begin(text, flags) | imgui.End()
	'Child'
	imgui.BeginChild(text) | imgui.EndChild()
	'Menu'/'MenuBar'/'MainMenuBar'
	imgui.BeginMenu(text) | imgui.EndMenu()
	imgui.BeginMenuBar() | imgui.EndMenuBar()
	imgui.BeginMainMenuBar() | imgui.EndMainMenuBar()
	imgui.MenuItem(text)
	'Tooltip'
	imgui.BeginTooltip() | imgui.EndTooltip()
	imgui.SetTooltip() | imgui.SetTooltipV()
	'TabBar'/'TabItem'
	imgui.BeginTabBar(string, flags) | imgui.EndTabBar
	imgui.BeginTabItem(text) | imgui.EndTabItem()
	'DragDrop'
	imgui.BeginDragDropSource() | imgui.SetDragDropPayload() |imgui.EndDragDropSource()
	imgui.BeginDragDropTarget() | imgui.EndDragDropTarget()
	imgui.AcceptDragDropPayload()
	'Group'
	imgui.BeginGroup() | imgui.EndGroup()
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
		imgui.[]Min()
		imgui.[]Avail()
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
	state.SelectedScrollGroupId()
	
	state.SetValue(varable, value) | state.GetValue(varable)
map.
|""
	map.HitObjects[]
	map.Bookmarks[]
	map.ScrollVelocities[]
	map.ScrollSpeedFactors[]
	map.TimingPoints[]
	map.TimingGroups[]
	map.EditorLayers[]
	
	map.GetCommonBpm()
		map.GetNearestSnapTimeFromTime()
	
|"Song Data"
Editor.GetBeatSnapDivisors()
	map.ToString()
	map.TrackLength
	map.GetKeyCount()
userdata--place after userdata to get that select data value
----bookmarks
	.StartTime
	.Note
----editorlayers
	.StartTime
	.Bpm
	.Signiture
	.Hidden
	.IsEditableInLuaScript
	.MillisecondsPerBeat
----hitobjects
----scrollspeedfactors
----scrollvelocities
----timinggroups
----timingpoints

actions.
----perform & createeditoraction
	actions.Perform()---(utils.CreateEditorAction(action_type.))
	actions.PerformBatch({})---({utils.CreateEditorAction(action_type.), ...})

action_type.
----book-mark
	action_type.AddBookmark	| action_type.RemoveBookmark
	action_type.AddBookmarkBatch | action_type.RemoveBookmarkbatch
----hit-object
	action_type.AddHitObject | action_type.RemoveHitObject
	action_type.AddHitObjectBatch | action_type.RemoveHitObjectbatch
----scroll-speed-factor (ssf)
	action_type.AddScrollSpeedFactor | action_type.RemoveScrollSpeedFactor
	action_type.AddScrollSpeedFactorBatch | action_type.RemoveScrollSpeedFactorBatch
----timing-point
	action_type.AddTimingPoint | action_type.RemoveTimingPoint
	action_type.AddTimingPointBatch | action_type.RemoveTimingPointBatch
----layers
	action_type.AddLayer | action_type.RemoveLayer
	action_type.MoveToLayer
actions.
----hit-object
	actions.PlaceHitObject() | actions.RemoveHitObject()
	actions.PlaceHitObjectBatch({}) | actions.RemoveHitObjectBatch({})
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
	
everything gets ran 1 time.
	
os.
	os.clock()
	os.date()
	os.time()
