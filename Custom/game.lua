game = { window = {} } -- Tabled functions. Remove "game." from functions to use without this


-- Scroll Velocity Factors
function game.Factors(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.ScrollSpeedFactors) do
		if START <= v.StartTime then
			if v.StartTime > END then break end
			Table[#Table+1] = {StartTime = v.StartTime, Multiplier = v.Multiplier}
		end
	end
	return Table
end


-- Bookmarks
function game.Marks(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.Bookmarks) do
		if START <= v.StartTime then
			if v.StartTime > END then break end
			Table[#Table+1] = v
		end
	end
	return Table
end


-- Uses sort.byLane
sort = { window = {} }
function sort.byLane(A, B)
	if A.StartTime ~= B.StartTime then return A.StartTime < B.StartTime end 
	return A.Lane < B.Lane
end
-- Hit Objects
function game.Notes(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.HitObjects) do
		if START <= v.StartTime then
			if v.StartTime > END then break end
			Table[#Table+1] = {StartTime = v.StartTime, Lane = v.Lane, EndTime = v.EndTime}
		end
	end
	return table.sort(Table, sort.byLane) -- Replace line with "return Table" to not sort
end


-- Timing Points
function game.Points(START, END)
	if not (END) then
		local Notes = state.SelectedHitObjects
		START, END = Notes[1].StartTime, Notes[#Notes].StartTime
	end
	local Table = {}
	for i, v in ipairs(map.TimingPoint) do
		if START <= v.StartTime then
			if v.StartTime > END then break end
			Table[#Table+1] = {StartTime = v.StartTime, Bpm = v.Bpm}
		end
	end
	return Table
end