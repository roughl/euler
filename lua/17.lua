

-- one 3
-- two 3
-- three 5
-- four 4
-- five 4
-- six 3
-- seven 5
-- eight 5
-- nine 4
-- ten 3
-- eleven 6
-- twelve 6
-- thirteen 8
-- fourteen 8
-- fifteen 7
-- sixteen 7
-- seventeen 9
-- eighteen 8
-- nineteen 8
ones = {3,3,5,4,4,3,5,5,4,
		3,6,6,8,8,7,7,9,8,8}


-- twenty 6
-- thirty 6
-- forty 5
-- fifty 5
-- sixty 5
-- seventy 7
-- eighty 6
-- ninety 6

tens = {0,6,6,5,5,5,7,6,6}

-- hundred 7


-- thousand 8

function dprint(...)
	--print(...)
end

local sum=0
for i=1, 1000 do
	local m = math.floor(i/1000)
	local h = math.floor((i-m*1000)/100)
	local t = math.floor((i-m*1000-h*100)/10)
	local o = math.floor((i-m*1000-h*100-t*10))
	dprint(m,h,t,o,"Sum:",sum)
	if m>0 then
		sum=sum+ones[m] -- one
		sum=sum+8 -- thousend
	end
	if h>0 then
		sum=sum+ones[h] -- one
		sum=sum+7 --hundred
		if(t>0 or o>0) then
			sum=sum+3 -- and
		end
		dprint(sum)
	end
	if t < 2 then
		if( t>0 or o >0) then
			sum=sum+ones[t*10+o]
		end
		dprint(sum)
	else
		sum=sum+tens[t]
		dprint(sum)
		if(o>0) then
			sum=sum+ones[o]
		end
	end
end
print(sum)

