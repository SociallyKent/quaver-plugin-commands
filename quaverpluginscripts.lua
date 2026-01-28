Utilities:
----T-FlipFlop(a switch)
	function tflipflop(ID, DEFAULT)
		local current = state.GetValue(ID)
	--	if ID has no prior value; set to default
		if current == nil then
		--	if DEFAULT has no stated value; set to false
			current = DEFAULT or false
		--
		end
	--
		local next = not current
		state.SetValue(ID, next)
		return next
	end
--example--
	local Switch = false
	function draw()
		if utils.IsKeyPressed(keys.K) then
				  ---tflipflop(ID, DEFAULTVALUE)
			Switch = tflipflop("Switchy", false)
		end
		if Switch then return end
	end
----

----Wait/Sleep
	ready = "yes"
	function wait(TIME)
		if ready == "yes" then
			timing = os.time(sec) + TIME
		end
		if timing >= os.time(sec) then ready = "no" return false end
		ready = "yes"
		return true
	end
--example--
	print("Hi")
	--wait until wait() is true
	if not wait(2) then return end
	print("Bye")
----

----Tabs/Menus
	menus_index =
		{
		"Home",
		"Add",
		"Edit",
		"Destroy"
		}
	function draw()
		imgui.Begin("Menu Hub")
	--	create Tab Bars
		imgui.BeginTabBar("menus")
		for i = 1, #menus_index do
			createMenus(menus_index[i])
		end
		imgui.End()
	end
	function createMenus(NAME)
		if not imgui.BeginTabItem(NAME) then return end
		imgui.Dummy({0, 10})
		if NAME == "Home" then home_Menu() end
		if NAME == "Add" then add_Menu() end
		if NAME == "Edit" then edit_Menu() end
		if NAME == "Destroy" then destroy_Menu() end
	--
		imgui.EndTabItem()
	end
--example--
---menu 1
	function home_Menu()
		imgui.SeparatorText("Home Menu")
	end
---menu 2
	function add_Menu()
		imgui.SeparatorText("Add Menu")
	end
---menu 3
	function edit_Menu()
		imgui.SeparatorText("Edit Menu")
	end
---menu 4
	function destroy_Menu()
		imgui.SeparatorText("DESTROY! menu")
	end
----
