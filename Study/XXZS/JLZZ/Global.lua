Array = {
	["0-1"] = {"root-提示",{505,751,627,791},"0|0|0x009688,18|-4|0x009688,31|-4|0x009688,26|1|0x009688,22|5|0x009688,9|7|0xd9e6e5,-1|5|0x039789,-25|6|0x56b6ad,-37|3|0x05988a",95,0,0,0},
	["8-0-0-0"]={"训练-城堡界面",{519,528,588,591},"0|0|0xcd7d66,0|0|0xcd7d66,1|1|0xbc393e,2|3|0x8f553e,5|3|0x6e4135,6|4|0x562e28,3|5|0x5a382b,1|6|0x653423,5|7|0x512e25",95,0,0,0},
	["8-0-0-1"]={"邮件-城堡界面",{411,1172,594,1272},"0|0|0xce4e28,2|0|0xb65136,7|1|0xa1321e,-2|6|0xb5452c,-3|2|0x913424,14|-6|0xc1b174,8|0|0xde643d,2|6|0xba5038,0|9|0xa43923,7|7|0x8b3426,1|-3|0xbf492c,-4|2|0xb7472c,0|7|0xa54531",95,0,0,0},
	["8-0-0-1"]={"训练-城堡界面",{504,518,639,633},"0|0|0xcccdcd,0|2|0xe5e6e6,-2|5|0xfbfbfb,-9|4|0x838485,-10|1|0xcecfcf,-18|2|0x282a2a,-16|6|0xaaabac,-16|11|0xababab",95,0,0,0},
	["8-0-0-2"]={"训练-城堡界面",{594,513,707,625},"0|0|0xf0f0f1-0x111111,-2|5|0xf3f3f3-0x111111,-16|-3|0xb5b6b6-0x111111,-15|6|0xaaabab-0x111111,-20|7|0xeaeaea-0x111111,-30|5|0xcbcac9-0x111111",95,0,0,0},
	["8-0-0-3"]={"训练-按钮",{386,1156,668,1259},"0|0|0xe0dfa0,0|6|0xdfdc9d,-12|9|0x034d32,-36|4|0x086646,-47|2|0x066244,0|10|0xdfdc9d,-8|15|0x005135",95,0,0,0},
	["8-0-0-4"]={"训练-未完成",{96,486,623,660},"0|0|0xd7ad14-0x111111,-6|2|0xcda514-0x111111,-6|8|0xc9a214-0x111111,91|5|0x957915-0x111111,78|7|0xbc9815-0x111111,79|12|0xd0a814-0x111111,111|15|0xa08215-0x111111,121|15|0x937815-0x111111",95,0,0,0},
	["8-0-0-5"]={"选择-人物图标",{4,4,145,135},"0|0|0x201e28,-4|15|0x1d1a27,-1|25|0xa4815f,19|19|0xdec29c,5|16|0x907760,64|-22|0x21e402,71|3|0x20ec00,44|54|0x251e0c",95,0,0,0},
	["8-0-0-6"]={"战旗-城堡界面",{375,649,415,699},"0|0|0x91401f,3|7|0x9a4017,2|13|0xbf6a1f,0|18|0xca7a3d,4|18|0xb6720d,5|3|0x913716",95,0,0,0},
	["8-0-0-7"]={"迁城-世界地图",{35,804,90,838},"0|0|0xd04d35-0x111111,4|2|0xd95037-0x111111,-1|4|0xba442f-0x111111,10|5|0xe8523b-0x111111,8|-1|0xe15239-0x111111",95,0,0,0},
	["8-0-0-8"]={"邮件-城堡地图",{6,6,90,87},"0|0|0x9f9a98-0x011111,2|0|0x9f9a98-0x011111,3|-6|0xb1acab-0x011111,-19|-3|0xa7a1a0-0x011111,-24|2|0x9c9695-0x011111,-16|9|0x898585-0x011111,-3|15|0xa7a5a6-0x011111,4|22|0x736c6a-0x011111,-4|5|0x2a507d-0x011111",95,0,0,0},
	["8-0-0-9"]={"骑宠台阶-城堡地图",{536,722,565,747},"0|0|0xfdcf19-0x011111,-6|2|0xcf9c28-0x011111,-6|3|0xd19019-0x011111,2|7|0xda9a27-0x011111,-2|7|0xe3ab41-0x011111,-7|1|0x94660c-0x011111,0|2|0xeaca19-0x011111,-4|3|0xe6b01c-0x011111",95,0,0,0},
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
        mSleep(delay)
	end
end

function SlideScreen(delay,point_1,point_2)
	touchDown(1,point_1[1],point_1[2])
	mSleep(delay)
	touchMove(1,point_2[1],point_2[2])
	mSleep(delay)
	touchUp(1,point_2[1],point_2[2])
    mSleep(delay)
end

function SendMessage(delay,content,sendTable)
	inputText("#CLEAR#")
	inputText(content)
	ClickOn(delay,sendTable[1],sendTable[2])
	mSleep(delay)
end

function GoCastle()  -- 进入城堡
	if  isFindCoordinate("8-0-0-7") then
        ClickOn(200,48,1225) --点击圆球进入城堡
		toast("进入城堡")
	end
    mSleep(2000)
end
function GoGlobal()  -- 进入世界地图
	if isFindCoordinate("8-0-0-7") then
        toast("进入世界图")
	else
		ClickOn(200,48,1225) --点击圆球进入世界地图
	end
    mSleep(2000)
end

function Display(delay,content)
    if not delay then
        mSleep(1000)
    else
        mSleep(delay)
        toast(content)
        mSleep(delay)
    end
end

function BeatMonster(times)
    for i = 1,times do
        --2秒
		local count = 0;
		while count < 80 do
			count = count + 1
			ClickOn(20,512,390)  -- 点击打怪
		end
		mSleep(100)
		ClickOn(100,664,553)  --进入下一关
	end
end

function LianMengZhuanXian()
	ClickOn(200,660,1230)
	mSleep(3000)
	ClickOn(200,270,900)
	mSleep(3000)
	local count = 0
	while count < 30 do
		ClickOn(300,350,1100)
		count = count + 1
	end
end