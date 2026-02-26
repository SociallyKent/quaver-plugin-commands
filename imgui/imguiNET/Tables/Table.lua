Section Work in progress

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








Flags


--- Enable resizing columns.
imgui_table_flags.Resizable
--- Enable reordering columns in header row, though you must set up a header row
--- with `begin_table_header` or `table_setup_column`.
imgui_table_flags.Reorderable--alt:2
--- Enable hiding/disabling columns in context menu.
imgui_table_flags.Hideable--alt:4
--- Enable sorting. See `table_get_sort_specs` to object sort specs. Also see [SortMulti]
--- and [SortTristate].
imgui_table_flags.Sortable--alt:8
--- Disable persisting columns order, width, and sort settings in the .ini file.
imgui_table_flags.NoSavedSettings
--- Right-click on columns body/contents will display table context menu.
--- By default you can only right click in a headers row.
imgui_table_flags.ContextMenuInBody

-- Decorations

--- Set each RowBg color with [table_row_bg] or [table_row_bg_alt] (equivalent of calling
--- `table_set_bg_color` with `ROW_BG0` on each row manually)
imgui_table_flags.RowBg--alt:64
--- Draw horizontal borders between rows.
imgui_table_flags.BordersInnerH
--- Draw horizontal borders at the top and bottom.
imgui_table_flags.BordersOuterH;
--- Draw vertical borders between columns.
imgui_table_flags.BordersInnerV
--- Draw vertical borders on the left and right sides.
imgui_table_flags.BordersOuterV
--- Draw all horizontal borders (this is just [BORDERS_INNER_H] | [BORDERS_OUTER_H]).
imgui_table_flags.BordersH
--- Draw all vertical borders (this is just [BORDERS_INNER_V] | [BORDERS_OUTER_V]).
imgui_table_flags.BordersV
--- Draw all inner borders (this is just [BORDERS_INNER_H] | [BORDERS_INNER_V]).
imgui_table_flags.BordersInner
--- Draw all outer borders (this is just [BORDERS_OUTER_H] | [BORDERS_OUTER_V]).
imgui_table_flags.BordersOuter
--- Draw all borders (this is just [BORDERS_INNER] | [BORDERS_OUTER]).
imgui_table_flags.Borders--alt:1920
--- **ALPHA** Disable vertical borders in columns Body (borders will always appears in Headers).
--- May move to Style
imgui_table_flags.NoBordersInBody
--- **ALPHA** Disable vertical borders in columns Body until hovered for resize (borders will always appears in Headers).
--- May move to style
imgui_table_flags.NoBordersInBodyUntilResize;

-- Sizing Policy (read above for defaults)

--- Columns default to [WidthFixed] or [WidthAuto] (if resizable or not resizable),
--- matching contents width.
imgui_table_flags.SizingFixedFit
--- Columns default to [WidthFixed] or [WidthAuto] (if resizable or not resizable),
--- matching the maximum contents width of all columns.
--- Implicitly enable [NoKeepColumnsVisible].
imgui_table_flags.SizingFixedSame
--- Columns default to [WidthStretch] with default weights proportional to each columns
--- contents widths.
imgui_table_flags.SizingStretchProp
--- Columns default to [WidthStretch] with default weights all equal, unless overridden by
--- a column's `TableHeader`.
imgui_table_flags.SizingStretchSame 32768
imgui_table_flags.SizingMask
imgui_table_flags.SizingFixedSame

-- Sizing Extra Options

--- Make outer width auto-fit to columns, overriding outer_size.x value. Only available when
--- [ScrollX]/[ScrollY] are disabled and [Stretch] columns are not used.
imgui_table_flags.NoHostExtendX
--- Make outer height stop exactly at outer_size.y (prevent auto-extending table past the limit).
--- Only available when [ScrollX]/[ScrollY] are disabled.
--- Data below the limit will be clipped and not visible.
imgui_table_flags.NoHostExtendY--alt:131072
--- Disable keeping column always minimally visible when [ScrollX] is off and table
--- gets too small. Not recommended if columns are resizable.
imgui_table_flags.NoKeepColumnsVisible--alt:262144
--- Disable distributing remainder width to stretched columns (width allocation on a 100-wide
--- table with 3 columns: Without this flag: 33,33,34. With this flag: 33,33,33).
--- With larger number of columns, resizing will appear to be less smooth.
imgui_table_flags.PreciseWidths

-- Clipping

--- Disable clipping rectangle for every individual columns (reduce draw command count, items will
--- be able to overflow into other columns). Generally incompatible with [table_setup_scroll_freeze].
imgui_table_flags.NoClip--alt:1048576
END OF THE STORY
-- Padding

--- Default if [BordersOuterV] is on. Enable outer-most padding. Generally desirable if you have headers.
imgui_table_flags.PadOuterX
--- Default if [BordersOuterV] is off. Disable outer-most padding.
imgui_table_flags.NoPadOuterX
--- Disable inner padding between columns (double inner padding if [BordersOuterV] is on, single
--- inner padding if BordersOuterV is off).
imgui_table_flags.NoPadInnerX

-- Scrolling

--- Enable horizontal scrolling. Require 'outer_size' parameter of [begin_table] to specify the
--- container size. Changes default sizing policy. Because this create a child window,
--- [ScrollY] is currently generally recommended when using [ScrollX].
imgui_table_flags.ScrollX
--- Enable vertical scrolling. Require 'outer_size' parameter of [begin_table] to specify the
--- container size.
imgui_table_flags.ScrollY--alt:33554432

-- Sorting

--- Hold shift when clicking headers to sort on multiple column. [table_get_sort_specs] may return specs where `[spec_count] > 1`.
imgui_table_flags.SortMulti
--- Allow no sorting, disable default sorting. `table_get_sort_specs` may return specs where `[specs_count] == 0`.
imgui_table_flags.SortTristate


