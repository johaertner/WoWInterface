
local _, AltManager = ...;

_G["AltManager"] = AltManager;

-- Made by: Qooning - Tarren Mill, 2017-2020
-- Previously Method Alt Manager
-- updates for Bfa by: Kabootzey - Tarren Mill <Ended Careers>, 2018
-- Last edit: 14/10/2020

local Dialog = LibStub("LibDialog-1.0")

--local sizey = 200;
local sizey = 320;
local instances_y_add = 45;
local xoffset = 0;
local yoffset = 40;
local alpha = 1;
local addon = "AltManager";
local numel = table.getn;

local per_alt_x = 120;
local ilvl_text_size = 8;
local remove_button_size = 12;

local min_x_size = 300;

local min_level = 60;
local name_label = "" -- Name
local mythic_done_label = "Highest M+"
local mythic_rewards_label = "M+ Rewards"
local mythic_keystone_label = "Keystone"
local seals_owned_label = "BfA Seals owned"
local seals_bought_label = "Seals obtained"
local vessels_of_horrific_visions_label = "Vessels"
local artifact_reaserch_label = "AK level"
local coalescing_visions_label = "Coalescing Visions"
local mementos_label = "Mementos"
local echoes_label = "Echoes"
local artifact_research_time_label = "Next level in"
local depleted_label = "Depleted"
local nightbane_label = "Nightbane"
local resources_label = "War Resources"
local worldboss_label = "World Boss"
local conquest_label = "Conquest"
local conquest_earned_label = "Conquest Earned"
local islands_label = "Islands"
local pearls_label = "Manapearls"
local neck_label = "Neck level"
local residuum_label = "Residuum"
local renown_label = "Renown"
local conduit_charges_label = "Conduit Charges"
local stygia_label = "Stygia"
local soul_ash_label = "Soul Ash"
local reservoir_anima_label = "Stored Anima"
local torghast_label = "Torghast"

local VERSION = "2.6.2"

local function GetCurrencyAmount(id)
	local info = C_CurrencyInfo.GetCurrencyInfo(id)
	return info.quantity;
end


-- if Blizzard keeps supporting old api, get the IDs from
-- C_ChallengeMode.GetMapTable() and names from C_ChallengeMode.GetMapUIInfo(id)
local dungeons = {
	-- BFA
	-- [244] = "AD",
	-- [245] = "FH",
	-- [246] = "TD",
	-- [247] = "ML",
	-- [248] = "WCM",
	-- [249] = "KR",
	-- [250] = "Seth",
	-- [251] = "UR",
	-- [252] = "SotS",
	-- [353] = "SoB",
	-- [369] = "Mech:Junk",
	-- [370] = "Mech:Shop",
	-- Shadowlands
	[375] = "MoTS",
	[376] = "NW",
	[377] = "DOS",
	[378] = "HoA",
	[379] = "PF",
	[380] = "SD",
	[381] = "SoA",
	[382] = "ToP",
 };


SLASH_ALTMANAGER1 = "/mam";
SLASH_ALTMANAGER2 = "/alts";

local function spairs(t, order)
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

local function true_numel(t)
	local c = 0
	for k, v in pairs(t) do c = c + 1 end
	return c
end

function SlashCmdList.ALTMANAGER(cmd, editbox)
	local rqst, arg = strsplit(' ', cmd)
	if rqst == "help" then
		print("Alt Manager help:")
		print("   \"/alts purge\" to remove all stored data.")
		print("   \"/alts remove name\" to remove characters by name.")
	elseif rqst == "purge" then
		AltManager:Purge();
	elseif rqst == "remove" then
		AltManager:RemoveCharactersByName(arg)
	else
		AltManager:ShowInterface();
	end
end

function list_items()
	a = {}
	for i = 1,200000 do
		local n = GetItemInfo(i)
		if n ~= nil  then
			print(n)
			table.insert(a, n)
		end
	end
end

do
	local main_frame = CreateFrame("frame", "AltManagerFrame", UIParent);
	AltManager.main_frame = main_frame;
	main_frame:SetFrameStrata("MEDIUM");
	main_frame.background = main_frame:CreateTexture(nil, "BACKGROUND");
	main_frame.background:SetAllPoints();
	main_frame.background:SetDrawLayer("ARTWORK", 1);
	main_frame.background:SetColorTexture(0, 0, 0, 0.5);
	
	-- main_frame.scan_tooltip = CreateFrame('GameTooltip', 'DepletedTooltipScan', UIParent, 'GameTooltipTemplate');
	

	-- Set frame position
	main_frame:ClearAllPoints();
	main_frame:SetPoint("CENTER", UIParent, "CENTER", xoffset, yoffset);
	
	main_frame:RegisterEvent("ADDON_LOADED");
	main_frame:RegisterEvent("PLAYER_LOGIN");
	main_frame:RegisterEvent("PLAYER_LOGOUT");
	main_frame:RegisterEvent("QUEST_TURNED_IN");
	main_frame:RegisterEvent("BAG_UPDATE_DELAYED");
	main_frame:RegisterEvent("ARTIFACT_XP_UPDATE");
	main_frame:RegisterEvent("CHAT_MSG_CURRENCY");
	main_frame:RegisterEvent("CURRENCY_DISPLAY_UPDATE");
	main_frame:RegisterEvent("PLAYER_LEAVING_WORLD");
	

	main_frame:SetScript("OnEvent", function(self, ...)
		local event, loaded = ...;
		if event == "ADDON_LOADED" then
			if addon == loaded then
      			AltManager:OnLoad();
			end
		end
		if event == "PLAYER_LOGIN" then
        	AltManager:OnLogin();
		end
		if event == "PLAYER_LEAVING_WORLD" or event == "ARTIFACT_XP_UPDATE" then
			local data = AltManager:CollectData(false);
			AltManager:StoreData(data);
		end
		if (event == "BAG_UPDATE_DELAYED" or event == "QUEST_TURNED_IN" or event == "CHAT_MSG_CURRENCY" or event == "CURRENCY_DISPLAY_UPDATE") and AltManager.addon_loaded then
			local data = AltManager:CollectData(false);
			AltManager:StoreData(data);
		end
		
	end)

	main_frame:EnableKeyboard(true);
	main_frame:SetScript("OnKeyDown", function(self, key) if key == "ESCAPE" then main_frame:SetPropagateKeyboardInput(false); else main_frame:SetPropagateKeyboardInput(true); end end )
	main_frame:SetScript("OnKeyUp", function(self, key) if key == "ESCAPE" then  AltManager:HideInterface() end end);
	
	-- Show Frame
	main_frame:Hide();
end

function AltManager:InitDB()
	local t = {};
	t.alts = 0;
	t.data = {};
	return t;
end

function AltManager:CalculateXSizeNoGuidCheck()
	local alts = MethodAltManagerDB.alts;
	return max((alts + 1) * per_alt_x, min_x_size)
