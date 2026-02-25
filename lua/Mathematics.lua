+ --- Addition
- --- Subtraction/Subtract
/ --- Division/Dividing
* --- Multiply/Timesing
^ --- Exponentiation/Power
^0.5 --- Square Root
% ---
math.abs(x) -- absolute
math.acos(x) -- arc cosine
math.cos(x) -- cosine
math.cosh(x) -- hyperbolic cosine
math.asin(x) -- arc sine
math.sin(x) -- sine
math.sinh(x) -- hyperbolic sine
math.atan(x) -- arc tangent
math.atan2(y, x) ---
math.tan(x) -- tangent
math.tanh(x) -- hyperbolic tangent
math.ceil(x)--(x, ...)-- returns the first value
math.floor(x)--(x, ...)-- returns the last value
math.max(x)--(x, ...)-- returns the highest value
math.min(x)--(x, ...)-- returns the lowest value
math.exp(x) -- exponential
math.pow(x, y) -- exponentiation/power
math.deg(x) -- return angle of value in degrees; output is in radians
math.rad(x) -- return angle of value in radians; output is in degrees
math.huge -- represents a higher or equal number, no matter what it is
math.pi -- represents π
math.modf(x) -- returns whole value aswell as the fractional value
  --example: if x = 2.56, it returns 2 and 0.56. if x = 7, it returns 7 and 0, because 7 has no number in a decimal point.
math.fmod(x, y) -- x = dividend, y = divisor/modulus 
  --example: if x = 499, y = 360, it returns 139 because 499 cannot fit into 360 so it wrapped it around until it could. (does not return amount of wraps needed)
  -- fmod is not a wrapper though! x - trunc(x / y) * y, where trunc removes the fractional part toward zero
math.frexp(x)
math.ldexp(m, e) -- returns m2^e
math.log(x, base) -- logarithm -- if no base is given; defaults to e
math.random(x, y) -- returns a random number between x and y. -- if no value is given; defaults to (0, 1)
math.randomseed(x)
math.sqrt(x) -- square root
