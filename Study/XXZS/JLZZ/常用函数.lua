
init("0", 0); 


function MatchWord(point1,point2)
	local ocr, msg = createOCR({
		type = "tesseract", -- 指定tesseract引擎
		path = "[external]", -- 使用开发助手/叉叉助手的扩展字库
		lang = "chi_sim" -- 使用英文增强字库(注意需要提前下载好)
	}) 
	if ocr ~= nil then
    string.trim = function(s)
        return s:match'^%s*(.*%S)' or ''
    end
    local code, text = -1, ""
    mSleep(1000)
    -- 识别屏幕图像内容(例如5/5s设备的当前时间显示)
    code, text = ocr:getText({
		--psm = 7;
        rect = {point1[1],point1[2],point2[1],point2[2]},
        --rect = {1, 1, 720, 960},
        diff = {"0xb7c28a-0x999999"}, -- 时间颜色为纯黑
        --whitelist = "0123456789APM:" -- 添加所有可能出现的字符作为白名单
        whitelist = "取消训练" -- 添加所有可能出现的字符作为白名单
    })
    -- 输出示例："code = 0, text = 5:24 PM" (末尾可能有多余换行符，为正常结果，可以参考trim处理)
    --sysLog("code = " .. tostring(code) .. ", text = " .. text:trim())
	return text:trim()
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
--MatchWord({1,5},{720,1280})
function Dixiacheng_zhijieda()
	while true do
		local count = 0;
		while count < 100 do
			count = count + 1
			ClickOn(40,512,390)  -- 点击打怪
		end
		mSleep(100)
		ClickOn(50,660,555)
	end
end
Dixiacheng_zhijieda()

function XunLianShiBing()
	--1、点击已经训练好的兵
	ClickOn(200,409,432)    --点击出兵
	--2、点击兵营
	ClickOn(500,440,470) 	--点击兵营
	--3、点击兵营界面的训练按钮
	if isFindCoordinate("8-0-0") then --找到训练了
		ClickOn(500,GlobalX,GlobalY) --点击训练
		print("点击训练0点")
	elseif isFindCoordinate("8-0-1") then
		ClickOn(500,GlobalX,GlobalY)
		print("点击训练1点")
	elseif isFindCoordinate("8-0-2") then
		ClickOn(500,GlobalX,GlobalY)
		print("点击训练2点")
	else
		ClickOn(500,567,577)
		print("点击训练3点")
	end
	--4、选兵种，默认
	--5、点击选兵界面的训练按钮
	if isFindCoordinate("8-0-3") then
		ClickOn(500,GlobalX,GlobalY) --
		print("完成点击练兵-1点")
	else
		ClickOn(300,500,1210)	--点击训练
		print("完成点击练兵-2点")
	end
end
function AllXunLianShiBing()
	local count = 0
	while true do
		count = count + 1
		print("----------开始------")
		print("这是第:" .. tostring(count) .. "次训练")
		XunLianShiBing()
		mSleep(6240000)
		print("----------结束------")
	end
end

--dialog("欢迎使用叉叉脚本！", 5);
--choice = dialogRet("请选择您的屏幕方向：", "横屏", "竖屏", "", 0);
--print(choice)
    --[[
	text_a, text_b = dialogInput("请输入使用的设置方案","在这里输入方案编号#在这里输入次数","确认");
    mSleep(1000);
    if text_b ~= "" and text_a ~= "" then  --如果均已填写
        dialog("打本信息："..text_b.." 次数 "..text_a.." 。", 5);
        mSleep(1000);
    else                                   --未填写完整
        dialog("请完整填写打本的设置信息", 5);
        mSleep(1000);
        lua_exit()
    end
	]]