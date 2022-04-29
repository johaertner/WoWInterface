--[[    WoW Scribe
        Author:		Rhianidd
        	with gratitude and help refactoring this version from VincentSDSH
        Version:  8.0
				Command Line: /wscribe | /ws
-- ]]

local WSAddon, WSTable = ...; WoWScribe = WSTable; WSConfig = "WoWScribe_Config"; WSDataBroker = "WoWScribe_DataBroker"
local WStagLine = "|cff9c98ef"..WSAddon.." |cffdddd00"..GetAddOnMetadata("WoWScribe", "Version").."|r"

-- Data Tables ------------------------------- --
local channelGroups = {
	-- 1st entry is the /primary/ channel for the group
	["guild"] 	 = {"CHAT_MSG_GUILD",   "CHAT_MSG_GUILD_ACHIEVEMENT"},
	["yell"] 	 	 = {"CHAT_MSG_YELL"},
	["whisper"]  = {"CHAT_MSG_WHISPER", "CHAT_MSG_WHISPER_INFORM", "CHAT_MSG_BN_WHISPER", "CHAT_MSG_BN_WHISPER_INFORM", "CHAT_MSG_BN_WHISPER_PLAYER_OFFLINE"},
	["emote"] 	 = {"CHAT_MSG_EMOTE", 	"CHAT_MSG_TEXT_EMOTE"},
	["party"] 	 = {"CHAT_MSG_PARTY", 	"CHAT_MSG_PARTY_LEADER"},
	["raid"] 	 	 = {"CHAT_MSG_RAID",		"CHAT_MSG_RAID_LEADER"},
	["say"] 	 	 = {"CHAT_MSG_SAY"},
	["officer"]  = {"CHAT_MSG_OFFICER"},
	["instance"] = {"CHAT_MSG_INSTANCE_CHAT", "CHAT_MSG_INSTANCE_CHAT_LEADER"},
	["1"] = {"1"}, ["2"] = {"2"}, ["3"] = {"3"}, ["4"] = {"4"}, ["5"] = {"5"}, ["6"] = {"6"}, ["7"] = {"7"}, ["8"] = {"8"}, ["9"] = {"9"},
}
local channelStatusNames = {
	["CHAT_MSG_GUILD"] 					 			= "Guild",
	["CHAT_MSG_YELL"] 					 			= "Yell",
	["CHAT_MSG_WHISPER"] 				 			= "Whisper",
  ["CHAT_MSG_WHISPER_INFORM"]	 			= "",	
	["CHAT_MSG_EMOTE"] 					 			= "Emote",
	["CHAT_MSG_TEXT_EMOTE"] 		 			= "",
	["CHAT_MSG_PARTY"] 								= "Party",
	["CHAT_MSG_PARTY_LEADER"] 	 			= "",
	["CHAT_MSG_RAID"] 					 			= "Raid",
	["CHAT_MSG_RAID_LEADER"] 		 			= "",
	["CHAT_MSG_SAY"] 						 			= "Say",
	["CHAT_MSG_OFFICER"]				 			= "Officer",
	["CHAT_MSG_INSTANCE_CHAT"] 				= "Instance",
	["CHAT_MSG_INSTANCE_CHAT_LEADER"]	= "",
	["1"] = "1. General",  ["2"] = "2. Trade",    ["3"] = "3. LocalDefense", 
	["4"] = "4. Global 4", ["5"] = "5. Global 5", ["6"] = "6. Global 6", ["7"] = "7. Global 7", ["8"] = "8. Global 8", ["9"] = "9. Global 9",
	["CHAT_MSG_ACHIEVEMENT"] = "", ["CHAT_MSG_AFK"] = "", ["CHAT_MSG_BN_INLINE_TOAST_ALERT"] = "", ["CHAT_MSG_BN_INLINE_TOAST_BROADCAST"] = "", ["CHAT_MSG_BN_INLINE_TOAST_BROADCAST_INFORM"] = "", ["CHAT_MSG_BN_INLINE_TOAST_CONVERSATION"] = "", ["CHAT_MSG_CHANNEL_LIST"] = "", ["CHAT_MSG_CHANNEL_NOTICE"] = "", ["CHAT_MSG_CHANNEL_NOTICE_USER"] = "", ["CHAT_MSG_COMBAT_FACTION_CHANGE"] = "", ["CHAT_MSG_COMBAT_HONOR_GAIN"] = "", ["CHAT_MSG_COMBAT_MISC_INFO"] = "", ["CHAT_MSG_COMBAT_XP_GAIN"] = "", ["CHAT_MSG_CURRENCY"] = "", ["CHAT_MSG_DND"] = "", ["CHAT_MSG_GUILD_ACHIEVEMENT"] = "", ["CHAT_MSG_GUILD_ITEM_LOOTED"] = "", ["CHAT_MSG_IGNORED"] = "", ["CHAT_MSG_LOOT"] = "", ["CHAT_MSG_MONEY"] = "", ["CHAT_MSG_MONSTER_EMOTE"] = "", ["CHAT_MSG_MONSTER_PARTY"] = "", ["CHAT_MSG_MONSTER_SAY"] = "", ["CHAT_MSG_MONSTER_WHISPER"] = "", ["CHAT_MSG_MONSTER_YELL"] = "", ["CHAT_MSG_OPENING"] = "", ["CHAT_MSG_PET_BATTLE_COMBAT_LOG"] = "", ["CHAT_MSG_PET_BATTLE_INFO"] = "", ["CHAT_MSG_PET_INFO"] = "", ["CHAT_MSG_RAID_BOSS_EMOTE"] = "", ["CHAT_MSG_RAID_BOSS_WHISPER"] = "", ["CHAT_MSG_RAID_WARNING"] = "", ["CHAT_MSG_RESTRICTED"] = "", ["CHAT_MSG_SKILL"] = "", ["CHAT_MSG_SYSTEM"] = "", ["CHAT_MSG_TARGETICONS"] = "", ["CHAT_MSG_TRADESKILLS"] = "",
}
local loggedChannels = {}

