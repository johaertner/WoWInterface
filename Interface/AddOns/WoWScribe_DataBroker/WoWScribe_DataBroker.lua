-- ------------------------------------------------------------------------- --
-- Project: WoWScribe DataBroker - Data Broker Object for WoWScribe
-- Author:  VincentSDSH				
-- Version: 1.0
-- ------------------------------------------------------------------------- --

local AddonName, AddonTable = ...; wsDB = AddonTable
local icons = {
 ["Logging"]    = "Interface/Addons/"..AddonName.."/icons/icon_Logging.blp",
 ["notLogging"] = "Interface/Addons/"..AddonName.."/icons/icon_notLogging.blp",
}

-- Defaults ---------------------------------- --
wsDBcfg = {["DBIconTable"] = { ["hide"] = false }}

-- Event Frame ------------------------------- --
local wsDBEventFrame = CreateFrame("Frame")
wsDBEventFrame:SetScript("OnEvent", function(frame, event, ...) frame[event](frame, ...) end) -- passes with 'this'/small-self as 1st para
wsDBEventFrame:RegisterEvent("VARIABLES_LOADED")
function wsDBEventFrame:VARIABLES_LOADED()
  wsDB.ldbHandle = wsDB:ldb_ObjectCreate()
  LibStub("LibDBIcon-1.0"):Register(AddonName, wsDB.ldbHandle, wsDBcfg.DBIconTable)   
end

-- LDB Object -------------------------------- --
function wsDB:ldb_getText() return WoWScribeDB.filteringEnabled and WoWScribe:ColorPencil("Logging", "easygreen") or WoWScribe:ColorPencil("Not Logging", "easyred") end
function wsDB:ldb_getIcon() return icons[ WoWScribeDB.filteringEnabled and "Logging" or "notLogging" ] end

function wsDB:updateLDB()
	local handle = wsDB.ldbHandle
	handle.text = wsDB:ldb_getText()
	handle.icon = wsDB:ldb_getIcon()
end
function wsDB:ldb_ObjectCreate()
	return LibStub("LibDataBroker-1.1"):NewDataObject(AddonName, {
		type = 'data source',
		label = "WoWScribe",
		text  = wsDB:ldb_getText(), 
		icon  = wsDB:ldb_getIcon(),

		OnTooltipShow = function(tooltip) 
			tooltip:AddDoubleLine( WoWScribe:ColorPencil("WoWScribe", "wowscribe"), wsDB:ldb_getText() )
			tooltip:AddLine(" ")
			if next(WoWScribeDB.loggedChannelGroups) then 
				tooltip:AddLine(WoWScribe:ColorPencil("Logged Channels", "wowscribe"))
				
				local channelGroups = WoWScribe:getChannelGroups()				
				for k, v in pairs(WoWScribeDB.loggedChannelGroups) do
					tooltip:AddLine( WoWScribe:getDisplayName(channelGroups[k][1]), 1, 1, .8 ) -- if :gDN()="" GameTooltip won't :AddLine()
				end
			else
				tooltip:AddLine(WoWScribe:ColorPencil("No Channels Selected", "wowscribe"))
			end
			tooltip:AddLine(" ")
			tooltip:AddLine(WoWScribe:ColorPencil("Left-Click", "orange_plus")..": Toggle Logging", 1, .8, .6)
			if select(5, GetAddOnInfo("WoWScribe_Config"))=="DEMAND_LOADED" then
				tooltip:AddLine(WoWScribe:ColorPencil("Right-Click", "orange_plus")..": Open Configuration", 1, .8, .6)
			end

		end,
				
		OnClick = function(self, button) -- self = data broker object PARENT HANDLER
			if button == "LeftButton" then				
				if WoWScribeDB.filteringEnabled then WoWScribe:disableFiltering() 
				else 																 WoWScribe:enableFiltering()
				end 				
				wsDB:updateLDB()
			else -- RightButton
				if select(5, GetAddOnInfo("WoWScribe_Config"))=="DEMAND_LOADED" then
					LoadAddOn("WoWScribe_Config")
					wsCfg:OpenConfig()
				else
					WoWScribe:Message("|cff9c98efWoWScribe|cffdeb887: WowScribe Configuration Addon is not enabled.")
				end
			end

		end,
	})
end


