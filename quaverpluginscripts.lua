\n --newline
# --put before table to get the length
print()
ipairs()
pairs()
goto name | ::name::

nil
true
false

string
table
detect action
----key actions
	utils.IsKeyPressed(keys.) | utils.IsKeyReleased(keys.) 
	utils.IsKeyDown(keys.)	  | utils.IsKeyUp(keys.)
----mouse actions
	---0 = true, 1 = false
	imgui.IsMouseClicked(0 or 1)
	imgui.IsMouseReleased(0 or 1)
	imgui.IsMouseDown(0 or 1)
table
	t = {} --(item, ...)
----table.
	table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
	table.insert(table, position, value) -- if no posiion is given; defaults to last
	table.remove(table, position) -- if no posiion is given; defaults to last
	table.pack() | table.unpack()
	table.sort()
imgui.
	imgui.ShowStyleEditor()
	imgui.ShowDemoWindow()
----Tree
	imgui.TreeNode(text) | imgui.TreePop()
----Button
	imgui.Button(text) | imgui.SmallButton(text)--(text, size{x, y})|(text, size{x, y})--
----Checkbox
	imgui.CheckBox()
----Text
	---these can be all lowercase
	imgui.Text(text)
	imgui.TextWrapped(text)
	imgui.TextColored(color, text)
	imgui.TextDisabled(text)
	imgui.SeparatorText(text)--"" for no text
	imgui.TextLinkOpenURL()
	
	imgui.InputText(text, value)--(text, value, length, imgui_)
	imgui.InputInt(text, value)
	imgui.InputTextMultiline(text, value)--(text, value, length, imgui_, size{x, y})
----Spacers
	imgui.Columns(numeric) | imgui.NextColumn()
	imgui.Separator()
	imgui.Dummy()
	imgui.SameLine()--(numeric, numeric)--(size of left, space between)
	imgui.PlotLines()
---begin/end
	imgui.Begin(text)	   | imgui.End()
	imgui.BeginChild(text) | imgui.EndChild()
	
	imgui.BeginTooltip() | imgui.EndTooltip()
	
	imgui.BeginTabItem(text) | imgui.EndTabItem()
----set/get
	imgui.SetCursorPos({x, y}) | imgui.GetCursorPos()
	imgui.SetCursorPosX(x) | imgui.GetCursorPosX()
	imgui.SetCursorPosY(y) | imgui.GetCursorPosY()
	
	imgui.SetFontSize() | imgui.GetFontSize()
	
	imgui.SetClipboardText(value) | imgui.GetClipboardText()
	
	imgui.GetOverlayDrawList()
	imgui.GetWindowDrawList()
	
	imgui.GetWindowPos()
	imgui.GetWindowSize()
	
	imgui.GetMouseDragDelta()
	imgui.ResetMouseDragDelta()
	
	imgui.IsItemHovered()
----imgui_
	imgui_input_text_flags.AutoSelectAll-- works with InputTextMultiline too
	imgui_style_var.WindowPadding()
	
	imgui_window_flags.Resize
	imgui_window_flags.AlwaysAutoResize
	imgui_input_text_flags.Resize
	imgui_input_text_flags.AlwaysAutoResize
----push/pop
	;--push overrides current style      | pop restores previous style
	imgui.PushStyleCol(imgui_style_col.) | imgui.PopStyleCol(imgui_style_col.)
	imgui.PushStyleVar(imgui_style_var.) | imgui.PopStyleVar(imgui_style_var.)
	
	imgui.PushTextWrapPos() | imgui.PopTextWrapPos()
	imgui.PushItemWidth(numeric) | imgui.PopItemWidth()
----imgui.GetWindowDrawList()
	---shapes
	AddCircleFilled({x, y}, radius, color)
	AddTriangleFilled({x, y}, {x2, y2}, {x3, y3}, color)
	AddNgonFilled({x, y}, radius, color)
	AddQuadFilled({x, y}, {x2, y2}, {x3, y3}, {x4, y4}, color)
	
	AddLine({x, y}, {x2, y2}, color, thickness)
	AddText({x, y}, color, text)
	
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
-- example: if x = 2.56, it returns 2 and 0.56. if x = 7, it returns 7 and 0, because 7 has no number in a decimal point.
math.fmod(x, y) -- x = dividend, y = divisor/modulus 
-- example: if x = 4 and y = 2, it returns 0, because 4 is a multiple of two; if x = 4 and y = 3, it returns 1, because 4 is not a multiple of 3
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
	map.HitObjects[]
	map.Bookmarks[]
	map.ScrollVelocities[]
	map.ScrollSpeedFactors[]
	map.TimingPoints[]
	map.TimingGroups[]
	map.EditorLayers[]
userdata--place at the end of userdata to get only that type of value
	.StartTime
	.BPM
	.Signature

actions.
----perform & createeditoraction
	actions.Perform()---(utils.CreateEditorAction(action_type.))
	actions.PerformBatch({})---{(utils.CreateEditorAction(action_type.)), ...}

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
----layers
	action_type.AddLayer | action_type.RemoveLayer
	action_type.MoveToLayer
actions.
----hit-object
	actions.PlaceHitObject() | actions.RemoveHitObject()
	actions.PlaceHitObjectBatch() | actions.RemoveHitObjectBatch()
----scroll-velocity
	actions.PlaceScrollVelocity	| actions.RemoveScrollVelocity
	actions.PlaceScrollVelocityBatch() | actions.RemoveScrollVelocityBatch()
	actions.ChangeScrollVelocityOffsetBatch() actions.ChangeScrollVelocityMultiplierBatch()
----timing-point
	actions.PlaceTimingPoint() | actions.RemoveTimingPoint()
	actions.PlaceTimingPointBatch() | actions.RemoveTimingPointBatch()
	actions.ChangeTimingPointOffset() | actions.ChangeTimingPointOffsetBatch() ; actions.ChangeTimingPointBpm() | actions.ChangeTimingPointBpmBatch() ; actions.ChangeTimingPointSignature() | actions.ChangeTimingPointSignatureBatch() ; actions.ChangeTimingPointHidden() ; actions.ResetTimingPoint()
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
