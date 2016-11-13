
old = 1
fib = 2
sum = 2

while fib<4000000 do
	newfib = old+fib
	if newfib%2==0 then
		sum = sum+newfib
	end
	old = fib
	fib = newfib
end

print(sum)

