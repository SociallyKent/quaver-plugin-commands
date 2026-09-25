    ImGuiIOPtr.AddFocusEvent(bool focused) : void
    ImGuiIOPtr.AddInputCharacter(uint c) : void
    ImGuiIOPtr.AddInputCharactersUTF8(ReadOnlySpan<char> str) : void
    ImGuiIOPtr.AddInputCharactersUTF8(string str) : void
    ImGuiIOPtr.AddInputCharacterUTF16(ushort c) : void
    ImGuiIOPtr.AddKeyAnalogEvent(ImGuiKey key, bool down, float v) : void
    ImGuiIOPtr.AddKeyEvent(ImGuiKey key, bool down) : void
    ImGuiIOPtr.AddMouseButtonEvent(int button, bool down) : void
    ImGuiIOPtr.AddMousePosEvent(float x, float y) : void
    ImGuiIOPtr.AddMouseSourceEvent(ImGuiMouseSource source) : void
    ImGuiIOPtr.AddMouseViewportEvent(uint id) : void
    ImGuiIOPtr.AddMouseWheelEvent(float wheel_x, float wheel_y) : void
    ImGuiIOPtr.ClearEventsQueue() : void
    ImGuiIOPtr.ClearInputKeys() : void
    ImGuiIOPtr.ClearInputMouse() : void
    ImGuiIOPtr.Destroy() : void
    ImGuiIOPtr.SetAppAcceptingEvents(bool accepting_events) : void
    ImGuiIOPtr.SetKeyEventNativeData(ImGuiKey key, int native_keycode, int native_scancode) : void
    ImGuiIOPtr.SetKeyEventNativeData(ImGuiKey key, int native_keycode, int native_scancode, int native_legacy_index) : void
