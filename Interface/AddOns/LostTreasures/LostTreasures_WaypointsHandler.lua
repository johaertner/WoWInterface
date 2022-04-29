--[[----------------------------------------------------------------------]]--
--[[--LostTreasures_WaypointsHandler.lua								--]]--
--[[--See README.html for more info										--]]--
--[[----------------------------------------------------------------------]]--
function LostTreasures:DoWaypoints(opts)
-- LostTreasures:DoWaypoints({  [removeAll = true, removePoint = 0, ]  [addAll = true, addPoint = 0, ]  blockPoint = false, clearBlocked = false, setArrow = true})
	opts = opts or {}
	
	if _LT.sv.ENABLED and GetCurrentMapContinent() == 6 then
		if opts.removeAll == nil then opts.removeAll = true end
		if opts.addAll == nil then opts.addAll = true end
		if opts.blockPoint == nil then opts.blockPoint = false end
		if opts.clearBlocked == nil then opts.clearBlocked = false end
		if opts.setArrow == nil then opts.setArrow = true end
		if opts.removePoint == nil then opts.removePoint = 0 end
		opts.removePoint = tonumber(opts.removePoint)
		if opts.addPoint == nil then opts.addPoint = 0 end
		opts.addPoint = tonumber(opts.addPoint)
		
		if opts.removeAll or opts.removePoint > 0 then
			self:RemoveWaypoints(opts.removePoint, opts.blockPoint)
		end
		
		if opts.clearBlocked then
			_LT.sv.BLOCKED_WAYPOINTS = {}
		end
		
		if opts.addAll or opts.addPoint > 0 then
			self:AddWaypoints(opts.addPoint)
		end
		
		if opts.setArrow and TomTom.profile.arrow.autoqueue then
			TomTom:SetClosestWaypoint()
		end
	else
		self:RemoveWaypoints(0, false)
	end
end

function LostTreasures:RemoveWaypoints(point, blockPoint)
	point = point or 0
	for zone, quests in pairs(_LT.waypoints) do
		for quest, waypoint in pairs(quests) do
			if point == 0 or (point > 0 and point == quest) then
				for i = 1, #waypoint.coords, 4 do
					local f, x, y, title = waypoint.coords[i + 2], waypoint.coords[i] / 100, waypoint.coords[(i + 1)] / 100, self:GetTitle(waypoint)
					local key = TomTom:GetKey({zone, f, x, y, title = title})
					if TomTom.waypoints[zone] and TomTom.waypoints[zone][key] then
						TomTom:RemoveWaypoint(TomTom.waypoints[zone][key], blockPoint)
					end
				end
			end
		end
	end
end

function LostTreasures:AddWaypoints(point)
	point = point or 0
	for zone, quests in pairs(_LT.waypoints) do
		for quest, waypoint in pairs(quests) do
if quest ~= 31399 or (quest == 31399 and not _LT.sv.BLOCK_MINING_PICK) then -- pick patch
			if point == 0 or (point > 0 and point == quest) then
				if IsQuestFlaggedCompleted(quest) == nil or _LT.sv.SHOW_ALL_WAYPOINTS then
					if _LT.sv.SHOW_WAYPOINT_TYPE == 1 or (_LT.sv.SHOW_WAYPOINT_TYPE == 2 and waypoint.treasureOfPandaria) or (_LT.sv.SHOW_WAYPOINT_TYPE == 3 and waypoint.lostTreasuresOfPandaria) then
					
						local tmpClearDistance = _LT.sv.CLEARDISTANCE
						if _LT.sv.PERSISTENT_WAYPOINTS then
							tmpClearDistance = 0
						end
						
						local config = {
							crazy = TomTom.profile.arrow.autoqueue, 
							world = _LT.sv.USE_WORLDMAP, 
							minimap = _LT.sv.USE_MINIMAP, 
							persistent = false, 
							callbacks = TomTom:DefaultCallbacks({
								cleardistance = tmpClearDistance, 
							}), 
						}
						for i = 1, #waypoint.coords, 4 do
							local f, x, y, title = waypoint.coords[i + 2], waypoint.coords[i] / 100, waypoint.coords[(i + 1)] / 100, self:GetTitle(waypoint)
							local key = TomTom:GetKey({zone, f, x, y, title = title})
							
							if _LT.sv.BLOCKED_WAYPOINTS[zone] and _LT.sv.BLOCKED_WAYPOINTS[zone][key] then
								LostTreasures:printd("Blocked Point: "..quest)
							else
								config.title = title
								TomTom:AddMFWaypoint(zone, f, x, y, config)
							end
						end
					end
				end
			end
end -- end pick patch
		end
	end
end

--[[----------------------------------------------------------------------]]--
--[[--Modified method(s) from TomTom for custom behavior. All code from	--]]--
--[[--here to the bottom of this document is property of TomTom.		--]]--
--[[--All modified/added code is commented for observation purposes.	--]]--
--[[--TomTom:RemoveWaypoint(uid)										--]]--
--[[--TomTom:GetClosestWaypoint()										--]]--
--[[----------------------------------------------------------------------]]--
function TomTom:RemoveWaypoint(uid, blockPoint) -- < LostTreasures Modification - blockPoint
    local data = uid
    TomTom:ClearWaypoint(uid)

    local key = TomTom:GetKey(data)
    local mapId = data[1]
    local sv = TomTom.waypointprofile[mapId]

    if sv and sv[key] then
        sv[key] = nil
    end

