
ElvDB = {
	["profileKeys"] = {
		["Wigbald - Nathrezim"] = "Heal / DD",
		["Kudgy - Anetheron"] = "Giselmund - Nathrezim",
		["Rigobert - Nathrezim"] = "Heal / DD",
		["Minnegard - Nathrezim"] = "Heal / DD",
		["Kudgy - Malfurion"] = "Kudgy - Malfurion",
		["Adelgunde - Nathrezim"] = "Heal / DD",
		["Friedebrecht - Nathrezim"] = "Heal / DD",
		["Guntram - Nathrezim"] = "Heal / DD",
		["Kudgy - Azshara"] = "Kudgy - Azshara",
		["Warglgunde - Nathrezim"] = "Heal / DD",
	},
	["gold"] = {
		["Azshara"] = {
			["Kudgy"] = 0,
		},
		["Malfurion"] = {
			["Kudgy"] = 100000,
		},
		["Anetheron"] = {
			["Kudgy"] = 33225665,
		},
		["Nathrezim"] = {
			["Friedebrecht"] = 147814471,
			["Wigbald"] = 249880746,
			["Guntram"] = 24877379,
			["Adelgunde"] = 8497727076,
			["Rigobert"] = 201970533,
			["Minnegard"] = 207284258,
			["Warglgunde"] = 7047967,
		},
	},
	["namespaces"] = {
		["LibDualSpec-1.0"] = {
			["char"] = {
				["Wigbald - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Heal / DD", -- [3]
					["enabled"] = true,
				},
				["Adelgunde - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Heal / DD", -- [3]
					["enabled"] = true,
				},
				["Rigobert - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Tank", -- [3]
					"Heal / DD", -- [4]
					["enabled"] = true,
				},
				["Warglgunde - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Heal / DD", -- [3]
					["enabled"] = true,
				},
				["Friedebrecht - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Heal / DD", -- [3]
					["enabled"] = true,
				},
				["Guntram - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Tank", -- [2]
					["enabled"] = true,
				},
				["Minnegard - Nathrezim"] = {
					"Heal / DD", -- [1]
					"Heal / DD", -- [2]
					"Heal / DD", -- [3]
					["enabled"] = true,
				},
			},
		},
	},
	["global"] = {
		["nameplate"] = {
			["filters"] = {
				["Boss"] = {
				},
			},
		},
		["uiScale"] = "1.0",
		["unitframe"] = {
			["aurafilters"] = {
				["Whitelist"] = {
					["spells"] = {
						[190456] = {
							["enable"] = true,
							["priority"] = 0,
						},
						[2565] = {
							["enable"] = true,
							["priority"] = 0,
						},
					},
				},
			},
			["ChannelTicks"] = {
				["Sühne"] = 3,
			},
		},
		["userInformedNewChanges1"] = true,
	},
	["profiles"] = {
		["Tank"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 7,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["r"] = 0.78,
					["g"] = 0.61,
					["b"] = 0.43,
				},
				["loginmessage"] = false,
				["topPanel"] = false,
				["talkingHeadFrameScale"] = 0.7,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,250",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-225,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,396",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,395",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,331,350",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,199,285",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,0,-79",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,615,-242",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,25",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,70",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,250,25",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-200,291",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,70",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,176,-81",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,155",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,237",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,140",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,202,306",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,275",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-351",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-172",
				["ElvUF_TargetTargetMover"] = "TOP,ElvUIParent,TOP,230,-80",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["health"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["b"] = 0.309803921568627,
					},
					["healthclass"] = true,
				},
				["statusbar"] = "Blizzard Raid Bar",
				["font"] = "Arial Narrow",
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["verticalSpacing"] = 9,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["target"] = {
						["height"] = 66,
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
					},
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 20,
						},
						["height"] = 66,
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["aurabar"] = {
							["maxDuration"] = 25,
							["useFilter"] = "Whitelist",
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["microbar"] = {
					["enabled"] = true,
				},
				["bar4"] = {
					["backdrop"] = false,
					["point"] = "TOPLEFT",
					["buttonsize"] = 36,
				},
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["units"] = {
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
								["format"] = "CURRENT_MAX",
							},
						},
						["buffs"] = {
							["numAuras"] = 8,
							["baseHeight"] = 26,
						},
						["healthbar"] = {
							["text"] = {
								["enable"] = true,
								["format"] = "CURRENT_MAX",
							},
						},
					},
				},
			},
			["cooldown"] = {
				["threshold"] = 4,
			},
			["thinBorderColorSet"] = true,
		},
		["Nathrezim"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,456",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,372",
			},
		},
		["Rigobert - Nathrezim"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 10,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["talkingHeadFrameScale"] = 0.7,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["b"] = 0.04,
					["g"] = 0.49,
					["r"] = 1,
				},
				["loginmessage"] = false,
				["vendorGrays"] = true,
				["topPanel"] = false,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,290",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,75,320",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-75,320",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,331,350",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-305,288",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-579,350",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,615,-242",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,80",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-579,284",
				["AltPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,599,298",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,176,-81",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,237",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-304,312",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,350",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,622,-372",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
			},
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["r"] = 0.309803921568627,
					},
					["healthclass"] = true,
				},
				["font"] = "Arial Narrow",
				["statusbar"] = "Blizzard Raid Bar",
				["units"] = {
					["player"] = {
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["target"] = {
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 40,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["buttonsize"] = 36,
					["point"] = "TOPLEFT",
					["backdrop"] = false,
				},
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["cooldown"] = {
				["threshold"] = 4,
			},
			["nameplates"] = {
				["units"] = {
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
		},
		["Minnegard - Nathrezim"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Friedebrecht - Nathrezim"] = {
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["DRUID"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
			},
		},
		["Guntram - Nathrezim"] = {
			["currentTutorial"] = 1,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
		},
		["Wigbald - Nathrezim"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 3,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["b"] = 0.43,
					["g"] = 0.61,
					["r"] = 0.78,
				},
				["loginmessage"] = false,
				["vendorGrays"] = true,
				["talkingHeadFrameScale"] = 0.7,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,261",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-225,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,70,365",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-70,365",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,331,350",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,199,285",
				["ElvUF_TargetMover"] = "TOP,ElvUIParent,TOP,0,-53",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,615,-242",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,80",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvUF_TargetTargetMover"] = "TOP,ElvUIParent,TOP,70,-136",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-200,291",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,176,-81",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,237",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,167",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,202,306",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,288",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,622,-372",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-172",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
			},
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["r"] = 0.309803921568627,
					},
					["healthclass"] = true,
				},
				["statusbar"] = "Blizzard Raid Bar",
				["font"] = "Arial Narrow",
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
						["verticalSpacing"] = 9,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["target"] = {
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["enable"] = true,
						},
					},
					["player"] = {
						["aurabar"] = {
							["maxDuration"] = 25,
						},
						["buffs"] = {
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 20,
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["point"] = "TOPLEFT",
					["backdrop"] = false,
					["buttonsize"] = 36,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["cooldown"] = {
				["threshold"] = 4,
			},
			["nameplates"] = {
				["units"] = {
					["PLAYER"] = {
						["powerbar"] = {
							["text"] = {
								["enable"] = true,
								["format"] = "CURRENT_MAX",
							},
						},
						["buffs"] = {
							["baseHeight"] = 26,
							["numAuras"] = 8,
						},
						["healthbar"] = {
							["text"] = {
								["enable"] = true,
								["format"] = "CURRENT_MAX",
							},
						},
					},
				},
			},
		},
		["Minimalistic"] = {
			["currentTutorial"] = 2,
			["general"] = {
				["fontSize"] = 11,
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.80000001192093,
					["b"] = 0.058823529411765,
					["g"] = 0.058823529411765,
					["r"] = 0.058823529411765,
				},
				["reputation"] = {
					["orientation"] = "HORIZONTAL",
					["textFormat"] = "PERCENT",
					["height"] = 16,
					["width"] = 200,
				},
				["bordercolor"] = {
					["b"] = 0.30588235294118,
					["g"] = 0.30588235294118,
					["r"] = 0.30588235294118,
				},
				["valuecolor"] = {
					["a"] = 1,
					["b"] = 1,
					["g"] = 1,
					["r"] = 1,
				},
				["font"] = "Expressway",
			},
			["movers"] = {
				["PetAB"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-428",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,51,120",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,50",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,250,-50",
				["BossButton"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-117,-298",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,249,-216",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,827",
				["MicrobarMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,-52",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,51,-87",
				["ElvUF_TargetTargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,143",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,392,1073",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,0,50",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,0,90",
				["ElvAB_4"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-394",
				["AltPowerBarMover"] = "TOP,ElvUIParent,TOP,0,-186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,305,50",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,-305,50",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,51,937",
				["ReputationBarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-228",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-122,-393",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,50,232",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,1150",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,133",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvAB_6"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-488,330",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-50,50",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,50,995",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,200",
				["ElvUF_PlayerMover"] = "BOTTOM,ElvUIParent,BOTTOM,-230,140",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,463,50",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,184,773",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-50",
				["ElvUF_TargetMover"] = "BOTTOM,ElvUIParent,BOTTOM,230,140",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-50,-50",
			},
			["bags"] = {
				["countFontSize"] = 9,
				["itemLevelFontSize"] = 9,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["chatHistory"] = false,
				["fontSize"] = 11,
				["tabFont"] = "Expressway",
				["fadeUndockedTabs"] = false,
				["font"] = "Expressway",
				["fadeTabsNoBackdrop"] = false,
				["editBoxPosition"] = "ABOVE_CHAT",
				["tapFontSize"] = 11,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["nameplates"] = {
				["filters"] = {
				},
			},
			["unitframe"] = {
				["fontSize"] = 9,
				["fontOutline"] = "THICKOUTLINE",
				["font"] = "Expressway",
				["smoothbars"] = true,
				["statusbar"] = "ElvUI Blank",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettarget"] = {
						["infoPanel"] = {
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = false,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["yOffset"] = -2,
							["position"] = "TOP",
						},
						["height"] = 50,
						["width"] = 122,
					},
					["target"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["iconSize"] = 54,
							["iconAttached"] = false,
						},
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["height"] = 80,
						["buffs"] = {
							["perrow"] = 7,
						},
						["smartAuraPosition"] = "DEBUFFS_ON_BUFFS",
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["hideonnpc"] = false,
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
					},
					["raid"] = {
						["roleIcon"] = {
							["position"] = "RIGHT",
						},
						["debuffs"] = {
							["enable"] = true,
							["sizeOverride"] = 27,
							["perrow"] = 4,
						},
						["rdebuffs"] = {
							["enable"] = false,
							["font"] = "Expressway",
						},
						["growthDirection"] = "UP_RIGHT",
						["health"] = {
							["yOffset"] = -6,
						},
						["groupsPerRowCol"] = 5,
						["height"] = 28,
						["name"] = {
							["position"] = "LEFT",
						},
						["visibility"] = "[nogroup] hide;show",
						["width"] = 140,
					},
					["player"] = {
						["debuffs"] = {
							["perrow"] = 7,
						},
						["castbar"] = {
							["height"] = 35,
							["iconSize"] = 54,
							["iconAttached"] = false,
							["width"] = 478,
						},
						["combatfade"] = true,
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name]",
						},
						["height"] = 80,
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current-max]",
						},
						["classbar"] = {
							["height"] = 15,
							["autoHide"] = true,
						},
						["power"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[powercolor][power:current-max]",
							["height"] = 15,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["focus"] = {
						["infoPanel"] = {
							["enable"] = true,
							["height"] = 17,
						},
						["threatStyle"] = "NONE",
						["castbar"] = {
							["iconSize"] = 26,
							["width"] = 122,
						},
						["height"] = 56,
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[healthcolor][health:current]",
						},
						["width"] = 189,
					},
					["assist"] = {
						["enable"] = false,
					},
					["arena"] = {
						["castbar"] = {
							["width"] = 246,
						},
						["spacing"] = 26,
					},
					["party"] = {
						["horizontalSpacing"] = 3,
						["debuffs"] = {
							["anchorPoint"] = "BOTTOM",
							["numrows"] = 4,
							["perrow"] = 1,
						},
						["power"] = {
							["text_format"] = "",
							["height"] = 5,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "RIGHT_DOWN",
						["infoPanel"] = {
							["enable"] = true,
						},
						["name"] = {
							["attachTextTo"] = "InfoPanel",
							["text_format"] = "[namecolor][name:short]",
							["position"] = "LEFT",
						},
						["health"] = {
							["attachTextTo"] = "InfoPanel",
							["orientation"] = "VERTICAL",
							["text_format"] = "[healthcolor][health:current]",
							["position"] = "RIGHT",
						},
						["width"] = 110,
						["height"] = 59,
						["verticalSpacing"] = 0,
						["roleIcon"] = {
							["position"] = "TOPRIGHT",
						},
						["rdebuffs"] = {
							["font"] = "Expressway",
						},
					},
					["pet"] = {
						["infoPanel"] = {
							["height"] = 14,
							["enable"] = true,
						},
						["debuffs"] = {
							["enable"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 2,
						},
						["castbar"] = {
							["width"] = 122,
						},
						["height"] = 50,
						["threatStyle"] = "NONE",
						["width"] = 122,
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 11,
				["font"] = "Expressway",
				["goldFormat"] = "SHORT",
				["panelTransparency"] = true,
				["leftChatPanel"] = false,
				["panels"] = {
					["LeftMiniPanel"] = "",
					["RightMiniPanel"] = "",
					["RightChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
					["BottomMiniPanel"] = "Time",
					["LeftChatDataPanel"] = {
						["right"] = "",
						["left"] = "",
						["middle"] = "",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["bar6"] = {
					["buttonsize"] = 38,
				},
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar1"] = {
					["heightMult"] = 2,
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttonsize"] = 38,
					["buttonsPerRow"] = 3,
				},
				["globalFadeAlpha"] = 0.87,
				["stanceBar"] = {
					["inheritGlobalFade"] = true,
				},
				["fontSize"] = 9,
				["bar4"] = {
					["enabled"] = false,
					["backdrop"] = false,
					["buttonsize"] = 38,
				},
			},
			["layoutSet"] = "dpsMelee",
			["auras"] = {
				["fontSize"] = 11,
				["buffs"] = {
					["maxWraps"] = 2,
				},
				["font"] = "Expressway",
			},
			["bossAuraFiltersConverted"] = true,
			["tooltip"] = {
				["textFontSize"] = 11,
				["font"] = "Expressway",
				["healthBar"] = {
					["font"] = "Expressway",
				},
				["smallTextFontSize"] = 11,
				["fontSize"] = 11,
				["headerFontSize"] = 11,
			},
		},
		["Standard Adel"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,456",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,372",
			},
		},
		["Kudgy - Malfurion"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["fontSize"] = 13,
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
				},
				["talkingHeadFrameScale"] = 0.7,
				["topPanel"] = false,
				["loginmessage"] = false,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,259",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,208,384",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,238",
				["VehicleSeatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,480,57",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,300",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,883",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-315",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,234",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,249,80",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-355,186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-209,191",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-175",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,271",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,161",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,949",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,300",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,262",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-290",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
				["panelHeight"] = 232,
				["emotionIcons"] = false,
				["panelWidth"] = 411,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["r"] = 0.309803921568627,
					},
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["font"] = "Arial Narrow",
				["statusbar"] = "Blizzard Raid Bar",
				["units"] = {
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["height"] = 76,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 10,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current]",
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["height"] = 47,
						["orientation"] = "RIGHT",
						["buffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 270,
						},
						["aurabar"] = {
							["maxBars"] = 6,
							["maxDuration"] = 300,
						},
					},
					["target"] = {
						["height"] = 75,
						["power"] = {
							["height"] = 14,
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["point"] = "TOPLEFT",
					["backdrop"] = false,
					["buttonsize"] = 36,
				},
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["thinBorderColorSet"] = true,
			["cooldown"] = {
				["threshold"] = 4,
			},
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["healthbar"] = {
							["height"] = 14,
						},
					},
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
		},
		["Heal / DD"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["fontSize"] = 13,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["b"] = 0.99,
					["g"] = 0.99,
					["r"] = 0.99,
				},
				["loginmessage"] = false,
				["talkingHeadFrameScale"] = 0.7,
				["vendorGrays"] = true,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,259",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,208,384",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,238",
				["VehicleSeatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,480,57",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,300",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-315",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,234",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-175",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,249,80",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-355,186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,300",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-209,191",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,271",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,161",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,949",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,262",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-290",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,883",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
				["panelWidth"] = 411,
				["emotionIcons"] = false,
				["panelHeight"] = 232,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["r"] = 0.309803921568627,
					},
					["healthclass"] = true,
				},
				["font"] = "Arial Narrow",
				["statusbar"] = "Blizzard Raid Bar",
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 10,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current]",
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 270,
						},
						["orientation"] = "RIGHT",
						["buffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["height"] = 47,
						["aurabar"] = {
							["maxBars"] = 6,
							["maxDuration"] = 300,
						},
					},
					["target"] = {
						["height"] = 75,
						["aurabar"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
						["verticalSpacing"] = 9,
					},
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 14,
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
						},
						["height"] = 76,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["backdrop"] = false,
					["point"] = "TOPLEFT",
					["buttonsize"] = 36,
				},
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["healthbar"] = {
							["height"] = 14,
						},
					},
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
			["thinBorderColorSet"] = true,
			["cooldown"] = {
				["threshold"] = 4,
			},
		},
		["Heal/DD Backup"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["fontSize"] = 13,
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["r"] = 0.96,
					["g"] = 0.55,
					["b"] = 0.73,
				},
				["loginmessage"] = false,
				["vendorGrays"] = true,
				["talkingHeadFrameScale"] = 0.7,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,259",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,208,384",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,238",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,300",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-315",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,234",
				["AltPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,248",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,249,80",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-175",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,271",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,161",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,300",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,262",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-290",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
				["panelWidth"] = 411,
				["emotionIcons"] = false,
				["panelHeight"] = 232,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["castClassColor"] = true,
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["health"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["b"] = 0.309803921568627,
					},
					["healthclass"] = true,
				},
				["font"] = "Arial Narrow",
				["statusbar"] = "Blizzard Raid Bar",
				["units"] = {
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["height"] = 76,
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 10,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current]",
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 270,
						},
						["orientation"] = "RIGHT",
						["buffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["height"] = 47,
						["aurabar"] = {
							["maxBars"] = 6,
							["maxDuration"] = 300,
						},
					},
					["target"] = {
						["height"] = 75,
						["aurabar"] = {
							["enable"] = false,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 14,
							["attachTextTo"] = "Power",
							["position"] = "CENTER",
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
							["position"] = "BOTTOM",
						},
						["width"] = 80,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["noDuration"] = false,
							["perrow"] = 1,
							["useFilter"] = "TurtleBuffs",
							["xOffset"] = 50,
						},
						["verticalSpacing"] = 9,
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["bar4"] = {
					["backdrop"] = false,
					["buttonsize"] = 36,
					["point"] = "TOPLEFT",
				},
			},
			["layoutSet"] = "healer",
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["healthbar"] = {
							["height"] = 14,
						},
					},
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
			["cooldown"] = {
				["threshold"] = 4,
			},
			["thinBorderColorSet"] = true,
		},
		["Adelgunde - Nathrezim"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 12,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["vendorGrays"] = true,
				["bordercolor"] = {
					["b"] = 0.31,
					["g"] = 0.31,
					["r"] = 0.31,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
				},
				["talkingHeadFrameScale"] = 0.7,
				["topPanel"] = false,
				["loginmessage"] = false,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,290",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-225,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,75,320",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,-75,320",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,331,350",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,205",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-305,288",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-579,350",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,615,-242",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,80",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["AltPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,599,298",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TalkingHeadFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,176,-81",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,190",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,237",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,350",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-304,312",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["AlertFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,622,-372",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-172",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-579,284",
			},
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["health"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["b"] = 0.309803921568627,
					},
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["statusbar"] = "Blizzard Raid Bar",
				["font"] = "Arial Narrow",
				["units"] = {
					["player"] = {
						["buffs"] = {
							["enable"] = true,
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["target"] = {
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["rdebuffs"] = {
							["enable"] = false,
						},
					},
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["enable"] = true,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["xOffset"] = 50,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["backdrop"] = false,
					["buttonsize"] = 36,
					["point"] = "TOPLEFT",
				},
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["cooldown"] = {
				["threshold"] = 4,
			},
			["nameplates"] = {
				["units"] = {
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
		},
		["PALADIN"] = {
			["movers"] = {
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,456",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,372",
			},
		},
		["Healer"] = {
			["databars"] = {
				["artifact"] = {
					["mouseover"] = true,
				},
				["experience"] = {
					["mouseover"] = true,
				},
				["honor"] = {
					["enable"] = false,
				},
			},
			["currentTutorial"] = 15,
			["general"] = {
				["fontSize"] = 13,
				["taintLog"] = true,
				["autoAcceptInvite"] = true,
				["autoRepair"] = "GUILD",
				["minimap"] = {
					["locationText"] = "HIDE",
					["size"] = 131,
				},
				["bottomPanel"] = false,
				["backdropfadecolor"] = {
					["a"] = 0.449999988079071,
					["r"] = 0.184313725490196,
					["g"] = 0.184313725490196,
					["b"] = 0.184313725490196,
				},
				["objectiveFrameHeight"] = 681,
				["loginmessage"] = false,
				["stickyFrames"] = false,
				["backdropcolor"] = {
					["r"] = 0.184313725490196,
					["g"] = 0.184313725490196,
					["b"] = 0.184313725490196,
				},
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0.647058823529412,
					["g"] = 0.647058823529412,
					["b"] = 0.647058823529412,
				},
				["experience"] = {
					["hideInVehicle"] = true,
					["height"] = 6,
					["orientation"] = "HORIZONTAL",
					["mouseover"] = true,
					["width"] = 670,
				},
				["reputation"] = {
					["enable"] = false,
				},
				["vendorGrays"] = true,
				["valuecolor"] = {
					["a"] = 1,
					["r"] = 0.996078431372549,
					["g"] = 0.996078431372549,
					["b"] = 0.996078431372549,
				},
			},
			["bags"] = {
				["countFontSize"] = 13,
				["countFont"] = "PT Sans Narrow",
				["itemLevelFont"] = "PT Sans Narrow",
				["countFontOutline"] = "OUTLINE",
				["bagSize"] = 31,
				["itemLevelFontSize"] = 13,
				["moneyFormat"] = "BLIZZARD",
				["itemLevelFontOutline"] = "OUTLINE",
				["bagBar"] = {
					["spacing"] = 3,
				},
				["ignoreItems"] = "",
				["bankSize"] = 26,
			},
			["hideTutorial"] = true,
			["chat"] = {
				["fontSize"] = 13,
				["tabFontOutline"] = "OUTLINE",
				["timeStampFormat"] = "%I:%M ",
				["separateSizes"] = true,
				["tabFontSize"] = 13,
				["editBoxPosition"] = "ABOVE_CHAT",
				["fontOutline"] = "OUTLINE",
				["emotionIcons"] = false,
				["panelWidthRight"] = 383,
				["tapFontSize"] = 13,
				["panelBackdrop"] = "HIDEBOTH",
			},
			["layoutSet"] = "dpsMelee",
			["bagSortIgnoreItemsReset"] = true,
			["bagsOffsetFixed"] = true,
			["movers"] = {
				["ElvUF_FocusCastbarMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-258,-345",
				["RaidMarkerBarAnchor"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,182",
				["PetAB"] = "BOTTOM,ElvUIParent,BOTTOM,2,86",
				["ElvUF_RaidMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,103",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,0",
				["GMMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-205,208",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-135,-26",
				["GhostFrameMover"] = "TOP,ElvUIParent,TOP,-1,-72",
				["SLE_UIButtonsMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,367,-22",
				["LootFrameMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,1,-205",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,877,681",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,985",
				["ElvUF_FocusMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-258,-309",
				["DTB2_Panel_Mover"] = "TOP,ElvUIParent,TOP,0,-5",
				["BossButton"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,415,217",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,0",
				["MicrobarMover"] = "TOP,ElvUIParent,TOP,0,-585",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,411",
				["VehicleSeatMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,286,-72",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-307,361",
				["ExperienceBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-404,0",
				["TotemBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,426,1",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-37,320",
				["DP_2_Mover"] = "TOP,ElvUIParent,TOP,-275,-2",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-571",
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,625,337",
				["DP_1_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,0",
				["PvPMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-170,33",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,-170,2",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,182",
				["ElvUF_TargetCastbarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-308,311",
				["TalkingHeadFrameMover"] = "BOTTOM,ElvUIParent,BOTTOM,-11,268",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,264",
				["AltPowerBarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,127,267",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,169,33",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,169,2",
				["ElvAB_6"] = "TOP,ElvUIParent,TOP,0,-585",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,287,358",
				["ElvUF_BodyGuardMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,574,272",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-54,-167",
				["BNETMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,0,203",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,414,139",
				["SLE_Dashboard_Mover"] = "TOPLEFT,ElvUIParent,TOPLEFT,4,0",
				["RaidUtility_Mover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,184",
				["ArenaHeaderMover"] = "TOP,ElvUIParent,TOP,268,-261",
				["FarmSeedAnchor"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,1,240",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,0,955",
				["BossHeaderMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-30,252",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,0,423",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-9,65",
				["ElvUF_PartyMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,569,291",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-30",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-145,-145",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-31",
			},
			["tooltip"] = {
				["textFontSize"] = 13,
				["itemCount"] = "BOTH",
				["healthBar"] = {
					["height"] = 5,
					["fontSize"] = 11,
					["font"] = "PT Sans Narrow",
				},
				["smallTextFontSize"] = 13,
				["fontSize"] = 13,
				["headerFontSize"] = 13,
			},
			["bossAurasConverted"] = true,
			["auras"] = {
				["debuffs"] = {
					["horizontalSpacing"] = 0,
					["maxWraps"] = 10,
					["size"] = 24,
				},
				["fontSize"] = 13,
				["fontOutline"] = "NONE",
				["consolidatedBuffs"] = {
					["enable"] = false,
					["font"] = "PT Sans Narrow",
					["reverseStyle"] = true,
					["position"] = "LEFT",
				},
				["buffs"] = {
					["horizontalSpacing"] = 0,
					["size"] = 24,
				},
				["timeYOffset"] = -4,
				["font"] = "PT Sans Narrow",
			},
			["unitframe"] = {
				["targetOnMouseDown"] = true,
				["fontSize"] = 11,
				["colors"] = {
					["auraBarBuff"] = {
						["r"] = 0.1,
						["g"] = 0.1,
						["b"] = 0.1,
					},
					["power"] = {
						["FOCUS"] = {
							["r"] = 0.709803921568628,
							["g"] = 0.431372549019608,
							["b"] = 0.270588235294118,
						},
					},
					["castColor"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.309803921568627,
						["b"] = 0.309803921568627,
					},
					["transparentHealth"] = true,
					["transparentCastbar"] = true,
					["customhealthbackdrop"] = true,
					["health_backdrop"] = {
						["r"] = 0.00784313725490196,
						["g"] = 0.00784313725490196,
						["b"] = 0.00784313725490196,
					},
					["health"] = {
						["r"] = 0.101960784313725,
						["g"] = 0.101960784313725,
						["b"] = 0.101960784313725,
					},
					["transparentAurabars"] = true,
					["castReactionColor"] = true,
					["castNoInterrupt"] = {
						["r"] = 0.780392156862745,
						["g"] = 0.250980392156863,
						["b"] = 0.250980392156863,
					},
					["powerclass"] = true,
					["castClassColor"] = true,
				},
				["smartRaidFilter"] = false,
				["fontOutline"] = "OUTLINE",
				["font"] = "PT Sans Narrow",
				["units"] = {
					["tank"] = {
						["enable"] = false,
					},
					["targettargettarget"] = {
						["power"] = {
							["height"] = 5,
						},
					},
					["pet"] = {
						["name"] = {
							["xOffset"] = 5,
							["position"] = "TOPLEFT",
							["yOffset"] = -6,
						},
						["castbar"] = {
							["height"] = 10,
							["icon"] = false,
							["width"] = 200,
						},
						["height"] = 30,
						["health"] = {
							["xOffset"] = 0,
						},
						["width"] = 200,
					},
					["targettarget"] = {
						["debuffs"] = {
							["enable"] = false,
							["bossAuras"] = true,
						},
						["portrait"] = {
							["camDistanceScale"] = 1,
						},
						["power"] = {
							["enable"] = false,
						},
						["customTexts"] = {
							["Names"] = {
								["attachTextTo"] = "Health",
								["font"] = "MSBT Talisman",
								["justifyH"] = "CENTER",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 4,
								["size"] = 21,
								["text_format"] = "[namecolor][name:medium]",
								["yOffset"] = 0,
							},
						},
						["width"] = 167,
						["infoPanel"] = {
							["height"] = 12,
						},
						["health"] = {
							["xOffset"] = 0,
						},
						["height"] = 30,
						["buffs"] = {
							["bossAuras"] = true,
						},
						["name"] = {
							["xOffset"] = -5,
							["yOffset"] = -6,
							["text_format"] = "",
							["position"] = "TOPRIGHT",
						},
						["threatStyle"] = "GLOW",
					},
					["raid"] = {
						["horizontalSpacing"] = 1,
						["rdebuffs"] = {
							["fontSize"] = 15,
							["duration"] = {
								["color"] = {
									["g"] = 0.992156862745098,
									["b"] = 0.0117647058823529,
								},
							},
							["font"] = "PT Sans Narrow",
						},
						["numGroups"] = 8,
						["growthDirection"] = "RIGHT_UP",
						["buffIndicator"] = {
							["fontSize"] = 8,
						},
						["roleIcon"] = {
							["attachTo"] = "Frame",
							["size"] = 12,
						},
						["raidWideSorting"] = true,
						["power"] = {
							["height"] = 4,
						},
						["healPrediction"] = true,
						["width"] = 89,
						["colorOverride"] = "FORCE_ON",
						["groupBy"] = "ROLE",
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["height"] = 41,
						["verticalSpacing"] = 1,
						["visibility"] = "[@raid6,noexists][@raid31,exists] hide;show",
						["raidicon"] = {
							["size"] = 15,
						},
					},
					["bodyguard"] = {
						["enable"] = false,
					},
					["boss"] = {
						["orientation"] = "LEFT",
						["debuffs"] = {
							["anchorPoint"] = "RIGHT",
							["perrow"] = 10,
							["numrows"] = 1,
							["yOffset"] = -12,
						},
						["threatStyle"] = "NONE",
						["spacing"] = 15,
						["height"] = 50,
						["buffs"] = {
							["anchorPoint"] = "RIGHT",
							["perrow"] = 10,
							["yOffset"] = 12,
						},
						["castbar"] = {
							["height"] = 15,
							["icon"] = false,
							["width"] = 216,
						},
						["portrait"] = {
							["overlay"] = true,
							["enable"] = true,
						},
					},
					["raid40"] = {
						["horizontalSpacing"] = 2,
						["raidWideSorting"] = false,
						["power"] = {
							["height"] = 3,
						},
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["roleIcon"] = {
							["enable"] = true,
						},
						["verticalSpacing"] = 2,
						["groupBy"] = "ROLE",
						["visibility"] = "[@raid31,noexists] hide;show",
						["raidicon"] = {
							["size"] = 15,
						},
					},
					["focus"] = {
						["castbar"] = {
							["height"] = 10,
							["icon"] = false,
							["width"] = 180,
						},
						["width"] = 180,
					},
					["target"] = {
						["combobar"] = {
							["enable"] = false,
							["height"] = 7,
						},
						["debuffs"] = {
							["anchorPoint"] = "TOPLEFT",
							["sizeOverride"] = 25,
							["useBlacklist"] = {
								["friendly"] = false,
								["enemy"] = false,
							},
							["enable"] = false,
							["playerOnly"] = {
								["enemy"] = false,
							},
							["attachTo"] = "FRAME",
						},
						["portrait"] = {
							["rotation"] = 288,
							["camDistanceScale"] = 1.42,
							["overlay"] = true,
						},
						["attackicon"] = {
							["enable"] = false,
						},
						["aurabar"] = {
							["maxDuration"] = 120,
							["attachTo"] = "FRAME",
							["height"] = 15,
						},
						["gps"] = {
							["enable"] = false,
						},
						["power"] = {
							["strataAndLevel"] = {
								["frameStrata"] = "HIGH",
							},
							["xOffset"] = -5,
							["hideonnpc"] = false,
							["text_format"] = "",
							["height"] = 4,
						},
						["customTexts"] = {
							["Names"] = {
								["attachTextTo"] = "Power",
								["font"] = "MSBT Talisman",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 28,
								["text_format"] = "[namecolor][name]",
								["yOffset"] = 15,
							},
							["Healths"] = {
								["attachTextTo"] = "Power",
								["font"] = "MSBT Talisman",
								["justifyH"] = "LEFT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 23,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -12,
							},
						},
						["width"] = 294,
						["castbar"] = {
							["iconAttached"] = false,
							["height"] = 23,
							["icon"] = false,
							["width"] = 294,
						},
						["name"] = {
							["yOffset"] = 28,
							["text_format"] = "",
							["position"] = "TOPRIGHT",
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 271,
							["text_format"] = "",
							["yOffset"] = 9,
						},
						["classicon"] = {
							["enable"] = false,
							["size"] = 18,
						},
						["orientation"] = "LEFT",
						["buffs"] = {
							["anchorPoint"] = "BOTTOMRIGHT",
							["sizeOverride"] = 25,
							["useBlacklist"] = {
								["friendly"] = false,
								["enemy"] = false,
							},
						},
						["height"] = 35,
						["raidicon"] = {
							["size"] = 14,
						},
					},
					["arena"] = {
						["debuffs"] = {
							["yOffset"] = -12,
						},
						["castbar"] = {
							["height"] = 15,
							["icon"] = false,
							["width"] = 200,
						},
						["height"] = 50,
						["buffs"] = {
							["yOffset"] = 12,
						},
						["width"] = 200,
					},
					["party"] = {
						["horizontalSpacing"] = 1,
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 50,
						},
						["portrait"] = {
							["overlay"] = true,
						},
						["rdebuffs"] = {
							["enable"] = true,
						},
						["colorOverride"] = "FORCE_ON",
						["growthDirection"] = "RIGHT_DOWN",
						["groupBy"] = "ROLE",
						["roleIcon"] = {
							["attachTo"] = "Frame",
							["size"] = 12,
							["position"] = "BOTTOMRIGHT",
							["yOffset"] = 13,
						},
						["raidWideSorting"] = true,
						["power"] = {
							["text_format"] = "",
							["height"] = 4,
						},
						["healPrediction"] = true,
						["groupsPerRowCol"] = 5,
						["width"] = 100,
						["health"] = {
							["frequentUpdates"] = true,
							["text_format"] = "[healthcolor][health:deficit]",
						},
						["height"] = 49,
						["orientation"] = "RIGHT",
						["verticalSpacing"] = 1,
						["raidRoleIcons"] = {
							["position"] = "TOPRIGHT",
						},
						["raidicon"] = {
							["size"] = 15,
						},
					},
					["player"] = {
						["debuffs"] = {
							["enable"] = false,
							["sizeOverride"] = 25,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 1,
						},
						["castbar"] = {
							["displayTarget"] = true,
							["latency"] = false,
							["iconAttached"] = false,
							["height"] = 24,
							["icon"] = false,
							["width"] = 364,
						},
						["customTexts"] = {
							["Names"] = {
								["attachTextTo"] = "Frame",
								["font"] = "MSBT Talisman",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "MONOCHROMEOUTLINE",
								["xOffset"] = 0,
								["size"] = 28,
								["text_format"] = "[namecolor][name]",
								["yOffset"] = -1,
							},
							["Healths"] = {
								["attachTextTo"] = "Frame",
								["font"] = "MSBT Talisman",
								["justifyH"] = "RIGHT",
								["fontOutline"] = "OUTLINE",
								["xOffset"] = 0,
								["size"] = 23,
								["text_format"] = "[health:current-percent]",
								["yOffset"] = -30,
							},
						},
						["combatfade"] = true,
						["width"] = 294,
						["raidicon"] = {
							["size"] = 14,
						},
						["health"] = {
							["attachTextTo"] = "Frame",
							["xOffset"] = 271,
							["text_format"] = "",
							["yOffset"] = 9,
						},
						["name"] = {
							["yOffset"] = 28,
							["position"] = "TOPLEFT",
						},
						["power"] = {
							["xOffset"] = -5,
							["height"] = 4,
							["strataAndLevel"] = {
								["frameStrata"] = "HIGH",
							},
							["text_format"] = "",
						},
						["height"] = 35,
						["buffs"] = {
							["sizeOverride"] = 25,
						},
						["classbar"] = {
							["height"] = 8,
						},
						["aurabar"] = {
							["attachTo"] = "FRAME",
							["height"] = 15,
						},
					},
				},
			},
			["datatexts"] = {
				["minimapPanels"] = false,
				["fontSize"] = 13,
				["leftChatPanel"] = false,
				["goldCoins"] = true,
				["panels"] = {
					["LeftMiniPanel"] = "Friends",
					["RightMiniPanel"] = "Time",
					["RightChatDataPanel"] = {
						["middle"] = "Garrison",
						["left"] = "Friends",
					},
					["DTB2_Panel"] = {
						["middle"] = "Time",
						["farleft"] = "S&L Item Level",
						["right"] = "Gold",
						["left"] = "Durability",
						["farright"] = "System",
					},
					["LeftChatDataPanel"] = {
						["middle"] = "Mastery",
						["right"] = "DPS",
					},
				},
				["rightChatPanel"] = false,
			},
			["actionbar"] = {
				["bar3"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 12,
					["showGrid"] = false,
					["buttonsPerRow"] = 12,
					["alpha"] = 0.85,
					["buttonsize"] = 26,
				},
				["bar6"] = {
					["buttonspacing"] = 1,
					["backdropSpacing"] = 1,
					["buttonsize"] = 30,
					["showGrid"] = false,
				},
				["bar2"] = {
					["enabled"] = true,
					["inheritGlobalFade"] = true,
					["showGrid"] = false,
					["alpha"] = 0.85,
					["buttonsize"] = 26,
				},
				["bar1"] = {
					["showGrid"] = false,
					["inheritGlobalFade"] = true,
					["alpha"] = 0.85,
					["buttonsize"] = 26,
				},
				["bar5"] = {
					["inheritGlobalFade"] = true,
					["buttons"] = 12,
					["showGrid"] = false,
					["buttonsPerRow"] = 12,
					["buttonsize"] = 26,
				},
				["backdropSpacingConverted"] = true,
				["font"] = "Arial Narrow",
				["noPowerColor"] = {
					["g"] = 0.501960784313726,
					["r"] = 0.501960784313726,
				},
				["globalFadeAlpha"] = 1,
				["fontOutline"] = "OUTLINE",
				["stanceBar"] = {
					["buttonspacing"] = 4,
					["mouseover"] = true,
					["buttonsize"] = 26,
				},
				["barPet"] = {
					["inheritGlobalFade"] = true,
					["buttonspacing"] = 4,
					["buttonsPerRow"] = 10,
					["backdrop"] = false,
					["buttonsize"] = 20,
				},
				["bar4"] = {
					["buttonsize"] = 26,
					["showGrid"] = false,
					["mouseover"] = true,
					["alpha"] = 0.85,
					["backdrop"] = false,
				},
			},
			["nameplates"] = {
				["fontSize"] = 14,
				["font"] = "PT Sans Narrow",
				["units"] = {
					["FRIENDLY_PLAYER"] = {
						["showName"] = false,
					},
					["FRIENDLY_NPC"] = {
						["showName"] = false,
					},
				},
			},
			["sle"] = {
				["raidmarkers"] = {
					["enable"] = false,
					["backdrop"] = true,
					["visibility"] = "INPARTY",
				},
				["media"] = {
					["fonts"] = {
						["editbox"] = {
							["outline"] = "OUTLINE",
						},
						["mail"] = {
							["outline"] = "OUTLINE",
						},
						["objective"] = {
							["outline"] = "OUTLINE",
						},
						["objectiveHeader"] = {
							["outline"] = "OUTLINE",
						},
					},
					["screensaver"] = {
						["subtitle"] = {
							["font"] = "Friz Quadrata TT",
						},
						["playermodel"] = {
							["anim"] = 69,
							["position"] = "CENTER",
						},
						["height"] = 140,
						["date"] = {
							["font"] = "Friz Quadrata TT",
						},
						["player"] = {
							["font"] = "Friz Quadrata TT",
						},
						["title"] = {
							["font"] = "Friz Quadrata TT",
						},
						["tips"] = {
							["font"] = "Friz Quadrata TT",
						},
					},
				},
				["Armory"] = {
					["Character"] = {
						["Enchant"] = {
							["FontSize"] = 12,
							["Font"] = "Friz Quadrata TT",
						},
						["Durability"] = {
							["FontSize"] = 12,
							["Font"] = "Friz Quadrata TT",
						},
						["Backdrop"] = {
							["CustomAddress"] = "interface\\addons\\custom ui\\nebula.tga",
						},
						["Level"] = {
							["FontSize"] = 12,
							["Font"] = "Friz Quadrata TT",
						},
						["MissingIcon"] = false,
						["Gradation"] = {
							["Color"] = {
								0.788235294117647, -- [1]
								0.419607843137255, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
					},
					["Inspect"] = {
						["Enchant"] = {
							["FontSize"] = 10,
							["Font"] = "Friz Quadrata TT",
						},
						["Gem"] = {
							["SocketSize"] = 13,
						},
						["Level"] = {
							["FontSize"] = 12,
							["Font"] = "Friz Quadrata TT",
						},
						["Backdrop"] = {
							["CustomAddress"] = "interface\\addons\\custom ui\\nebula.tga",
						},
						["Gradation"] = {
							["Color"] = {
								0.788235294117647, -- [1]
								0.419607843137255, -- [2]
								nil, -- [3]
								1, -- [4]
							},
						},
					},
				},
				["datatext"] = {
					["dp1"] = {
						["transparent"] = false,
					},
				},
				["minimap"] = {
					["instance"] = {
						["font"] = "Friz Quadrata TT",
					},
					["coords"] = {
						["decimals"] = false,
					},
				},
				["loot"] = {
					["enable"] = true,
					["autoroll"] = {
						["enable"] = false,
						["level"] = 100,
						["autoconfirm"] = true,
						["autogreed"] = true,
					},
				},
				["garrison"] = {
					["autoOrder"] = true,
				},
				["quests"] = {
					["visibility"] = {
						["garrison"] = "COLLAPSED",
						["rested"] = "COLLAPSED",
					},
				},
				["uibuttons"] = {
					["orientation"] = "horizontal",
					["mouse"] = true,
				},
			},
			["dtbars"] = {
				["DTB2_Panel"] = {
					["enable"] = true,
					["transparent"] = true,
					["height"] = 22,
					["pethide"] = true,
					["growth"] = "HORIZONTAL",
					["width"] = 1914,
				},
			},
			["bossAuraFiltersConverted"] = true,
		},
		["Warglgunde - Nathrezim"] = {
			["currentTutorial"] = 1,
			["general"] = {
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
			},
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
			},
			["thinBorderColorSet"] = true,
			["actionbar"] = {
				["backdropSpacingConverted"] = true,
			},
		},
		["Kudgy - Anetheron"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["fontSize"] = 13,
				["topPanel"] = false,
				["bordercolor"] = {
					["r"] = 0,
					["g"] = 0,
					["b"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["health"] = {
				},
				["valuecolor"] = {
					["r"] = 0.96,
					["g"] = 0.55,
					["b"] = 0.73,
				},
				["talkingHeadFrameScale"] = 0.7,
				["vendorGrays"] = true,
				["loginmessage"] = false,
			},
			["movers"] = {
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,259",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,208,384",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,238",
				["VehicleSeatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,480,57",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,300",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,883",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-315",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,234",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,249,80",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,2211,857",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-175",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-355,186",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-209,191",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,271",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOM,ElvUIParent,BOTTOM,0,161",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,209,949",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PetMover"] = "BOTTOM,ElvUIParent,BOTTOM,-302,262",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,300",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-290",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["MinimapMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-4",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
				["panelHeight"] = 232,
				["emotionIcons"] = false,
				["panelWidth"] = 411,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["health"] = {
						["r"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["b"] = 0.309803921568627,
					},
					["auraBarBuff"] = {
						["r"] = 0.96,
						["g"] = 0.55,
						["b"] = 0.73,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["statusbar"] = "Blizzard Raid Bar",
				["font"] = "Arial Narrow",
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["verticalSpacing"] = 9,
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 270,
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["orientation"] = "RIGHT",
						["height"] = 47,
						["buffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["power"] = {
							["height"] = 10,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current]",
						},
						["aurabar"] = {
							["maxBars"] = 6,
							["maxDuration"] = 300,
						},
					},
					["target"] = {
						["height"] = 75,
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["enable"] = true,
							["xOffset"] = -4,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["healPrediction"] = true,
					},
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["height"] = 76,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["fontSize"] = 12,
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["backdropSpacingConverted"] = true,
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 44,
				},
				["microbar"] = {
					["enabled"] = true,
				},
				["bar4"] = {
					["point"] = "TOPLEFT",
					["buttonsize"] = 36,
					["backdrop"] = false,
				},
			},
			["layoutSet"] = "healer",
			["cooldown"] = {
				["threshold"] = 4,
			},
			["thinBorderColorSet"] = true,
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["healthbar"] = {
							["height"] = 14,
						},
					},
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
		},
		["Kudgy - Azshara"] = {
			["movers"] = {
				["ElvUF_Raid40Mover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,432",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,1196",
				["ElvUF_PartyMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,195",
				["ElvUF_RaidMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,427",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,735",
			},
		},
		["Giselmund - Nathrezim"] = {
			["databars"] = {
				["reputation"] = {
					["enable"] = true,
				},
			},
			["currentTutorial"] = 2,
			["general"] = {
				["totems"] = {
					["size"] = 41,
				},
				["fontSize"] = 13,
				["topPanel"] = false,
				["bordercolor"] = {
					["b"] = 0,
					["g"] = 0,
					["r"] = 0,
				},
				["minimap"] = {
					["size"] = 198,
				},
				["valuecolor"] = {
					["b"] = 0.73,
					["g"] = 0.55,
					["r"] = 0.96,
				},
				["talkingHeadFrameScale"] = 0.7,
				["vendorGrays"] = true,
				["loginmessage"] = false,
			},
			["movers"] = {
				["PetAB"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,428,4",
				["ElvUF_RaidMover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,977",
				["LeftChatMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,5",
				["GMMover"] = "TOPLEFT,ElvUIParent,TOPLEFT,347,-4",
				["BuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-224,-26",
				["BossButton"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ZoneAbility"] = "BOTTOM,ElvUIParent,BOTTOM,0,423",
				["ElvUF_RaidpetMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,4,736",
				["ElvUF_FocusMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,208,384",
				["MicrobarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,236",
				["ElvUF_PetCastbarMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,467,276",
				["ElvUF_TargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,300",
				["ElvUF_TargetTargetMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-600,234",
				["LossControlMover"] = "TOP,ElvUIParent,TOP,0,-552",
				["ElvUF_Raid40Mover"] = "TOPRIGHT,ElvUIParent,BOTTOMLEFT,2211,948",
				["MirrorTimer1Mover"] = "TOP,ElvUIParent,TOP,0,-315",
				["TalkingHeadFrameMover"] = "TOP,ElvUIParent,TOP,0,-175",
				["ElvAB_1"] = "BOTTOM,ElvUIParent,BOTTOM,-250,35",
				["ElvAB_2"] = "BOTTOM,ElvUIParent,BOTTOM,250,35",
				["ReputationBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-430,5",
				["ElvUF_PartyMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMLEFT,670,642",
				["ElvAB_4"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,308",
				["ElvUIBagMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,188",
				["AltPowerBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,182",
				["ElvAB_3"] = "BOTTOM,ElvUIParent,BOTTOM,-250,80",
				["ElvAB_5"] = "BOTTOM,ElvUIParent,BOTTOM,249,80",
				["ArtifactBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-441,5",
				["ElvUF_PetMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,467,300",
				["ElvUF_PlayerCastbarMover"] = "BOTTOM,ElvUIParent,BOTTOM,0,259",
				["ObjectiveFrameMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-417,-251",
				["BNETMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,271",
				["ShiftAB"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,628,152",
				["ArenaHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["HonorBarMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-418,5",
				["ElvAB_6"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,211",
				["TooltipMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-453,117",
				["ElvUF_TankMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,200,985",
				["BossHeaderMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-118,-222",
				["ElvUF_PlayerMover"] = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,600,300",
				["TotemBarMover"] = "BOTTOM,ElvUIParent,BOTTOM,-211,192",
				["RightChatMover"] = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,5",
				["AlertFrameMover"] = "TOP,ElvUIParent,TOP,0,-290",
				["DebuffsMover"] = "TOPRIGHT,ElvUIParent,TOPRIGHT,-222,-172",
				["ElvUF_AssistMover"] = "TOPLEFT,ElvUIParent,BOTTOMLEFT,200,920",
			},
			["hideTutorial"] = true,
			["chat"] = {
				["timeStampFormat"] = "%H:%M:%S ",
				["panelHeight"] = 232,
				["emotionIcons"] = false,
				["panelWidth"] = 411,
			},
			["unitframe"] = {
				["fontSize"] = 12,
				["colors"] = {
					["health"] = {
						["b"] = 0.309803921568627,
						["g"] = 0.294117647058824,
						["r"] = 0.309803921568627,
					},
					["auraBarBuff"] = {
						["b"] = 0.73,
						["g"] = 0.55,
						["r"] = 0.96,
					},
					["castClassColor"] = true,
					["healthclass"] = true,
				},
				["font"] = "Arial Narrow",
				["statusbar"] = "Blizzard Raid Bar",
				["units"] = {
					["party"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["xOffset"] = -4,
							["sizeOverride"] = 16,
							["anchorPoint"] = "TOPRIGHT",
							["yOffset"] = -7,
						},
						["power"] = {
							["text_format"] = "",
						},
						["enable"] = false,
						["healPrediction"] = true,
						["growthDirection"] = "LEFT_UP",
						["name"] = {
							["text_format"] = "[namecolor][name:short]",
							["position"] = "TOP",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:deficit]",
							["frequentUpdates"] = true,
							["position"] = "BOTTOM",
						},
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["height"] = 45,
						["verticalSpacing"] = 9,
						["width"] = 80,
						["roleIcon"] = {
							["position"] = "BOTTOMRIGHT",
						},
					},
					["raid40"] = {
						["enable"] = false,
						["height"] = 33,
						["growthDirection"] = "DOWN_LEFT",
					},
					["focus"] = {
						["debuffs"] = {
							["attachTo"] = "BUFFS",
							["perrow"] = 8,
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["height"] = 10,
							["hideonnpc"] = true,
							["text_format"] = "[powercolor][power:current]",
						},
						["width"] = 270,
						["infoPanel"] = {
							["height"] = 20,
						},
						["name"] = {
							["text_format"] = "[namecolor][name:medium] [difficultycolor][smartlevel] [shortclassification]",
						},
						["health"] = {
							["text_format"] = "[healthcolor][health:current-percent]",
						},
						["orientation"] = "RIGHT",
						["height"] = 47,
						["buffs"] = {
							["enable"] = true,
							["anchorPoint"] = "TOPRIGHT",
							["perrow"] = 8,
						},
						["castbar"] = {
							["iconSize"] = 42,
							["width"] = 270,
						},
						["aurabar"] = {
							["maxBars"] = 6,
							["maxDuration"] = 300,
						},
					},
					["target"] = {
						["height"] = 75,
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
					["raid"] = {
						["horizontalSpacing"] = 9,
						["debuffs"] = {
							["anchorPoint"] = "TOPRIGHT",
							["sizeOverride"] = 16,
							["xOffset"] = -4,
							["enable"] = true,
							["yOffset"] = -7,
						},
						["enable"] = false,
						["rdebuffs"] = {
							["enable"] = false,
						},
						["growthDirection"] = "DOWN_LEFT",
						["health"] = {
							["frequentUpdates"] = true,
						},
						["height"] = 45,
						["buffs"] = {
							["sizeOverride"] = 22,
							["useBlacklist"] = false,
							["xOffset"] = 50,
							["playerOnly"] = false,
							["yOffset"] = -6,
							["clickThrough"] = true,
							["enable"] = true,
							["useFilter"] = "TurtleBuffs",
							["perrow"] = 1,
							["noDuration"] = false,
						},
						["verticalSpacing"] = 9,
						["healPrediction"] = true,
					},
					["pettarget"] = {
						["enable"] = true,
					},
					["player"] = {
						["portrait"] = {
							["overlay"] = true,
							["camDistanceScale"] = 3,
							["enable"] = true,
						},
						["power"] = {
							["attachTextTo"] = "Power",
							["height"] = 14,
							["position"] = "CENTER",
						},
						["height"] = 76,
						["buffs"] = {
							["attachTo"] = "FRAME",
							["enable"] = true,
						},
						["aurabar"] = {
							["enable"] = false,
						},
					},
				},
			},
			["datatexts"] = {
				["time24"] = true,
			},
			["actionbar"] = {
				["bar3"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar6"] = {
					["enabled"] = true,
					["buttonsPerRow"] = 6,
					["buttonsize"] = 43,
				},
				["bar2"] = {
					["enabled"] = true,
					["buttonsize"] = 36,
				},
				["bar1"] = {
					["buttonsize"] = 36,
				},
				["bar5"] = {
					["buttonsPerRow"] = 12,
					["buttonsize"] = 36,
					["buttons"] = 12,
				},
				["bar4"] = {
					["point"] = "TOPLEFT",
					["buttonsize"] = 36,
					["backdrop"] = false,
				},
				["fontSize"] = 12,
				["microbar"] = {
					["enabled"] = true,
				},
				["backdropSpacingConverted"] = true,
			},
			["layoutSet"] = "healer",
			["cooldown"] = {
				["threshold"] = 4,
			},
			["thinBorderColorSet"] = true,
			["nameplates"] = {
				["units"] = {
					["ENEMY_PLAYER"] = {
						["healthbar"] = {
							["height"] = 14,
						},
					},
					["PLAYER"] = {
						["buffs"] = {
							["numAuras"] = 8,
						},
					},
				},
			},
		},
	},
}
ElvPrivateDB = {
	["profileKeys"] = {
		["Wigbald - Nathrezim"] = "Wigbald - Nathrezim",
		["Kudgy - Anetheron"] = "Kudgy - Anetheron",
		["Rigobert - Nathrezim"] = "Rigobert - Nathrezim",
		["Minnegard - Nathrezim"] = "Minnegard - Nathrezim",
		["Kudgy - Malfurion"] = "Kudgy - Malfurion",
		["Adelgunde - Nathrezim"] = "Adelgunde - Nathrezim",
		["Friedebrecht - Nathrezim"] = "Friedebrecht - Nathrezim",
		["Guntram - Nathrezim"] = "Guntram - Nathrezim",
		["Kudgy - Azshara"] = "Kudgy - Azshara",
		["Warglgunde - Nathrezim"] = "Warglgunde - Nathrezim",
	},
	["profiles"] = {
		["Wigbald - Nathrezim"] = {
			["install_complete"] = "10.31",
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["party"] = false,
					["raid"] = false,
				},
			},
		},
		["Kudgy - Anetheron"] = {
			["install_complete"] = "10.68",
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["party"] = false,
					["raid"] = false,
				},
			},
		},
		["Rigobert - Nathrezim"] = {
			["install_complete"] = "10.31",
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["party"] = false,
					["raid"] = false,
				},
			},
		},
		["Minnegard - Nathrezim"] = {
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["raid"] = false,
					["party"] = false,
				},
			},
			["install_complete"] = "10.31",
		},
		["Kudgy - Malfurion"] = {
			["install_complete"] = "10.49",
		},
		["Adelgunde - Nathrezim"] = {
			["theme"] = "class",
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["party"] = false,
					["raid"] = false,
				},
			},
			["general"] = {
				["minimap"] = {
					["enable"] = false,
				},
			},
			["install_complete"] = "10.31",
		},
		["Friedebrecht - Nathrezim"] = {
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["raid"] = false,
					["party"] = false,
				},
			},
			["install_complete"] = "10.31",
		},
		["Guntram - Nathrezim"] = {
			["unitframe"] = {
				["disabledBlizzardFrames"] = {
					["raid"] = false,
					["party"] = false,
				},
			},
			["install_complete"] = "10.31",
		},
		["Kudgy - Azshara"] = {
		},
		["Warglgunde - Nathrezim"] = {
			["install_complete"] = "10.49",
		},
	},
}
