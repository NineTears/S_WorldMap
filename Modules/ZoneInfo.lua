ZoneInfo = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceDB-2.0", "AceModuleCore-2.0", "AceHook-2.1")

local L = AceLibrary("AceLocale-2.2"):new("ZoneInfo")

L:RegisterTranslations("enUS", function() return {
	["%d-man"] = true,
} end)

L:RegisterTranslations("zhCN", function() return {
	["%d-man"] = "%d人",
} end)

local Tourist = AceLibrary("Tourist-2.0")

ZoneInfo = ZoneInfo:NewModule("ZoneInfo")

local lua51 = loadstring("return function(...) return ... end") and true or false

local table_setn = lua51 and function() end or table.setn

function ZoneInfo:OnInitialize()
	if Cartographer then return end
end

function ZoneInfo:OnEnable()
	if not self.frame then
		self.frame = CreateFrame("Frame", "ZoneInfo", WorldMapFrameAreaFrame)
		WorldMapFrameAreaFrame:SetFrameLevel(3)
		self.frame:SetScript("OnUpdate", self.OnUpdate)
		
		self.frame.text = WorldMapFrameAreaFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
		local text = self.frame.text
		local font = GameFontNormal:GetFont()
		text:SetFont(font, 16.5, "OUTLINE")
		text:SetPoint("TOP", WorldMapFrameAreaDescription, "BOTTOM", 0, -5)
		text:SetWidth(1024)
	end
	self.frame:Show()
end

function ZoneInfo:OnDisable()
	self.frame:Hide()
	WorldMapFrameAreaLabel:SetTextColor(1, 1, 1)
end

local lastZone
local t = {}
function ZoneInfo.OnUpdate()
	local self = ZoneInfo
	if not WorldMapDetailFrame:IsShown() or not WorldMapFrameAreaLabel:IsShown() then
		self.frame.text:SetText("")
		lastZone = nil
		return
	end
	
	local underAttack = false
	local zone = WorldMapFrameAreaLabel:GetText()
	if not zone then
		self.frame.text:SetText("")
		lastZone = nil
		return
	end
	
	zone = string.gsub(zone, " |cff.+$", "")
	local descText = WorldMapFrameAreaDescription:GetText()
	if descText and descText ~= "" then
		underAttack = true
		zone = string.gsub(descText, " |cff.+$", "")
	end
	
	if GetCurrentMapContinent() == 0 then
		local c1, c2 = GetMapContinents()
		if zone == c1 or zone == c2 then
			WorldMapFrameAreaLabel:SetTextColor(1, 1, 1)
			self.frame.text:SetText("")
			return
		end
	end
	if not zone or not Tourist:IsZoneOrInstance(zone) then
		zone = WorldMapFrame.areaName
	end
	WorldMapFrameAreaLabel:SetTextColor(1, 1, 1)
	if zone and (Tourist:IsZoneOrInstance(zone) or Tourist:DoesZoneHaveInstances(zone)) then
		if not underAttack then
			WorldMapFrameAreaLabel:SetTextColor(Tourist:GetFactionColor(zone))
			WorldMapFrameAreaDescription:SetTextColor(1, 1, 1)
		else
			WorldMapFrameAreaLabel:SetTextColor(1, 1, 1)
			WorldMapFrameAreaDescription:SetTextColor(Tourist:GetFactionColor(zone))
		end
		local low, high = Tourist:GetLevel(zone)
		if low > 0 and high > 0 then
			local r, g, b = Tourist:GetLevelColor(zone)
			local levelText
			if low == high then
				levelText = string.format(" |cff%02x%02x%02x[%d]|r", r * 255, g * 255, b * 255, high)
			else
				levelText = string.format(" |cff%02x%02x%02x[%d-%d]|r", r * 255, g * 255, b * 255, low, high)
			end
			local groupSize = Tourist:GetInstanceGroupSize(zone)
			local sizeText = ""
			if groupSize > 0 then
				sizeText = " " .. string.format(L["%d-man"], groupSize)
			end
			if not underAttack then
				WorldMapFrameAreaLabel:SetText(string.gsub(WorldMapFrameAreaLabel:GetText(), " |cff.+$", "") .. levelText .. sizeText)
			else
				WorldMapFrameAreaDescription:SetText(string.gsub(WorldMapFrameAreaDescription:GetText(), " |cff.+$", "") .. levelText .. sizeText)
			end
		end
		
		if Tourist:DoesZoneHaveInstances(zone) then
			if lastZone ~= zone then
				lastZone = zone
				for instance in Tourist:IterateZoneInstances(zone) do
					local low, high = Tourist:GetLevel(instance)
					local r1, g1, b1 = Tourist:GetFactionColor(instance)
					local r2, g2, b2 = Tourist:GetLevelColor(instance)
					local groupSize = Tourist:GetInstanceGroupSize(instance)
					if low == high then
						if groupSize > 0 then
							table.insert(t, string.format("|cff%02x%02x%02x%s|r |cff%02x%02x%02x[%d]|r " .. L["%d-man"], r1 * 255, g1 * 255, b1 * 255, instance, r2 * 255, g2 * 255, b2 * 255, high, groupSize))
						else
							table.insert(t, string.format("|cff%02x%02x%02x%s|r |cff%02x%02x%02x[%d]|r", r1 * 255, g1 * 255, b1 * 255, instance, r2 * 255, g2 * 255, b2 * 255, high))
						end
					else
						if groupSize > 0 then
							table.insert(t, string.format("|cff%02x%02x%02x%s|r |cff%02x%02x%02x[%d-%d]|r " .. L["%d-man"], r1 * 255, g1 * 255, b1 * 255, instance, r2 * 255, g2 * 255, b2 * 255, low, high, groupSize))
						else
							table.insert(t, string.format("|cff%02x%02x%02x%s|r |cff%02x%02x%02x[%d-%d]|r", r1 * 255, g1 * 255, b1 * 255, instance, r2 * 255, g2 * 255, b2 * 255, low, high))
						end
					end
				end
				self.frame.text:SetText(table.concat(t, "\n"))
				for k in pairs(t) do
					t[k] = nil
				end
				table_setn(t, 0)
			end
		else
			lastZone = nil
			self.frame.text:SetText("")
		end
	elseif not zone then
		lastZone = nil
		self.frame.text:SetText("")
	end
	
	local mapFileName = GetMapInfo()
	if mapFileName == "Undercity" or mapFileName == "Ironforge" then
		self.frame.text:SetText("")
	end
end
