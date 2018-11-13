function table_slove( gt_table )
	-- body
	if "table" == type(gt_table) then
		for k,v in pairs(gt_table) do
			if "table" == type(v) then
				table_slove(v)
			else
				print(k .. ":" .. v)
			end
		end
	else
		print("This isn't table type.")
	end
end

function fbl( tmp )
	-- body
	print(type(tmp))
end