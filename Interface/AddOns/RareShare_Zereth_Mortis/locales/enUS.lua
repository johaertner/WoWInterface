local AddonName, Addon = ...

Addon.Loc = {
    Title = "Zereth Mortis",
	Events = {
		["Prefix"] = "Event started for",
		[183593] = "rises to serve Cartel Xy once more.",
		[183814] = "collapse shakes the mountains.",
		[180924] = "emerges from suspension as it senses food nearby!",
		[180746] = "readies itself for its final stand.",
		[183748] = "The ground vibrates... something burrows beneath the surface!",
		[180978] = "cautiously emerges from the depths below.",
		[183516] = "The Matriarch's vengeful shriek echoes across Zereth Mortis.",
		[178778] = "screeches in pain!",
    },
    Rares = {
        [178778] = "Gluttonous Overgrowth",       -- Local broadcast (complete)
		[178229] = "Feasting",
		[183927] = "Sand Matriarch Ileus",
		[179006] = "Akkaris",		
		[183925] = "Tahkwitz",
		[179043] = "Orixal",
		[183747] = "Vitiane",
		[182318] = "General Zarathura",
		[181249] = "Tethos",
		[180746] = "Protector of the First Ones", -- Zone wide broadcast (complete)
		[180924] = "Garudeon",                    -- Zone wide broadcast (complete)
		[180978] = "Hirukon",                     -- Zone wide broadcast (complete)
		[183814] = "Otaris the Provoked",         -- Zone wide broadcast (complete)
		[183748] = "Helmix",                      -- Zone wide broadcast (complete)
		[184804] = "Helmix",
		[183749] = "Helmix",
		[183516] = "The Engulfer",                -- Local broadcast (complete)
		[183746] = "Otiosen",
		[180917] = "Destabilized Core",           -- No broadcast
		[183737] = "Xy'rath the Covetous",        -- No broadcast
		[183596] = "Chitali the Eldest",          -- No broadcast
		[183722] = "Sorranos",
		[184409] = "Euv'ouk",
		[178563] = "Hadeon the Stonebreaker",
		[178963] = "Gorkek",
		[184413] = "Shifting Stargorger",
		[178508] = "Mother Phestis",
		[183646] = "Furidian",
		[183764] = "Zatojin",
		[183593] = "Corrupted Architect",         -- Zone wide broadcast (complete)
		[181360] = "Vexis",
    },
	Config = {
        ["Events"] = {
            "Enable Event Announcements",
            "Enables/Disables notifying of newly spawned events",
        },
        ["EventSounds"] = {
            "Enable Event Sounds",
            "Enables/Disables sounds for newly spawned events"
        },
        ["EventWaypoints"] = {
            "Enable Event TomTom Waypoints",
            "Enables/Disables automatic TomTom waypoints to newly spawned events",
        }
    },
}