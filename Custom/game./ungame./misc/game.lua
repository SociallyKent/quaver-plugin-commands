These all have high perform, though they require more to start operation.

Required:
table.remove_Valueless()
table.reverse()
 -- Removes all valueless values from INDEX to 0 inside TABLE.
--TABLE table
--INDEX numeric
function table.remove_Valueless(TABLE, INDEX)
	local Table = {}
	while TABLE[INDEX] do
		table.insert(Table, TABLE[INDEX])
		INDEX = INDEX - 1
	end
	return table.reverse(Table)
end
 -- Reverse a TABLE by indexs
--TABLE table
function table.reverse(TABLE)
	local Table = {}
	for i = #TABLE, 1, -1 do
		Table[#Table + 1] = TABLE[i]
	end
	return Table
end



-- Scroll Velocity Factors
function game.Factors.Get()
	local Table = {}
	for i, v in ipairs(map.ScrollSpeedFactors) do
		Table[i] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
	end
	return Table
end
function game.Factors.Between(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.ScrollSpeedFactors) do
		if START <= v.StartTime then
			if v.StartTime > END then EndIndex = i break end
			Table[i] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
		end
	end
	return table.remove_Valueless(Table, EndIndex)
end
-- Timing Groups
-- Bookmarks
function game.Marks.Get(START, END)
	local Table = {}
	for i, v in ipairs(map.Bookmarks) do
		Table[i] = v
	end
	return Table
end
function game.Marks.Between(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.Bookmarks) do
		if START <= v.StartTime then
			if v.StartTime > END then EndIndex = i break end
			Table[i] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
		end
	end
	return table.remove_Valueless(Table, EndIndex)
end
-- Hit Objects
function game.Notes.Get()
	local Table = {}
	for i, v in ipairs(map.HitObjects) do
		Table[i] = {StartTime = v.StartTime, Lane = v.Lane, EndTime = v.EndTime ~= 0 and v.EndTime}
	end
	return table.sort(Table, sort.game.byLane)
end
function game.Notes.Between(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.HitObjects) do
		if START <= v.StartTime then
			if v.StartTime > END then EndIndex = i-1 break end
			Table[i] = {StartTime = v.StartTime, Lane = v.Lane, EndTime = v.EndTime}
		end
	end
	local Table = table.remove_Valueless(Table, EndIndex)
	return table.sort(Table, sort.game.byLane)
end
---- Timing Points
---- Scroll Velocities
function game.Velocities.Get()
	local Table = {}
	for i, v in ipairs(map.ScrollVelocities) do
		Table[i] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
	end
	return Table
end
function game.Velocities.Between(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.ScrollVelocities) do
		if START <= v.StartTime then
			if v.StartTime > END then EndIndex = i break end
			Table[i] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
		end
	end
	return table.remove_Valueless(Table, EndIndex)
end