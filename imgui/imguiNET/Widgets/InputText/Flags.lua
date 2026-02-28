	imgui_input_text_flags.None--alt:0
	imgui_input_text_flags.CharsDecimal--alt:1 -- 0123456789.+-*/
	imgui_input_text_flags.CharsHexadecimal--alt:2 -- 0123456789ABCDEFabcdef
	imgui_input_text_flags.CharsScientific--alt:4 -- 0123456789.+-*/eE
	imgui_input_text_flags.CharsUppercase--alt:8
	imgui_input_text_flags.CharsNoBlank--alt:16 -- filter spacer
	imgui_input_text_flags.AllowTabInput--alt:32
	imgui_input_text_flags.EnterReturnsTrue--alt:64
	imgui_input_text_flags.EscapeClearsAll--alt:128
	imgui_input_text_flags.CtrlEnterForNewLine--alt:256
	imgui_input_text_flags.ReadOnly--alt:512 -- display only
	imgui_input_text_flags.Password--alt:1024 -- display all characters as '*' --alt:512
	imgui_input_text_flags.AlwaysOverwrite--alt:2048
	imgui_input_text_flags.AlwaysInsertMode--alt:2048
	imgui_input_text_flags.AutoSelectAll--alt:4096
	imgui_input_text_flags.NoHorizontalScroll--alt:32768
	imgui_input_text_flags.NoUndoRedo--alt:65536
	----Place "Callback"s after flags (ur flags, ur callbacks)
	imgui_input_text_flags.CallbackCompletion--alt:131072
	imgui_input_text_flags.CallbackHistory--alt:262144
	imgui_input_text_flags.CallbackAlways--alt:524288
	imgui_input_text_flags.CallbackCharFilter--alt:1048576
	imgui_input_text_flags.CallbackResize--alt:2097152
