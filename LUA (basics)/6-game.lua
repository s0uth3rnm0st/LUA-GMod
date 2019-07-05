local lives = 10
math.randomseed(os.time())
local randomNum = math.random(1,50)
print(randomNum)

print("higher or lower game!!")

while lives > 0 do
	print("you have "..lives.." left")
	local number = io.read()
	number = tonumber(number)

	if number==randomNum then

		print("That's the number, congratulations")
		break

	elseif number<randomNum then
		print("guess higher!!")
		lives=lives-1

	elseif number>randomNum then
		print("guess lower!!")
		lives=lives-1

	end

	if lives <= 0 then
		print("game over")
		break
	end

end

io.read()