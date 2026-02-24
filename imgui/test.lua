imgui.
Using Items
| Options
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
|
	GetItemRectMin()
	GetItemRectMax()
|	'Spacers'
		imgui.Dummy()
		imgui.NewLine()
		imgui.PlotHistogram()
		imgui.PlotLines()
		imgui.SameLine()--(both space, single space)
		imgui.Separator()
		imgui.Spacing()
