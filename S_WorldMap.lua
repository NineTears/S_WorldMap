--参考pfui,Cartographer,Modui
local S_WorldMap = CreateFrame("Frame")
S_WorldMap:RegisterEvent("PLAYER_ENTERING_WORLD")
S_WorldMap:SetScript("OnEvent", function()
    UIPanelWindows["WorldMapFrame"] = { area = "center" }

	WorldMapFrame:SetScript("OnShow", function()
		UpdateMicroButtons()
		PlaySound("igQuestLogOpen")
		CloseDropDownMenus()
		SetMapToCurrentZone()
		WorldMapFrame_PingPlayerPosition()
		this:EnableKeyboard(false)						--可以在世界地图状态下按键
		table.insert(UISpecialFrames, "WorldMapFrame")	--ESC提前关闭世界地图
		this:EnableMouseWheel(1)
		BlackoutWorld:Hide()
		WorldMapZoomOutButton:Hide()
		WorldMapMagnifyingGlassButton:Hide()
		this:SetClampedToScreen(true)
		
	--玩家导航箭头始终不透明、大小1.3倍
	if not this.playerModel then
		for _,v in ipairs({WorldMapFrame:GetChildren()}) do
			if v:GetFrameType() == "Model" and not v:GetName() then
				this.playerModel = v
				break
			end
		end	
	end
	this.playerModel:SetAlpha(1)
	this.playerModel:SetModelScale(1.3)
	this.playerModel:SetFrameLevel(3)
	end)

	WorldMapFrame:SetScript("OnHide", function()
		SetMapToCurrentZone()
	end)

	WorldMapFrame:SetScript("OnMouseWheel", function()
		if IsShiftKeyDown() then
			alpha = clamp(this:GetAlpha() + arg1/10, 0.1, 1.0)
			this:SetAlpha(alpha)
			this.playerModel:SetAlpha(1)
		elseif IsControlKeyDown() then
			scale = clamp(this:GetScale() + arg1/10, 0.1, 1.0)
			this:SetScale(scale)
		end
	end)

	WorldMapFrame:SetMovable(true)
	WorldMapFrame:EnableMouse(true)

	WorldMapFrame:SetAlpha(0.95)
	WorldMapFrame:SetScale(0.9)

	WorldMapFrame:ClearAllPoints()
	WorldMapFrame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	WorldMapFrame:SetWidth(WorldMapButton:GetWidth()+22)
	WorldMapFrame:SetHeight(WorldMapButton:GetHeight()+100)
	UIPanelWindows["WorldMapFrame"] = nil
		
	WorldMapFrame:RegisterForDrag("LeftButton")
	WorldMapFrame:SetScript("OnDragStart", function()
		this:StartMoving()
	end)
	
	WorldMapFrame:SetScript("OnDragStop", function()
		this:StopMovingOrSizing()
		local x,y = this:GetCenter()
		local z = UIParent:GetEffectiveScale() / 2 / this:GetScale()
		x = x - GetScreenWidth() * z
		y = y - GetScreenHeight() * z
		this:ClearAllPoints()
		this:SetPoint("CENTER", "UIParent", "CENTER", x, y)
	end)
	
	--显示坐标：来自MapCoords
	if not WorldMapButton.coords then
		local color = RAID_CLASS_COLORS[select(2, UnitClass("player"))]
		WorldMapButton.coords = CreateFrame("Frame", "WorldMapButtonCoords", WorldMapFrame)
		WorldMapButton.coords.text = WorldMapButton.coords:CreateFontString(nil, "ARTWORK")
		WorldMapButton.coords.text:SetPoint("BOTTOM", WorldMapFrame, "BOTTOM", 0, 9)
		WorldMapButton.coords.text:SetFontObject(GameFontNormal)
		WorldMapButton.coords:SetScript("OnUpdate", function()
			local x, y = GetCursorPosition()
			local px, py = GetPlayerMapPosition("player")
			local scale = WorldMapFrame:GetEffectiveScale()
			x = x / scale
			y = y / scale
			local width  = WorldMapButton:GetWidth()
			local height = WorldMapButton:GetHeight()
			local centerX, centerY = WorldMapFrame:GetCenter()
			local adjustedX = (x - (centerX - (width/2))) / width
			local adjustedY = (centerY + (height/2) - y) / height
			x = (adjustedX + 0.0022) * 100
			y = (adjustedY + -0.0262) * 100

			if MouseIsOver(WorldMapButton) then
				WorldMapButton.coords.text:SetText("鼠标 "..format("%d,%d",x,y).."      "..HexColors(color.r or 1, color.g or 1, color.b or 0).."玩家|r "..Round(px * 100)..","..Round(py * 100))
			else
				WorldMapButton.coords.text:SetText("")
			end
		end)
	end
end)

local function CreatepfQuestButton(name, anchor, parent, relativeTo, x, y, text)
	local Button = CreateFrame("Button", name, WorldMapFrame, "UIPanelButtonTemplate")
	SetSize(Button, 35, 20)
	Button:SetFont(STANDARD_TEXT_FONT, 14)
	Button:SetPoint(anchor, parent, relativeTo, x, y)	
	Button:SetText(text)
end

local function pfQuestButtonClick(frame, cmd)
	frame:SetScript("OnMouseDown", function()
		SlashCmdList["PFDB"](cmd)
	end)
end

local function pfQuestButtonOnEnter(frame, text)
	frame:SetScript("OnEnter", function()
		GameTooltip:SetOwner(this, "ANCHOR_TOPRIGHT")
		GameTooltip:ClearLines()
		GameTooltip:AddLine(text)
		GameTooltip:Show()	
	end)
end

local function pfQuestButtonOnLeave(frame)
	frame:SetScript("OnLeave", function() GameTooltip:Hide() end)
end

local function pfQuestButton(frame, cmd, text)
	pfQuestButtonClick(frame, cmd)
	pfQuestButtonOnEnter(frame, text)
	pfQuestButtonOnLeave(frame)
end

if pfQuest then
	CreatepfQuestButton("pfQuestMines", "TOPLEFT", WorldMapFrame, "TOPLEFT", 10, -40, "矿物")
	CreatepfQuestButton("pfQuestherbs", "LEFT", "pfQuestMines", "RIGHT", 0, 0, "草药")
	CreatepfQuestButton("pfQuestchests", "LEFT", "pfQuestherbs", "RIGHT", 0, 0, "宝箱")
	CreatepfQuestButton("pfQuestrares", "LEFT", "pfQuestchests", "RIGHT", 0, 0, "稀有")
	CreatepfQuestButton("pfQuesttaxi", "LEFT", "pfQuestrares", "RIGHT", 0, 0, "鸟点")
	CreatepfQuestButton("pfQuestSerach", "LEFT", "pfQuesttaxi", "RIGHT", 10, 0, "搜索")
	CreatepfQuestButton("pfQuestclean", "LEFT", "pfQuestSerach", "RIGHT", 0, 0, "清除")

	pfQuestButton(pfQuestMines, "mines auto", "显示当前采矿等级范围内的矿石")
	pfQuestButton(pfQuestherbs, "herbs auto", "显示当前采药等级范围内的草药")
	pfQuestButton(pfQuestchests, "chests", "显示所有宝箱")
	pfQuestButton(pfQuestrares, "rares", "显示所有稀有精英")
	pfQuestButton(pfQuesttaxi, "taxi", "显示本阵营所有鸟点")
	pfQuestButton(pfQuestSerach, "show", "显示pfQuest浏览器")
	pfQuestButton(pfQuestclean, "clean", "清除地图标记")
end