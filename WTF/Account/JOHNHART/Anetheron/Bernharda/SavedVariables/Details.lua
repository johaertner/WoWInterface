
_detalhes_database = {
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["active_profile"] = "Adelgunde-Nathrezim",
	["last_day"] = "24",
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["savedbuffs"] = {
	},
	["last_version"] = "v7.3.0.4690",
	["combat_counter"] = 15,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["dps"] = 0,
			["author"] = "Details! Team",
			["level"] = 1,
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["v1"] = true,
			["captures"] = {
				false, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["first_run"] = false,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["InstalledAt"] = 1506287700,
			["last_encounter_hash"] = false,
			["showing_type"] = 4,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 0,
			["timeline_cutoff_delete_time"] = 3,
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["hide_on_combat"] = false,
			["show_icon"] = 5,
			["opened"] = 0,
			["encounter_timers_dbm"] = {
			},
		},
		["DETAILS_PLUGIN_CHART_VIEWER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["tabs"] = {
				{
					["name"] = "Your Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Player Damage Done",
					["texture"] = "line",
				}, -- [1]
				{
					["name"] = "Class Damage",
					["iType"] = "raid-DAMAGER",
					["segment_type"] = 1,
					["version"] = "v2.0",
					["data"] = "PRESET_DAMAGE_SAME_CLASS",
					["texture"] = "line",
				}, -- [2]
				{
					["name"] = "Raid Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Raid Damage Done",
					["texture"] = "line",
				}, -- [3]
				["last_selected"] = 1,
			},
			["options"] = {
				["auto_create"] = true,
				["show_method"] = 4,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["useclasscolors"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["showamount"] = false,
			["author"] = "Details! Team",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = false,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_TIME_ATTACK"] = {
			["enabled"] = true,
			["realm_last_shown"] = 40,
			["saved_as_anonymous"] = true,
			["recently_as_anonymous"] = true,
			["dps"] = 0,
			["disable_sharing"] = false,
			["history"] = {
			},
			["time"] = 40,
			["history_lastindex"] = 0,
			["realm_lastamt"] = 0,
			["realm_history"] = {
			},
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["is_first_run"] = false,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				300.000061035156, -- [1]
				500, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = true,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["scale"] = 1,
			["point"] = "CENTER",
			["y"] = -1.525878906250e-005,
			["enabled"] = false,
			["arrow_size"] = 10,
			["author"] = "Details! Team",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["row_height"] = 20,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -6.1035156250e-005,
				["x"] = -6.1035156250e-005,
				["update_speed"] = 0.05,
				["size"] = 32,
				["attribute_type"] = 1,
			},
			["x"] = 0,
			["font_face"] = "Friz Quadrata TT",
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["arrow_anchor_y"] = 0,
			["use_spark"] = true,
			["main_frame_locked"] = false,
			["font_size"] = 10,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["food_tier1"] = true,
			["mythic_1_4"] = true,
			["food_tier2"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
			["pre_pot_tanks"] = false,
			["food_tier3"] = true,
		},
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1507583700,
		["last_version"] = 9,
	},
	["mythic_dungeon_id"] = 0,
	["force_font_outline"] = "",
	["last_instance_id"] = 1557,
	["cached_talents"] = {
		["Player-1104-07CD22C5"] = {
			22114, -- [1]
			22132, -- [2]
			22333, -- [3]
			19241, -- [4]
			19234, -- [5]
			19249, -- [6]
			22123, -- [7]
		},
	},
	["ignore_nicktag"] = false,
	["tabela_instancias"] = {
	},
	["combat_id"] = 11,
	["savedStyles"] = {
	},
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["last_realversion"] = 126,
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["tabela_overall"] = {
		{
			["tipo"] = 2,
			["_ActorTable"] = {
				{
					["flag_original"] = 1297,
					["totalabsorbed"] = 0.050696,
					["damage_from"] = {
						["Teufelsfeuerwichtel"] = true,
						["Hinterhaltsteufelsfledermaus"] = true,
						["Grunzer der Horde"] = true,
						["Teufelsfeuerhöllenbestie"] = true,
					},
					["targets"] = {
						["Grunzer der Horde"] = 804200,
						["Zielattrappe"] = 564654,
						["Teufelsfeuerhöllenbestie"] = 264852,
						["Teufelsfeuerwichtel"] = 79644,
						["Hinterhaltsteufelsfledermaus"] = 70012,
					},
					["pets"] = {
					},
					["friendlyfire_total"] = 1452,
					["raid_targets"] = {
					},
					["total_without_pet"] = 1783362.050696,
					["friendlyfire"] = {
						["Grunzer der Horde"] = {
							["spells"] = {
								[113780] = 1452,
							},
							["total"] = 1452,
						},
					},
					["last_event"] = 0,
					["dps_started"] = false,
					["total"] = 1783362.050696,
					["classe"] = "ROGUE",
					["end_time"] = 1506287841,
					["nome"] = "Bernharda",
					["spells"] = {
						["tipo"] = 2,
						["_ActorTable"] = {
							{
								["c_amt"] = 33,
								["b_amt"] = 2,
								["c_dmg"] = 93664,
								["g_amt"] = 0,
								["n_max"] = 2075,
								["targets"] = {
									["Grunzer der Horde"] = 139838,
									["Zielattrappe"] = 73051,
									["Teufelsfeuerhöllenbestie"] = 37072,
									["Teufelsfeuerwichtel"] = 19043,
									["Hinterhaltsteufelsfledermaus"] = 21638,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 196978,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 196,
								["total"] = 290642,
								["c_max"] = 4199,
								["id"] = 1,
								["r_dmg"] = 0,
								["MISS"] = 27,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 2045,
								["n_amt"] = 136,
								["r_amt"] = 0,
								["c_min"] = 0,
							}, -- [1]
							[1943] = {
								["c_amt"] = 7,
								["b_amt"] = 0,
								["c_dmg"] = 112525,
								["g_amt"] = 0,
								["n_max"] = 8038,
								["targets"] = {
									["Grunzer der Horde"] = 120564,
									["Zielattrappe"] = 112528,
									["Teufelsfeuerwichtel"] = 24113,
									["Teufelsfeuerhöllenbestie"] = 40188,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 184868,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 30,
								["total"] = 297393,
								["c_max"] = 16075,
								["id"] = 1943,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 23,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[2818] = {
								["c_amt"] = 6,
								["b_amt"] = 0,
								["c_dmg"] = 36062,
								["g_amt"] = 0,
								["n_max"] = 3006,
								["targets"] = {
									["Grunzer der Horde"] = 96165,
									["Zielattrappe"] = 57098,
									["Teufelsfeuerhöllenbestie"] = 18030,
									["Teufelsfeuerwichtel"] = 9015,
									["Hinterhaltsteufelsfledermaus"] = 9016,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 153262,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 57,
								["total"] = 189324,
								["c_max"] = 6011,
								["id"] = 2818,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 51,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[27576] = {
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 25360,
								["g_amt"] = 0,
								["n_max"] = 4532,
								["targets"] = {
									["Grunzer der Horde"] = 50131,
									["Zielattrappe"] = 41078,
									["Teufelsfeuerhöllenbestie"] = 25592,
									["Teufelsfeuerwichtel"] = 8357,
									["Hinterhaltsteufelsfledermaus"] = 4135,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 103933,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 28,
								["total"] = 129293,
								["c_max"] = 8701,
								["id"] = 27576,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 25,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[32645] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 25230,
								["targets"] = {
									["Grunzer der Horde"] = 65595,
									["Zielattrappe"] = 45413,
									["Teufelsfeuerhöllenbestie"] = 25230,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 136238,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 6,
								["total"] = 136238,
								["c_max"] = 0,
								["id"] = 32645,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 6,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[113780] = {
								["c_amt"] = 9,
								["b_amt"] = 0,
								["c_dmg"] = 26125,
								["g_amt"] = 0,
								["n_max"] = 1452,
								["targets"] = {
									["Grunzer der Horde"] = 60956,
									["Zielattrappe"] = 17415,
									["Teufelsfeuerwichtel"] = 2901,
									["Teufelsfeuerhöllenbestie"] = 20321,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 75468,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 61,
								["total"] = 101593,
								["c_max"] = 2903,
								["id"] = 113780,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 52,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[703] = {
								["c_amt"] = 7,
								["b_amt"] = 0,
								["c_dmg"] = 67536,
								["g_amt"] = 0,
								["n_max"] = 4825,
								["targets"] = {
									["Grunzer der Horde"] = 159194,
									["Zielattrappe"] = 135073,
									["Hinterhaltsteufelsfledermaus"] = 19296,
									["Teufelsfeuerhöllenbestie"] = 48241,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 294268,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 68,
								["total"] = 361804,
								["c_max"] = 9648,
								["id"] = 703,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 61,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
							[5374] = {
								["c_amt"] = 4,
								["b_amt"] = 0,
								["c_dmg"] = 67378,
								["g_amt"] = 0,
								["n_max"] = 8783,
								["targets"] = {
									["Grunzer der Horde"] = 111757,
									["Zielattrappe"] = 82998,
									["Teufelsfeuerhöllenbestie"] = 50178,
									["Teufelsfeuerwichtel"] = 16215,
									["Hinterhaltsteufelsfledermaus"] = 15927,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 209697,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 29,
								["total"] = 277075,
								["c_max"] = 18617,
								["id"] = 5374,
								["r_dmg"] = 0,
								["a_dmg"] = 0,
								["m_crit"] = 0,
								["a_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 25,
								["r_amt"] = 0,
								["c_min"] = 0,
							},
						},
					},
					["grupo"] = true,
					["on_hold"] = false,
					["spec"] = 259,
					["serial"] = "Player-1104-07CD22C5",
					["custom"] = 0,
					["tipo"] = 1,
					["last_dps"] = 0,
					["start_time"] = 1506287638,
					["delay"] = 0,
					["damage_taken"] = 200821.050696,
				}, -- [1]
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
				{
					["flag_original"] = 1297,
					["totalabsorb"] = 0.01105,
					["last_hps"] = 0,
					["targets_overheal"] = {
					},
					["targets"] = {
					},
					["spells"] = {
						["tipo"] = 3,
						["_ActorTable"] = {
						},
					},
					["pets"] = {
					},
					["totalover_without_pet"] = 0.01105,
					["healing_from"] = {
						["Seherin Janidi"] = true,
					},
					["heal_enemy_amt"] = 0,
					["totalover"] = 0.01105,
					["total_without_pet"] = 0.01105,
					["end_time"] = 1506288015,
					["iniciar_hps"] = false,
					["classe"] = "ROGUE",
					["total"] = 0.01105,
					["healing_taken"] = 35057.01105,
					["start_time"] = 1506288012,
					["nome"] = "Bernharda",
					["targets_absorbs"] = {
					},
					["grupo"] = true,
					["spec"] = 259,
					["heal_enemy"] = {
					},
					["serial"] = "Player-1104-07CD22C5",
					["custom"] = 0,
					["tipo"] = 2,
					["on_hold"] = false,
					["totaldenied"] = 0.01105,
					["delay"] = 0,
					["last_event"] = 0,
				}, -- [1]
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
				{
					["received"] = 55.046515,
					["resource"] = 0.046515,
					["targets"] = {
						["Bernharda"] = 55,
					},
					["pets"] = {
					},
					["powertype"] = 0,
					["classe"] = "ROGUE",
					["total"] = 55.046515,
					["nome"] = "Bernharda",
					["spec"] = 259,
					["grupo"] = true,
					["spells"] = {
						["tipo"] = 7,
						["_ActorTable"] = {
							[1329] = {
								["id"] = 1329,
								["total"] = 51,
								["targets"] = {
									["Bernharda"] = 51,
								},
								["counter"] = 28,
							},
							[703] = {
								["id"] = 703,
								["total"] = 4,
								["targets"] = {
									["Bernharda"] = 4,
								},
								["counter"] = 4,
							},
						},
					},
					["tipo"] = 3,
					["flag_original"] = 1297,
					["last_event"] = 0,
					["alternatepower"] = 0.046515,
					["serial"] = "Player-1104-07CD22C5",
				}, -- [1]
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[2818] = {
								["refreshamt"] = 0,
								["activedamt"] = 4,
								["appliedamt"] = 13,
								["id"] = 2818,
								["uptime"] = 172,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[1330] = {
								["refreshamt"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 7,
								["id"] = 1330,
								["uptime"] = 20,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[1943] = {
								["refreshamt"] = 0,
								["activedamt"] = 1,
								["appliedamt"] = 8,
								["id"] = 1943,
								["uptime"] = 67,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[703] = {
								["refreshamt"] = 0,
								["activedamt"] = 3,
								["appliedamt"] = 11,
								["id"] = 703,
								["uptime"] = 141,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["buff_uptime"] = 235,
					["classe"] = "ROGUE",
					["buff_uptime_spells"] = {
						["tipo"] = 9,
						["_ActorTable"] = {
							[32645] = {
								["refreshamt"] = 0,
								["activedamt"] = 6,
								["appliedamt"] = 6,
								["id"] = 32645,
								["uptime"] = 33,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[2823] = {
								["refreshamt"] = 0,
								["activedamt"] = 8,
								["appliedamt"] = 8,
								["id"] = 2823,
								["uptime"] = 202,
								["targets"] = {
								},
								["counter"] = 0,
							},
							[11327] = {
								["refreshamt"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 0,
								["id"] = 11327,
								["uptime"] = 0,
								["targets"] = {
								},
								["counter"] = 0,
							},
						},
					},
					["debuff_uptime"] = 400,
					["buff_uptime_targets"] = {
					},
					["spec"] = 259,
					["grupo"] = true,
					["spell_cast"] = {
						[1856] = 2,
						[27576] = 29,
						[32645] = 6,
						[703] = 4,
						[1943] = 7,
						[1329] = 29,
					},
					["debuff_uptime_targets"] = {
					},
					["tipo"] = 4,
					["nome"] = "Bernharda",
					["pets"] = {
					},
					["serial"] = "Player-1104-07CD22C5",
					["last_event"] = 0,
				}, -- [1]
			},
		}, -- [4]
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [5]
		["raid_roster"] = {
		},
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 4,
		["totals"] = {
			2983617.26615, -- [1]
			35057.007906, -- [2]
			{
				13.002209, -- [1]
				[0] = 42.042748,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
			["frags_total"] = 0,
			["voidzone_damage"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["__call"] = {
		},
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
			["damage"] = {
			},
		},
		["end_time"] = 273426.27,
		["data_inicio"] = "23:17:05",
		["frags"] = {
		},
		["data_fim"] = "23:22:26",
		["overall_enemy_name"] = "-- x -- x --",
		["CombatSkillCache"] = {
		},
		["segments_added"] = {
			{
				["elapsed"] = 34.9729999999981,
				["name"] = "Trash abgräumt",
				["clock"] = "23:21:51",
			}, -- [1]
			{
				["elapsed"] = 16.3339999999735,
				["name"] = "Trash abgräumt",
				["clock"] = "23:21:30",
			}, -- [2]
			{
				["elapsed"] = 43.9169999999576,
				["name"] = "Trash abgräumt",
				["clock"] = "23:20:30",
			}, -- [3]
			{
				["elapsed"] = 25.1390000000247,
				["name"] = "Trash abgräumt",
				["clock"] = "23:19:50",
			}, -- [4]
			{
				["elapsed"] = 21.0419999999576,
				["name"] = "Trash abgräumt",
				["clock"] = "23:19:06",
			}, -- [5]
			{
				["elapsed"] = 27.8389999999781,
				["name"] = "Trash abgräumt",
				["clock"] = "23:18:16",
			}, -- [6]
			{
				["elapsed"] = 17.0589999999502,
				["name"] = "Trash abgräumt",
				["clock"] = "23:17:56",
			}, -- [7]
			{
				["elapsed"] = 15.6050000000396,
				["name"] = "Trash abgräumt",
				["clock"] = "23:17:05",
			}, -- [8]
		},
		["start_time"] = 273224.362,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
			["Raid Damage Done"] = {
			},
		},
		["totals_grupo"] = {
			1783362.042144, -- [1]
			0.003516, -- [2]
			{
				13.002209, -- [1]
				[0] = 42.042748,
				["alternatepower"] = 0,
				[3] = 0,
				[6] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
	},
	["character_data"] = {
		["logons"] = 1,
	},
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = true,
			["is_open"] = true,
			["isLocked"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				[2] = 2,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -156.608978271484,
					["x"] = 863.20263671875,
					["w"] = 320.865325927734,
					["h"] = 129.999984741211,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [1]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = true,
			["is_open"] = true,
			["isLocked"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				[4] = 1,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -306.598480224609,
					["x"] = 863.20263671875,
					["w"] = 320.865325927734,
					["h"] = 130,
				},
				["solo"] = {
					["y"] = 1.9998779296875,
					["x"] = 1,
					["w"] = 300.000061035156,
					["h"] = 299.999969482422,
				},
			},
		}, -- [2]
	},
	["last_instance_time"] = 1506288207,
	["announce_cooldowns"] = {
		["enabled"] = false,
		["ignored_cooldowns"] = {
		},
		["custom"] = "",
		["channel"] = "RAID",
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["announce_damagerecord"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["cached_specs"] = {
		["Player-1104-07CD22C5"] = 261,
	},
}
