	a, b, c, d, e, f,
	g, h, i, j, k, l,
	m, n, o, p, q, r,
	s, t, u, v, w, x,
	y, z
 -- Duplicate a TABLE
--TABLE table
 function table.duplicate(TABLE)
	if not TABLE then return {} end
	local Table = {}
	for i = 1, #TABLE do
		local Value = TABLE[i]
		Table[#Table + 1] = type(Value) == "table" and table.duplicate(Value) or Value
	end
    return Table
end
 -- Remove any duplicate values from a TABLE
--TABLE table
function table.duplicate_Remove(TABLE)
	local Holder, Table = {}, {}
	for i = 1, #TABLE do
		local Value = TABLE[i]
		if not (Holder[Value]) then
			Table[#Table + 1] = Value
			Holder[Value] = true
		end
	end
	return Table
end
 -- Find any match of a VALUE in a TABLE
--TABLE table
--VALUE varable
function table.match(TABLE, VALUE)
	for i = 1, #TABLE do
		if TABLE[i] == VALUE then return i end
	end
	return false
end
 -- Get all matches of ITEM in a TABLE
--TABLE table
--ITEM varable)
function table.matches(TABLE, ITEM)
	local Table = {}
	for i, v in pairs(TABLE) do
		if v == ITEM then
			Table[Table+1] = v
		end
	end
	return Table
end
 -- Reverse a TABLE
--TABLE table
function table.reverse(TABLE)
	local Table = {}
	for i = #TABLE, 1, -1 do
		Table[#Table + 1] = TABLE[i]
	end
	return Table
end
