#!/usr/bin/lua

--print(arg[1])
function sumOfDigits(arg)
	local sum=0
	for i=1, string.len(arg) do
		sum = sum+string.byte(arg,i)-48
	end
	print(sum)
	return sum
end

sumOfDigits(arg[1])
