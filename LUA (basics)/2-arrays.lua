a = {1, 4, 9, 16, 25, 36, "hola", 64, 81}
for i=1, 10 do
	--a[i]=0
	print(a[i])
end
	
print("")
test = {12,"chau"}
print (test[0])
print (test[1])
print (test[2])
print (test[3])
----------------------------------------

print("")
array = {"Juegos","Peliculas","Series"}

for i=1, 3 do
	--print(array[i])
end

array[1]={"Half life","CSGO","CoD"}
array[2]={"Septimo Sello","John Wick","Stalker"}
array[3]={"GoT","Breaking Bad","Dark"}

for i=1, 3 do

	if i==1 then
	print("--------")
	print("|Juegos|")
	print("--------")

	elseif i==2 then
	print("-----------")
	print("|Peliculas|")
	print("-----------")

	elseif i==3 then
	print("--------")
	print("|Series|")
	print("--------")
	end

	for j=1,3 do
	print(array[i][j])
end
print("")
end

---------------------------------------

print("##############################################")
table={}
table[1]="Hello"
table[2]="mid"
table[3]="Bye"

for key, value in pairs(table)do
	print(key, value)
end
print("")
for i=1, 3 do

	print(i, table[i])
end
print("##############################################")

print("##############################################")
table={}
table[3]="Hello"
table[66]="mid"
table[90]="Bye"

for key, value in pairs(table)do
	print(key, value)
end
print("")
for i=1, 3 do

	print(i, table[i])
end
print("##############################################")


io.read()