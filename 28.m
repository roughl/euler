inc=2

num=1;
sum=1;
for n=1:250
	for ni=1:4
		num = num+inc;
		sum = sum+num;
	end
	inc=inc+2;
end
sum
