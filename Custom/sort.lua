sort = { window = {} } -- Tabled functions. Remove "sort." from functions to use without this

function sort.byTime(A, B)
	return A.StartTime < B.StartTime
end
function sort.byLane(A, B)
	if A.StartTime ~= B.StartTime then return A.StartTime < B.StartTime end 
	return A.Lane < B.Lane
end

function sort.byMultiplier(A, B)
	return A.Multiplier < B.Multiplier
end
