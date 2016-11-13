
function fak(n)
	local prod=1
	for i=2, n do
		prod=prod*i
	end
	return prod
end

function sumOfDigits(n)
	local sum=0
	print(n)
	while n>0 do
		digit = n%10
		print(digit)
		sum=sum+digit
		n=(n-digit)/10
	end
	return sum
end


print(sumOfDigits(fak(100)))