-- Event Frame ------------------------------- --
local WSEventFrame = CreateFrame("Frame")
WSEventFrame:SetScript("OnEvent", function(frame, event, ...) frame[event](frame, ...) end) -- passes with 'this'/small-self as 1st para
WSEventFrame:RegisterEvent("VARIABLES_LOADED")
WSEventFrame:RegisterEvent("CHAT_MSG_CHANNEL_NOTICE")
function WSEventFrame:VARIABLES_LOADED()
	if not WoWScribeDB then WoWScribeDB = { ["filteringEnabled"] = true, ["loggedChannelGroups"] = {} } end

	-- get accurate 1-9 channel names
	WoWScribe:getUpdatedNumberedChannelNames( GetChannelList() )
	
	if WoWScribeDB.filteringEnabled then
		-- this loads the local var 'loggedChannels' with the formal channel names for event triggering (see var channelGroups)
		table.foreach(WoWScribeDB.loggedChannelGroups, function(channelGroup, v)
			WoWScribe:SetChannelGroup(channelGroup, true, true)
		end)
				
		WoWScribe:enableFiltering(true) 
	end
end
function WSEventFrame:CHAT_MSG_CHANNEL_NOTICE(action, _, _, _, _, _, _, chanNumber, chanName)
	if action == "YOU_CHANGED" or action == "YOU_LEFT" then
		local chanNumber = tostring(chanNumber)
		local defaultName, customName = chanNumber..". Global "..chanNumber, chanNumber..". "..chanName
	
		if action == "YOU_CHANGED" then 																		-- to customName
			channelStatusNames[chanNumber] = customName

			if IsAddOnLoaded(WSConfig) then	-- dynamically update channel name in configuration
				wsCfg:updateChannelData(chanNumber, defaultName, customName)
				LibStub("AceConfigRegistry-3.0"):NotifyChange(WSConfig) 
			end
		elseif action == "YOU_LEFT"    then 																-- to defaultName
			channelStatusNames[chanNumber] = defaultName

			if IsAddOnLoaded(WSConfig) then	-- dynamically update channel name in configuration
				wsCfg:updateChannelData(chanNumber, customName, defaultName)
				LibStub("AceConfigRegistry-3.0"):NotifyChange(WSConfig) 
			end
		end	
	end
end

