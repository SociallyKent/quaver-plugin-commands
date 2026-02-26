	a, b, c, d, e, f,
	g, h, i, j, k, l,
	m, n, o, p, q, r,
	s, t, u, v, w, x,
	y, z
 -- Round NUMBER to decimal point DECIMAL
--NUMBER numeric
--DECIMAL numeric
function math.round(NUMBER, DECIMAL)
	DECIMAL = DECIMAL or 0
	local Notation = 10^DECIMAL
	return math.floor(Notation * NUMBER+0.5)/ Notation--+0.5; for not round downwards
end
 -- Wrap NUMBER1 until it fits within NUMBER2
--NUMBER1 numeric
--NUMBER2 numeric
function math.wrap(NUMBER1, NUMBER2)
	local a, b = math.modf(NUMBER1/NUMBER2)
	return NUMBER2 * b, a
end


