	a, b, c, d, e, f,
	g, h, i, j, k, l,
	m, n, o, p, q, r,
	s, t, u, v, w, x,
	y, z
--- Duplicate a TABLE
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
--- Remove any duplicate values from TABLE
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
--- Find any matches of VALUE inside TABLE
--TABLE table
--VALUE varable
function table.match(TABLE, VALUE)
	for i = 1, #TABLE do
		if TABLE[i] == VALUE then return true end
	end
	return false
end
--- Reverse a table
--TABLE table
function table.reverse(TABLE)
	local Table = {}
	for i = 1, #TABLE do
		Table[#Table + 1] = TABLE[#TABLE + 1 - i]
	end
	return Table
end
--- Round NUMBER to decimal point DECIMAL
--NUMBER numeric
--DECIMAL numeric
function math.round(NUMBER, DECIMAL)
	DECIMAL = DECIMAL or 0
	local Notation = 10^DECIMAL
	return math.floor(Notation * NUMBER+0.5)/ Notation--+0.5; for not round downwards
end
--- Wrap NUMBER1 until it fits into NUMBER2
--NUMBER1 numeric
--NUMBER2 numeric
function math.wrap(NUMBER1, NUMBER2)
	local a, b = math.modf(NUMBER1/NUMBER2)
	return NUMBER2 * b, a
end