-- Function Pool ----------------------------- --
function WoWScribe:getUpdatedNumberedChannelNames(...)
	-- GetChannelList() outputs: 1, General, 2, Trade, 3, Local Defense, ... n, <chan name>
	-- 	i = channel number, i+1 = channel name
	for i=1, select("#", ...), 3 do
		local idx = tostring( select(i, ...) )
		channelStatusNames[idx] = idx..". "..select(i+1, ...)
	end
end

function WoWScribe:ChatFilter(channel, msg, _, _, channelName) -- channel, msg, author, language, channelName
	if (channel == "CHAT_MSG_CHANNEL" ) then channel = string.sub(channelName, 1, 1) end -- for numeric channels, gather only the number as the channel name (they may vary to user desire, nobody got time for that headache)

	if loggedChannels[channel] then -- Are we logging this channel?
		LoggingChat(true)
	else  													-- Nope, not logging this channel
		LoggingChat(false)
	end
	-- LoggingChat() is reset even if already set. The feeling is that this is a lower-overall cost than var tracking and conditional setting in a rapid msg environment.
	--               Naturally, for logging a single channel in a low traffic environment, this is absurdly costly. Feel free to send me the bill for the lost milliseconds.
end

function WoWScribe:Slash(msg)
	msg = string.lower(msg)
	local _, pos, command = string.find (msg, "(%w+)")

	if     command == "help"   then self:Help()
	elseif command == "start"  then self:enableFiltering()
	elseif command == "stop"   then self:disableFiltering()
	elseif command == "status" then self:Status()
	elseif command == "add" or 
				 command == "remove" then -- add/remove a channel
		local _, _, channel = string.find(msg, "(%w+)", pos+1)

		if channel == nil then self:Help()
		else
			local state = command=="add" and true or false

			if channel == "all" then 
				table.foreach(channelGroups, function(k, v)
					self:SetChannelGroup(k, state)					
				end)				
			elseif channelGroups[channel] then
				self:SetChannelGroup(channel, state)
			end

			self:Status()
		end

	-- ELSE --
	else 
		if select(5, GetAddOnInfo("WoWScribe_Config"))=="DEMAND_LOADED" then
			LoadAddOn("WoWScribe_Config")
			wsCfg:OpenConfig()
		else	
			self:Help()
		end
	end
end

function WoWScribe:getChannelGroups() return channelGroups end
function WoWScribe:getDisplayName(formalChannelName) return channelStatusNames[formalChannelName] end
function WoWScribe:Status()
	self:Message(" ")
	if WoWScribeDB.filteringEnabled then
		self:Message(WStagLine..": "..self:ColorPencil("running", "easygreen") )
	else
		self:Message(WStagLine..": "..self:ColorPencil("stopped", "easyred") )	
	end
    
	local str = ""
	table.foreach(WoWScribeDB.loggedChannelGroups, function(k,v) 
		if str=="" then str = channelStatusNames[ channelGroups[k][1] ] 
		else str = str..", "..channelStatusNames[ channelGroups[k][1] ] 
		end 
	end)	
	
	self:Message(self:ColorPencil("Logging: ", "sky")..(str=="" and "No Channels Being Logged" or str) )
end

function WoWScribe:Help()
	self:Message(" ")
	self:Message(self:ColorPencil("WoW Scribe Help", "wowscribe"))
	self:Message(" "..self:ColorPencil("/wscribe ", "sunshine")..self:ColorPencil("<command>", "cyan"))
	self:Message(" -- "..self:ColorPencil("start", "cyan").." | "..self:ColorPencil("stop", "cyan")..": Start or Stop Logging")
	self:Message(" -- "..self:ColorPencil("status", "cyan")..": Show Logging Status and logged channels")

	self:Message(" ")
	self:Message(" "..self:ColorPencil("/wscribe ", "sunshine")..self:ColorPencil("<add | remove> ", "orange_plus")..self:ColorPencil("<command>", "cyan"))
	self:Message(" -- "..self:ColorPencil("channelname", "cyan")..": guild, say, emotes, etc")
	self:Message(" -- "..self:ColorPencil("number", "cyan")..": number of global chat channel")
	self:Message(" -- "..self:ColorPencil("all", "cyan")..": adds/removes all channels")
	
	local str = "1-9"
	table.foreach(channelGroups, function(k,v) 
		if string.len(k) > 1 then -- avoids printing 1, 2, 3, 4...9
			str = str..", "..k
		end
	end)	

	self:Message(" ")
	self:Message(self:ColorPencil("Available Channels: ", "wowscribe")..str)
