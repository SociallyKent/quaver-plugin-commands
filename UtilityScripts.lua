math.nan = 0/0 -- Not a Number (NaN)
math.inf = 1/0 -- infinity
math.tiny = -math.huge

---returns the major of num
--[=[ num ]=] -- input
--[=[ num ]=]
math.major = |num| num < 0 and math.ceil(num) or math.floor(num)
---returns the minor of num
--[=[ num ]=] -- input
--[=[ num ]=] -- output
math.minor = |num| num - (num < 0 and math.ceil(num) or math.floor(num))
-- linear interpolation
--[=[ num, num, num ]=] -- input
--[=[ num ]=] -- output
math.lerp = |x, y, i| x + (y - x)*i

--Rounds the number to a decimal.
---if not DECIMAL; default to whole number rounding
--[=[ num, num ]=] -- input
--[=[ num ]=] -- output
function math.round(NUMBER, DECIMAL)
	DECIMAL = DECIMAL or 0
	local Notation = 10^DECIMAL
	--+0.5; so doesn't round =>0.5 downwards
	return math.floor(Notation * NUMBER+0.5)/ Notation
end
--this is unnessarly expensive; mostly just for showcase
--[=[ str, str ]=] -- input
--[=[ func ]=] -- output
function string.igmatch(STRING, FORMAT)
	local gmatch = STRING:gmatch(FORMAT)
	local i = 0
	local function exsists(I, ...)
		if (...) ~= nil then
			return I, ...
		end
	end
	return function()
		i = i + 1
		return exsists(i, gmatch())
	end
end
--removes instances of 'itm' from 'str' 'cnt'(or all) times 
--[=[ str, str, ¿num ]=] -- input
--[=[ str, num ]=] -- output
string.remove = |str, itm, cnt| string.gsub(str, itm, "", cnt)
--splits STRING into a table via FORMAT.
--[=[ str, str ]=] -- input
--[=[ str ]=] -- output
function string.split(STRING, FORMAT)
	local tbl, i = {}, 0
	for v in STRING:gmatch(FORMAT) do
		i = i + 1
		tbl[i] = v
	end
	return tbl
end
--insert TABLE2's values into TABLE1.
--[=[ tbl, tbl ]=] -- input
--[=[ tbl ]=] -- output
function table.combine(TABLE1, TABLE2)
	for i, v in pairs(TABLE2) do
		TABLE1[i] = TABLE1[i] or v
	end
	return TABLE1
end
--find ITEM within TABLE.
--[=[ tbl, var, ¿func ]=] -- input
--[=[ var|bool ]=] -- output
function table.find(TABLE, ITEM)
	for i, v in ipairs(TABLE) do
		if v == ITEM then return i end
	end
	return false
end
--copy TABLE to a new table.
--[=[ tbl ]=] -- input
--[=[ tbl ]=] -- output
function table.copy(TABLE)
	local tbl = {}
	for i, v in pairs(TABLE) do
		tbl[i] = type(v) == "table" and table.copy(v) or v
	end
	return tbl
end
--ouput is a table containing all the keys from TABLE.
--[=[ tbl ]=] -- input
--[=[ tbl ]=] -- output
function table.keys(TABLE)
	local idx = 0
	local keys = table.construct()
	local holder = {} -- don't repeat keys
	for key in pairs(TABLE) do
		if not(holder[key]) then
			holder[key] = true
			idx = idx + 1
			keys[idx] = key
		end
	end
	return keys
end
--reverses TABLE starting from I[or 1] ending at J[or #TABLE].
--[=[ tbl, ¿num, ¿num ]=] -- input
--[=[ tbl ]=] -- output
function table.reverse(TABLE, I, J)
	local lower, upper = I or 1, J or #TABLE
	while lower < upper do
		TABLE[lower], TABLE[upper] = TABLE[upper], TABLE[lower]
		lower = lower + 1
		upper = upper - 1
	end
	return TABLE
end
--splits TABLE from I into two tables
--[=[ tbl, num ]=] -- input
--[=[ tbl, tbl ]=] -- output
function table.split(TABLE, I)
	return {table.unpack(TABLE, 1, I)}, {table.unpack(TABLE, I + 1)}
end
--removes any duplicate values in TABLE.
--[=[ tbl ]=] -- input
--[=[ tbl ]=] -- output
table.unique = function(TABLE)
	local tbl, Holder = {}, {}
	local idx = 1
	for _, v in ipairs(TABLE) do
		if not(Holder[v]) then
			Holder[v] = true
			tbl[idx] = v
			idx = idx + 1
		end
	end
	return tbl
end

--this is really inefficant; just want to show how to do something like th is
-- for each item in ... (can be any amounts of anything), send the ITEM calling FUNC. Is Killable if FUNC returns anything that's true
--[=[ func, [var1, ...] ]=] -- input
--[=[ none ]=] -- output
function vararg.foreach(FUNC, ...)
	local function cycle(ITEM, ...)
		if ITEM == nil or FUNC(ITEM) then return end
		cycle(...)
	end
	cycle(...)
end
