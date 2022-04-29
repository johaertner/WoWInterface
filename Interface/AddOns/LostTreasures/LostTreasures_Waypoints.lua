--[[----------------------------------------------------------------------]]--
--[[--LostTreasures_Waypoints.lua										--]]--
--[[--See README.html for more info										--]]--
--[[----------------------------------------------------------------------]]--

-- /run print(IsQuestFlaggedCompleted(31399))
-- /run print(GetCurrentMapDungeonLevel())
_LT.waypoints = {
	[862] = { -- Pandaria (Outside of an actual zone)
		[31396] = {
			title = "Ship's Locker", 
			note = "Underwater, in the haul of the sunken ship.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				70.1, 74.5, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[806] = { -- The Jade Forest
		[31402] = {
			title = "Ancient Jinyu Staff", 
			note = "Underwater in the river.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				44.9, 64.6, 0, "spawn_point", 
				45.5, 64.4, 0, "spawn_point", 
				46.2, 71.2, 0, "spawn_point", 
				46.4, 65.3, 0, "spawn_point", 
				46.4, 70.1, 0, "spawn_point", 
				47.1, 67.5, 0, "spawn_point", 
			}, 
		}, 
		[31399] = {
			title = "Ancient Pandaren Mining Pick", 
			note = "The mining pick is located throughout the mine.\nThis does not flag the quest as completed when looted.\nYou can hide this waypoint from the options menu.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				46.0, 29.1, 0, "cave_entrance", 
				43.8, 30.7, 0, "spawn_point", 
				44.1, 27.0, 0, "spawn_point", 
				44.2, 28.6, 0, "spawn_point", 
				45.6, 29.5, 0, "spawn_point", -- Confirmed coord
			}, 
		}, 
		[31400] = {
			title = "Ancient Pandaren Tea Pot", 
			note = "Sits on the little table.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				26.2, 32.4, 0, "spawn_point", 
			}, 
		}, 
		[31864] = {
			title = "Chest of Supplies", 
			note = "Sits between a small boat wreck and a large tree, next to a river.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				24.6, 53.21, 0, "spawn_point", 
			}, 
		}, 
		[31403] = {
			title = "Hammer of Ten Thunders", 
			note = "Spawns (on the ground) leaning up against a statue.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				40.2, 13.7, 0, "spawn_point", 
				41.2, 13.9, 0, "spawn_point", 
				41.8, 17.6, 0, "spawn_point", 
				42.0, 17.5, 0, "spawn_point", -- Confirmed coord
				43.0, 11.6, 0, "spawn_point", 
			}, 
		}, 
		[31307] = {
			title = "Jade Infused Blade", 
			note = "Look for and interact with a npc named, \"Jade Warrior Statue\".", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				39.2, 46.6, 0, "spawn_point", 
			}, 
		}, 
		[31401] = {
			title = "Lucky Pandaren Coin", 
			note = "Look in the little fountain.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				31.9, 27.8, 0, "spawn_point", 
			}, 
		}, 
		[31865] = {
			title = "Offering of Rememberance", 
			note = "The object will be sitting right on the alter.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				46.3, 80.7, 0, "spawn_point", 
			}, 
		}, 
		[31404] = {
			title = "Pandaren Ritual Stone", 
			note = "Located in the middle of the stone pillars.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				23.5, 35.0, 0, "spawn_point", 
			}, 
		}, 
		[31866] = {
			title = "Stash of Gems", 
			note = "The stash is located on your right as you enter the cave at (62.4, 27.5).", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				62.6, 26.7, 0, "cave_entrance", 
				62.4, 27.5, 0, "spawn_point", 
			}, 
		}, 
		[31397] = {
			title = "Wodin's Mantid Shanker", 
			note = "Sits in the fountain. Make sure you look carefully, the water hides it very well.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				39.4, 7.2, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[807] = { -- Valley of the Four Winds
		[31284] = {
			title = "Ancient Pandaren Fishing Charm", 
			note = "Look for and interact with a npc named, \"Ghostly Pandaren Fisherman\".", 
			lostTreasuresOfPandaria = true, -- unknown
			confirmed = true, 
			cave = false, 
			coords = {
				46.8, 24.3, 0, "spawn_point", 
			}, 
		}, 
		[31292] = {
			title = "Ancient Pandaren Woodcutter", 
			note = "Look for and interact with a npc named, \"Ghostly Pandaren Craftsman\".\nHe is chopping down the tree.", 
			lostTreasuresOfPandaria = true, -- unknown
			confirmed = true, 
			cave = false, 
			coords = {
				45.4, 38.2, 0, "spawn_point", 
			}, 
		}, 
		[31869] = {
			title = "Boat-Building Instructions", 
			note = "In the house just north of the boat that is in the water.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				92.2, 39.5, 0, "spawn_point", 
			}, 
		}, 
		[31406] = {
			title = "Cache of Pilfered Goods", 
			note = "Located inside of the virmen infested tunnel.\nThere are various entrances near the waypoint.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				43.6, 37.4, 0, "spawn_point", 
			}, 
		}, 
		[31407] = {
			title = "Staff of the Hidden Master", 
			note = "The staff is sitting on the ground against the trunk of the tree.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				15.0, 33.7, 0, "spawn_point", -- Confirmed coord
				15.4, 29.1, 0, "spawn_point", 
				17.5, 35.7, 0, "spawn_point", 
				19.0, 42.5, 0, "spawn_point", 
				19.1, 37.9, 0, "spawn_point", 
				15.4, 29.2, 0, "spawn_point", -- Possible spawn?
				17.0, 35.0, 0, "spawn_point", -- Possible spawn?
				18.0, 42.0, 0, "spawn_point", -- Possible spawn?
				18.9, 42.5, 0, "spawn_point", -- Possible spawn?
			}, 
		}, 
		[31405] = {
			title = "Virmen Treasure Cache", 
			note = "The cache is to the left as you enter the cave at (23.8, 28.5).", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				23.2, 30.5, 0, "cave_entrance", 
				23.8, 28.5, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[873] = { -- The Veiled Stair
		[31867] = {
			title = "Forgotten Lockbox", 
			note = "Located in the \"Tavern In The Mists\", on the upper floor.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				54.6, 71.2, 0, "spawn_point", 
			}, 
		}, 
		[31428] = {
			title = "The Hammer of Folly", 
			note = "Located at the top of the mountain in front of a large stone plate.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				74.8, 76.4, 0, "spawn_point", 
				75.0, 76.6, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[857] = { -- Krasarang Wilds
		[31410] = {
			title = "Equipment Locker", 
			note = "On the bottom floor (there are 2 floors under the deck) of the large ship.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				42.4, 92.0, 0, "spawn_point", 
			}, 
		}, 
		[31409] = {
			title = "Pandaren Fishing Spear", 
			note = "Sitting in the sand behind Uncle Deming.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				50.8, 49.3, 0, "spawn_point", 
			}, 
		}, 
		[31411] = {
			title = "Recipe: Banana Infused Rum", 
			note = "Sits on the ship's deck.\nThere is a rare monster here that is required for [Glorious!] aswell.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				52.3, 88.7, 0, "spawn_point", 
			}, 
		}, 
		[31408] = {
			title = "Saurok Stone Tablet", 
			note = "The tablet is located in the cave.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				70.5, 9.5, 0, "cave_entrance", 
				75.1, 55.1, 0, "spawn_point", 
			}, 
		}, 
		[31863] = {
			title = "Stack of Papers", 
			note = "Sitting on the ground near a rock and some skeletons.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				52.1, 73.4, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[809] = { -- Kun-Lai Summit
		[31420] = {
			title = "Ancient Mogu Tablet", 
			note = "The tablet is located behind a mogu statue.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				63.9, 50.0, 0, "cave_entrance", 
				64.2, 45.1, 0, "spawn_point", 
			}, 
		}, 
		[31414] = {
			title = "Hozen Treasure Cache", 
			note = "The cache is located in the cave.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				50.3, 61.7, 0, "cave_entrance", 
				49.5, 59.4, 0, "spawn_point", 
			}, 
		}, 
		[31413] = {
			title = "Hozen Warrior Spear", 
			note = "Go down the middle ramp and head left when you can.\nIt will be sticking out of the largest of the two rocks in the water.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				52.8, 71.3, 0, "cave_entrance", 
				23.9, 67.5, 12, "spawn_point", 
			}, 
		}, 
		[31304] = {
			title = "Kafa Press", 
			note = "Look for and interact with a npc named, \"Frozen Trail Packer\"./nHe is in a large ice block, very easy to see.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				37.5, 78.0, 0, "cave_entrance", 
				35.2, 76.4, 0, "spawn_point", 
			}, 
		}, 
		[31418] = {
			title = "Lost Adventurer's Belongings", 
			note = "Up on the cliff. There is a rare monster here that is required for [Glorious!] aswell.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				36.7, 79.8, 0, "spawn_point", 
			}, 
		}, 
		[31868] = {
			title = "Mo-Mo's Treasure Chest", 
			note = "The chest is located at the back of the cave.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				48.1, 73.0, 0, "cave_entrance", 
				47.8, 73.4, 0, "spawn_point", 
			}, 
		}, 
		[31419] = {
			title = "Rikktik's Tick Remover", 
			note = "The tick remover is located on the statue.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				52.2, 50.8, 0, "cave_entrance", 
				52.5, 51.5, 0, "spawn_point", 
			}, 
		}, 
		[31412] = {
			title = "Sprite's Cloth Chest", 
			note = "The chest is located at the back of the cave.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				72.9, 73.4, 0, "cave_entrance", 
				74.7, 74.9, 0, "spawn_point", 
			}, 
		}, 
		[31416] = {
			title = "Statue of Xuen", 
			note = "Spawns underwater in a little lake.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				72.0, 33.9, 0, "spawn_point", 
			}, 
		}, 
		[31415] = {
			title = "Stolen Sprite Treasure", 
			note = "The treasure is located in the cave.\nFollow the cave path, take a left at the first fork, take a right and up at the second fork and finally take a left and up at the third fork.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				59.1, 52.4, 0, "cave_entrance", 
				41.4, 44.2, 8, "spawn_point", 
			}, 
		}, 
		[31421] = {
			title = "Sturdy Yaungol Spear", 
			note = "There is an entire spear rack that spawns with this object.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				70.0, 63.8, 0, "spawn_point", 
				71.2, 62.6, 0, "spawn_point", 
			}, 
		}, 
		[31417] = {
			title = "Tablet of Ren Yun", 
			note = "Sits on the ground in front of the statue of Ren Yun.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				44.7, 52.4, 0, "spawn_point", 
			}, 
		}, 
		[31422] = {
			title = "Terracotta Head", 
			note = "Just sitting on the ground.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				57.0, 75.5, 0, "spawn_point", 
				57.8, 76.3, 0, "spawn_point", 
				58.4, 73.5, 0, "spawn_point", 
				59.2, 73.0, 0, "spawn_point", 
				59.2, 74.5, 0, "spawn_point", 
			}, 
		}, 
	}, 
	[810] = { -- Townlong Steppes
		[31427] = {
			title = "Abandoned Crate of Goods", 
			note = "Inside of the small tent.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				62.8, 34.1, 0, "spawn_point", 
			}, 
		}, 
		[31426] = {
			title = "Amber Encased Moth", 
			note = "Just sitting on the ground.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			coords = {
				65.8, 86.1, 0, "spawn_point", 
			}, 
		}, 
		[31423] = {
			title = "Fragment of Dread", 
			note = "The fragment has many spawns in the cave, have fun with this one.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				34.9, 63.1, 0, "cave_entrance", 
			}, 
		}, 
		[31424] = {
			title = "Hardened Sap of Kri'vess", 
			note = "Sitting on the ground at one of the many locations.", 
			treasureOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				50.9, 55.2, 0, "spawn_point", 
				51.1, 57.3, 0, "spawn_point", 
				52.0, 58.7, 0, "spawn_point", 
				52.5, 57.7, 0, "spawn_point", 
				52.6, 55.4, 0, "spawn_point", 
				52.8, 56.2, 0, "spawn_point", 
				52.8, 60.0, 0, "spawn_point", 
				53.8, 61.4, 0, "spawn_point", 
				53.9, 58.4, 0, "spawn_point", 
				55.6, 54.1, 0, "spawn_point", 
				56.0, 55.5, 0, "spawn_point", -- Confirmed coord
				57.4, 56.7, 0, "spawn_point", 
				57.5, 58.4, 0, "spawn_point", 
				57.5, 58.5, 0, "spawn_point", 
			}, 
		}, 
		[31425] = {
			title = "Yaungol Fire Carrier", 
			note = "Just sitting on the ground.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				66.2, 44.7, 0, "spawn_point", 
				66.8, 48.1, 0, "spawn_point", -- Confirmed coord
			}, 
		}, 
	}, 
	[858] = { -- Dread Wastes
		[31438] = {
			title = "Blade of the Poisoned Mind", 
			note = "Near a cave entrance, hidden behind a bush.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				28.8, 41.9, 0, "spawn_point", 
			}, 
		}, 
		[31433] = {
			title = "Blade of the Prime", 
			note = "The blade is located in the back of the cave next to the Klaxxi daily boss.", 
			lostTreasuresOfPandaria = true, 
			confirmed = false, 
			cave = true, 
			coords = {
				66.7, 63.7, 0, "cave_entrance", 
				66.3, 66.5, 0, "spawn_point", 
			}, 
		}, 
		[31436] = {
			title = "Bloodsoaked Chitin Fragment", 
			note = "The fragment is located in the back of the cave next to some junk.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = true, 
			coords = {
				25.7, 54.3, 0, "cave_entrance", 
				25.9, 50.3, 0, "spawn_point", 
			}, 
		}, 
		[31435] = {
			title = "Dissector's Staff of Mutation", 
			note = "Sitting on the little rocky cliff.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				30.2, 90.8, 0, "spawn_point", 
			}, 
		}, 
		[31431] = {
			title = "Lucid Amulet of the Agile Mind", 
			note = "Sits on the ground by a formation of 5 rocks.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				33.0, 30.1, 0, "spawn_point", 
			}, 
		}, 
		[31430] = {
			title = "Malik's Stalwart Spear", 
			note = "Sticks out of the tree next to a rock.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				48.7, 29.9, 0, "spawn_point", 
			}, 
		}, 
		[31432] = {
			title = "Manipulator's Talisman", 
			note = "Look for and interact with a npc named, \"Glinting Rapana Whelk\".\nYeah, it's a snail.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				41.6, 64.6, 0, "spawn_point", 
				42.0, 62.2, 0, "spawn_point", 
				42.2, 63.6, 0, "spawn_point", 
			}, 
		}, 
		[31434] = {
			title = "Swarming Cleaver of Ka'roz", 
			note = "Underwater, sticking out of the rock.\nPretty easy to spot, but look carefully.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				56.7, 77.7, 0, "spawn_point", 
			}, 
		}, 
		[31437] = {
			title = "Swarmkeeper's Medallion", 
			note = "Near a large rock in a swampy area.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				54.2, 56.3, 0, "spawn_point", 
			}, 
		}, 
		[31666] = { -- Apparently there are two quests for this object? 31666 and/or 31429, we sha'll use 31666! ;)
			title = "Wind-Reaver's Dagger of Quick Strikes", 
			note = "Sitting on the ground underneath the bush.", 
			lostTreasuresOfPandaria = true, 
			confirmed = true, 
			cave = false, 
			coords = {
				71.8, 36.1, 0, "spawn_point", 
			}, 
		}, 
	}, 
}