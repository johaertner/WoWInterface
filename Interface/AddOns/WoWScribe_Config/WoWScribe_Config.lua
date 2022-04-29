-- ------------------------------------------------------------------------- --
-- Project: WoWScribe Configuration - Gui Configuration for for WoWScribe
-- Author:  VincentSDSH				
-- Version: 1.0
-- ------------------------------------------------------------------------- --

local AddonName, AddonTable = ...; wsCfg = AddonTable
local WS, WSdb = "WoWScribe", "WoWScribe_DataBroker"
local function mkLink(path, size) return ("\124T"..path..":%d:%d:1:0\124t"):format(size, size) end

-- Function Pool ----------------------------- --
function wsCfg:addChannelConfig(placement, name_Display, name_ChannelGroup)
	return {
			order = placement,
			type = "toggle",
			name = WoWScribe:ColorPencil(name_Display, "cream"),
			desc = "Toggle Logging for: "..name_Display,
			get = function() return WoWScribeDB.loggedChannelGroups[ name_ChannelGroup ] end,			
			set = function(i, v)
				if v then 
					WoWScribe:SetChannelGroup(name_ChannelGroup, true)
				else
					WoWScribe:SetChannelGroup(name_ChannelGroup, false)
				end							
			end,
		}
end

	-- for Dynamic name rebuilding for newly joined/left numbered channels
function wsCfg:updateChannelData(idx, oldName, newName) 
	local stub = blizzy_Opts.args.Channels.args	
	if stub[oldName] then
		local placement = stub[oldName].order

		stub[oldName] = nil
		stub[newName] = wsCfg:addChannelConfig(placement, newName, idx)	
	end
end

function wsCfg:OpenConfig()
	-- Double call to avoid the still-bugged IOF addon lookup
	InterfaceOptionsFrame_OpenToCategory(wsCfg.optHandle)
	InterfaceOptionsFrame_OpenToCategory(wsCfg.optHandle)
end

-- Build ------------------------------------- --
do
	blizzy_Opts = {		
		type = "group",
		order = 10,
		name = mkLink("Interface/Addons/"..AddonName.."/icons/icon_Logging.blp", 22).." "..WS,
		args = {
			introspacer = { order = 1, type = "description", name = "  "}, 
			intro = {
				order = 2,
				type = "description",
				fontSize = "medium",
				name = WoWScribe:ColorPencil("Log only the channels you want, the way Blizzard DIDN'T intend.", "cream"),
			},

-- libDBIcon : Added conditionally

-- Help
			Help = {
				type = "group",
				order = 20,
				name = "Help",
				inline = true,
				args = {			
					header1 = { order = 1, type = "description", fontSize = "medium", name = WoWScribe:ColorPencil("Chat File Location", "wowscribe") },					
					FileLoc = {
						order = 2,
						type = "description",
						fontSize = "medium",
						name = WoWScribe:ColorPencil("Chat Log file is found in <WoW_Directory>/logs/WoWChatLog.txt", "cream"),					
					},

					helpspacer4 = { order = 9, type = "description", name = "  "}, 
					header2 = { order = 10, type = "description", fontSize = "medium", name = WoWScribe:ColorPencil("Command Line Options", "wowscribe" )},
					cmdLine1 = { order = 11, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("/wscribe ", "sunshine")..WoWScribe:ColorPencil("<command>", "cyan"),					
					},
					cmdLine2 = { order = 12, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("start", "cyan", "cream").." | "..WoWScribe:ColorPencil("stop", "cyan", "cream")..": Start or Stop Logging",					
					},
					cmdLine3 = { order = 13, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("status", "cyan", "cream")..": Show Logging Status and logged channels",					
					},
					
					helpspacer2 = { order = 19, type = "description", name = "  "}, 
					cmdLine4 = { order = 20, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("/wscribe ", "sunshine")..WoWScribe:ColorPencil("<add | remove> ", "orange_plus")..WoWScribe:ColorPencil("<command>", "cyan"),					
					},
					cmdLine5 = { order = 21, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("channelname", "cyan", "cream")..": guild, say, emotes, etc",					
					},
					cmdLine6 = { order = 22, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("number", "cyan", "cream")..": number of global chat channel",					
					},
					cmdLine7 = { order = 23, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("all", "cyan", "cream")..": adds/removes all channels",					
					},

					helpspacer3 = { order = 29, type = "description", name = "  "},
					cmdLine8 = { order = 30, type = "description", fontSize = "medium",
						name = WoWScribe:ColorPencil("Available Channels: ", "wowscribe"),					
					},
					cmdLine9 = { order = 31, type = "description", fontSize = "medium",
						name = function()
							local channelGroups = WoWScribe:getChannelGroups()
							local str = "1-9"
								table.foreach(channelGroups, function(k,v) 
									if string.len(k) > 1 then -- avoids printing 1, 2, 3, 4...9
										str = str..", "..k
									end
								end)
							return WoWScribe:ColorPencil(str, "cream")
						end,					
					},



--[[


	


	
	local str = "1-9"
	table.foreach(channelGroups, function(k,v) 
		if string.len(k) > 1 then -- avoids printing 1, 2, 3, 4...9
			str = str..", "..k
		end
	end)	

	self:Message(" ")
	self:Message(self:ColorPencil("Available Channels: ", "wowscribe")..str)
--]]

				
				}							
			},	

-- Logging
			Logging = {
				type = "group",
				order = 30,
				name = "Logging",
				inline = true,
				args = {	
					toggleFiltering = {
						order = 1,
						type = "toggle",
						name = WoWScribe:ColorPencil("Writing to WoWChatLog.txt", "cream"),
						desc = "Toggle writing to the WoW Chat Log",
						width = "full",
						get = function() return WoWScribeDB.filteringEnabled end,
						set = function(i, v)
							if v then 
								 WoWScribe:enableFiltering()
							else
								WoWScribe:disableFiltering() 
							end							
						end,
					},
				},
			},
			
-- Channels
			Channels = {
				type = "group",
				order = 50,
				name = "Channels",
				inline = true,
				args = {}, -- : Added programatically 
			},
		},
	}	

	local stub = blizzy_Opts.args.Channels.args
	local getChannelGroups = WoWScribe:getChannelGroups()
	local placement = 0	
	
	for name_ChannelGroup, table_formalChannelNames in pairs(getChannelGroups) do
		local formalChannelName = table_formalChannelNames[1]
		local name_Display = WoWScribe:getDisplayName( formalChannelName )
		placement = placement + 10
	
		stub[name_Display] = wsCfg:addChannelConfig(placement, name_Display, name_ChannelGroup)		
	end

	if IsAddOnLoaded(WSdb) then
		blizzy_Opts.args.libDBIcon = {
			type = "group",
			order = 10,
			name = "",
			inline = true,
			args = {	
				DBIcon = {
					order = 1,
					type = "toggle",
					name = WoWScribe:ColorPencil("Hide Minimap Icon", "cream"),
					desc = "Hide Minimap Icon",
					width = "full",
					get = function() return wsDBcfg.DBIconTable.hide end,
					set = function(i, v)
						local MM = wsDBcfg.DBIconTable
						MM.hide = v
						if MM.hide then LibStub("LibDBIcon-1.0"):Hide(WSdb) 
						else 						LibStub("LibDBIcon-1.0"):Show(WSdb) 
						end
					end,
				},
			},
		}
	end

	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable(AddonName, blizzy_Opts)
	wsCfg.optHandle = LibStub("AceConfigDialog-3.0"):AddToBlizOptions(AddonName, WS)
end
