      ImDrawDataPtr(ImDrawData* nativePtr)
      ImDrawDataPtr(IntPtr nativePtr)
      AddDrawList(ImDrawListPtr draw_list) : void
      Clear() : void
      DeIndexAllBuffers() : void
      Destroy() : void
      ScaleClipRects(Vector2 fb_scale) : void
      CmdLists : ImVector<ImDrawListPtr>
      CmdListsCount : ref int
      DisplayPos : ref Vector2
      DisplaySize : ref Vector2
      FramebufferScale : ref Vector2
      NativePtr : ImDrawData*
      OwnerViewport : ImGuiViewportPtr
      TotalIdxCount : ref int
      TotalVtxCount : ref int
      Valid : ref bool
      implicit operator ImDrawData*(ImDrawDataPtr wrappedPtr)
      implicit operator ImDrawDataPtr(IntPtr nativePtr)
      implicit operator ImDrawDataPtr(ImDrawData* nativePtr)


	[[ImDrawData:]]
	
      CmdLists : ImVector
      CmdListsCount : int
      DisplayPos : Vector2
      DisplaySize : Vector2
      FramebufferScale : Vector2
      OwnerViewport : ImGuiViewport*
      TotalIdxCount : int
      TotalVtxCount : int
      Valid : byte
