n = 2520

--arr = {11,12,13,14,15,16,17,18,19,20}

while true do
	for i=11,20 do
		--if i==20 then
		--	print(i)
		--	os.exit(0)
		--end
		if n%i ~= 0 then
			break
		elseif i==20 then
			print(n)
			os.exit(0)
		end
	end
	--if n%1000==0 then
--		print(n)
--	end
	n=n+20
end

