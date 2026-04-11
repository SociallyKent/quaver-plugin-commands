	a, b, c, d, e, f,
	g, h, i, j, k, l,
	m, n, o, p, q, r,
	s, t, u, v, w, x,
	y, z
 -- Restrict a NUMBER's value between LOW and HIGH
--NUMBER numeric
--LOW numeric
--HIGH numeric
function math.clamp(NUMBER, LOW, HIGH)
	return NUMBER < LOW and LOW or NUMBER > HIGH and HIGH or NUMBER end
 -- Returns both the min and max of given numbers
--... numeric
function math.minmax(...)
	return math.min(...), math.max(...) end
 -- Round NUMBER to decimal point DECIMAL
--NUMBER numeric
--DECIMAL numeric
function math.round(NUM, DECIMAL)
	local Notation = 10^(DECIMAL or 0)
	return math.floor(Notation * NUM+0.5)/Notation end--+0.5; for not round downwards
end
 -- Wrap NUMBER1 until it fits within NUMBER2
--NUMBER1 numeric
--NUMBER2 numeric
function math.wrap(NUMBER1, NUMBER2)
	local a, b = math.modf(NUMBER1/NUMBER2)
	return NUMBER2 * b, a
end


