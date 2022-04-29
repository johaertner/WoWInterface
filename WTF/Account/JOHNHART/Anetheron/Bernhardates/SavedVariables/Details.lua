
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 0,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["combat_counter"] = 21,
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["tabela_instancias"] = {
	},
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["is_open"] = true,
			["isLocked"] = false,
			["snap"] = {
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = 147.94482421875,
					["x"] = 915.357788085938,
					["w"] = 320.000030517578,
					["h"] = 129.999893188477,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [1]
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["last_instance_id"] = 1557,
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
	["active_profile"] = "Bernhardates-Anetheron",
	["last_realversion"] = 126,
	["ignore_nicktag"] = false,
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["author"] = "Details! Team",
			["dps"] = 0,
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
			["InstalledAt"] = 1506288699,
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
			["showamount"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["useclasscolors"] = false,
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
			["row_height"] = 20,
			["main_frame_strata"] = "LOW",
			["enabled"] = false,
			["arrow_size"] = 10,
			["point"] = "CENTER",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -6.1035156250e-005,
				["x"] = -6.1035156250e-005,
				["size"] = 32,
				["update_speed"] = 0.05,
				["attribute_type"] = 1,
			},
			["font_size"] = 10,
			["x"] = 0,
			["font_face"] = "Friz Quadrata TT",
			["y"] = -1.525878906250e-005,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["arrow_anchor_y"] = 0,
			["main_frame_locked"] = false,
			["use_spark"] = true,
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
	["last_instance_time"] = 1506791014,
	["last_day"] = "30",
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["combat_id"] = 6,
	["savedStyles"] = {
	},
	["character_data"] = {
		["logons"] = 3,
	},
	["last_version"] = "v7.3.0.4723",
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
					["flag_original"] = 1300,
					["totalabsorbed"] = 0.04514,
					["damage_from"] = {
						["Grunzer der Horde"] = true,
						["Bernhardates"] = true,
						["Teufelsfeuerwichtel"] = true,
					},
					["targets"] = {
						["Grunzer der Horde"] = 591604,
						["Zielattrappe"] = 6703700,
						["Teufelsfeuerhöllenbestie"] = 287608,
						["Teufelsfeuerwichtel"] = 70329,
						["Hinterhaltsteufelsfledermaus"] = 97018,
					},
					["delay"] = 0,
					["pets"] = {
						"Chargak <Bernhardates> <Bernhardates>", -- [1]
						"Brand <Bernhardates> <Bernhardates>", -- [2]
						"Zelikar <Bernhardates> <Bernhardates>", -- [3]
					},
					["end_time"] = 1506288945,
					["damage_taken"] = 227122.04514,
					["friendlyfire_total"] = 217865,
					["raid_targets"] = {
					},
					["total_without_pet"] = 5846260.04514,
					["friendlyfire"] = {
						["Grunzer der Horde"] = {
							["total"] = 2285,
							["spells"] = {
								[146739] = 2285,
							},
						},
						["Bernhardates"] = {
							["total"] = 215580,
							["spells"] = {
								[1454] = 215580,
							},
						},
					},
					["fight_component"] = true,
					["total"] = 7750259.04514,
					["last_dps"] = 0,
					["tipo"] = 1,
					["nome"] = "Bernhardates",
					["spells"] = {
						["_ActorTable"] = {
							[980] = {
								["c_amt"] = 56,
								["b_amt"] = 0,
								["c_dmg"] = 283441,
								["g_amt"] = 0,
								["n_max"] = 3792,
								["targets"] = {
									["Grunzer der Horde"] = 56376,
									["Zielattrappe"] = 951618,
									["Teufelsfeuerhöllenbestie"] = 22113,
									["Teufelsfeuerwichtel"] = 7536,
									["Hinterhaltsteufelsfledermaus"] = 16082,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 770284,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 371,
								["total"] = 1053725,
								["c_max"] = 7582,
								["id"] = 980,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 315,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
							[233490] = {
								["c_amt"] = 34,
								["b_amt"] = 0,
								["c_dmg"] = 529188,
								["g_amt"] = 0,
								["n_max"] = 9656,
								["targets"] = {
									["Grunzer der Horde"] = 166357,
									["Zielattrappe"] = 1300948,
									["Teufelsfeuerhöllenbestie"] = 89577,
									["Teufelsfeuerwichtel"] = 6398,
									["Hinterhaltsteufelsfledermaus"] = 31991,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 1066083,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 172,
								["total"] = 1595271,
								["c_max"] = 19312,
								["id"] = 233490,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 138,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
							[198590] = {
								["c_amt"] = 42,
								["b_amt"] = 0,
								["c_dmg"] = 535102,
								["g_amt"] = 0,
								["n_max"] = 6932,
								["targets"] = {
									["Grunzer der Horde"] = 137788,
									["Zielattrappe"] = 1314308,
									["Teufelsfeuerhöllenbestie"] = 68895,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 985889,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 198,
								["total"] = 1520991,
								["c_max"] = 13863,
								["id"] = 198590,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 156,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
							[146739] = {
								["c_amt"] = 64,
								["b_amt"] = 0,
								["c_dmg"] = 308541,
								["g_amt"] = 0,
								["n_max"] = 3449,
								["targets"] = {
									["Grunzer der Horde"] = 82265,
									["Zielattrappe"] = 832581,
									["Teufelsfeuerhöllenbestie"] = 43418,
									["Teufelsfeuerwichtel"] = 13708,
									["Hinterhaltsteufelsfledermaus"] = 24240,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 687671,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 332,
								["total"] = 996212,
								["c_max"] = 6897,
								["id"] = 146739,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 268,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
							[63106] = {
								["c_amt"] = 18,
								["b_amt"] = 0,
								["c_dmg"] = 238332,
								["g_amt"] = 0,
								["n_max"] = 7497,
								["targets"] = {
									["Zielattrappe"] = 680061,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 441729,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 93,
								["total"] = 680061,
								["c_max"] = 14994,
								["id"] = 63106,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 75,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
						},
						["tipo"] = 2,
					},
					["grupo"] = true,
					["dps_started"] = false,
					["spec"] = 265,
					["custom"] = 0,
					["last_event"] = 0,
					["on_hold"] = false,
					["start_time"] = 1506288263,
					["serial"] = "Player-1104-07CD2355",
					["classe"] = "WARLOCK",
				}, -- [1]
				{
					["flag_original"] = 4369,
					["totalabsorbed"] = 0.026028,
					["damage_from"] = {
						["Teufelsfeuerwichtel"] = true,
						["Hinterhaltsteufelsfledermaus"] = true,
						["Grunzer der Horde"] = true,
						["Teufelsfeuerhöllenbestie"] = true,
					},
					["targets"] = {
						["Grunzer der Horde"] = 148818,
						["Zielattrappe"] = 532486,
						["Teufelsfeuerhöllenbestie"] = 63605,
						["Teufelsfeuerwichtel"] = 42687,
						["Hinterhaltsteufelsfledermaus"] = 24705,
					},
					["pets"] = {
					},
					["friendlyfire"] = {
					},
					["friendlyfire_total"] = 0,
					["raid_targets"] = {
					},
					["total_without_pet"] = 812301.026028,
					["tipo"] = 1,
					["dps_started"] = false,
					["end_time"] = 1506289181,
					["delay"] = 0,
					["ownerName"] = "Bernhardates",
					["nome"] = "Chargak <Bernhardates> <Bernhardates>",
					["spells"] = {
						["_ActorTable"] = {
							{
								["c_amt"] = 31,
								["b_amt"] = 0,
								["c_dmg"] = 142653,
								["g_amt"] = 0,
								["n_max"] = 2301,
								["targets"] = {
									["Grunzer der Horde"] = 62125,
									["Zielattrappe"] = 450978,
									["Teufelsfeuerhöllenbestie"] = 34514,
									["Teufelsfeuerwichtel"] = 9201,
									["Hinterhaltsteufelsfledermaus"] = 9203,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 423368,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 215,
								["total"] = 566021,
								["c_max"] = 4602,
								["id"] = 1,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 184,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							}, -- [1]
							[3716] = {
								["c_amt"] = 0,
								["b_amt"] = 0,
								["c_dmg"] = 0,
								["g_amt"] = 0,
								["n_max"] = 575,
								["targets"] = {
									["Grunzer der Horde"] = 14925,
									["Zielattrappe"] = 81508,
									["Teufelsfeuerhöllenbestie"] = 5166,
									["Teufelsfeuerwichtel"] = 14350,
									["Hinterhaltsteufelsfledermaus"] = 1148,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 117097,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 204,
								["total"] = 117097,
								["c_max"] = 0,
								["id"] = 3716,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 204,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
							[115234] = {
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 28707,
								["g_amt"] = 0,
								["n_max"] = 4785,
								["targets"] = {
									["Teufelsfeuerwichtel"] = 19136,
									["Hinterhaltsteufelsfledermaus"] = 14354,
									["Grunzer der Horde"] = 71768,
									["Teufelsfeuerhöllenbestie"] = 23925,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 100476,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 24,
								["total"] = 129183,
								["c_max"] = 9569,
								["id"] = 115234,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 21,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
						},
						["tipo"] = 2,
					},
					["classe"] = "PET",
					["total"] = 812301.026028,
					["damage_taken"] = 73578.026028,
					["custom"] = 0,
					["last_event"] = 0,
					["on_hold"] = false,
					["start_time"] = 1506289134,
					["serial"] = "Creature-0-3109-1557-21642-1860-0000482478",
					["last_dps"] = 0,
				}, -- [2]
				{
					["flag_original"] = 4369,
					["totalabsorbed"] = 0.011109,
					["damage_from"] = {
					},
					["targets"] = {
						["Zielattrappe"] = 229906,
					},
					["pets"] = {
					},
					["last_dps"] = 0,
					["classe"] = "PET",
					["raid_targets"] = {
					},
					["total_without_pet"] = 229906.011109,
					["damage_taken"] = 0.011109,
					["dps_started"] = false,
					["total"] = 229906.011109,
					["delay"] = 0,
					["ownerName"] = "Bernhardates",
					["nome"] = "Brand <Bernhardates> <Bernhardates>",
					["spells"] = {
						["_ActorTable"] = {
							{
								["c_amt"] = 3,
								["b_amt"] = 0,
								["c_dmg"] = 12078,
								["g_amt"] = 0,
								["n_max"] = 2013,
								["targets"] = {
									["Zielattrappe"] = 76494,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 64416,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 35,
								["total"] = 76494,
								["c_max"] = 4026,
								["id"] = 1,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 32,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							}, -- [1]
							[20153] = {
								["c_amt"] = 7,
								["b_amt"] = 0,
								["c_dmg"] = 45696,
								["g_amt"] = 0,
								["n_max"] = 3265,
								["targets"] = {
									["Zielattrappe"] = 153412,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 107716,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 40,
								["total"] = 153412,
								["c_max"] = 6528,
								["id"] = 20153,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 33,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
						},
						["tipo"] = 2,
					},
					["friendlyfire"] = {
					},
					["tipo"] = 1,
					["end_time"] = 1506289434,
					["custom"] = 0,
					["last_event"] = 0,
					["on_hold"] = false,
					["start_time"] = 1506289360,
					["serial"] = "Creature-0-3109-1557-21642-78217-00004826BC",
					["friendlyfire_total"] = 0,
				}, -- [3]
				{
					["flag_original"] = 4369,
					["totalabsorbed"] = 0.008116,
					["damage_from"] = {
					},
					["targets"] = {
						["Zielattrappe"] = 861792,
					},
					["pets"] = {
					},
					["last_dps"] = 0,
					["classe"] = "PET",
					["raid_targets"] = {
					},
					["total_without_pet"] = 861792.008116,
					["damage_taken"] = 0.008116,
					["dps_started"] = false,
					["total"] = 861792.008116,
					["delay"] = 0,
					["ownerName"] = "Bernhardates",
					["nome"] = "Zelikar <Bernhardates> <Bernhardates>",
					["spells"] = {
						["_ActorTable"] = {
							[85692] = {
								["c_amt"] = 8,
								["b_amt"] = 0,
								["c_dmg"] = 176777,
								["g_amt"] = 0,
								["n_max"] = 11049,
								["targets"] = {
									["Zielattrappe"] = 861792,
								},
								["m_dmg"] = 0,
								["n_dmg"] = 685015,
								["n_min"] = 0,
								["g_dmg"] = 0,
								["counter"] = 70,
								["total"] = 861792,
								["c_max"] = 22098,
								["id"] = 85692,
								["r_dmg"] = 0,
								["c_min"] = 0,
								["m_crit"] = 0,
								["r_amt"] = 0,
								["m_amt"] = 0,
								["successful_casted"] = 0,
								["b_dmg"] = 0,
								["n_amt"] = 62,
								["a_amt"] = 0,
								["a_dmg"] = 0,
							},
						},
						["tipo"] = 2,
					},
					["friendlyfire"] = {
					},
					["tipo"] = 1,
					["end_time"] = 1506289665,
					["custom"] = 0,
					["last_event"] = 0,
					["on_hold"] = false,
					["start_time"] = 1506289463,
					["serial"] = "Creature-0-3109-1557-21642-78158-000048272F",
					["friendlyfire_total"] = 0,
				}, -- [4]
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
				{
					["flag_original"] = 1297,
					["targets_overheal"] = {
						["Bernhardates"] = 3197012,
					},
					["pets"] = {
						"Chargak <Bernhardates> <Bernhardates>", -- [1]
					},
					["iniciar_hps"] = false,
					["heal_enemy_amt"] = 0,
					["totalover"] = 3197012.039158,
					["total_without_pet"] = 252975.039158,
					["total"] = 252975.039158,
					["targets_absorbs"] = {
					},
					["heal_enemy"] = {
					},
					["on_hold"] = false,
					["serial"] = "Player-1104-07CD2355",
					["totalabsorb"] = 0.039158,
					["last_hps"] = 0,
					["targets"] = {
						["Bernhardates"] = 332665,
					},
					["totalover_without_pet"] = 0.039158,
					["healing_taken"] = 252975.039158,
					["fight_component"] = true,
					["end_time"] = 1506288945,
					["healing_from"] = {
						["Bernhardates"] = true,
					},
					["nome"] = "Bernhardates",
					["spells"] = {
						["_ActorTable"] = {
							[198590] = {
								["c_amt"] = 0,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
									["Bernhardates"] = 2843364,
								},
								["n_max"] = 22966,
								["targets"] = {
									["Bernhardates"] = 198618,
								},
								["n_min"] = 0,
								["counter"] = 198,
								["overheal"] = 2843364,
								["total"] = 198618,
								["c_max"] = 0,
								["id"] = 198590,
								["targets_absorbs"] = {
								},
								["c_curado"] = 0,
								["m_crit"] = 0,
								["m_healed"] = 0,
								["c_min"] = 0,
								["totaldenied"] = 0,
								["n_amt"] = 198,
								["n_curado"] = 198618,
								["m_amt"] = 0,
								["absorbed"] = 0,
							},
							[63106] = {
								["c_amt"] = 0,
								["totalabsorb"] = 0,
								["targets_overheal"] = {
									["Bernhardates"] = 353648,
								},
								["n_max"] = 7196,
								["targets"] = {
									["Bernhardates"] = 54357,
								},
								["n_min"] = 0,
								["counter"] = 93,
								["overheal"] = 353648,
								["total"] = 54357,
								["c_max"] = 0,
								["id"] = 63106,
								["targets_absorbs"] = {
								},
								["c_curado"] = 0,
								["m_crit"] = 0,
								["m_healed"] = 0,
								["c_min"] = 0,
								["totaldenied"] = 0,
								["n_amt"] = 93,
								["n_curado"] = 54357,
								["m_amt"] = 0,
								["absorbed"] = 0,
							},
						},
						["tipo"] = 3,
					},
					["grupo"] = true,
					["tipo"] = 2,
					["classe"] = "WARLOCK",
					["custom"] = 0,
					["last_event"] = 0,
					["totaldenied"] = 0.039158,
					["start_time"] = 1506288564,
					["delay"] = 0,
					["spec"] = 265,
				}, -- [1]
				{
					["flag_original"] = 4369,
					["totalabsorb"] = 0.009535,
					["last_hps"] = 0,
					["healing_from"] = {
						["Seherin Janidi"] = true,
					},
					["targets"] = {
					},
					["targets_absorbs"] = {
					},
					["pets"] = {
					},
					["iniciar_hps"] = false,
					["targets_overheal"] = {
					},
					["classe"] = "PET",
					["totalover"] = 0.009535,
					["total_without_pet"] = 0.009535,
					["totalover_without_pet"] = 0.009535,
					["healing_taken"] = 10367.009535,
					["total"] = 0.009535,
					["heal_enemy_amt"] = 0,
					["ownerName"] = "Bernhardates",
					["nome"] = "Chargak <Bernhardates> <Bernhardates>",
					["spells"] = {
						["_ActorTable"] = {
						},
						["tipo"] = 3,
					},
					["end_time"] = 1506289181,
					["delay"] = 0,
					["heal_enemy"] = {
					},
					["totaldenied"] = 0.009535,
					["custom"] = 0,
					["last_event"] = 0,
					["on_hold"] = false,
					["start_time"] = 1506289178,
					["serial"] = "Creature-0-3109-1557-21642-1860-0000482478",
					["tipo"] = 2,
				}, -- [2]
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
				{
					["received"] = 336043.034061,
					["resource"] = 0.034061,
					["targets"] = {
						["Bernhardates"] = 336043,
					},
					["pets"] = {
					},
					["powertype"] = 0,
					["classe"] = "WARLOCK",
					["fight_component"] = true,
					["total"] = 336043.034061,
					["nome"] = "Bernhardates",
					["spec"] = 265,
					["grupo"] = true,
					["flag_original"] = 1297,
					["tipo"] = 3,
					["alternatepower"] = 0.034061,
					["last_event"] = 0,
					["serial"] = "Player-1104-07CD2355",
					["spells"] = {
						["_ActorTable"] = {
							[17941] = {
								["id"] = 17941,
								["total"] = 41,
								["targets"] = {
									["Bernhardates"] = 41,
								},
								["counter"] = 57,
							},
							[31117] = {
								["id"] = 31117,
								["total"] = 2,
								["targets"] = {
									["Bernhardates"] = 2,
								},
								["counter"] = 2,
							},
							[1454] = {
								["id"] = 1454,
								["total"] = 336000,
								["targets"] = {
									["Bernhardates"] = 336000,
								},
								["counter"] = 7,
							},
						},
						["tipo"] = 7,
					},
				}, -- [1]
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
				{
					["flag_original"] = 1047,
					["debuff_uptime_spells"] = {
						["_ActorTable"] = {
							[980] = {
								["counter"] = 0,
								["refreshamt"] = 103,
								["activedamt"] = -1,
								["uptime"] = 625,
								["id"] = 980,
								["appliedamt"] = 14,
								["targets"] = {
								},
								["actived_at"] = 1506289119,
							},
							[233496] = {
								["counter"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 8,
								["id"] = 233496,
								["uptime"] = 55,
								["targets"] = {
								},
								["refreshamt"] = 0,
							},
							[233490] = {
								["counter"] = 0,
								["activedamt"] = 2,
								["appliedamt"] = 39,
								["id"] = 233490,
								["uptime"] = 252,
								["targets"] = {
								},
								["refreshamt"] = 0,
							},
							[198590] = {
								["counter"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 50,
								["id"] = 198590,
								["uptime"] = 200,
								["targets"] = {
								},
								["refreshamt"] = 2,
							},
							[146739] = {
								["counter"] = 0,
								["activedamt"] = 2,
								["appliedamt"] = 18,
								["id"] = 146739,
								["uptime"] = 579,
								["targets"] = {
								},
								["refreshamt"] = 33,
							},
							[63106] = {
								["counter"] = 0,
								["activedamt"] = 0,
								["appliedamt"] = 10,
								["id"] = 63106,
								["uptime"] = 234,
								["targets"] = {
								},
								["refreshamt"] = 6,
							},
						},
						["tipo"] = 9,
					},
					["pets"] = {
						"Chargak <Bernhardates> <Bernhardates>", -- [1]
						"Brand <Bernhardates> <Bernhardates>", -- [2]
						"Zelikar <Bernhardates> <Bernhardates>", -- [3]
					},
					["classe"] = "WARLOCK",
					["buff_uptime_spells"] = {
						["_ActorTable"] = {
							[108366] = {
								["counter"] = 0,
								["activedamt"] = 2,
								["appliedamt"] = 2,
								["id"] = 108366,
								["uptime"] = 271,
								["targets"] = {
								},
								["refreshamt"] = 0,
							},
						},
						["tipo"] = 9,
					},
					["fight_component"] = true,
					["debuff_uptime"] = 1945,
					["debuff_uptime_targets"] = {
					},
					["spec"] = 265,
					["grupo"] = true,
					["spell_cast"] = {
						[172] = 49,
						[30108] = 46,
						[980] = 41,
						[198590] = 51,
						[1454] = 10,
						[63106] = 15,
					},
					["tipo"] = 4,
					["last_event"] = 0,
					["buff_uptime"] = 271,
					["nome"] = "Bernhardates",
					["serial"] = "Player-1104-07CD2355",
					["buff_uptime_targets"] = {
					},
				}, -- [1]
				{
					["flag_original"] = 4369,
					["debuff_uptime"] = 44,
					["debuff_uptime_spells"] = {
						["_ActorTable"] = {
							[17735] = {
								["counter"] = 0,
								["activedamt"] = 1,
								["appliedamt"] = 1,
								["id"] = 17735,
								["uptime"] = 44,
								["targets"] = {
								},
								["refreshamt"] = 0,
							},
						},
						["tipo"] = 9,
					},
					["nome"] = "Chargak <Bernhardates> <Bernhardates>",
					["tipo"] = 4,
					["spell_cast"] = {
						[17735] = 31,
						[115234] = 24,
						[3716] = 166,
						[115232] = 9,
					},
					["debuff_uptime_targets"] = {
					},
					["ownerName"] = "Bernhardates",
					["classe"] = "UNGROUPPLAYER",
					["pets"] = {
					},
					["serial"] = "Creature-0-3109-1557-21642-1860-0000482478",
					["last_event"] = 0,
				}, -- [2]
				{
					["flag_original"] = 4369,
					["ownerName"] = "Bernhardates",
					["nome"] = "Brand <Bernhardates> <Bernhardates>",
					["pets"] = {
					},
					["tipo"] = 4,
					["classe"] = "PET",
					["last_event"] = 0,
					["serial"] = "Creature-0-3109-1557-21642-78217-00004826BC",
					["spell_cast"] = {
						[171021] = 5,
						[171014] = 5,
						[171011] = 1,
					},
				}, -- [3]
				{
					["flag_original"] = 4369,
					["ownerName"] = "Bernhardates",
					["nome"] = "Zelikar <Bernhardates> <Bernhardates>",
					["pets"] = {
					},
					["tipo"] = 4,
					["classe"] = "PET",
					["last_event"] = 0,
					["serial"] = "Creature-0-3109-1557-21642-78158-000048272F",
					["spell_cast"] = {
						[85692] = 70,
					},
				}, -- [4]
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
		["combat_counter"] = 6,
		["totals"] = {
			10256684.060012, -- [1]
			252975.037004, -- [2]
			{
				0, -- [1]
				[0] = 336043.028574,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
			["voidzone_damage"] = 0,
			["frags_total"] = 0,
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
			["damage"] = {
			},
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
		},
		["end_time"] = 274945.513,
		["totals_grupo"] = {
			7750259.037835, -- [1]
			252975.034555, -- [2]
			{
				0, -- [1]
				[0] = 336043.028574,
				["alternatepower"] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["dead"] = 0,
				["cc_break"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["dispell"] = 0,
				["cooldowns_defensive"] = 0,
			}, -- [4]
		},
		["overall_refreshed"] = true,
		["hasSaved"] = true,
		["frags"] = {
		},
		["data_fim"] = "23:47:45",
		["overall_enemy_name"] = "-- x -- x --",
		["CombatSkillCache"] = {
		},
		["segments_added"] = {
			{
				["elapsed"] = 201.44399999996,
				["name"] = "Trash abgräumt",
				["clock"] = "23:44:23",
			}, -- [1]
			{
				["elapsed"] = 70.6390000000247,
				["name"] = "Trash abgräumt",
				["clock"] = "23:42:43",
			}, -- [2]
			{
				["elapsed"] = 43.3219999999856,
				["name"] = "Trash abgräumt",
				["clock"] = "23:38:58",
			}, -- [3]
			{
				["elapsed"] = 32.4519999999902,
				["name"] = "Trash abgräumt",
				["clock"] = "23:38:13",
			}, -- [4]
			{
				["elapsed"] = 16.6230000000214,
				["name"] = "Trash abgräumt",
				["clock"] = "23:37:36",
			}, -- [5]
			{
				["elapsed"] = 217.815999999992,
				["name"] = "Trash abgräumt",
				["clock"] = "23:33:08",
			}, -- [6]
			{
				["elapsed"] = 157.014999999956,
				["name"] = "Trash abgräumt",
				["clock"] = "23:33:08",
			}, -- [7]
		},
		["start_time"] = 274206.202,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
			["Raid Damage Done"] = {
			},
		},
		["data_inicio"] = "23:33:08",
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1507584699,
		["last_version"] = 9,
	},
	["force_font_outline"] = "",
	["cached_talents"] = {
		["Player-1104-07CD2355"] = {
			21182, -- [1]
			19279, -- [2]
			19280, -- [3]
			22040, -- [4]
			19293, -- [5]
			19291, -- [6]
			22044, -- [7]
		},
	},
	["announce_cooldowns"] = {
		["enabled"] = false,
		["ignored_cooldowns"] = {
		},
		["custom"] = "",
		["channel"] = "RAID",
	},
	["rank_window"] = {
		["last_difficulty"] = 15,
		["last_raid"] = "",
	},
	["announce_damagerecord"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["cached_specs"] = {
		["Player-1104-07CD2355"] = 265,
	},
}
