--[[----------------------------------------------------------------------]]--
--[[--LostTreasures_Config.lua											--]]--
--[[--See README.html for more info										--]]--
--[[----------------------------------------------------------------------]]--
local options = {
	type = "group", 
	name = _LT.NAME.." - v".._LT.VERSION, 
	args = {}, 
}

options.args.general = {
	type = "group", 
	name = "General Settings", 
	args = {
		generalSettings = {
			type = "group", 
			order = 1, 
			name = "General Settings", 
			guiInline = true, 
			args = {
				enableAddon = {
					type = "toggle", 
					order = 1, 
					name = "Enable LostTreasures", 
					desc = "Toggles LostTreasures on or off.", 
					get = function()
						return _LT.sv.ENABLED
					end, 
					set = function(_, value)
						_LT.sv.ENABLED = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
--[[
				enableDebug = {
					type = "toggle", 
					order = 2, 
					name = "Enable Debug", 
					desc = "This will show debug messages and change the way waypoints are displayed.", 
					get = function()
						return _LT.sv.DEBUG
					end, 
					set = function(_, value)
						_LT.sv.DEBUG = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
]]
				blockMiningPick = {
					type = "toggle", 
					order = 3, 
					name = "Hide \"Ancient Pandaren Mining Pick\" Waypoint", 
					desc = "This will allow you to hide the \"Ancient Pandaren Mining Pick\" from your waypoints.\n\nWill be removed once Blizzard fixes the quest flag.", 
					get = function()
						return _LT.sv.BLOCK_MINING_PICK
					end, 
					set = function(_, value)
						_LT.sv.BLOCK_MINING_PICK = value
						if _LT.sv.BLOCK_MINING_PICK then
							LostTreasures:DoWaypoints({removeAll = false, addAll = false, removePoint = 31399})
						else
							LostTreasures:DoWaypoints({removeAll = false, addAll = false, addPoint = 31399})
						end
					end, 
				}, 
				generalText = {
					type = "description", 
					order = 10, 
					name = "\n\nThanks for giving LostTreasures a try, now lets find those pesky treasures! ..but first..\n\n    - Open a ticket when you find a bug! This will allow me to fix them for everyone!\n\n    - Give me your suggestions so that LostTreasures can be even better!\n\n    - Spread the word about LostTreasures!\n\n\n\nLostTreasures @ Curse\n    http://www.curse.com/addons/wow/losttreasures\n\nLostTreasures @ CurseForge\n    http://wow.curseforge.com/addons/losttreasures/\n\nFrequently Asked Question\n    http://wow.curseforge.com/addons/losttreasures/pages/faq/\n\nSubmit a Bug or Suggestion\n    http://wow.curseforge.com/addons/losttreasures/tickets/\n\nMessage the author @ CurseForge\n    http://www.curseforge.com/profiles/looktokid/\n", 
					width = "full", 
				}, 
			}, 
		}, 
		resetWaypoints = {
			type = "execute", 
			order = 20, 
			name = "Clear Session", 
			desc = "Reset all waypoints so you can begin a new session.\n\nThe command to reset waypoints is\n|CFFCC0000/lt reset", 
			func = function()
				LostTreasures:ConfirmDialog({
					text = "Do you wish to clear this session?", 
					btn1 = "Yes", 
					btn2 = "No", 
					func1 = function()
						LostTreasures:DoWaypoints({clearBlocked = true})
					end, 
				})
			end, 
		}, 
		reloadUI = {
			type = "execute", 
			order = 21, 
			name = "Reload UI", 
			desc = "Reloads the Blizzard UI.", 
			func = function()
				LostTreasures:ConfirmDialog({
					text = "Do you wish to reloading the Blizzard UI?", 
					btn1 = "Yes", 
					btn2 = "No", 
					func1 = function()
						ReloadUI()
					end, 
				})
			end, 
		}, 
	}, 
}

options.args.navigation = {
	type = "group", 
	name = "Navigation Settings", 
	args = {
		navigationSettings = {
			type = "group", 
			order = 1, 
			name = "Navigation Settings - Configure TomTom for LostTreasures", 
			guiInline = true, 
			args = {
				useMinimap = {
					type = "toggle", 
					order = 1, 
					name = "Use Minimap", 
					desc = "This will mark treasure locations on the minimap.", 
					get = function()
						return _LT.sv.USE_MINIMAP
					end, 
					set = function(_, value)
						_LT.sv.USE_MINIMAP = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
				useWorldMap = {
					type = "toggle", 
					order = 2, 
					name = "Use World Map", 
					desc = "This will mark treasure locations on the world map.", 
					get = function()
						return _LT.sv.USE_WORLDMAP
					end, 
					set = function(_, value)
						_LT.sv.USE_WORLDMAP = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
				showAll = {
					type = "toggle", 
					order = 3, 
					name = "Show Collected Treasures", 
					desc = "This will mark treasures that you have previously collected. Useful if you want to help your friends hunt down treasures you have already found!", 
					get = function()
						return _LT.sv.SHOW_ALL_WAYPOINTS
					end, 
					set = function(_, value)
						_LT.sv.SHOW_ALL_WAYPOINTS = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
				useArrow = {
					type = "toggle", 
					order = 4, 
					name = "Waypoint Arrow", 
					desc = "This will have the TomTom arrow point to the closest waypoint.\n\nNote: This will change the default setting for TomTom's \"Enable floating waypoint arrow\"!\n\nYou can change this setting back here or in TomTom's options menu.\nGame Options (Esc) > Interface > AddOns > TomTom > Waypoint Arrow", 
					width = "double", 
					get = function()
						return TomTom.profile.arrow.enable
					end, 
					set = function(_, value)
						TomTom.profile.arrow.enable = value
						TomTom:ShowHideCrazyArrow()
						LostTreasures:DoWaypoints({removeAll = false, addAll = false})
					end, 
				}, 
				showType = {
					type = "select", 
					order = 5, 
					name = "Which treasures to hunt?", 
					desc = "Below you will find a list that tells which achievements are in which category.\n\n|CFFFFD100All Treasures (Default)\n|CFFFFFFFF    - Treasure of Pandaria\n    - Fortune of Pandaria\n    - Bounty of Pandaria\n    - Riches of Pandaria\n    - Lost and Found\n    - Finders Keepers\n    - One Man's Trash...\n    - Is Another Man's Treasure\n\n|CFFFFD100Treasure of Pandaria\n(Vendor Trash)\n|CFFFFFFFF    - Treasure of Pandaria\n    - Fortune of Pandaria\n    - Bounty of Pandaria\n    - Riches of Pandaria\n\n|CFFFFD100Lost Treasures of Pandaria\n(Title Achievements)\n|CFFFFFFFF    - Lost and Found\n    - Finders Keepers\n    - One Man's Trash...\n    - Is Another Man's Treasure", 
					values = {
						[1] = "All Treasures (Default)", 
						[2] = "Treasure of Pandaria", 
						[3] = "Lost Treasures of Pandaria", 
					}, 
					get = function()
						return _LT.sv.SHOW_WAYPOINT_TYPE
					end, 
					set = function(_, value)
						_LT.sv.SHOW_WAYPOINT_TYPE = value
						LostTreasures:DoWaypoints()
					end, 
				}, 
				arrowSettings = {
					type = "group", 
					order = 6, 
					name = "Arrow Settings", 
					disabled = function() return not TomTom.profile.arrow.enable end, 
					guiInline = true, 
					args = {
						treasuresFirst = {
							type = "toggle", 
							order = 2, 
							name = "Treasures First", 
							desc = "This will have the TomTom arrow point to the closest treasure location (while one exists) before other waypoints.\n\nThis will also allow detailed information about waypoints in your chat box.", 
							get = function()
								return _LT.sv.TREASURE_FIRST
							end, 
							set = function(_, value)
								_LT.sv.TREASURE_FIRST = value
								LostTreasures:DoWaypoints({removeAll = false, addAll = false})
							end, 
						}, 
						printInfo = {
							type = "toggle", 
							order = 3, 
							name = "Information In Chat", 
							desc = "This will show detailed information about waypoints in your chat box.\n\n\"Treasures First\" must be enabled for this to work!", 
							disabled = function()
								if not TomTom.profile.arrow.enable then
									return not TomTom.profile.arrow.enable
								else
									return not _LT.sv.TREASURE_FIRST
								end
							end, 
							get = function()
								return _LT.sv.SHOW_DETAILED_INFO
							end, 
							set = function(_, value)
								_LT.sv.SHOW_DETAILED_INFO = value
								LostTreasures:DoWaypoints({removeAll = false, addAll = false})
							end, 
						}, 
						outsideZone = {
							type = "toggle", 
							order = 4, 
							name = "Allow closest waypoint to be outside current zone", 
							desc = "This will allow the TomTom arrow to point to waypoints outside of your current zone.\n\nNote: This will change the default setting for TomTom!\n\nYou can change this setting back here or in TomTom's options menu.\nGame Options (Esc) > Interface > AddOns > TomTom > Waypoint Arrow", 
							width = "full", 
							get = function()
								return TomTom.profile.arrow.closestusecontinent
							end, 
							set = function(_, value)
								TomTom.profile.arrow.closestusecontinent = value
								LostTreasures:DoWaypoints({removeAll = false, addAll = false})
							end, 
						}, 
					}, 
				}, 
				waypointSettings = {
					type = "group", 
					order = 7, 
					name = "Waypoint Settings", 
					guiInline = true, 
					args = {
						persistentWaypoints = {
							type = "toggle", 
							order = 1, 
							name = "Persistent Waypoints", 
							desc = "This will make treasure locations persistent.\n\nSessions are disabled while this is enabled.", 
							get = function()
								return _LT.sv.PERSISTENT_WAYPOINTS
							end, 
							set = function(_, value)
								_LT.sv.PERSISTENT_WAYPOINTS = value
								LostTreasures:DoWaypoints()
							end, 
						}, 
						useSessions = {
							type = "toggle", 
							order = 2, 
							name = "Use Sessions", 
							desc = "This will keep track of treasures you have looked for in previous game sessions.\n\ne.g. After you have logged out or reloaded the Blizzard UI.\n\nWaypoint Clear Distance must be greater than 0 (enabled) in order for this to function correctly!\n\nTo clear the session, use the \"Clear Session\" button below or the command |CFFCC0000/lt reset", 
							disabled = function() return _LT.sv.PERSISTENT_WAYPOINTS end, 
							get = function()
								return _LT.sv.USE_SESSIONS
							end, 
							set = function(_, value)
								_LT.sv.USE_SESSIONS = value
								LostTreasures:DoWaypoints()
							end, 
						}, 
						clearDistance = {
							type = "range", 
							order = 3, 
							name = "Clear Waypoint Distance", 
							desc = "Treasure locations can automatically be removed when you reach them. This slider will allow you to customize the distance in yards that signals your \"arrival\" at the waypoint.\n\nThis is different than TomTom's Clear Waypoint Distance!\n\n|CFFFFD100Off - 0\nDefault - 5\nMax - 25", 
							disabled = function() return _LT.sv.PERSISTENT_WAYPOINTS end, 
							width = "double", 
							min = 0, max = 25, step = 1, 
							get = function()
								return _LT.sv.CLEARDISTANCE
							end, 
							set = function(_, value)
								_LT.sv.CLEARDISTANCE = value
								LostTreasures:DoWaypoints()
							end, 
						}, 
					}, 
				}, 
			}, 
		}, 
		resetWaypoints = {
			type = "execute", 
			order = 20, 
			name = "Clear Session", 
			desc = "Reset all waypoints so you can begin a new session.\n\nThe command to reset waypoints is\n|CFFCC0000/lt reset", 
			func = function()
				LostTreasures:ConfirmDialog({
					text = "Do you wish to clear this session?", 
					btn1 = "Yes", 
					btn2 = "No", 
					func1 = function()
						LostTreasures:DoWaypoints({clearBlocked = true})
					end, 
				})
			end, 
		}, 
		reloadUI = {
			type = "execute", 
			order = 21, 
			name = "Reload UI", 
			desc = "Reloads the Blizzard UI.", 
			func = function()
				LostTreasures:ConfirmDialog({
					text = "Do you wish to reloading the Blizzard UI?", 
					btn1 = "Yes", 
					btn2 = "No", 
					func1 = function()
						ReloadUI()
					end, 
				})
			end, 
		}, 
	}, 
}

AceConfigRegistry = LibStub("AceConfigRegistry-3.0")
AceConfigDialog = LibStub("AceConfigDialog-3.0")

AceConfigRegistry:RegisterOptionsTable(_LT.NAME, options)

local frame = {}
frame.general = AceConfigDialog:AddToBlizOptions(_LT.NAME, "LostTreasures", nil, "general")
frame.general.default = function() 
	LostTreasures:ConfirmDialog({
		text = "Resetting to defaults will cause the UI to reload and your session data to be lost.\n\nDo you wish to continue?", 
		func1 = function()
			LostTreasures.db:ResetDB()
			ReloadUI()
		end, 
	})
end
frame.navigation = AceConfigDialog:AddToBlizOptions(_LT.NAME, "Navigation Settings", "LostTreasures", "navigation")
frame.navigation.default = function() 
	LostTreasures:ConfirmDialog({
		text = "Resetting to defaults will cause the UI to reload and your session data to be lost.\n\nDo you wish to continue?", 
		func1 = function()
			LostTreasures.db:ResetDB()
			ReloadUI()
		end, 
	})
end