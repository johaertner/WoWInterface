
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 7,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["last_version"] = "v7.3.5.5572",
	["character_data"] = {
		["logons"] = 163,
	},
	["tabela_instancias"] = {
	},
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
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
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -156.624267578125,
					["x"] = 871.244995117188,
					["w"] = 320.865386962891,
					["h"] = 130.000015258789,
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
			["verticalSnap"] = false,
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
			},
			["mode"] = 2,
			["attribute"] = 2,
			["pos"] = {
				["normal"] = {
					["y"] = -306.623687744141,
					["x"] = 871.244995117188,
					["w"] = 320.865386962891,
					["h"] = 130.000030517578,
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
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["last_instance_id"] = 1501,
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
	["last_realversion"] = 130,
	["benchmark_db"] = {
		["frame"] = {
		},
	},
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
			["first_run"] = true,
			["endurance_threshold"] = 3,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["max_segments_for_current"] = 2,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["InstalledAt"] = 1504978848,
			["last_encounter_hash"] = false,
			["showing_type"] = 4,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 1277,
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
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "Raid Healing Done",
					},
					["segment_type"] = 1,
					["name"] = "Raid Healing Done",
					["data"] = "PRESET_RAID_HEAL",
					["texture"] = "line",
				}, -- [4]
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "Healing (Same Class)",
					},
					["segment_type"] = 1,
					["name"] = "Healing (Same Class)",
					["data"] = "PRESET_HEAL_SAME_CLASS",
					["texture"] = "line",
				}, -- [5]
				{
					["iType"] = "raid-HEALER",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-HEALER",
						["name"] = "All Healers",
					},
					["segment_type"] = 1,
					["name"] = "All Healers",
					["data"] = "PRESET_ALL_HEALERS",
					["texture"] = "line",
				}, -- [6]
				["last_selected"] = 6,
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
			["point"] = "CENTER",
			["enabled"] = false,
			["arrow_size"] = 10,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
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
			["use_spark"] = true,
			["author"] = "Details! Team",
			["main_frame_locked"] = false,
			["arrow_anchor_y"] = 0,
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
	["ignore_nicktag"] = false,
	["last_encounter"] = "Varimathras",
	["mythic_dungeon_currentsaved"] = {
		["dungeon_name"] = "Neltharions Hort",
		["started"] = false,
		["segment_id"] = 4,
		["ej_id"] = 767,
		["started_at"] = 1520032306.7,
		["run_id"] = 7,
		["level"] = 16,
		["dungeon_zone_id"] = 1458,
		["previous_boss_killed_at"] = 1520033350,
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1528310351,
		["last_version"] = 10,
	},
	["combat_counter"] = 3394,
	["combat_id"] = 1277,
	["savedStyles"] = {
	},
	["last_instance_time"] = 1520888587,
	["last_day"] = "22",
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
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
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
		["combat_counter"] = 3382,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
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
		["data_inicio"] = 0,
		["end_time"] = 130601.137,
		["hasSaved"] = true,
		["frags"] = {
		},
		["data_fim"] = 0,
		["overall_refreshed"] = true,
		["CombatSkillCache"] = {
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
		["start_time"] = 130601.137,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
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
	},
	["force_font_outline"] = "",
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["cached_talents"] = {
		["Player-1104-07C9E2DD"] = {
			22190, -- [1]
			17599, -- [2]
			22179, -- [3]
			21203, -- [4]
			17575, -- [5]
			17569, -- [6]
			22181, -- [7]
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
		["Player-1104-07C9E2DD"] = 65,
	},
}
