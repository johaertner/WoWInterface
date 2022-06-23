
_detalhes_database = {
	["savedbuffs"] = {
	},
	["mythic_dungeon_id"] = 24,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["ocd_tracker"] = {
		["enabled"] = false,
		["current_cooldowns"] = {
		},
		["cooldowns"] = {
		},
		["show_conditions"] = {
			["only_inside_instance"] = true,
			["only_in_group"] = true,
		},
		["show_options"] = false,
		["pos"] = {
		},
	},
	["last_version"] = "9.2.09735",
	["character_data"] = {
		["logons"] = 569,
	},
	["tabela_instancias"] = {
	},
	["coach"] = {
		["enabled"] = false,
		["welcome_panel_pos"] = {
		},
		["last_coach_name"] = false,
	},
	["local_instances_config"] = {
		{
			["modo"] = 2,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
			["isLocked"] = false,
			["is_open"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -326.6110534667969,
					["x"] = 899.6993408203125,
					["w"] = 278.1650695800781,
					["h"] = 164.8594360351563,
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
			["modo"] = 2,
			["sub_attribute"] = 1,
			["verticalSnap"] = true,
			["isLocked"] = true,
			["is_open"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				5, -- [4]
				1, -- [5]
			},
			["snap"] = {
				[4] = 1,
			},
			["segment"] = 0,
			["mode"] = 2,
			["attribute"] = 2,
			["pos"] = {
				["normal"] = {
					["y"] = -493.1696853637695,
					["x"] = 899.6993408203125,
					["w"] = 278.1650695800781,
					["h"] = 128.2577819824219,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [2]
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["last_instance_id"] = 2070,
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["next"] = "",
		["custom"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = false,
		["reverse"] = false,
		["channel"] = "SELF",
	},
	["active_profile"] = "Adelgunde-Nathrezim",
	["last_encounter"] = "Lady Jaina Prachtmeer",
	["ignore_nicktag"] = false,
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["enabled"] = true,
			["dps"] = 0,
			["level"] = 1,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["v1"] = true,
			["v2"] = true,
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
			["author"] = "Details! Team",
			["last_encounter_hash"] = false,
			["enabled"] = true,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 247,
			["timeline_cutoff_delete_time"] = 3,
			["showing_type"] = 4,
			["InstalledAt"] = 1499959348,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["max_emote_segments"] = 3,
			["last_section_selected"] = "main",
			["author"] = "Details! Team",
			["window_scale"] = 1,
			["encounter_timers_dbm"] = {
			},
			["show_icon"] = 5,
			["opened"] = 0,
			["hide_on_combat"] = false,
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
					["version"] = "v2.0",
					["iType"] = "raid-HEALER",
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
				["show_method"] = 4,
				["auto_create"] = true,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["enabled"] = true,
			["animate"] = false,
			["alwaysshowme"] = true,
			["hide_pull_bar"] = false,
			["useclasscolors"] = false,
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["openedfromcommand"] = false,
			["updatespeed"] = 1,
			["dividebyhundred"] = true,
			["showamount"] = false,
			["useplayercolor"] = false,
			["playSound"] = false,
			["usefocus"] = false,
			["playSoundFile"] = "Details Threat Warning Volume 3",
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["tank_block_size_height"] = 50,
			["show_power_bar"] = false,
			["first_run"] = false,
			["aura_timer_text_size"] = 14,
			["tank_block_castbar_size_height"] = 16,
			["show_health_bar"] = true,
			["aura_offset_y"] = 0,
			["enabled"] = true,
			["show_cast_bar"] = false,
			["author"] = "Details! Team",
			["tank_block_size"] = 150,
			["bar_height"] = 24,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0.24705882, -- [1]
				0.0039215, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = false,
			["tank_block_powerbar_size_height"] = 10,
			["tank_block_height"] = 40,
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
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["is_first_run"] = false,
			["grow_direction"] = "right",
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
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1,
				["font_shadow"] = true,
				["y"] = -6.103515625e-05,
				["x"] = -6.103515625e-05,
				["attribute_type"] = 1,
				["update_speed"] = 0.05,
				["size"] = 32,
			},
			["arrow_anchor_x"] = 0,
			["main_frame_strata"] = "LOW",
			["row_texture"] = "Details Serenity",
			["use_square_mode"] = false,
			["arrow_anchor_y"] = 0,
			["main_frame_locked"] = false,
			["square_amount"] = 5,
			["enabled"] = false,
			["arrow_size"] = 10,
			["font_size"] = 10,
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["use_spark"] = true,
			["y"] = -1.52587890625e-05,
			["x"] = 0,
			["font_face"] = "Friz Quadrata TT",
			["square_size"] = 32,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["point"] = "CENTER",
			["row_height"] = 20,
			["scale"] = 1,
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
			["author"] = "Details! Team",
			["realm_history"] = {
			},
			["realm_lastamt"] = 0,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["cached_roles"] = {
	},
	["nick_tag_cache"] = {
		["last_version"] = 14,
		["nextreset"] = 1653677638,
	},
	["on_death_menu"] = true,
	["benchmark_db"] = {
		["frame"] = {
		},
	},
	["last_realversion"] = 146,
	["cached_talents"] = {
	},
	["combat_counter"] = 7174,
	["combat_id"] = 247,
	["savedStyles"] = {
	},
	["last_instance_time"] = 1606158471,
	["SoloTablesSaved"] = {
		["Mode"] = 1,
	},
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
		["raid_roster_indexed"] = {
		},
		["tempo_start"] = 703235.652,
		["last_events_tables"] = {
		},
		["alternate_power"] = {
		},
		["combat_counter"] = 7172,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
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
		["aura_timeline"] = {
		},
		["__call"] = {
		},
		["data_inicio"] = 0,
		["end_time"] = 703235.652,
		["spells_cast_timeline"] = {
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
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
		["frags"] = {
		},
		["data_fim"] = 0,
		["cleu_events"] = {
			["n"] = 1,
		},
		["CombatSkillCache"] = {
		},
		["cleu_timeline"] = {
		},
		["start_time"] = 703235.652,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
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
	},
	["force_font_outline"] = "",
	["last_day"] = "12",
	["mythic_dungeon_currentsaved"] = {
		["dungeon_name"] = "Das Auge Azsharas",
		["started"] = false,
		["segment_id"] = 6,
		["ej_id"] = 716,
		["started_at"] = 1526849207.7,
		["run_id"] = 24,
		["level"] = 15,
		["dungeon_zone_id"] = 1456,
		["previous_boss_killed_at"] = 1526851571,
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
		["Player-580-08431213"] = 270,
		["Player-1104-05994FCB"] = 258,
	},
}
