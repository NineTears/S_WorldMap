--来自于MODUI地图标记
local orig  = {}
local S_MapPins  = {}
local focus = nil

orig.WorldMapButton_OnClick = WorldMapButton_OnClick
orig.WorldMapFrame_Update   = WorldMapFrame_Update

StaticPopupDialogs['MAP_PIN_NOTE'] = {
	text = '添加注释',
    button2 = CLOSE,
    timeout = 0,
    hasEditBox = 1, maxLetters = 1024, editBoxWidth = 350,
    whileDead = true, hideOnEscape = true,
    OnShow = function()
        (this.icon or _G[this:GetName()..'AlertIcon']):Hide()
        local editBox = this.editBox or _G[this:GetName()..'EditBox']
        local pin = focus
        if pin.note then editBox:SetText(pin.note) else editBox:SetText'' end
        editBox:SetFocus()
        local button2 = this.button2 or _G[this:GetName()..'Button2']
        button2:ClearAllPoints()
        button2:SetPoint('TOP', editBox, 'BOTTOM', 0, -6)
        button2:SetWidth(150)
        this:SetFrameStrata'FULLSCREEN_DIALOG'
    end,
    OnHide = function()
        local editBox = this.editBox or _G[this:GetName()..'EditBox']
        local t = editBox:GetText()
        local pin = focus
        pin.note = t
        focus = nil
        this:SetFrameStrata'DIALOG'
    end,
}

local create = function(button, z)
    local width  = WorldMapDetailFrame:GetWidth()
    local height = WorldMapDetailFrame:GetHeight()
    local x,  y  = WorldMapDetailFrame:GetCenter()
    local cx, cy = GetCursorPosition()

    x = ((cx/WorldMapDetailFrame:GetEffectiveScale()) - (x - width/2))/width
    y = ((y + height/2) - (cy/WorldMapDetailFrame:GetEffectiveScale()))/height

    if x >= 0 and y >= 0 and x <= 1 and y <= 1 then
        local p = CreateFrame('Button', z..' modpin'..'_'..x, button)
        p:SetWidth(32) p:SetHeight(32)
        p:RegisterForClicks('LeftButtonUp', 'RightButtonUp')
        p:SetPoint('CENTER', button, 'TOPLEFT', x*width + 8, -y*height + 8)
        p:SetScript('OnClick', function()
            if arg1 == 'RightButton' then
                focus = p
                StaticPopup_Show'MAP_PIN_NOTE'
            else
				if IsShiftKeyDown() then
					p:Hide() p.disable = true p.note = nil
				end
            end
        end)
        p:SetScript('OnEnter', function()
            GameTooltip:SetOwner(p, 'ANCHOR_RIGHT')
            if p.note and p.note ~= '' then 
				GameTooltip:AddLine(p.note..format(': %.0f,%.0f', x*100, y*100))
			else
				GameTooltip:AddLine(format('未指定: %.0f,%.0f', x*100, y*100))
			end
            GameTooltip:Show()
        end)
        p:SetScript('OnLeave', function() GameTooltip:Hide() end)
        tinsert(S_MapPins, p)

        local path = UnitFactionGroup'player' == 'Alliance' and [[Interface\WorldStateFrame\AllianceFlag]] or [[Interface\WorldStateFrame\HordeFlag]]
        local t = p:CreateTexture(nil, 'BACKGROUND')
        t:SetTexture(path)
        t:SetAllPoints()
    end
end

function WorldMapButton_OnClick(mouseButton, button)
    if IsShiftKeyDown() then
        if not button then button = this end
        local z = GetMapInfo()
        create(button, z)
    else orig.WorldMapButton_OnClick(mouseButton, button) end
end

function WorldMapFrame_Update()
    orig.WorldMapFrame_Update()
    local z = GetMapInfo()
    for i, v in pairs(S_MapPins) do
        if not v.disable then
            local name = v:GetName()
            if string.find(name, z) then
				v:Show()
            else
				v:Hide()
			end
        end
    end
end