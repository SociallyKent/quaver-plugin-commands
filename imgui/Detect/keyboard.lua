--Alt, Shift, Control:
imgui_key.Left[[Key]] imgui_key.Right[[Key]]
--(Arrow keys) Up, Down, Left, Right:
imgui_key.[[Dirrection]]Arrow
--Letters
imgui_key.[[Key]]

--(imgui_key)
imgui.GetKeyIndex(key)

--(imgui_key)
imgui.IsKeyDown(key)
--(imgui_key, boolean)
imgui.IsKeyPressed(key, ¿repeat)
--(imgui_key)
imgui.IsKeyReleased(key)

--(?, numric, numeric)
imgui.GetKeyPressedAmount(index, ¿?repeat_delay, ¿?rate)
--(boolean)
imgui.CaptureKeyboardFromApp(?)