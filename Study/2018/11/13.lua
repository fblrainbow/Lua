function saveFile(filename,content)
	f = io.open(filename,"w")
	f:write(content)
	f:close()
end

local str = ""
--~ saveFile("function.txt",str)
os.execute("ping 127.0.0.1 -t 3")


