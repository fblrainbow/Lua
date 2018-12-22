Array = {
	["8-0-0"]={"训练-城堡界面",{519,528,588,591},"0|0|0xcd7d66,0|0|0xcd7d66,1|1|0xbc393e,2|3|0x8f553e,5|3|0x6e4135,6|4|0x562e28,3|5|0x5a382b,1|6|0x653423,5|7|0x512e25",95,0,0,0},
	["8-0-1"]={"训练-城堡界面",{504,518,639,633},"0|0|0xcccdcd,0|2|0xe5e6e6,-2|5|0xfbfbfb,-9|4|0x838485,-10|1|0xcecfcf,-18|2|0x282a2a,-16|6|0xaaabac,-16|11|0xababab",95,0,0,0},
	["8-0-2"]={"训练-城堡界面",{594,513,707,625},"0|0|0xf0f0f1-0x111111,-2|5|0xf3f3f3-0x111111,-16|-3|0xb5b6b6-0x111111,-15|6|0xaaabab-0x111111,-20|7|0xeaeaea-0x111111,-30|5|0xcbcac9-0x111111",95,0,0,0},
	["8-0-3"]={"训练-按钮",{386,1156,668,1259},"0|0|0xe0dfa0,0|6|0xdfdc9d,-12|9|0x034d32,-36|4|0x086646,-47|2|0x066244,0|10|0xdfdc9d,-8|15|0x005135",95,0,0,0},
	["8-0-4"]={"训练-未完成",{96,486,623,660},"0|0|0xd7ad14-0x111111,-6|2|0xcda514-0x111111,-6|8|0xc9a214-0x111111,91|5|0x957915-0x111111,78|7|0xbc9815-0x111111,79|12|0xd0a814-0x111111,111|15|0xa08215-0x111111,121|15|0x937815-0x111111",95,0,0,0},
	["2-0-0"]={"选择-人物图标",{4,4,145,135},"0|0|0x201e28,-4|15|0x1d1a27,-1|25|0xa4815f,19|19|0xdec29c,5|16|0x907760,64|-22|0x21e402,71|3|0x20ec00,44|54|0x251e0c",95,0,0,0},
};
GlobalX,GlobalY = -1,-1;
function isFindCoordinate(selectIndex)
	local tmpArray = Array[selectIndex]
	GlobalX,GlobalY = -1,-1;
	GlobalX,GlobalY = findColor(tmpArray[2],tmpArray[3],tmpArray[4],tmpArray[5],tmpArray[6],tmpArray[7])
	if GlobalX ~= -1 then
		return true
	else
		return false	
	end
end

function ClickOn(delay,x,y)
	if x > -1 then
		mSleep(delay);
		touchDown(1,x,y);
		mSleep(delay)
		touchUp(1,x,y);
	end
end