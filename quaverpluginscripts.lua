Shortcuts:
----detect key input
	;--needs to be in; function
	IsPressed = utils.IsKeyPressed
	IsReleased = utils.IsKeyReleased
	IsDown = utils.IsKeyDown
	IsUp = utils.IsKeyUp
--example--
	function draw()
		imgui.Begin("Name")
		----
			IsPressed = utils.IsKeyPressed
			IsReleased = utils.IsKeyReleased
			IsDown = utils.IsKeyDown
			IsUp = utils.IsKeyUp
		----
		if IsPressed(keys.K) then
			print('K pressed')
		end
		imgui.End()
	end
----
----state varables
    --get(IDENTIFIER) or DEFAULTVALUE
	get = state.GetValue
	set = state.SetValue
--example--
	----
		get = state.GetValue
		set = state.SetValue
	----
	HitObjects_table = 0
	--persists game refresh | altho if left alone will run each refresh anyway
	for i, v in ipairs(map.HitObjects) do
		table.insert(HitObjects_table, v.StartTime)
	end
	set('HitObjects', HitObjects_table)
----
Utilities:
----input text

	_, Asking = imgui.InputText('NAME', Asking_minor or "", 50)--InputText(Name, DefaultValue, MaxLength)
	Asking_minor = Asking
----or for screenrefresh save value
	_, Asking = imgui.InputText('NAME', get('IDENTIFIER') or "", 50)--InputText(Name, DefaultValue, MaxLength)
	state.SetValue('IDENTIFIER', Asking)
----
----T-FlipFlop(a switch)
function tflipflop(ID, DEFAULT)
	local Current = state.GetValue(ID)
	--if ID has no value; set to DEFAULT- -if DEFAULT is not given; set to false
	if Current == nil then Current = DEFAULT or false end
	local Current = not Current
	state.SetValue(ID, Current)
	return Current
end
--example--
	local Switch = false
	function draw()
		imgui.Begin("Name")
		if utils.IsKeyPressed(keys.K) then--action to turn off and on
			Switch = tflipflop("Switchy", false)--tflipflop(ID, DEFAULTVALUE)
		end
		imgui.End()
		--if Switch is true; cannot continue
		if Switch then return end--placed after imgui.End() for performance reason
	end
----

----Wait/Sleep
	ready = "yes"
	function wait(TIME)
		--if TIME is not given; set to 1
		if not TIME then TIME = 1 end
		if ready == "yes" then timing = os.time(sec) + TIME end
		if timing >= os.time(sec) then ready = "no" return false end
		ready = "yes"
		return true
	end
--example--
	print("Clock Started")
	--wait until wait() is true; then continue
	if not wait(2) then return end
	print("Clock Finished")
----

----Tabs/Menus
	menus_index =
		{
		"Home",
		"Add",
		"Edit",
		"Destroy"
		}
	----needs to be in: function, imgui.Begin()
		imgui.BeginTabBar("menus")
		for i = 1, #menus_index do
			createMenus(menus_index[i])
		end
	----
	function createMenus(NAME)
		if not imgui.BeginTabItem(NAME) then return end
		imgui.Dummy({0, 10})
		if NAME == "Home" then home_Menu() end
		if NAME == "Add" then add_Menu() end
		if NAME == "Edit" then edit_Menu() end
		if NAME == "Destroy" then destroy_Menu() end
		imgui.EndTabItem()
	--
	end
--example--
--	menu 1
	function home_Menu()
		imgui.SeparatorText("Home Menu")
 	end
--	menu 2
	function add_Menu()
		imgui.SeparatorText("Add Menu")
	end
--	menu 3
	function edit_Menu()
		imgui.SeparatorText("Edit Menu")
	end
--	menu 4
	function destroy_Menu()
		imgui.SeparatorText("DESTROY! menu")
	end
----
