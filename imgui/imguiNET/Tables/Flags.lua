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
