utils.IsKeyPressed(keys.) | utils.IsKeyReleased(keys.) 
utils.IsKeyDown(keys.)	  | utils.IsKeyUp(keys.)

print()
state.SelectedHitObjects[]
state.SetValue()
state.SelectedScrollGroupId

map.HitObjects[]
map.Bookmarks[]
map.ScrollVelocities[]
map.ScrollSpeedFactors[]
map.TimingPoints[]
map.TimingGroups[]
--Tables
t = {} --(item, ...)
table.concat(table)--(table, seperator)-- takes each item of table, puts them in a string
table.insert(table, position, value) -- if no posiion is given; defaults to last
table.remove(table, position) -- if no posiion is given; defaults to last
table.pack() | table.unpack()
table.sort()

--imgui--
imgui.Button(text) | imgui.SmallButton(text)--(text, size)--|--(text, size)--
--
imgui.CheckBox()
--
imgui.Text(text)
imgui.TextWrapped(text)
imgui.TextColored(color, text)
imgui.TextDisabled(text)
imgui.SeparatorText(text)
imgui.TextLinkOpenURL(text)

imgui.InputText()
imgui.InputTextMultiline()

imgui.Dummy
state.SelectedScrollGroupId
globalVars.scrollGroupIndex
---begin/end
imgui.Begin(text)	   | imgui.End()
imgui.BeginChild(text) | imgui.EndChild()

imgui.BeginTooltip() | imgui.EndTooltip()
imgui.BeginTabItem(text) | imgui.EndTabItem()

imgui.SameLine()--(numeric, numeric)--
imgui.PlotLines()
--set/get
imgui.SetCursorPos({x, y}) | imgui.GetCursorPos()
imgui.SetCursorPosX(x) | imgui.GetCursorPosX()
imgui.SetCursorPosY(y) | imgui.GetCursorPosY()

imgui.SetFontSize() | imgui.GetFontSize()

imgui.SetClipboardText(value) | imgui.GetClipboardText()

imgui.GetOverlayDrawList()
imgui.GetWindowDrawList()
imgui.GetWindowPos()
imgui.GetWindowSize()
imgui.SetNextWindowSizeConstraints({x, y}, {x2, y2})


imgui.IsItemHovered
--push/pop
---push overrides current style      | pop restores previous style
imgui.PushStyleCol(imgui_style_col.) | imgui.PopStyleCol(imgui_style_col.)
imgui.PushStyleVar(imgui_style_var.) | imgui.PopStyleVar(imgui_style_var.)

imgui.PushTextWrapPos() | imgui.PopTextWrapPos()

imgui_style_var.WindowPadding()
imgui_window_flags.Resize
---imgui.GetWindowDrawList()---
---shapes
AddCircleFilled({x, y}, radios, color)    AddTriangleFilled({x, y}, {x2, y2}, {x3, y3}, color)    AddNgonFilled({x, y}, radios, color)    AddQuadFilled()

AddLine({x, y}, {x2, y2}, color, thickness)
AddText({x, y}, color, text)

PathBezierCubicCurveTo({x, y}, {x2, y2}, {x3, y3}, {x4, y4})

PathStroke(color, thickness)
PathFillConcave(color) | PathFillConvex(color)

--Mathematics--
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
-- example: if x = 2.56, it returns 2 and 0.56. if x = 7, it returns 7 and 0, because 7 has no number in a decimal point(fractional value).
math.fmod(x, y) -- x = dividend, y = divisor/modulus 
-- example: if x = 4 and y = 2, it returns 0, because 4 is a multiple of two; if x = 4 and y = y, it returns 1, because 4 is not a multiple of 3
math.frexp(x)
math.ldexp(m, e) -- returns m2^e
math.log(x, base) -- logarithm -- if no base is given; defaults to e
math.random(x, y) -- returns a random number between x and y. -- if no value is given; defaults to (0, 1)
math.randomseed(x)
math.sqrt(x) -- square root

\n --newline
# --sets value to the length when placed before a table
 --Quaver:
 
--actions.--
actions.Perform(utils.CreateEditorAction(action_type.))
actions.PerformBatch(utils.CreateEditorAction(action_type.))

---hitobjects
actions.PlaceHitObject()	  | actions.RemoveHitObject()
actions.PlaceHitObjectBatch() | actions.RemoveHitObjectBatch()
actions.ResnapNotes()	actions.ResizeLongNote()
---scrollvelocity
actions.PlaceScrollVelocity		   | actions.RemoveScrollVelocity
actions.PlaceScrollVelocityBatch() | actions.RemoveScrollVelocityBatch()
actions.ChangeScrollVelocityOffsetBatch() actions.ChangeScrollVelocityMultiplierBatch()
---timingpoints
actions.PlaceTimingPoint()		| actions.RemoveTimingPoint()
actions.PlaceTimingPointBatch() | actions.RemoveTimingPointBatch()
actions.ChangeTimingPointOffset() actions.ChangeTimingPointBpm() actions.ChangeTimingPointSignature() actions.ChangeTimingPointHidden() actions.ChangeTimingPointBpmBatch() actions.ChangeTimingPointSignatureBatch() actions.ChangeTimingPointOffsetBatch() actions.ResetTimingPoint()
---layer
actions.CreateLayer() | actions.RemoveLayer()
actions.RenameLayer() actions.ChangeLayerColor()
actions.MoveHitObjectsToLayer()	actions.ToggleLayerVisibility()
---misc
actions.GoToObjects()
actions.SetHitObjectSelection()
actions.Undo() | actions.Redo()
actions.DetectBpm()    actions.SetPreviewTime()    actions.TriggerEvent()


--action_type.--
---bookmarks
action_type.AddBookmark		 | action_type.RemoveBookmark
action_type.AddBookmarkBatch | action_type.RemoveBookmarkbatch
---hitobjects
action_type.AddHitObject	  | action_type.RemoveHitObject
action_type.AddHitObjectBatch | action_type.RemoveHitObjectbatch

actions.Perform(utils.CreateEditorAction(action_type.AddBookmarkBatch, object))
PlaceHitObject

--utils.--
---hitobjects
utils.CreateHitObject(starttime, lane)
---bookmarks
utils.CreateBookmark(starttime, text)
---scrollvelocity
utils.CreateScrollVelocity(starttime, value)
