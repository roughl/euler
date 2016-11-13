
for a=1, 1000 do
	for b=1, 1000 do
		c = math.sqrt(a*a+b*b)
		if(a+b+c == 1000) then
			print("Found Solution:")
			print("a:",a,"b:",b,"c:",c)
			print("Product:", a*b*c)
			os.exit(0)
		end
	end
end

os.exit(1)

