function saveFile(filename,content)
	f = io.open(filename,"w")
	f:write(content)
	f:close()
end

local str = ""
for k,v in pairs(_G) do
	if type(v) == "function" then
		print(k)
		str = str .. "_G[" .. k .. "]"  .. "\n"
	elseif type(v) == "table" then
		for key,value in pairs(v) do
			if type(value) == "function" then
				str = str  .. k .. "[" .. key .. "]" .. "\n"
			end
		end
	end
end
saveFile("function.txt",str)
print(type(pairs) == "function")