end

function WoWScribe:SetChannelGroup(channelGroup, state, startup)
	local chanTable = channelGroups[channelGroup]

	for i = 1,#chanTable do
		self:SetChannel(chanTable[i], state)
	end

	if not startup then
		if state then 
			WoWScribeDB.loggedChannelGroups[channelGroup] = true
			self:Message( "|cffff9900"..channelStatusNames[chanTable[1] ] .. "|r logging "..WoWScribe:ColorPencil("Enabled", "easygreen") )
		else
			if WoWScribeDB.loggedChannelGroups[channelGroup] then WoWScribeDB.loggedChannelGroups[channelGroup] = nil end
			self:Message( "|cffff9900"..channelStatusNames[chanTable[1] ] .. "|r logging "..WoWScribe:ColorPencil("Disabled", "easyred") )
		end
	end
			
	if IsAddOnLoaded(WSConfig) then LibStub("AceConfigRegistry-3.0"):NotifyChange(WSConfig) end
end

function WoWScribe:SetChannel(channel, value)
	if value then
		loggedChannels[channel] = true
	else
		if loggedChannels[channel] then loggedChannels[channel] = nil end
	end
end

-- Housekeeping ------------------------------ --
local Crayons = { ["wowscribe"] = "9c98ef", 	["cream"] = "deb887", ["easygreen"] = "00cc00",	["easyred"] = "cc0000",	["orange_plus"] = "ff9900", ["sky"]  = "87afde", ["cyan"] = "87d8de", ["sunshine"] = "ffff00",}
function WoWScribe:ColorPencil(value, sColor, eColor)

	local function Crayon(color_string) return "|cff"..Crayons[color_string] end

  sColor = sColor and Crayon(sColor) or ""
  eColor = sColor and ( eColor and Crayon(eColor) or "|r" ) or ""
	return sColor..value..eColor	
end

-- WoW's Chat Logging is ALL-or-NOTHING, not per-channel. In order to capture only certain channels a hard-gating method
-- must be employed. MessageEventFilters are pre-calls for logging, so the Logging-ON/Logging-OFF happens prior to the message
-- being processed.
-- The hard-gate needs a watched-channel to turn logging on and the next not-watched-channel message to turn logging off.
-- So all channels have to be filter-enabled so that no not-watched-channel messages make it into the log.
function WoWScribe:enableFiltering(silent)
	WoWScribeDB.filteringEnabled = true  
	for k, v in pairs(channelStatusNames) do ChatFrame_AddMessageEventFilter(   k, WoWScribe.ChatFilter) end
	ChatFrame_AddMessageEventFilter(   "CHAT_MSG_CHANNEL", WoWScribe.ChatFilter) -- numbered channels
	if not silent then self:Message(WStagLine..": "..self:ColorPencil("started", "easygreen") ) end

	if IsAddOnLoaded(WSConfig) then LibStub("AceConfigRegistry-3.0"):NotifyChange(WSConfig) end
	if not silent and IsAddOnLoaded(WSDataBroker) then wsDB:updateLDB() end
end
function WoWScribe:disableFiltering()
	LoggingChat(false) -- absolute terminus

	WoWScribeDB.filteringEnabled = false
	for k, v in pairs(channelStatusNames) do ChatFrame_RemoveMessageEventFilter(k, WoWScribe.ChatFilter) end
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_CHANNEL", WoWScribe.ChatFilter) -- numbered channels
	self:Message(WStagLine..": "..self:ColorPencil("stopped", "easyred")   ); 

	if IsAddOnLoaded(WSConfig) then LibStub("AceConfigRegistry-3.0"):NotifyChange(WSConfig) end
	if IsAddOnLoaded(WSDataBroker) then wsDB:updateLDB() end
end

function WoWScribe:Message(msg) DEFAULT_CHAT_FRAME:AddMessage(msg, 1, 1, .8) end

SLASH_WOWSCRIBE1 = "/wscribe";
SLASH_WOWSCRIBE2 = "/ws";
SlashCmdList["WOWSCRIBE"] = function(msg) WoWScribe:Slash(msg) end
