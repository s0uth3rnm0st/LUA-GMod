function add(int1,int2)

	if (int1+1)==10 then
	print("hello world")
	else
	print("you are dead!!")
	end

	result=int1+int2
	print(result)
end

function withReturn(int1, int2)

	result=int1*int2
	return result

end



add(9,2)
add(8,9)

print("")
result=withReturn(2,2)
print("result:",result)


io.read()