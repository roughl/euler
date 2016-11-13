local sum = 0
for i=3, 999 do
	if i%3 == 0 then
		print(i)
		sum=sum+i
	elseif i%5 == 0 then
		print(i)
		sum=sum+i
	end
end
print (sum)

