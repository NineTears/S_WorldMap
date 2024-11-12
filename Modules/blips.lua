--世界地图队伍标记
local _G = getfenv(0)
local groupSize, groupType, frame
local _, subgroup, class, color

local modColour = function(icon, unit)
    if not (icon and unit) then return end
    local _, name = UnitClass(unit)
    if not name then return end

    if string.find(unit, 'raid', 1, true) then         -- RAID GROUPS
        local _, _, subgroup = GetRaidRosterInfo(string.sub(unit, 5))
        if not subgroup then return end
        icon:SetTexture(string.format([[Interface\AddOns\S_WorldMap\media\raid]]..'%d', subgroup))
        icon:GetParent():SetWidth(25)
        icon:GetParent():SetHeight(25)
    end

    local t = RAID_CLASS_COLORS[name]
    if math.ceil(GetTime()) < .5 then
        if UnitAffectingCombat(unit) then       bu:SetVertexColor(.8, 0, 0)
        elseif MapUnit_IsInactive(unit) then    bu:SetVertexColor(1, .8, 0)
        elseif UnitIsDeadOrGhost(unit) then     bu:SetVertexColor(.2, .2, .2)
        end
    elseif t then
        icon:SetVertexColor(t.r, t.g, t.b)
    else icon:SetVertexColor(.8, .8, .8)
    end
end

local modUpdate = function()
    local name = this:GetName()..'Icon'
    local texture = _G[name]
    if texture then modColour(texture, this.unit) end
end

local modUnit = function(unit, state, isNormal)
    local f = _G[unit]
    local icon = _G[unit..'Icon']
    if state then
        f:SetScript('OnUpdate', modUpdate)
        if isNormal then
            icon:SetTexture[[Interface\AddOns\S_WorldMap\media\party]]
            icon:GetParent():SetWidth(25)
            icon:GetParent():SetHeight(25)
        end
    else
        f:SetScript('OnUpdate', function() MapUnit_OnUpdate(f) modUpdate(f) end)
        icon:SetTexture[[Interface\\WorldMap\\WorldMapPartyIcon]]
    end
end

for i = 1, 4 do modUnit(string.format('WorldMapParty%d', i), true, true) end
for i = 1,40 do modUnit(string.format('WorldMapRaid%d', i), true) end