end

function AltManager:CalculateXSize()
	-- local alts = MethodAltManagerDB.alts;
	-- -- HACK: DUE TO THE LOGIN DATA GLITCH, I HAVE TO CHECK IF CURRENT ALT IS NEW
	-- local guid = UnitGUID('player');
	-- if MethodAltManagerDB.data[guid] == nil then alts = alts + 1 end
	-- return max((alts + 1) * per_alt_x, min_x_size)
	return self:CalculateXSizeNoGuidCheck()
end

-- because of guid...
function AltManager:OnLogin()
	self:ValidateReset();
	self:StoreData(self:CollectData());
  
	self.main_frame:SetSize(self:CalculateXSize(), sizey);
	self.main_frame.background:SetAllPoints();
	
	-- Create menus
	AltManager:CreateContent();
	AltManager:MakeTopBottomTextures(self.main_frame);
	AltManager:MakeBorder(self.main_frame, 5);
end

function AltManager:PurgeDbShadowlands()
	if MethodAltManagerDB == nil or MethodAltManagerDB.data == nil then return end
	local remove = {}
	for alt_guid, alt_data in spairs(MethodAltManagerDB.data, function(t, a, b) return t[a].ilevel > t[b].ilevel end) do
		if alt_data.charlevel == nil or alt_data.charlevel < min_level then -- poor heuristic to remove old max level chars
			table.insert(remove, alt_guid)
		end
	end
	for k, v in pairs(remove) do
		-- don't need to redraw, this is don on load
		MethodAltManagerDB.alts = MethodAltManagerDB.alts - 1;
		MethodAltManagerDB.data[v] = nil
		-- self:RemoveCharacterByGuid(v, true);
	end
end

function AltManager:OnLoad()
	self.main_frame:UnregisterEvent("ADDON_LOADED");
	
	MethodAltManagerDB = MethodAltManagerDB or self:InitDB();

	self:PurgeDbShadowlands();

	if MethodAltManagerDB.alts ~= true_numel(MethodAltManagerDB.data) then
		print("Altcount inconsistent, using", true_numel(MethodAltManagerDB.data))
		MethodAltManagerDB.alts = true_numel(MethodAltManagerDB.data)
	end

	self.addon_loaded = true
	C_MythicPlus.RequestRewards();
	C_MythicPlus.RequestCurrentAffixes();
	C_MythicPlus.RequestMapInfo();
	for k,v in pairs(dungeons) do
		-- request info in advance
		C_MythicPlus.RequestMapInfo(k);
	end
end

function AltManager:CreateFontFrame(parent, x_size, height, relative_to, y_offset, label, justify)
	local f = CreateFrame("Button", nil, parent);
	f:SetSize(x_size, height);
	f:SetNormalFontObject(GameFontHighlightSmall)
	f:SetText(label)
	f:SetPoint("TOPLEFT", relative_to, "TOPLEFT", 0, y_offset);
	f:GetFontString():SetJustifyH(justify);
	f:GetFontString():SetJustifyV("CENTER");
	f:SetPushedTextOffset(0, 0);
	f:GetFontString():SetWidth(120)
	f:GetFontString():SetHeight(20)
	
	return f;
end

function AltManager:Keyset()
	local keyset = {}
	if MethodAltManagerDB and MethodAltManagerDB.data then
		for k in pairs(MethodAltManagerDB.data) do
			table.insert(keyset, k)
		end
	end
	return keyset
end

function AltManager:ValidateReset()
	local db = MethodAltManagerDB
	if not db then return end;
	if not db.data then return end;
	
	local keyset = {}
	for k in pairs(db.data) do
		table.insert(keyset, k)
	end
	
	for alt = 1, db.alts do
		local expiry = db.data[keyset[alt]].expires or 0;
		local char_table = db.data[keyset[alt]];
		if time() > expiry then
			-- reset this alt
			char_table.seals_bought = 0;
			char_table.dungeon = "Unknown";
			char_table.level = "?";
			char_table.run_history = nil;
			char_table.expires = self:GetNextWeeklyResetTime();
			char_table.worldboss = false;
			
			char_table.nathria_normal = 0;
			char_table.nathria_heroic = 0;
			char_table.nathria_mythic = 0;

		end
	end
end

function AltManager:Purge()
	MethodAltManagerDB = self:InitDB();
end

