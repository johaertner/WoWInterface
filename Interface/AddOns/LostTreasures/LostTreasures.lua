--[[----------------------------------------------------------------------]]--
--[[--LostTreasures.lua													--]]--
--[[--See README.html for more info										--]]--
--[[----------------------------------------------------------------------]]--
LostTreasures = LibStub("AceAddon-3.0"):NewAddon("LostTreasures", "AceConsole-3.0", "AceEvent-3.0")
LibMapData = LibStub("LibMapData-1.0")

--[[----------------------------------------------------------------------]]--
--[[--Event Handlers													--]]--
--[[----------------------------------------------------------------------]]--
function LostTreasures:PLAYER_LOGIN(event)
	LostTreasures:UnregisterEvent(event)
	LostTreasures:DoWaypoints({removeAll = false})
end
LostTreasures:RegisterEvent("PLAYER_LOGIN")

--[[----------------------------------------------------------------------]]--
--[[--Other Functions													--]]--
--[[----------------------------------------------------------------------]]--
function LostTreasures:printd(msg)
	if _LT.sv.DEBUG then
		print("<LTdebug> "..msg)
	end
end

function LostTreasures:GetTitle(waypoint)
	if waypoint.cave then
		return waypoint.title.."\nEnter the cave at ("..waypoint.coords[1]..", "..waypoint.coords[2]..").\n"..waypoint.note
	else
		return waypoint.title.."\n"..waypoint.note
	end
end

function LostTreasures:UpdateVars()
	if _LT.sv.VERSION < 3.02 then
		if _LT.sv.CLEARDISTANCE == 3 then
			_LT.sv.CLEARDISTANCE = 5
		end
	end
	if _LT.sv.VERSION < 3.03 then
		if _LT.sv.DEBUG then
			_LT.sv.DEBUG = false
		end
	end
end

function LostTreasures:RefreshConfig()
	AceConfigRegistry:NotifyChange(_LT.NAME)
end

function LostTreasures:ConfirmDialog(opts)
	if opts.btn1 == nil then opts.btn1 = "Accept" end
	if opts.btn2 == nil then opts.btn2 = "Cancel" end
	if opts.func2 == nil then
		opts.func2 = function() -- Optional function to call when btn2 is pushed.
			LostTreasures:printd("btn2")
		end
	end
	if opts.timeout == nil then opts.timeout = 30 end
	StaticPopupDialogs["CONFIRM_DIALOG"] = {
		text = opts.text, 
		button1 = opts.btn1, 
		button2 = opts.btn2, 
		OnAccept = opts.func1, 
		OnCancel = opts.func2, 
		timeout = opts.timeout, 
		whileDead = 1, 
		hideOnEscape = 1, 
	}
	StaticPopup_Show("CONFIRM_DIALOG")
end

--[[----------------------------------------------------------------------]]--
--[[--Core Functions													--]]--
--[[----------------------------------------------------------------------]]--
function LostTreasures:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("LostTreasuresDB", _LT.defaults)
	self.db.RegisterCallback(self, "OnProfileChanged", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileCopied", "RefreshConfig")
	self.db.RegisterCallback(self, "OnProfileReset", "RefreshConfig")
	_LT.sv = LostTreasures.db.char
	
	_LT.sv.VERSION = tonumber(_LT.sv.VERSION)
	if _LT.sv.VERSION ~= _LT.VERSION then
		LostTreasures:UpdateVars()
		print("LostTreasures successfully updated from ".._LT.sv.VERSION.." to ".._LT.VERSION.."!")
		_LT.sv.VERSION = _LT.VERSION
	end
	
	self:RegisterChatCommand("lt", "HandleCommand")
	self:RegisterChatCommand("losttreasures", "HandleCommand")
end

function LostTreasures:HandleCommand(args)
	local cmd, input = self:GetArgs(args, 2)
	if cmd == "reset" then
		LostTreasures:ConfirmDialog({
			text = "Do you wish to reset LostTreasures?\nNote: This will clear the current session!", 
			btn1 = "Yes", 
			btn2 = "No", 
			func1 = function()
				LostTreasures:DoWaypoints({clearBlocked = true})
			end, 
		})
	elseif cmd == "removeall" then
		LostTreasures:DoWaypoints({addAll = false})
		print("Removed all waypoints.")
	elseif cmd == "remove" then
		if input and input ~= "" then
			LostTreasures:DoWaypoints({removeAll = false, addAll = false, removePoint = input})
			print("Removed waypoint. QuestId: "..input)
		end
	elseif cmd == "add" then
		if input and input ~= "" then
			LostTreasures:DoWaypoints({removeAll = false, addAll = false, addPoint = input})
			print("Added waypoint. QuestId: "..input)
		end
	else
		InterfaceOptionsFrame_OpenToCategory(_LT.NAME)
	end
end

_LT = {
	NAME = GetAddOnMetadata(..., "Title"), 
	VERSION = tonumber(GetAddOnMetadata(..., "Version")), 
	
	defaults = {
		char = {
			VERSION = 0, 
			
			-- SETTINGS --
			ENABLED = true, 
			DEBUG = false, 
			BLOCK_MINING_PICK = false, 
			USE_MINIMAP = true, 
			USE_WORLDMAP = true, 
			SHOW_ALL_WAYPOINTS = false, 
			USE_SESSIONS = true, 
			SHOW_WAYPOINT_TYPE = 1, -- 1 = all, 2 = greys, 3 = rares
			TREASURE_FIRST = true, 
			SHOW_DETAILED_INFO = true, 
			CAVES_FIRST = true, 
			PERSISTENT_WAYPOINTS = false, 
			CLEARDISTANCE = 5, 
			-- END SETTINGS --
			
			BLOCKED_WAYPOINTS = {}, -- Allows us to save which points have been checked between sessions.
		}, 
	}, 
}