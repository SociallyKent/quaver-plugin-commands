Can also find these flags in their respective places.

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
	imgui_selectable_flags.NoAutoClosePopups --Clicking this doesn't close parent popup window (overrides ImGuiItemFlags_AutoClosePopups)
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
	imgui_table_flags.None--alt:0
	imgui_table_flags.Resizable--alt:1 -- Enable resizing columns.
	imgui_table_flags.Reorderable--alt:2 -- Enable reordering columns in header row (need calling TableSetupColumn() + TableHeadersRow() to display headers)
	imgui_table_flags.Hideable--alt:4 -- Enable hiding/disabling columns in context menu.
	imgui_table_flags.Sortable--alt:8 -- Enable sorting. Call TableGetSortSpecs() to obtain sort specs.
	imgui_table_flags.NoSavedSettings--alt:16 -- Disable persisting columns order, width and sort settings in the .ini file.
	imgui_table_flags.ContextMenuInBody--alt:32 -- Right-click on columns body/contents will display table context menu. By default it is available in TableHeadersRow().
	imgui_table_flags.RowBg--alt:64
	imgui_table_flags.BordersInnerH--alt:128
	imgui_table_flags.BordersOuterH--alt:256
	imgui_table_flags.BordersH--alt:384
	imgui_table_flags.BordersInnerV--alt:512
	imgui_table_flags.BordersInner--alt:640
	imgui_table_flags.BordersOuterV--alt:1024
	imgui_table_flags.BordersV--alt:1536
	imgui_table_flags.BordersOuter--alt:1280
	imgui_table_flags.Borders--alt:1920
	imgui_table_flags.NoBordersInBody--alt:2048
	imgui_table_flags.NoBordersInBodyUntilResize--alt:4096
	imgui_table_flags.SizingFixedFit--alt:8192
	imgui_table_flags.SizingFixedSame--alt:16384
	imgui_table_flags.SizingStretchProp--alt:24576
	imgui_table_flags.SizingStretchSame--alt:32768
	imgui_table_flags.SizingMask--alt:57344
	imgui_table_flags.NoHostExtendX--alt:65536 -- Make outer width auto-fit to columns, overriding outer_size.x value. Only available when ScrollX/ScrollY are disabled and Stretch columns are not used.
	imgui_table_flags.NoHostExtendY--alt:131072 -- Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit). Only available when ScrollX/ScrollY are disabled. Data below the limit will be clipped and not visible.
	imgui_table_flags.NoKeepColumnsVisible--alt:262144 -- Disable keeping column always minimally visible when ScrollX is off and table gets too small. Not recommended if columns are resizable.
	imgui_table_flags.PreciseWidths--alt:524288
	imgui_table_flags.NoClip--alt:1048576 -- Disable clipping rectangle for every individual columns (reduce draw command count, items will be able to overflow into other columns). Generally incompatible with TableSetupScrollFreeze().
	imgui_table_flags.PadOuterX--alt:2097152
	imgui_table_flags.NoPadOuterX--alt:4194304
	imgui_table_flags.NoPadInnerX--alt:8388608
	imgui_table_flags.ScrollX--alt:16777216
	imgui_table_flags.ScrollY--alt:33554432
	imgui_table_flags.SortMulti--alt:67108864 -- Hold shift when clicking headers to sort on multiple column. TableGetSortSpecs() may return specs where (SpecsCount > 1).
	imgui_table_flags.SortTristate--alt:134217728 -- Allow no sorting, disable default sorting. TableGetSortSpecs() may return specs where (SpecsCount == 0).
	imgui_table_flags.HighlightHoveredColumn--alt:268435456
	'Tooltip'