function AltManager:RemoveCharactersByName(name)
	local db = MethodAltManagerDB;

	local indices = {};
	for guid, data in pairs(db.data) do
		if db.data[guid].name == name then
			indices[#indices+1] = guid
		end
	end

	db.alts = db.alts - #indices;
	for i = 1,#indices do
		db.data[indices[i]] = nil
	end

	print("Found " .. (#indices) .. " characters by the name of " .. name)
	print("Please reload ui to update the displayed info.")

	-- things wont be redrawn
end

function AltManager:RemoveCharacterByGuid(index, skip_confirmation)
	local db = MethodAltManagerDB;

	if db.data[index] == nil then return end

	local delete = function()
		if db.data[index] == nil then return end
		db.alts = db.alts - 1;
		db.data[index] = nil
		self.main_frame:SetSize(self:CalculateXSizeNoGuidCheck(), sizey);
		if self.main_frame.alt_columns ~= nil then
			-- Hide the last col
			-- find the correct frame to hide
			local count = #self.main_frame.alt_columns
			for j = 0,count-1 do
				if self.main_frame.alt_columns[count-j]:IsShown() then
					self.main_frame.alt_columns[count-j]:Hide()
					-- also for instances
					if self.instances_unroll ~= nil and self.instances_unroll.alt_columns ~= nil and self.instances_unroll.alt_columns[count-j] ~= nil then
						self.instances_unroll.alt_columns[count-j]:Hide()
					end
					break
				end
			end
			
			-- and hide the remove button
			if self.main_frame.remove_buttons ~= nil and self.main_frame.remove_buttons[index] ~= nil then
				self.main_frame.remove_buttons[index]:Hide()
			end
		end
		self:UpdateStrings()
		-- it's not simple to update the instances text with current design, so hide it and let the click do update
		if self.instances_unroll ~= nil and self.instances_unroll.state == "open" then
			self:CloseInstancesUnroll()
			self.instances_unroll.state = "closed";
		end
	end

	if skip_confirmation == nil then
		local name = db.data[index].name
		Dialog:Register("AltManagerRemoveCharacterDialog", {
			text = "Are you sure you want to remove " .. name .. " from the list?",
			width = 500,
			on_show = function(self, data) 
			end,
			buttons = {
				{ text = "Delete", 
				on_click = delete},
				{ text = "Cancel", }
			},	
			show_while_dead = true,
			hide_on_escape = true,
		})
		if Dialog:ActiveDialog("AltManagerRemoveCharacterDialog") then
			Dialog:Dismiss("AltManagerRemoveCharacterDialog")
		end
		Dialog:Spawn("AltManagerRemoveCharacterDialog", {string = string})
	else
		delete();
	end

end


function conquest_cap()
	local CONQUEST_QUESTLINE_ID = 782; -- BFA questline ID = 782
    local currentQuestID = QuestUtils_GetCurrentQuestLineQuest(CONQUEST_QUESTLINE_ID);

    -- if not on a current quest that means all caught up for this week
    if currentQuestID == 0 then
        return 0, 0, 0;
    end

    if not HaveQuestData(currentQuestID) then
        return 0, 0, nil;
    end

    local objectives = C_QuestLog.GetQuestObjectives(currentQuestID);
    if not objectives or not objectives[1] then
        return 0, 0, nil;
    end

    return objectives[1].numFulfilled, objectives[1].numRequired, currentQuestID;
end

function AltManager:StoreData(data)

	if not self.addon_loaded then
		return
	end

	-- This can happen shortly after logging in, the game doesn't know the characters guid yet
	if not data or not data.guid then
		return
	end

	if UnitLevel('player') < min_level then return end;
	
	local db = MethodAltManagerDB;
	local guid = data.guid;
	
	db.data = db.data or {};
	
	local update = false;
	for k, v in pairs(db.data) do
		if k == guid then
			update = true;
		end
	end
	
	if not update then
		db.data[guid] = data;
		db.alts = db.alts + 1;
	else
		local lvl = db.data[guid].artifact_level;
		data.artifact_level = data.artifact_level or lvl;
		db.data[guid] = data;
	end
end

function AltManager:CollectData(do_artifact)
	
	if UnitLevel('player') < min_level then return end;
	-- this is an awful hack that will probably have some unforeseen consequences,
	-- but Blizzard fucked something up with systems on logout, so let's see how it
	-- goes.
	_, i = GetAverageItemLevel()
	if i == 0 then return end;

	-- fix this when i'm not on a laptop at work
	do_artifact = false
	
	local name = UnitName('player')
	local _, class = UnitClass('player')
	local dungeon = nil;
	local expire = nil;
	local level = nil;
	local seals = nil;
	local coalescing_visions = 0;
	local seals_bought = nil;
	local artifact_level = nil;
	local next_research = nil;
	local highest_mplus = 0;
	local depleted = false;
	local vessels = 0

	local guid = UnitGUID('player');

	local mine_old = nil
	if MethodAltManagerDB and MethodAltManagerDB.data then
		mine_old = MethodAltManagerDB.data[guid];
	end
	
	-- C_MythicPlus.RequestRewards();
	C_MythicPlus.RequestCurrentAffixes();
	C_MythicPlus.RequestMapInfo();
	for k,v in pairs(dungeons) do
		-- request info in advance
		C_MythicPlus.RequestMapInfo(k);
	end
	local maps = C_ChallengeMode.GetMapTable();
	for i = 1, #maps do
        C_ChallengeMode.RequestLeaders(maps[i]);
    end

	-- try the new api
	-- highest_mplus = C_MythicPlus.GetWeeklyChestRewardLevel()

	local run_history = C_MythicPlus.GetRunHistory(false, true);
	
	--[[for k,v in pairs(dungeons) do
		C_MythicPlus.RequestMapInfo(k);
		-- there is a problem with relogging and retaining old value :(
		local _, l = C_MythicPlus.GetWeeklyBestForMap(k);
		if l and l > highest_mplus then
			highest_mplus = l;
		end
	end ]]--
	
	-- find keystone
	local keystone_found = false;
	for container=BACKPACK_CONTAINER, NUM_BAG_SLOTS do
		local slots = GetContainerNumSlots(container)
		for slot=1, slots do
			local _, _, _, _, _, _, slotLink, _, _, slotItemID = GetContainerItemInfo(container, slot)
			-- print(slotLink)
			--if slotItemID then print(slotItemID, GetItemInfo(slotItemID)) end
			
			--	might as well check if the item is a vessel of horrific vision
			if slotItemID == 173363 then
				vessels = vessels + 1
			end
			if slotItemID == 180653 then
				local itemString = slotLink:match("|Hkeystone:([0-9:]+)|h(%b[])|h")
				local info = { strsplit(":", itemString) }
				dungeon = tonumber(info[2])
				if not dungeon then dungeon = nil end
				level = tonumber(info[3])
				if not level then level = nil end
				expire = tonumber(info[4])
				keystone_found = true;
			end
		end
	end
  
  -- nice idea, but these functions return weird values on login and logout
  --dungeon = C_MythicPlus.GetOwnedKeystoneChallengeMapID()
  --level = C_MythicPlus.GetOwnedKeystoneLevel()
  
  --if dungeon then keystone_found = true end
  
	if not keystone_found then
		dungeon = "Unknown";
		level = "?"
	end

	-- order resources
	-- local order_resources = GetCurrencyAmount(1560);
	
	-- seals = GetCurrencyAmount(1580);
	seals = 0;
	-- coalescing_visions = GetCurrencyAmount(1755);
	
	-- seals_bought = 0
	-- local gold_1 = C_QuestLog.IsQuestFlaggedCompleted(52834)
	-- if gold_1 then seals_bought = seals_bought + 1 end
	-- local gold_2 = C_QuestLog.IsQuestFlaggedCompleted(52838)
	-- if gold_2 then seals_bought = seals_bought + 1 end
	-- local resources_1 = C_QuestLog.IsQuestFlaggedCompleted(52837)
	-- if resources_1 then seals_bought = seals_bought + 1 end
	-- local resources_2 = C_QuestLog.IsQuestFlaggedCompleted(52840)
	-- if resources_2 then seals_bought = seals_bought + 1 end
	-- local marks_1 = C_QuestLog.IsQuestFlaggedCompleted(52835)
	-- if marks_1 then seals_bought = seals_bought + 1 end
	-- local marks_2 = C_QuestLog.IsQuestFlaggedCompleted(52839)
	-- if marks_2 then seals_bought = seals_bought + 1 end
	
	
	-- local class_hall_seal = C_QuestLog.IsQuestFlaggedCompleted(43510)
	-- if class_hall_seal then seals_bought = seals_bought + 1 end

	local saves = GetNumSavedInstances();
	local normal_difficulty = 14
	local heroic_difficulty = 15
	local mythic_difficulty = 16
	for i = 1, saves do
		local name, _, reset, difficulty, _, _, _, _, _, _, bosses, killed_bosses = GetSavedInstanceInfo(i);

		-- check for raids
		-- if name == C_Map.GetMapInfo(1148).name and reset > 0 then
		-- 	if difficulty == normal_difficulty then uldir_normal = killed_bosses end
		-- 	if difficulty == heroic_difficulty then uldir_heroic = killed_bosses end
		-- 	if difficulty == mythic_difficulty then uldir_mythic = killed_bosses end
		-- end
		-- if name == C_Map.GetMapInfo(1352).name and reset > 0 then
		-- 	if difficulty == normal_difficulty then bod_normal = killed_bosses end
		-- 	if difficulty == heroic_difficulty then bod_heroic = killed_bosses end
		-- 	if difficulty == mythic_difficulty then bod_mythic = killed_bosses end
		-- end
		-- if name == C_Map.GetMapInfo(1512).name and reset > 0 then
		-- 	if difficulty == normal_difficulty then ep_normal = killed_bosses end
		-- 	if difficulty == heroic_difficulty then ep_heroic = killed_bosses end
		-- 	if difficulty == mythic_difficulty then ep_mythic = killed_bosses end
		-- end
		-- hack that may not work for other localizations
		-- I can't find any reference to the full name in the API, but the saved info returns the full name
		-- local nyalotha_lfg_name = GetLFGDungeonInfo(2033)
		-- if name == nyalotha_lfg_name and reset > 0 then -- is it okay to use any Nyalotha id? 2217
		-- 	if difficulty == normal_difficulty then nyalotha_normal = killed_bosses end
		-- 	if difficulty == heroic_difficulty then nyalotha_heroic = killed_bosses end
		-- 	if difficulty == mythic_difficulty then nyalotha_mythic = killed_bosses end
		-- end

		-- Castle Nathria IDs = {1735, 1744, 1745, 1746, 1747, 1748, 1750, 1755}
		if name == C_Map.GetMapInfo(1735).name and reset > 0 then
			if difficulty == normal_difficulty then nathria_normal = killed_bosses end
			if difficulty == heroic_difficulty then nathria_heroic = killed_bosses end
			if difficulty == mythic_difficulty then nathria_mythic = killed_bosses end
		end
	end
	
	-- Can find map info quickly like this
	-- /run for i=1,GetNumSavedInstances() do print(GetSavedInstanceInfo(i)) end
	-- /run for i=0,20000 do if C_Map.GetMapInfo(i) then if C_Map.GetMapInfo(i).name == "Ny'alotha, the Waking City" then print(i) end end end
	-- /run for i=2000,2400 do if GetLFGDungeonInfo(i) then print(i, GetLFGDungeonInfo(i)) end end 

	local world_boss_quests = {
		[61813] = "Valinor",
		[61814] = "Nurgash", -- THIS IS A GUESS!
		[61815] = "Oranomoros",
		[61816] = "Mortanis", 
	}
	local worldboss = false
	for k,v in pairs(world_boss_quests)do
		if C_QuestLog.IsQuestFlaggedCompleted(k) then
			worldboss = v
		end
	end
	
	-- local conquest_earned = C_WeeklyRewards.GetConquestWeeklyProgress().progress;

	-- this is how the official pvp ui does it, so if its wrong.. sue me
	local currencyInfo = C_CurrencyInfo.GetCurrencyInfo(Constants.CurrencyConsts.CONQUEST_CURRENCY_ID);
	local maxProgress = currencyInfo.maxQuantity;
	local conquest_earned = math.min(currencyInfo.totalEarned, maxProgress);
	local conquest_total = currencyInfo.quantity
	local conquest_max = maxProgress;
	
	-- local _, _, _, islands, _ = GetQuestObjectiveInfo(C_IslandsQueue.GetIslandsWeeklyQuestID(), 1, false);
	-- local islands_finished = C_QuestLog.IsQuestFlaggedCompleted(C_IslandsQueue.GetIslandsWeeklyQuestID())

	
	local _, ilevel = GetAverageItemLevel();

	-- local pearls = GetCurrencyAmount(1721);
	-- local residuum = GetCurrencyAmount(1718);
	-- local echoes = GetCurrencyAmount(1803);
	-- local corrupted_mementos = GetCurrencyAmount(1719); -- jebaited with 1744 id, which is probably the "in vision" currency

	-- /run for i=0,20000 do n,a = GetCurrencyInfo(i); if a == 1365 then print(i) end end
	-- /run for i=0,20000 do n = C_CurrencyInfo.GetCurrencyInfo(i); if n ~= nil and n.name == "Stygia" then print(i) end end

	-- local location = C_AzeriteItem.FindActiveAzeriteItem()
	-- local neck_level
	-- if not location then neck_level = 0
	-- else neck_level = C_AzeriteItem.GetPowerLevel(location)
	-- end

	-- store data into a table

	local conduit_charges = C_Soulbinds.GetConduitCharges();
	local max_conduit_charges = C_Soulbinds.GetConduitChargesCapacity();
	-- local now = C_DateAndTime.GetCurrentCalendarTime();

	local stygia = GetCurrencyAmount(1767);
	local soul_ash = GetCurrencyAmount(1828);
	local stored_anima = GetCurrencyAmount(1813);
	local renown = C_CovenantSanctumUI.GetRenownLevel();

	local char_table = {}
	
	-- hooksecurefunc(C_VignetteInfo, "GetVignettes", function(...) print("GetVignettes", ...); end)
	-- hooksecurefunc(C_VignetteInfo, "GetVignetteInfo", function(...) print("GetVignetteInfo", ...); end)
	-- /run for k, v in ipairs(GameTooltip.insertedFrames[1].widgetPools.pools.UIWidgetTemplateTextWithState.activeObjects) do print(k) end
	-- /tinspect GameTooltip.insertedFrames[1]
	-- /run VignettePinMixin:OnMouseEnter(); a, b, c, d = GameTooltip.insertedFrames[1]:GetChildren(); print(a.Text:GetText())
	-- Looks like getting torghast progress with addon API is a nightmare right now

	char_table.guid = UnitGUID('player');
	char_table.name = name;
	char_table.class = class;
	char_table.ilevel = ilevel;
	char_table.charlevel = UnitLevel('player')
	char_table.dungeon = dungeon;
	char_table.level = level;
	char_table.run_history = run_history;
	char_table.worldboss = worldboss;
	char_table.conquest_earned = conquest_earned;
	char_table.conquest_total = conquest_total;

	char_table.conduit_charges = conduit_charges;
	char_table.max_conduit_charges = max_conduit_charges;
	char_table.stygia = stygia;
	char_table.soul_ash = soul_ash;
	char_table.stored_anima = stored_anima;
	char_table.renown = renown;

	char_table.nathria_normal = nathria_normal;
	char_table.nathria_heroic = nathria_heroic;
	char_table.nathria_mythic = nathria_mythic;

	char_table.expires = self:GetNextWeeklyResetTime();
	char_table.data_obtained = time();
	char_table.time_until_reset = C_DateAndTime.GetSecondsUntilDailyReset();
	
	-- old stuff
	-- char_table.order_resources = order_resources;
	-- char_table.veiled_argunite = veiled_argunite;
	-- char_table.wakening_essence = wakening_essence;
	-- char_table.islands =  islands; 
	-- char_table.islands_finished = islands_finished;
	-- char_table.pearls = pearls
	-- char_table.residuum = residuum
	-- char_table.corrupted_mementos = corrupted_mementos
	-- char_table.neck_level = neck_level
	-- char_table.echoes = echoes
	-- char_table.seals = seals;
	-- char_table.seals_bought = seals_bought;
	-- char_table.vessels = vessels;
	-- char_table.coalescing_visions = coalescing_visions;

	return char_table;
end

function AltManager:UpdateStrings()
	local font_height = 20;
	local db = MethodAltManagerDB;
	
	local keyset = {}
	for k in pairs(db.data) do
		table.insert(keyset, k)
	end
	
	self.main_frame.alt_columns = self.main_frame.alt_columns or {};
	
	local alt = 0
	for alt_guid, alt_data in spairs(db.data, function(t, a, b) return t[a].ilevel > t[b].ilevel end) do
		alt = alt + 1
		-- create the frame to which all the fontstrings anchor
		local anchor_frame = self.main_frame.alt_columns[alt] or CreateFrame("Button", nil, self.main_frame);
		if not self.main_frame.alt_columns[alt] then
			self.main_frame.alt_columns[alt] = anchor_frame;
			self.main_frame.alt_columns[alt].guid = alt_guid
			anchor_frame:SetPoint("TOPLEFT", self.main_frame, "TOPLEFT", per_alt_x * alt, -1);
		end
		anchor_frame:SetSize(per_alt_x, sizey);
		-- init table for fontstring storage
		self.main_frame.alt_columns[alt].label_columns = self.main_frame.alt_columns[alt].label_columns or {};
		local label_columns = self.main_frame.alt_columns[alt].label_columns;
		-- create / fill fontstrings
		local i = 1;
		for column_iden, column in spairs(self.columns_table, function(t, a, b) return t[a].order < t[b].order end) do
			-- only display data with values
			if type(column.data) == "function" then
				local current_row = label_columns[i] or self:CreateFontFrame(anchor_frame, per_alt_x, column.font_height or font_height, anchor_frame, -(i - 1) * font_height, column.data(alt_data), "CENTER");
				-- insert it into storage if just created
				if not self.main_frame.alt_columns[alt].label_columns[i] then
					self.main_frame.alt_columns[alt].label_columns[i] = current_row;
				end
				if column.color then
					local color = column.color(alt_data)
					current_row:GetFontString():SetTextColor(color.r, color.g, color.b, 1);
				end
				current_row:SetText(column.data(alt_data))
				if column.font then
					current_row:GetFontString():SetFont(column.font, ilvl_text_size)
				else
					--current_row:GetFontString():SetFont("Fonts\\FRIZQT__.TTF", 14)
				end
				if column.justify then
					current_row:GetFontString():SetJustifyV(column.justify);
				end
				if column.remove_button ~= nil then
					self.main_frame.remove_buttons = self.main_frame.remove_buttons or {}
					local extra = self.main_frame.remove_buttons[alt_data.guid] or column.remove_button(alt_data)
					if self.main_frame.remove_buttons[alt_data.guid] == nil then 
						self.main_frame.remove_buttons[alt_data.guid] = extra
					end
					extra:SetParent(current_row)
					extra:SetPoint("TOPRIGHT", current_row, "TOPRIGHT", -18, 2 );
					extra:SetPoint("BOTTOMRIGHT", current_row, "TOPRIGHT", -18, -remove_button_size + 2);
					extra:SetFrameLevel(current_row:GetFrameLevel() + 1)
					extra:Show();
				end
			end
			i = i + 1
		end
		
	end
	
end

function AltManager:UpdateInstanceStrings(my_rows, font_height)
	self.instances_unroll.alt_columns = self.instances_unroll.alt_columns or {};
	local alt = 0
	local db = MethodAltManagerDB;
	for alt_guid, alt_data in spairs(db.data, function(t, a, b) return t[a].ilevel > t[b].ilevel end) do
		alt = alt + 1
		-- create the frame to which all the fontstrings anchor
		local anchor_frame = self.instances_unroll.alt_columns[alt] or CreateFrame("Button", nil, self.main_frame.alt_columns[alt]);
		if not self.instances_unroll.alt_columns[alt] then
			self.instances_unroll.alt_columns[alt] = anchor_frame;
		end
		anchor_frame:SetPoint("TOPLEFT", self.instances_unroll.unroll_frame, "TOPLEFT", per_alt_x * alt, -1);
		anchor_frame:SetSize(per_alt_x, instances_y_add);
		-- init table for fontstring storage
		self.instances_unroll.alt_columns[alt].label_columns = self.instances_unroll.alt_columns[alt].label_columns or {};
		local label_columns = self.instances_unroll.alt_columns[alt].label_columns;
		-- create / fill fontstrings
		local i = 1;
		for column_iden, column in spairs(my_rows, function(t, a, b) return t[a].order < t[b].order end) do
			local current_row = label_columns[i] or self:CreateFontFrame(anchor_frame, per_alt_x, column.font_height or font_height, anchor_frame, -(i - 1) * font_height, column.data(alt_data), "CENTER");
			-- insert it into storage if just created
			if not self.instances_unroll.alt_columns[alt].label_columns[i] then
				self.instances_unroll.alt_columns[alt].label_columns[i] = current_row;
			end
			current_row:SetText(column.data(alt_data)) -- fills data
			i = i + 1
		end
		-- hotfix visibility
		if anchor_frame:GetParent():IsShown() then anchor_frame:Show() else anchor_frame:Hide() end
	end
end

function AltManager:OpenInstancesUnroll(my_rows, button) 
	-- do unroll
	self.instances_unroll.unroll_frame = self.instances_unroll.unroll_frame or CreateFrame("Button", nil, self.main_frame);
	self.instances_unroll.unroll_frame:SetSize(per_alt_x, instances_y_add);
	self.instances_unroll.unroll_frame:SetPoint("TOPLEFT", self.main_frame, "TOPLEFT", 4, self.main_frame.lowest_point - 10);
	self.instances_unroll.unroll_frame:Show();

	local font_height = 20;
	-- create the rows for the unroll
	if not self.instances_unroll.labels then
		self.instances_unroll.labels = {};
		local i = 1
		for row_iden, row in spairs(my_rows, function(t, a, b) return t[a].order < t[b].order end) do
			if row.label then
				local label_row = self:CreateFontFrame(self.instances_unroll.unroll_frame, per_alt_x, font_height, self.instances_unroll.unroll_frame, -(i-1)*font_height, row.label..":", "RIGHT");
				table.insert(self.instances_unroll.labels, label_row)
			end
			i = i + 1
		end
	end

	-- populate it for alts
	self:UpdateInstanceStrings(my_rows, font_height)

	-- fixup the background
	self.main_frame:SetSize(self:CalculateXSizeNoGuidCheck(), sizey + instances_y_add);
	self.main_frame.background:SetAllPoints();

end

function AltManager:CloseInstancesUnroll()
	-- do rollup
	self.main_frame:SetSize(self:CalculateXSizeNoGuidCheck(), sizey);
	self.main_frame.background:SetAllPoints();
	self.instances_unroll.unroll_frame:Hide();
	for k, v in pairs(self.instances_unroll.alt_columns) do
		v:Hide()
	end
end

function AltManager:ConduitChargesRegenerated(alt_data)
	local last_check = alt_data.data_obtained;
	local next_tick = alt_data.time_until_reset;
	local now = time();

	local elapsed = now - last_check;
	local first = elapsed - next_tick;
	if first < 0 then return 0 end
	return 1 + (first % (24 * 3600))
end

function AltManager:ProduceRelevantMythics(run_history)
	-- find thresholds
	local weekly_info = C_WeeklyRewards.GetActivities(Enum.WeeklyRewardChestThresholdType.MythicPlus);
	table.sort(run_history, function(left, right) return left.level > right.level; end);
	local thresholds = {}

	local max_threshold = 0
	for i = 1 , #weekly_info do
		thresholds[weekly_info[i].threshold] = true;
		if weekly_info[i].threshold > max_threshold then
			max_threshold = weekly_info[i].threshold;
		end
	end
	return run_history, thresholds, max_threshold
end

function AltManager:MythicRunHistoryString(alt_data)
	if alt_data.run_history == nil or alt_data.run_history == 0 or next(alt_data.run_history) == nil then
		return "None"
	end
	local sorted_history, thresholds, max_threshold = AltManager:ProduceRelevantMythics(alt_data.run_history);
	local result = "{"
	local first = true;
	for run = 1, max_threshold do
		if #sorted_history >= run then
			if first then result = result .. " " end
			if not first then result = result .. ", " end
			if run == 6 and #sorted_history > 5 then
				result = result .. "\n"
			end

			if thresholds[run] then
				result = result .. "|cFF00FF00"
			end
			result = result .. tostring(sorted_history[run].level)
			if thresholds[run] then
				result = result .. "|r"
			end

			first = false;
		end	
	end
	result = result .. " }"
	return result
end

function AltManager:CreateContent()

	-- Close button
	self.main_frame.closeButton = CreateFrame("Button", "CloseButton", self.main_frame, "UIPanelCloseButton");
	self.main_frame.closeButton:ClearAllPoints()
	self.main_frame.closeButton:SetPoint("BOTTOMRIGHT", self.main_frame, "TOPRIGHT", -10, -2);
	self.main_frame.closeButton:SetScript("OnClick", function() AltManager:HideInterface(); end);
	--self.main_frame.closeButton:SetSize(32, h);

	local column_table = {
		name = {
			order = 1,
			label = name_label,
			data = function(alt_data) return alt_data.name end,
			color = function(alt_data) return RAID_CLASS_COLORS[alt_data.class] end,
		},
		ilevel = {
			order = 2,
			data = function(alt_data) return string.format("%.2f", alt_data.ilevel or 0) end, -- , alt_data.neck_level or 0
			justify = "TOP",
			font = "Fonts\\FRIZQT__.TTF",
			remove_button = function(alt_data) return self:CreateRemoveButton(function() AltManager:RemoveCharacterByGuid(alt_data.guid) end) end
		},
		mplus = {
			order = 3,
			label = mythic_done_label,
			data = function(alt_data) return self:MythicRunHistoryString(alt_data) end, 
		},
		keystone = {
			order = 4,
			label = mythic_keystone_label,
			data = function(alt_data) return (dungeons[alt_data.dungeon] or alt_data.dungeon) .. " +" .. tostring(alt_data.level); end,
		},
		-- seals_owned = {
		-- 	order = 5,
		-- 	label = seals_owned_label,
		-- 	data = function(alt_data) return tostring(alt_data.seals) end,
		-- },
		-- seals_bought = {
		-- 	order = 6,
		-- 	label = seals_bought_label,
		-- 	data = function(alt_data) return tostring(alt_data.seals_bought) end,
		-- },
		fake_just_for_offset = {
			order = 6.1,
			label = "",
			data = function(alt_data) return " " end,
		},
		-- vessels = {
		-- 	order = 6.5,
		-- 	label = vessels_of_horrific_visions_label,
		-- 	data = function(alt_data) return tostring(alt_data.vessels or "0") end,
		-- },
		-- coalascing_visions = {
		-- 	order = 6.6,
		-- 	label = coalescing_visions_label,
		-- 	data = function(alt_data) return tostring(alt_data.coalescing_visions or "0") end,
		-- },
		-- corrupted_mementos = {
		-- 	order = 6.7,
		-- 	label = mementos_label,
		-- 	data = function(alt_data) return tostring(alt_data.corrupted_mementos or "0") end,
		-- },
		-- residuum = {
		-- 	order = 7,
		-- 	label = residuum_label,
		-- 	data = function(alt_data) return alt_data.residuum and tostring(alt_data.residuum) or "0" end,
		-- },
		-- echoes = {
		-- 	order = 7.5,
		-- 	label = echoes_label,
		-- 	data = function(alt_data) return alt_data.echoes and tostring(alt_data.echoes) or "0" end,
		-- },

		-- char_table.conduit_charges = conduit_charges;
		-- char_table.max_conduit_charges = max_conduit_charges;

		renown = {
			order = 6.2,
			label = renown_label,
			data = function(alt_data) return tostring(alt_data.renown or "?") end,
		},
		stygia = {
			order = 6.4,
			label = stygia_label,
			data = function(alt_data) return tostring(alt_data.stygia or "0") end,
		},
		soul_ash = {
			order = 6.3,
			label = soul_ash_label,
			data = function(alt_data) return tostring(alt_data.soul_ash or "0") end,
		},
		conduit_charges = {
			order = 6.45,
			label = conduit_charges_label,
			data = function(alt_data) local have_charges = alt_data.conduit_charges ~= nil; if have_charges then return tostring( min(alt_data.conduit_charges + self:ConduitChargesRegenerated(alt_data), alt_data.max_conduit_charges)) .. " / " .. tostring(alt_data.max_conduit_charges) else return "?" end end
		},
		
		stored_anima = {
			order = 6.5,
			label = reservoir_anima_label,
			data = function(alt_data) return tostring(alt_data.stored_anima or "0") end,
		},

		fake_just_for_offset_2 = {
			order = 6.9,
			label = "",
			data = function(alt_data) return " " end,
		},
		worldbosses = {
			order = 7.9,
			label = worldboss_label,
			data = function(alt_data) return alt_data.worldboss and (alt_data.worldboss .. " killed") or "-" end,
		},
		conquest_pts = {
			order = 8,
			label = conquest_label,
			data = function(alt_data) return (alt_data.conquest_total and tostring(alt_data.conquest_total) or "0")  end,
		},
		conquest_cap = {
			order = 9,
			label = conquest_earned_label,
			data = function(alt_data) return (alt_data.conquest_earned and (tostring(alt_data.conquest_earned) .. " / " .. C_CurrencyInfo.GetCurrencyInfo(Constants.CurrencyConsts.CONQUEST_CURRENCY_ID).maxQuantity) or "?")  end, --   .. "/" .. "500"
		},

		-- BFA resources
		-- order_resources = {
		-- 	order = 9,
		-- 	label = resources_label,
		-- 	data = function(alt_data) return alt_data.order_resources and tostring(alt_data.order_resources) or "0" end,
		-- },
		-- sort of became irrelevant for now
		-- pearls = {
		-- 	order = 9.5,
		-- 	label = pearls_label,
		-- 	data = function(alt_data) return alt_data.pearls and tostring(alt_data.pearls) or "0" end,
		-- },


		-- islands = {
		-- 	order = 11,
		-- 	label = islands_label,
		-- 	data = function(alt_data) return (alt_data.islands_finished and "Capped") or ((alt_data.islands and tostring(alt_data.islands)) or "?") .. "/ 36K"  end,
		-- },
		dummy_line = {
			order = 12,
			label = " ",
			data = function(alt_data) return " " end,
		},
		raid_unroll = {
			order = 13,
			data = "unroll",
			name = "Instances >>",
			unroll_function = function(button, my_rows)
				self.instances_unroll = self.instances_unroll or {};
				self.instances_unroll.state = self.instances_unroll.state or "closed";
				if self.instances_unroll.state == "closed" then
					self:OpenInstancesUnroll(my_rows)
					-- update ui
					button:SetText("Instances <<");
					self.instances_unroll.state = "open";
				else
					self:CloseInstancesUnroll()
					-- update ui
					button:SetText("Instances >>");
					self.instances_unroll.state = "closed";
				end
			end,
			rows = {
				uldir = {
					order = 4,
					label = "Castle Nathria",
					data = function(alt_data) return self:MakeRaidString(alt_data.nathria_normal, alt_data.nathria_heroic, alt_data.nathria_mythic) end
				},
			}
		}
	}
	self.columns_table = column_table;

	-- create labels and unrolls
	local font_height = 20;
	local label_column = self.main_frame.label_column or CreateFrame("Button", nil, self.main_frame);
	if not self.main_frame.label_column then self.main_frame.label_column = label_column; end
	label_column:SetSize(per_alt_x, sizey);
	label_column:SetPoint("TOPLEFT", self.main_frame, "TOPLEFT", 4, -1);

	local i = 1;
	for row_iden, row in spairs(self.columns_table, function(t, a, b) return t[a].order < t[b].order end) do
		if row.label then
			local label_row = self:CreateFontFrame(self.main_frame, per_alt_x, font_height, label_column, -(i-1)*font_height, row.label~="" and row.label..":" or " ", "RIGHT");
			self.main_frame.lowest_point = -(i-1)*font_height;
		end
		if row.data == "unroll" then
			-- create a button that will unroll it
			local unroll_button = CreateFrame("Button", "UnrollButton", self.main_frame, "UIPanelButtonTemplate");
			unroll_button:SetText(row.name);
			--unroll_button:SetFrameStrata("HIGH");
			unroll_button:SetFrameLevel(self.main_frame:GetFrameLevel() + 2)
			unroll_button:SetSize(unroll_button:GetTextWidth() + 20, 25);
			unroll_button:SetPoint("BOTTOMRIGHT", self.main_frame, "TOPLEFT", 4 + per_alt_x, -(i-1)*font_height-10);
			unroll_button:SetScript("OnClick", function() row.unroll_function(unroll_button, row.rows) end);
			self.main_frame.lowest_point = -(i-1)*font_height-10;
		end
		i = i + 1
	end

end

function AltManager:MakeRaidString(normal, heroic, mythic)
	if not normal then normal = 0 end
	if not heroic then heroic = 0 end
	if not mythic then mythic = 0 end

	local string = ""
	if mythic > 0 then string = string .. tostring(mythic) .. "M" end
	if heroic > 0 and mythic > 0 then string = string .. "-" end
	if heroic > 0 then string = string .. tostring(heroic) .. "H" end
	if normal > 0 and (mythic > 0 or heroic > 0) then string = string .. "-" end
	if normal > 0 then string = string .. tostring(normal) .. "N" end
	return string == "" and "-" or string
end

function AltManager:HideInterface()
	self.main_frame:Hide();
end

function AltManager:ShowInterface()
	self.main_frame:Show();
	self:StoreData(self:CollectData())
	self:UpdateStrings();
end

function AltManager:CreateRemoveButton(func)
	local frame = CreateFrame("Button", nil, nil)
	frame:ClearAllPoints()
	frame:SetScript("OnClick", function() func() end);
	self:MakeRemoveTexture(frame)
	frame:SetWidth(remove_button_size)
	return frame
end

function AltManager:MakeRemoveTexture(frame)
	if frame.remove_tex == nil then
		frame.remove_tex = frame:CreateTexture(nil, "BACKGROUND")
		frame.remove_tex:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		frame.remove_tex:SetAllPoints()
		frame.remove_tex:Show();
	end
	return frame
end

function AltManager:MakeTopBottomTextures(frame)
	if frame.bottomPanel == nil then
		frame.bottomPanel = frame:CreateTexture(nil);
	end
	if frame.topPanel == nil then
		frame.topPanel = CreateFrame("Frame", "AltManagerTopPanel", frame);
		frame.topPanelTex = frame.topPanel:CreateTexture(nil, "BACKGROUND");
		--frame.topPanelTex:ClearAllPoints();
		frame.topPanelTex:SetAllPoints();
		--frame.topPanelTex:SetSize(frame:GetWidth(), 30);
		frame.topPanelTex:SetDrawLayer("ARTWORK", -5);
		frame.topPanelTex:SetColorTexture(0, 0, 0, 0.7);
		
		frame.topPanelString = frame.topPanel:CreateFontString("Method name");
		frame.topPanelString:SetFont("Fonts\\FRIZQT__.TTF", 20)
		frame.topPanelString:SetTextColor(1, 1, 1, 1);
		frame.topPanelString:SetJustifyH("CENTER")
		frame.topPanelString:SetJustifyV("CENTER")
		frame.topPanelString:SetWidth(260)
		frame.topPanelString:SetHeight(20)
		frame.topPanelString:SetText("Alt Manager");
		frame.topPanelString:ClearAllPoints();
		frame.topPanelString:SetPoint("CENTER", frame.topPanel, "CENTER", 0, 0);
		frame.topPanelString:Show();
		
	end
	frame.bottomPanel:SetColorTexture(0, 0, 0, 0.7);
	frame.bottomPanel:ClearAllPoints();
	frame.bottomPanel:SetPoint("TOPLEFT", frame, "BOTTOMLEFT", 0, 0);
	frame.bottomPanel:SetPoint("TOPRIGHT", frame, "BOTTOMRIGHT", 0, 0);
	frame.bottomPanel:SetSize(frame:GetWidth(), 30);
	frame.bottomPanel:SetDrawLayer("ARTWORK", 7);

	frame.topPanel:ClearAllPoints();
	frame.topPanel:SetSize(frame:GetWidth(), 30);
	frame.topPanel:SetPoint("BOTTOMLEFT", frame, "TOPLEFT", 0, 0);
	frame.topPanel:SetPoint("BOTTOMRIGHT", frame, "TOPRIGHT", 0, 0);

	frame:SetMovable(true);
	frame.topPanel:EnableMouse(true);
	frame.topPanel:RegisterForDrag("LeftButton");
	frame.topPanel:SetScript("OnDragStart", function(self,button)
		frame:SetMovable(true);
        frame:StartMoving();
    end);
	frame.topPanel:SetScript("OnDragStop", function(self,button)
        frame:StopMovingOrSizing();
		frame:SetMovable(false);
    end);
end

function AltManager:MakeBorderPart(frame, x, y, xoff, yoff, part)
	if part == nil then
		part = frame:CreateTexture(nil);
	end
	part:SetTexture(0, 0, 0, 1);
	part:ClearAllPoints();
	part:SetPoint("TOPLEFT", frame, "TOPLEFT", xoff, yoff);
	part:SetSize(x, y);
	part:SetDrawLayer("ARTWORK", 7);
	return part;
end

function AltManager:MakeBorder(frame, size)
	if size == 0 then
		return;
	end
	frame.borderTop = self:MakeBorderPart(frame, frame:GetWidth(), size, 0, 0, frame.borderTop); -- top
	frame.borderLeft = self:MakeBorderPart(frame, size, frame:GetHeight(), 0, 0, frame.borderLeft); -- left
	frame.borderBottom = self:MakeBorderPart(frame, frame:GetWidth(), size, 0, -frame:GetHeight() + size, frame.borderBottom); -- bottom
	frame.borderRight = self:MakeBorderPart(frame, size, frame:GetHeight(), frame:GetWidth() - size, 0, frame.borderRight); -- right
end

-- shamelessly stolen from saved instances
function AltManager:GetNextWeeklyResetTime()
	if not self.resetDays then
		local region = self:GetRegion()
		if not region then return nil end
		self.resetDays = {}
		self.resetDays.DLHoffset = 0
		if region == "US" then
			self.resetDays["2"] = true -- tuesday
			-- ensure oceanic servers over the dateline still reset on tues UTC (wed 1/2 AM server)
			self.resetDays.DLHoffset = -3 
		elseif region == "EU" then
			self.resetDays["3"] = true -- wednesday
		elseif region == "CN" or region == "KR" or region == "TW" then -- XXX: codes unconfirmed
			self.resetDays["4"] = true -- thursday
		else
			self.resetDays["2"] = true -- tuesday?
		end
	end
	local offset = (self:GetServerOffset() + self.resetDays.DLHoffset) * 3600
	local nightlyReset = self:GetNextDailyResetTime()
	if not nightlyReset then return nil end
	while not self.resetDays[date("%w",nightlyReset+offset)] do
		nightlyReset = nightlyReset + 24 * 3600
	end
	return nightlyReset
end

function AltManager:GetNextDailyResetTime()
	local resettime = GetQuestResetTime()
	if not resettime or resettime <= 0 or -- ticket 43: can fail during startup
		-- also right after a daylight savings rollover, when it returns negative values >.<
		resettime > 24*3600+30 then -- can also be wrong near reset in an instance
		return nil
	end
	if false then -- this should no longer be a problem after the 7.0 reset time changes
		-- ticket 177/191: GetQuestResetTime() is wrong for Oceanic+Brazilian characters in PST instances
		local serverHour, serverMinute = GetGameTime()
		local serverResetTime = (serverHour*3600 + serverMinute*60 + resettime) % 86400 -- GetGameTime of the reported reset
		local diff = serverResetTime - 10800 -- how far from 3AM server
		if math.abs(diff) > 3.5*3600  -- more than 3.5 hours - ignore TZ differences of US continental servers
			and self:GetRegion() == "US" then
			local diffhours = math.floor((diff + 1800)/3600)
			resettime = resettime - diffhours*3600
			if resettime < -900 then -- reset already passed, next reset
				resettime = resettime + 86400
				elseif resettime > 86400+900 then
				resettime = resettime - 86400
			end
		end
	end
	return time() + resettime
end

function AltManager:GetServerOffset()
	local serverDay = C_DateAndTime.GetCurrentCalendarTime().weekday - 1 -- 1-based starts on Sun
	local localDay = tonumber(date("%w")) -- 0-based starts on Sun
	local serverHour, serverMinute = GetGameTime()
	local localHour, localMinute = tonumber(date("%H")), tonumber(date("%M"))
	if serverDay == (localDay + 1)%7 then -- server is a day ahead
		serverHour = serverHour + 24
	elseif localDay == (serverDay + 1)%7 then -- local is a day ahead
		localHour = localHour + 24
	end
	local server = serverHour + serverMinute / 60
	local localT = localHour + localMinute / 60
	local offset = floor((server - localT) * 2 + 0.5) / 2
	return offset
end

function AltManager:GetRegion()
	if not self.region then
		local reg
		reg = GetCVar("portal")
		if reg == "public-test" then -- PTR uses US region resets, despite the misleading realm name suffix
			reg = "US"
		end
		if not reg or #reg ~= 2 then
			local gcr = GetCurrentRegion()
			reg = gcr and ({ "US", "KR", "EU", "TW", "CN" })[gcr]
		end
		if not reg or #reg ~= 2 then
			reg = (GetCVar("realmList") or ""):match("^(%a+)%.")
		end
		if not reg or #reg ~= 2 then -- other test realms?
			reg = (GetRealmName() or ""):match("%((%a%a)%)")
		end
		reg = reg and reg:upper()
		if reg and #reg == 2 then
			self.region = reg
		end
	end
	return self.region
end

function AltManager:GetWoWDate()
	local hour = tonumber(date("%H"));
	local day = C_DateAndTime.GetCurrentCalendarTime().weekday;
	return day, hour;
end

function AltManager:TimeString(length)
	if length == 0 then
		return "Now";
	end
	if length < 3600 then
		return string.format("%d mins", length / 60);
	end
	if length < 86400 then
		return string.format("%d hrs %d mins", length / 3600, (length % 3600) / 60);
	end
	return string.format("%d days %d hrs", length / 86400, (length % 86400) / 3600);
end
