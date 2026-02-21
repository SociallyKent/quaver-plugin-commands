--Clamps the visual size of a string
function string.clamp_Size(STRING, SIZE)
	local Size = imgui.CalcTextSize(SIZE)[1]
	if Size <= SIZE then return STRING end
	while (STRING:len() > 3 and Size > SIZE) do
		STRING = STRING:sub(1, -2)
		Size = imgui.CalcTextSize(STRING .. "...")[1]
	end
	return STRING .. "..."
end
--Create a duplicate of TABLE
--Useful for temperary changes to a table
function table.duplicate(TABLE)
	if not TABLE then return {} end
	local Table = {}
	if (TABLE[1]) then
		for i = 1, #TABLE do
			local Value = TABLE[i]
			Table[#Table + 1] = type(Value) == "table" and table.duplicate(Value) or Value
		end
	else
		for _, v in ipairs(table.create_Keys(TABLE)) do
			local Value = TABLE[v]
			Table[v] = type(Value) == "table" and table.duplicate(Value) or Value
		end
	end
	return Table
end
--Remove all duplicate values in TABLE
function table.duplicate_Remove(TABLE)
	local Holder = {}
	local Table = {}
	for i = 1, #TABLE do
		local Value = TABLE[i]
		if (not Holder[Value]) then
			Table[#Table + 1] = Value
			Holder[Value] = true
		end
	end
	return Table
end
--table.match
function table.find(TABLE, VARABLE)
	for i = 1, #TABLE do
		local Holder = TABLE[i]
		if Holder == VARABLE then return true end
	end
	return false
end
--Rounds the number to a decimal.
---if not DECIMAL; default to whole number rounding
function math.round(NUMBER, DECIMAL)
	DECIMAL = DECIMAL or 0
	local Notation = 10^DECIMAL
	--+0.5; so doesn't round =>0.5 downwards
	return math.floor(Notation * NUMBER+0.5)/ Notation
end
--Same as math.round but now with a table holding numbers
function math.round_Batch(TABLE, DECIMAL)
	DECIMAL = DECIMAL or 0
	local Table = {}
	local Notation = 10^DECIMAL
	for i = 1, #TABLE do
		local Value = math.floor(Notation* TABLE[i]+0.5)/ Notation
		table.insert(Table, #Table+1, Value)
	end
	return Table
end

--Sort a table
----COMP = Sort function (e.g. sort_Lane, sort_Time)
function sort_Table(TABLE, COMP)
	local Table = table.duplicate(TABLE)
	table.sort(Table, COMP)
	return Table
end
--Sort function
--Sort by .Lanes
---sort by StartTime if cannot sort by .Lane
function sort_Lane(A, B)
	if math.abs(A.StartTime - B.StartTime) > 0.1 then
		return A.StartTime < B.StartTime
	end
	return A.Lane < B.Lane
end
--Sort function
--Sort by .StartTime
function sort_Times(A, B)
	return A.StartTime < B.StartTime---Can supliment for any other userdata, pretty much
end
--Truthy/Falsy
--Gives "true" if a VARABLE has value, otherwise gives DEFAULT, otherwise gives "false"
function truthy(VARABLE, DEFAULT)--DEFAULT optional
	local Holder = type(VARABLE)
	if Holder == "string" then
		return VARABLE:lower() == "true"
	end
	if Holder == "number" then
		return VARABLE > 0
	end
	if Holder == "table" or t == "userdata" then
		return #VARABLE > 0
	end
	if Holder == "boolean" then
		return VARABLE
	end
	return DEFAULT or false
end