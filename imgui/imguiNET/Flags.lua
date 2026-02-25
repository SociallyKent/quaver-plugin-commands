"Can also find these flags in their respective places."

--you can add multiple flags by putting '+' between them
|""
	-- 'Button'
	-- 'Checkbox'
	-- 'CollapsingHeader'
	-- 'Columns'
	-- 'Drag'
	'input_text_flags' --works with every kind of input text
	imgui_input_text_flags.CharsDecimal--alt:1 -- 0123456789.+-*/
	imgui_input_text_flags.CharsHexadecimal--alt:2 -- 0123456789ABCDEFabcdef
	imgui_input_text_flags.CharsUppercase--alt:8
	imgui_input_text_flags.CharsNoBlank--alt:16 -- filter spacer
	imgui_input_text_flags.EnterReturnsTrue--alt:64
	imgui_input_text_flags.EscapeClearsAll--alt:128
	--imgui_input_text_flags.AllowTabInput
	imgui_input_text_flags.CtrlEnterForNewLine--alt:256
	
	--imgui_input_text_flags.NoHorizontalScroll--alt:32768
	--imgui_input_text_flags.AlwaysInsertMode
	imgui_input_text_flags.ReadOnly--alt:512 -- display only
	imgui_input_text_flags.Password--alt:1024 -- display all characters as '*' --alt:512
	imgui_input_text_flags.AlwaysOverwrite--alt:2048
	--imgui_input_text_flags.NoUndoRedo
	--imgui_input_text_flags.CharsScientific -- 0123456789.+-*/eE
	imgui_input_text_flags.AutoSelectAll--alt:4096
	imgui_input_text_flags.Resize
	imgui_input_text_flags.AlwaysAutoResize
	imgui_input_text_flags.EscapeClearsAll
	----Place "Callback"s after flags (ur flags, ur callbacks)
	imgui_input_text_flags.CallbackCompletion
	imgui_input_text_flags.CallbackHistory
	imgui_input_text_flags.CallbackAlways--alt:524288
	imgui_input_text_flags.CallbackCharFilter
	imgui_input_text_flags.CallbackResize--alt:2097152
	-- 'ListBox'
	-- 'ProgressBar'
	'Selectable'
	imgui_selectable_flags.None	
	imgui_selectable_flags.NoAutoClosePopups--Clicking this doesn't close parent popup window (overrides ImGuiItemFlags_AutoClosePopups)
	imgui_selectable_flags.SpanAllColumns	--Frame will span all columns of its container table (text will still fit in current column)
	imgui_selectable_flags.AllowDoubleClick	--Generate press events on double clicks too
	imgui_selectable_flags.Disabled			--Cannot be selected, display grayed out text
	imgui_selectable_flags.AllowOverlap		--(WIP) Hit testing to allow subsequent widgets to overlap this one
	imgui_selectable_flags.Highlight		--Make the item be displayed as if it is hovered
	imgui_selectable_flags.SelectOnNav		--Auto-select when moved into, unless Ctrl is held. Automatic when in a BeginMultiSelect() block.
	-- 'Slider'
	-- 'Spacers'
	-- 'Text'
	'tree_node_flags'
	imgui_tree_node_flags.Selected--alt:1
	imgui_tree_node_flags.Framed--alt:2
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
	imgui_tree_node_flags.NoScrollOnOpen
|"begin"|"end"
	'Child'
	'Combo'
	'DragDrop'
	'Group'
	'Menu'/'MenuBar'/'MainMenuBar'
	'TabBar'/'TabItem'
	'Table'
	'Tooltip'





