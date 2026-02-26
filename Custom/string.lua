 -- Split a STRING by SPLITTER
--STRING string
--SPLITTER string
function string.split(STRING, SPLITTER)
	local Table = {}
	for v in STRING:gmatch(SPLITTER) do
		Table[#Table+1] = {v}
	end
	return Table
end