--------------------------------------
-- LostTreasures Modification		--
	if blockPoint == nil then -- Block waypoints by default.
		blockPoint = true
	end
	
	if _LT.sv.ENABLED and _LT.sv.USE_SESSIONS and not _LT.sv.PERSISTENT_WAYPOINTS and blockPoint then
		if TomTom.waypoints[mapId] and TomTom.waypoints[mapId][key] then
			_LT.sv.BLOCKED_WAYPOINTS[mapId] = _LT.sv.BLOCKED_WAYPOINTS[mapId] or {}
			_LT.sv.BLOCKED_WAYPOINTS[mapId][key] = uid
		end
	end
-- End LostTreasures Modification	--
--------------------------------------

    -- Remove this entry from the waypoints table
    if TomTom.waypoints[mapId] then
        TomTom.waypoints[mapId][key] = nil
    end
end

function TomTom:GetClosestWaypoint()
    local m,f,x,y = TomTom:GetCurrentPlayerPosition()
	local c = LibMapData:GetContinentFromMap(m)

    local closest_waypoint = nil
    local closest_dist = nil
	local found = false -- < LostTreasures Modification

    if not TomTom.profile.arrow.closestusecontinent then
--------------------------------------
-- LostTreasures Modification		--
-- Get the closest treasure waypoint (in this zone) before other waypoints if _LT.sv.TREASURE_FIRST.
		if _LT.sv.ENABLED and _LT.sv.TREASURE_FIRST and _LT.waypoints[m] then
			for quest, waypoint in pairs(_LT.waypoints[m]) do
				for i = 1, #waypoint.coords, 4 do
					local key = TomTom:GetKey({m, waypoint.coords[i + 2], waypoint.coords[i] / 100, waypoint.coords[(i + 1)] / 100, title = LostTreasures:GetTitle(waypoint)})
					if TomTom.waypoints[m] and TomTom.waypoints[m][key] then
						local dist, x, y = TomTom:GetDistanceToWaypoint(TomTom.waypoints[m][key])
						if (dist and closest_dist == nil) or (dist and dist < closest_dist) then
							closest_dist = dist
							closest_waypoint = TomTom.waypoints[m][key]
							found = true
						end
					end
				end
			end
		end
-- End LostTreasures Modification	--
--------------------------------------
		if not closest_waypoint then -- < LostTreasures Modification - Use default code if not _LT.sv.TREASURE_FIRST or no treasure found.
			-- Simple search within this zone
			if TomTom.waypoints[m] then
				for key, waypoint in pairs(TomTom.waypoints[m]) do
					local dist, x, y = TomTom:GetDistanceToWaypoint(waypoint)
					if (dist and closest_dist == nil) or (dist and dist < closest_dist) then
						closest_dist = dist
						closest_waypoint = waypoint
					end
				end
			end
		end -- < LostTreasures Modification
	else
	
--------------------------------------
-- LostTreasures Modification		--
-- Get the closest treasure waypoint (in Pandaria) before other waypoints if _LT.sv.TREASURE_FIRST.
		if _LT.sv.ENABLED and _LT.sv.TREASURE_FIRST then
			for zone, quests in pairs(_LT.waypoints) do
				if c == LibMapData:GetContinentFromMap(zone) then
					for quest, waypoint in pairs(quests) do
						for i = 1, #waypoint.coords, 4 do
							local key = TomTom:GetKey({m, waypoint.coords[i + 2], waypoint.coords[i] / 100, waypoint.coords[(i + 1)] / 100, title = LostTreasures:GetTitle(waypoint)})
							if TomTom.waypoints[zone] and TomTom.waypoints[zone][key] then
								local dist, x, y = TomTom:GetDistanceToWaypoint(TomTom.waypoints[zone][key])
								if (dist and closest_dist == nil) or (dist and dist < closest_dist) then
									closest_dist = dist
									closest_waypoint = TomTom.waypoints[zone][key]
									found = true
								end
							end
						end
					end
				end
			end
		end
-- End LostTreasures Modification	--
--------------------------------------
		if not closest_waypoint then -- < LostTreasures Modification - Use default code if not _LT.sv.TREASURE_FIRST or no treasure found.
			-- Search all waypoints on this continent
			for map, waypoints in pairs(TomTom.waypoints) do
				if c == LibMapData:GetContinentFromMap(map) then
					for key, waypoint in pairs(waypoints) do
					
						local dist, x, y = TomTom:GetDistanceToWaypoint(waypoint)
						if (dist and closest_dist == nil) or (dist and dist < closest_dist) then
							closest_dist = dist
							closest_waypoint = waypoint
						end
						
					end
				end
			end
		end -- < LostTreasures Modification
	end
	
	if closest_dist then
--------------------------------------
-- LostTreasures Modification		--
-- Print detailed information if we are allowing it and we found a treasure waypoint.
		if found and _LT.sv.SHOW_DETAILED_INFO then
			print(closest_waypoint.title)
		end
-- End LostTreasures Modification	--
--------------------------------------
		return closest_waypoint
	end
end