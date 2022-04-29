local GC_DigestSpellID = 181295
local CG_Version = GetAddOnMetadata("ConsGoreFiend", "Version")
local GC_DigestName = GetSpellInfo(GC_DigestSpellID)
local CG_AutoLOADED = 0
local CG_Chatto = "RAID"
local CG_DTime = 35
local CG_img = "Interface\\AddOns\\ConsGoreFiend\\img\\"
local CG_Font = "Fonts\\FRIZQT__.TTF"
local CG_Bar = CG_img.."bar"
local CG_empty = CG_img.."empty"
CG_ChatPrefix = RegisterAddonMessagePrefix("ConsGoreFiend4")
local CGname = UnitName("player")
local CGrealm = string.gsub(GetRealmName(), " ", "")
local CGtempname = CGname .. "-" .. CGrealm
local CGtempnameElv = CGname .. " - " .. CGrealm
local CG_FlameClear = {}
local CG_FlameClear2 = {}
local Cg_Clearchkrepeater = 0
local CG_MainList = {}
local CG_ChatList = {}
local CG_DigestCount = 0
local CGCPickA = 0
local CG_TestingVar = 0
local CG_ButtonToMain = {}
local CG_ErrorMSG = 0
local CG_CBPlates = 0
local CG_CB = 0
local CG_CB2 = 0
local CG_CB3 = 0
local CG_Count1 = 0
local CG_DebugtimeSync = debugprofilestop()
local CG_D2Timer1 = debugprofilestop()
local CG_D2Timer2 = 0
local CG_BlockList = {}
local CG_BlockListNr = 0
local CG_InCombatSync = 0
local CG_UsedMarkers = {}
ConsGoreFiendVar = {}
ConsGoreFiendVar.CS_Panel = CreateFrame( "Frame", "CGPanelFrame", UIParent)
ConsGoreFiendVar.CS_Panel.name = "ConsGoreFiend"
InterfaceOptions_AddCategory(ConsGoreFiendVar.CS_Panel)

CS_Panel = {}
CS_Panel.title = CreateFrame("SimpleHTML",nil,ConsGoreFiendVar.CS_Panel)
CS_Panel.title:SetWidth(500)
CS_Panel.title:SetHeight(20)
CS_Panel.title:SetPoint("TOPLEFT", ConsGoreFiendVar.CS_Panel, "TOPLEFT", 100,-30)
CS_Panel.title:SetFont(CG_Font, 18,"OUTLINE")
CS_Panel.title:SetText(CG_L["ConsGoreFiend"])
CS_Panel.Button1 = CreateFrame("Button", "ZPButton2", ConsGoreFiendVar.CS_Panel)
CS_Panel.Button1:SetPoint("TOPLEFT", ConsGoreFiendVar.CS_Panel, "TOPLEFT", 120, -100)
CS_Panel.Button1:SetWidth(70)
CS_Panel.Button1:SetHeight(30)
CS_Panel.Button1:SetText(CG_L["Load"])
CS_Panel.Button1:SetNormalFontObject("GameFontNormal")
CS_Panel.Button1ntex = CS_Panel.Button1:CreateTexture()
CS_Panel.Button1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
CS_Panel.Button1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
CS_Panel.Button1ntex:SetAllPoints()	
CS_Panel.Button1:SetNormalTexture(CS_Panel.Button1ntex)
CS_Panel.Button1htex = CS_Panel.Button1:CreateTexture()
CS_Panel.Button1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
CS_Panel.Button1htex:SetTexCoord(0, 0.625, 0, 0.6875)
CS_Panel.Button1htex:SetAllPoints()
CS_Panel.Button1:SetHighlightTexture(CS_Panel.Button1htex)
CS_Panel.Button1ptex = CS_Panel.Button1:CreateTexture()
CS_Panel.Button1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
CS_Panel.Button1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
CS_Panel.Button1ptex:SetAllPoints()
CS_Panel.Button1:SetPushedTexture(CS_Panel.Button1ptex)
CS_Panel.Button1:SetScript("OnClick", function(self, arg1)
		CG_Options()
		CG_MissionInfo.Status = "on"
		CG_TimeAnimation("on")
		CG_CBPlates = 1
		CG_MainFrame:Show()
		CG_MarkerFrame:SetPoint("TOPLEFT", CGOptions, "TOPLEFT", 230, 0)
		if (CG_MissionInfo.Settings.MarkersOn == 1) then
			CG_MarkerFrame:Show()
		end
end)

function testaren()
			local CG_DebugtimeSync2 = debugprofilestop()
			local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
			CG_GotDigest(UnitName("Target"), "TRIGGER", GC_Timeh)

end

local function CG_Timer(self,CG_elapsed)
	local CG_Debugtime = debugprofilestop()
	if (not UnitIsDead("player") and InCombatLockdown() and CG_InCombatSync == 0) then
		CG_InCombatSync = 1
		SendAddonMessage( "ConsGoreFiend4","Sync", CG_Chatto )
	elseif (not UnitIsDead("player") and not InCombatLockdown() and CG_InCombatSync == 1) then
		CG_InCombatSync = 0
		CG_MainList = nil
		CG_ChatList = nil
		for CGroupindex = 1,8 do
			CG_UsedMarkers[CGroupindex] = 0
		end
		CG_MainList = {}
		CG_ChatList = {}
	end
	if (CG_Debugtime >= CG_D2Timer1) then
		if (CG_CBPlates == 1) then
			CG_SFNameplates()
		end
		if (CG_CB2 == 1) then
			CG_UpdStuffzs()
			CG_Clearcheck()
		end
		CG_D2Timer1 = debugprofilestop() + 100
		CG_D2Timer2 = CG_D2Timer2 + 1
	end
	if (CG_D2Timer2 >= 5) then
		if (CG_CB3 == 1) then
			CG_Send_ChatList()
		end
		CG_D2Timer2 = 0
	end
end

function CG_SFNameplates()
	local CG_curKids = WorldFrame:GetNumChildren()
	local i
	CG_numKids = CG_curKids
	CG_PlateList = nil
	CG_PlateList = {}
	for i = 1, CG_curKids do
		local CG_frame = select(i, WorldFrame:GetChildren())
		if (CG_frame:GetName() and CG_frame:GetName():find("NamePlate%d") and not CG_frame.CG_Skinned) then
			CG_frame.CG_Skinned = "yus"
			CG_frame.CG_NPFrame = CreateFrame("frame", CG_frame:GetName().."CG_NPFrame", CG_frame.CG_healthBar)
			CG_frame.CG_NPFrame:SetPoint("LEFT", CG_frame, "LEFT", 0,0)
			CG_frame.CG_NPFrame:SetWidth(2)
			CG_frame.CG_NPFrame:SetHeight(18)
			CG_frame.CG_NPFrame:SetFrameStrata("HIGH")
			CG_frame.CG_NPFrame.CG_texture = CG_frame:CreateTexture("CG_Ttexture", "ARTWORK")
			CG_frame.CG_NPFrame.CG_texture:SetPoint("LEFT",CG_frame.CG_NPFrame,"LEFT", 0, 0)
			CG_frame.CG_NPFrame.CG_texture:SetWidth(2)
			CG_frame.CG_NPFrame.CG_texture:SetHeight(18)
			CG_frame.CG_NPFrame.CG_texture:SetTexture(CG_Bar)
			CG_frame.CG_NPFrame.CG_texture:SetVertexColor(1,1,1)
			CG_frame.CG_NPFrame.CG_texture:SetAlpha(0)
			CG_frame.CG_NPFrame.CG_texture:SetDrawLayer("ARTWORK", 7)
			CG_frame.CG_NPFrame.CG_FSFontString = CG_MainFrame:CreateFontString(CG_frame:GetName().."CG_FSFont","OVERLAY")
			CG_frame.CG_NPFrame.CG_FSFontString:SetParent(CG_frame)
			if (IsAddOnLoaded('TidyPlates')) then
				CG_frame.CG_NPFrame.CG_FSFontString:SetPoint("TOPLEFT",CG_frame.CG_NPFrame,"TOPLEFT",4,3)
			else
				if (IsAddOnLoaded('ElvUi')) then
					CG_frame.CG_NPFrame:SetWidth(2)
					CG_frame.CG_NPFrame.CG_texture:SetHeight(22)
					CG_frame.CG_NPFrame:SetPoint("LEFT", CG_frame, "LEFT", 9,0)
					CG_frame.CG_NPFrame.CG_FSFontString:SetPoint("LEFT",CG_frame.CG_NPFrame,"LEFT",4,15)
				else
					CG_frame.CG_NPFrame.CG_FSFontString:SetPoint("BOTTOMLEFT",CG_frame.CG_NPFrame,"BOTTOMLEFT",4,-12)
				end
			end
			CG_frame.CG_NPFrame.CG_FSFontString:SetWidth(30)
			CG_frame.CG_NPFrame.CG_FSFontString:SetHeight(12)
			CG_frame.CG_NPFrame.CG_FSFontString:SetJustifyH("LEFT")
			CG_frame.CG_NPFrame.CG_FSFontString:SetFont(CG_Font, 8)
			CG_frame.CG_NPFrame.CG_FSFontString:SetText("")
			CG_frame.CG_NPFrame.CG_FSFontString:SetTextColor(1, 1, 0)
			CG_frame.CG_ag2 = CG_frame:CreateAnimationGroup()
			CG_frame.CG_ag2.anim = CG_frame.CG_ag2:CreateAnimation()
			CG_frame.CG_ag2.anim:SetDuration(0.1)
			CG_frame.CG_ag2:SetLooping("REPEAT")
			CG_frame.CG_ag2:SetScript("OnLoop", function(self, event, ...)
				local CG_frame1 = self:GetParent()
				CG_frame1.CG_barFrame, CG_frame1.CG_nameFrame = CG_frame1:GetChildren()
				CG_frame1.CG_healthBar, cg_ = CG_frame1.CG_barFrame:GetChildren()
				local CG_healthBar = CG_frame1.CG_healthBar
				local CG_CurName = CG_frame1.CG_nameFrame:GetRegions()
				local CG_CurName = CG_CurName:GetText()
				local CG_GotNameP = 0
				if (CG_MissionInfo.Status == "off") then
					CG_frame1.CG_NPFrame.CG_texture:SetAlpha(0)
					CG_frame1.CG_NPFrame.CG_FSFontString:SetText("")
					return
				end
				for CG_index2,CG_value2 in pairs(CG_MainList) do
					if (CG_CurName == CG_MainList[CG_index2]["N"]) then
						local CG_DebugtimeSync2 = debugprofilestop()
						local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
						local GC_Timeh = (CG_MainList[CG_index2]["D"] + (CG_DTime * 1000)) - GC_Timeh
						GC_Timeh = floor((GC_Timeh / 100) - 0.5) / 10
						CG_GotNameP = CG_GotNameP + 1
						local CG_TimeProcent = GC_Timeh / CG_DTime
						local CG_TempWidth = CG_TimeProcent * CG_healthBar:GetWidth()
						local _, CG_Curmaxhealth = CG_healthBar:GetMinMaxValues()
						local CG_curHpValue = CG_healthBar:GetValue()
						local CG_curProcent = floor((CG_curHpValue / CG_Curmaxhealth) * 100) / 100
						local CG_CurTime = GC_Timeh
						local CG_TimeProcent = CG_CurTime / CG_DTime
						if (not CG_MainList[CG_index2]["P"] or CG_MainList[CG_index2]["P"] > CG_curProcent) then
							if (not CG_ChatList[CG_index2]) then
								CG_ChatList[CG_index2] = {}
							end
							CG_ChatList[CG_index2]["P"] = CG_curProcent
							CG_ChatList[CG_index2]["H"] = CG_curHpValue
							CG_ChatList[CG_index2]["N"] = CG_CurName
							CG_MainList[CG_index2]["H"] = CG_curHpValue
							CG_MainList[CG_index2]["P"] = CG_curProcent
						end
						if (IsAddOnLoaded('TidyPlates')) then
							CG_frame.CG_NPFrame:SetParent(CG_frame1.extended.visual.healthbar)
							CG_TempWidth = CG_TimeProcent * (CG_frame1.extended.visual.highlight:GetWidth() * 0.8)
							CG_frame1.CG_NPFrame:SetPoint("LEFT",CG_frame1.extended.visual.healthbar,"LEFT", CG_TempWidth, 4)
						else
							local CG_ElvWidth = 110
							if (ElvDB and ElvDB["profiles"] and ElvDB["profiles"][CGtempnameElv] and ElvDB["profiles"][CGtempnameElv]["nameplate"] and ElvDB["profiles"][CGtempnameElv]["nameplate"]["healthBar"] and ElvDB["profiles"][CGtempnameElv]["nameplate"]["healthBar"]["width"]) then
								CG_ElvWidth = ElvDB["profiles"][CGtempnameElv]["nameplate"]["healthBar"]["width"]
							end
							if (IsAddOnLoaded('ElvUi')) then
								CG_TempWidth = (CG_TimeProcent * CG_ElvWidth) + 5
								CG_frame1.CG_NPFrame:SetPoint("LEFT",CG_frame1.CG_healthBar,"LEFT", CG_TempWidth, 0)
							else
								CG_TempWidth = CG_TimeProcent * CG_healthBar:GetWidth()
								CG_frame1.CG_NPFrame:SetPoint("LEFT",CG_frame1.CG_healthBar,"LEFT", CG_TempWidth, -4)
							end
						end
						CG_frame1.CG_NPFrame:SetFrameStrata("HIGH")
						if (CG_TimeProcent > CG_curProcent) then
							CG_frame1.CG_NPFrame.CG_texture:SetVertexColor(CG_MissionInfo.Settings.HPBar4.r,CG_MissionInfo.Settings.HPBar4.g,CG_MissionInfo.Settings.HPBar4.b)
							CG_frame1.CG_NPFrame.CG_texture:SetAlpha(CG_MissionInfo.Settings.HPBar4.a)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetTextColor(CG_MissionInfo.Settings.HPBar6.r,CG_MissionInfo.Settings.HPBar6.g,CG_MissionInfo.Settings.HPBar6.b)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetAlpha(CG_MissionInfo.Settings.HPBar6.a)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetFont(CG_Font, 10)
						else
							CG_frame1.CG_NPFrame.CG_texture:SetVertexColor(CG_MissionInfo.Settings.HPBar3.r,CG_MissionInfo.Settings.HPBar3.g,CG_MissionInfo.Settings.HPBar3.b)
							CG_frame1.CG_NPFrame.CG_texture:SetAlpha(CG_MissionInfo.Settings.HPBar3.a)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetTextColor(CG_MissionInfo.Settings.HPBar5.r,CG_MissionInfo.Settings.HPBar5.g,CG_MissionInfo.Settings.HPBar5.b)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetAlpha(CG_MissionInfo.Settings.HPBar5.a)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetFont(CG_Font, 10)
						end
						if (CG_MissionInfo.Settings.NamePlate == 0) then
							CG_frame1.CG_NPFrame.CG_texture:SetAlpha(0)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetText("")
						else
							CG_frame1.CG_NPFrame.CG_texture:SetAlpha(1)
							CG_frame1.CG_NPFrame.CG_FSFontString:SetText(CG_CurTime)
						end
					end
				end
				if (CG_GotNameP == 0) then
					CG_frame1.CG_NPFrame.CG_texture:SetAlpha(0)
					CG_frame1.CG_NPFrame.CG_FSFontString:SetText("")
				end
			end)
			CG_frame.CG_ag2:Play()
		end
	end
end
function CG_TrimName(CG_TrimName)
	if (CG_TrimName) then
		if (string.find(CG_TrimName, "(.*)-(.*)")) then
			local CG_, CG_, CG_TrimName2, CG_TrimServ = string.find(CG_TrimName, "(.*)-(.*)")
			return CG_TrimName2
		else
			return CG_TrimName
		end
	end
end
function CG_Send_ChatList()
	local CG_SendString = " "
	local cgnr = 0
	for CG_index,CG_value in pairs(CG_ChatList) do
		local procent = CG_ChatList[CG_index]["P"]
		local HPVal = CG_ChatList[CG_index]["H"]
		local GC_Name = CG_ChatList[CG_index]["N"]
		cgnr = cgnr + 1
		if (cgnr == 1) then
			CG_SendString = GC_Name .. "-" .. procent .. "-" .. HPVal
		else
			CG_SendString = GC_Name .. "-" .. procent .. "-" .. HPVal .. " 6 " .. CG_SendString
		end
	end
	CG_SendString = "Derp" .. " 6 " .. CG_SendString
	if (CG_SendString ~= "Derp 6  ") then
		SendAddonMessage( "ConsGoreFiend4",CG_SendString , CG_Chatto )
		CG_ChatList = nil
		CG_ChatList = {}
	end
end
function CG_test(msg)
	local i = 1
	while i < 2 do
		if (string.find( msg, "(.*)%s%d%s(.*)")) then
			startPos, endPos, msg, CG_fW = string.find( msg, "(.*)%s%d%s(.*)")
			if (CG_fW) then
				local CG_N, CG_P, CG_HP = strsplit("-",CG_fW)
				if (CG_N and CG_P and CG_HP) then
					for CG_index,CG_value in pairs(CG_MainList) do
						if (CG_MainList[CG_index]["N"] == CG_N) then
							if (CG_MainList[CG_index]["H"]) then
								if (CG_MainList[CG_index]["H"] > tonumber(CG_HP)) then
									CG_MainList[CG_index]["P"] = tonumber(CG_P)
									CG_MainList[CG_index]["H"] = tonumber(CG_HP)
								end
							else
								CG_MainList[CG_index]["P"] = tonumber(CG_P)
								CG_MainList[CG_index]["H"] = tonumber(CG_HP)
							end
						end
					end
				end
			end
		else
			i = i + 1
		end
	end
end
function CG_GotDigest(GC_destName, CG_From, gc_time)
	local GC_destName = CG_TrimName(GC_destName)
	if (CG_InCombatSync == 0 and CG_TestingVar == 0) then
		if (not UnitIsDead("player")) then
			return
		end
	end
	for CG_index,CG_value in pairs(CG_BlockList) do
		if (CG_BlockList[CG_index]["N"] == GC_destName) then
			return
		end
	end
	CG_InstanceDif = select(3,GetInstanceInfo())
	if (CG_InstanceDif == 16) then
		CG_DTime = 35
	else
		CG_DTime = 40
	end
	local CG_TempRNumb = 1
	local CG_TempprintNumb = 0
	for CG_index,CG_value in pairs(CG_MainList) do
		CG_TempRNumb = CG_TempRNumb + 1
		if (CG_MainList[CG_index]["N"] == GC_destName) then
			CG_TempprintNumb = 1
			if (CG_MainList[CG_index]["D"] > gc_time) then
				CG_MainList[CG_index]["D"] = gc_time
			end
		end
	end
	if (CG_TempprintNumb == 0) then
		CG_TempRNumb = CG_GetFreeNr()
		CG_MainList[CG_TempRNumb] = {}
		CG_MainList[CG_TempRNumb]["N"] = GC_destName
		CG_MainList[CG_TempRNumb]["D"] = gc_time
	end
	if (CG_From ~= "MSG") then
		SendAddonMessage( "ConsGoreFiend4","GOTDIGEST" .. GC_destName.."-"..gc_time, CG_Chatto )
	end
end
function CG_GetFreeNr()
	for CGroupindex = 1,20 do
		if (not CG_MainList[CGroupindex]) then
			return CGroupindex
		end
	end
end
function CG_LostDigest(GC_destName, CG_From)
	local GC_destName = CG_TrimName(GC_destName)
	for CG_index,CG_value in pairs(CG_MainList) do
		if (GC_destName == CG_MainList[CG_index]["N"]) then
			if (CG_MissionInfo.Settings.TimeLeft == 1) then
				local CG_DebugtimeSync2 = debugprofilestop()
				local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
				local GC_Timeh = (CG_MainList[CG_index]["D"] + (CG_DTime * 1000)) - GC_Timeh
				GC_Timeh = floor((GC_Timeh / 100) - 0.5) / 10
				local CG_CurTime = GC_Timeh
				local CG_CurName = CG_MainList[CG_index]["N"]
				local CG_CurTime_Print = 0
				if (not string.find(CG_CurTime, "%d.%d")) then
					CG_CurTime_Print = CG_CurTime .. ".0"
				else
					CG_CurTime_Print = CG_CurTime
				end
				print("ConsGoreFiend: " .. CG_CurName .. " - " .. CG_CurTime_Print .. "s left.")
			end
			CG_MainList[CG_index]["D"] = -500000
		end
	end
	if (CG_From ~= "MSG") then
		SendAddonMessage( "ConsGoreFiend4","LOSTDIGEST" .. GC_destName, CG_Chatto )
	end
end
function CG_UpdStuffzs()
	local ZG_Tempcount = nil
	ZG_Tempcount = {}
	for CG_index,CG_value in pairs(CG_MainList) do
		ZG_Tempcount[CG_index] = CG_value
	end
	for CG_index,CG_value in pairs(CG_BlockList) do
		CG_BlockList[CG_index]["T"] = CG_BlockList[CG_index]["T"] - 0.1
		if (CG_BlockList[CG_index]["T"] < 0.1) then
			CG_BlockList[CG_index] = nil
		end
	end
	for CG_index,CG_value in pairs(ZG_Tempcount) do
		local CG_DebugtimeSync2 = debugprofilestop()
		local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
		local GC_Timeh = (CG_MainList[CG_index]["D"] + (CG_DTime * 1000)) - GC_Timeh
		GC_Timeh = floor((GC_Timeh / 100) - 0.5) / 10
		if (GC_Timeh < 0.1) then
			CG_BlockListNr = CG_BlockListNr + 1
			CG_BlockList[CG_BlockListNr] = {}
			CG_BlockList[CG_BlockListNr]["N"] = CG_MainList[CG_index]["N"]
			CG_BlockList[CG_BlockListNr]["T"] = 5
			CG_RemoveMarkList(CG_MainList[CG_index]["N"])
			CG_MainList[CG_index] = nil
			CG_MainFrame["F" .. CG_index]:Hide()
			CG_MainFrame["F" .. CG_index][1]:SetText("")
			CG_MainFrame["F" .. CG_index][2]:SetText("")
			CG_MainFrame["F" .. CG_index][3]:SetText("")
			CG_MainFrame["F" .. CG_index]["CG_Img" .. CG_index]:Hide()
		else
			local CG_CurTime = GC_Timeh
			local CG_CurName = CG_MainList[CG_index]["N"]
			local CG_CurTime_Print = 0
			if (CG_MissionInfo.Settings.RaidWarning > 0 and CG_TestingVar == 0) then
				if (GC_Timeh == CG_MissionInfo.Settings.RaidWarning) then
					if (CG_MissionInfo.Settings.RaidWarningmsg1 and CG_MissionInfo.Settings.RaidWarningmsg2 and CG_MissionInfo.Settings.RaidWarningmsg1 ~= "" and CG_MissionInfo.Settings.RaidWarningmsg2 ~= "") then
						SendChatMessage(CG_MissionInfo.Settings.RaidWarningmsg1.." "..CG_CurName.." "..CG_MissionInfo.Settings.RaidWarningmsg2, "RAID_WARNING", nil, "RAID")
					else
						SendChatMessage("Break "..CG_CurName.." Out!!", "RAID_WARNING", nil, "RAID")
					end
				end
			end
			if (not string.find(CG_CurTime, "%d.%d")) then
				CG_CurTime_Print = CG_CurTime .. ".0"
			else
				CG_CurTime_Print = CG_CurTime
			end
			CG_MainFrame["F" .. CG_index]:Show()
			CG_MainFrame["F" .. CG_index][1]:SetText(CG_CurName)
			CG_MainFrame["F" .. CG_index][2]:SetText(CG_CurTime_Print)
			if (CG_MainList[CG_index]["P"]) then
				local CG_TimeProcent = CG_CurTime / CG_DTime
				local CG_Procent = CG_MainList[CG_index]["P"]
				local CG_Procent_Print = CG_Procent * 100
				local CG_TempWidth = CG_TimeProcent * 73
				CG_MainFrame["F" .. CG_index]["CG_Img" .. CG_index]["texture2"]:SetPoint("LEFT",CG_MainFrame["F" .. CG_index],"LEFT", 142 + CG_TempWidth, 0)
				CG_MainFrame["F" .. CG_index]["texture"]:SetWidth(73 * CG_Procent)
				CG_MainFrame["F" .. CG_index][3]:SetText(CG_Procent_Print .. "%")
				CG_MainFrame["F" .. CG_index]["CG_Img" .. CG_index]:Show()
				if (CG_TimeProcent > CG_Procent) then
					CG_MainFrame["F" .. CG_index]["texture"]:SetVertexColor(CG_MissionInfo.Settings.HPBar2.r,CG_MissionInfo.Settings.HPBar2.g,CG_MissionInfo.Settings.HPBar2.b)
					CG_MainFrame["F" .. CG_index]["texture"]:SetAlpha(CG_MissionInfo.Settings.HPBar2.a)
				else
					CG_MainFrame["F" .. CG_index]["texture"]:SetVertexColor(CG_MissionInfo.Settings.HPBar.r,CG_MissionInfo.Settings.HPBar.g,CG_MissionInfo.Settings.HPBar.b)
					CG_MainFrame["F" .. CG_index]["texture"]:SetAlpha(CG_MissionInfo.Settings.HPBar.a)
				end
			end
		end
	end
	CG_UpdateFSPos()
	local members = GetNumGroupMembers()
	local CG_DCount = 0
	for CGroupindex = 1,members do
		if (GetRaidRosterInfo(CGroupindex)) then
			if (UnitDebuff(GetRaidRosterInfo(CGroupindex), GC_DigestName)) then
				CG_DCount = CG_DCount + 1
			end
		end
	end
	if (CG_DigestCount ~= CG_DCount) then
		CG_TestForD()
		CG_DigestCount = CG_DCount
	end
end

function CG_Clearcheck()
	if (Cg_Clearchkrepeater == 0) then
		Cg_Clearchkrepeater = 1
		return
	end
	for CGroupindex = 1,20 do
		local cglines = CG_MainFrame["F" .. CGroupindex][2]:GetText()

		if (cglines == CG_FlameClear[CGroupindex]) then
			CG_MainFrame["F" .. CGroupindex]:Hide()
			CG_MainFrame["F" .. CGroupindex][1]:SetText("")
			CG_MainFrame["F" .. CGroupindex][2]:SetText("")
			CG_MainFrame["F" .. CGroupindex][3]:SetText("")
			CG_MainFrame["F" .. CGroupindex]["CG_Img" .. CGroupindex]:Hide()
		else
			if (cglines) then
				CG_FlameClear[CGroupindex] = cglines
			else
				CG_FlameClear[CGroupindex] = nil
			end
		end
	end
	Cg_Clearchkrepeater = 0
end
function CG_TestForD()
	local members = GetNumGroupMembers()
	for CGroupindex = 1,members do
		if (GetRaidRosterInfo(CGroupindex)) then
			if (UnitDebuff(GetRaidRosterInfo(CGroupindex), GC_DigestName)) then
				local CG_Namez1 = CG_TrimName(GetRaidRosterInfo(CGroupindex))
				local CG_DiGi = 0
				for CG_index,CG_value in pairs(CG_MainList) do
					if (CG_MainList[CG_index]["N"] == CG_Namez1) then
						CG_DiGi = 1
					end
				end
				if (CG_DiGi == 0) then
					local CG_DebugtimeSync2 = debugprofilestop()
					local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
					CG_GotDigest(CG_Namez1, "TRIGGER", GC_Timeh)
				end
			end
		end
	end
end

function CG_TimeAnimation(status)
	if (status == "off") then
		CG_CB2 = 0
		CG_CB3 = 0
	else
		CG_CB2 = 1
		CG_CB3 = 1
	end
end
function CG_UpdateFSPos()
	local CG_TempHeight = -3
	if (CG_MissionInfo.Settings.Grow == 0) then
		CG_TempHeight = -3
	else
		CG_TempHeight = 38
	end
	local CG_TempH = 0
	local CG_TempTableB = {}
	for CG_index,CG_value in pairs(CG_MainList) do
		local CG_DebugtimeSync2 = debugprofilestop()
		local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
		local GC_Timeh = (CG_MainList[CG_index]["D"] + (CG_DTime * 1000)) - GC_Timeh
		local CGTmpNur = floor(GC_Timeh * 100) + CG_index .. "." .. (CG_index * 10) + 1
		table.insert(CG_TempTableB, tonumber(CGTmpNur))
	end
	table.sort(CG_TempTableB)
	for CG_index,CG_value in pairs(CG_TempTableB) do
		local _,_,CG_TTimes,CG_TVS = string.find(CG_value, "(%d+).(%d+)");
		CG_TVS = (CG_TVS - 1) / 10
		CG_MainFrame["F" .. CG_TVS]:SetPoint("TOPLEFT",CG_MainFrame,"TOPLEFT",5,CG_TempHeight)
		if (CG_MissionInfo.Settings.Grow == 0) then
			CG_TempHeight = CG_TempHeight - 16
		else
			CG_TempHeight = CG_TempHeight + 16
		end
		CG_TempH = CG_TempH + 1
	end
	if (CG_TempH == 0) then
		if (CG_MissionInfo.Settings.Grow == 0) then
			CG_MainFrame.CGBGDrop1:SetHeight(23)
		else
			CG_MainFrame.CGBGDrop2:SetHeight(23)
		end
	else
		if (CG_MissionInfo.Settings.Grow == 0) then
			CG_MainFrame.CGBGDrop1:SetHeight(13 + (CG_TempH * 16))
		else
			CG_MainFrame.CGBGDrop2:SetHeight(8 + (CG_TempH * 16))
		end
	end
end
function CG_BuildFrames()
	if (CG_MainFrame) then
		DEFAULT_CHAT_FRAME:AddMessage("MainFrame - allready exist!")
		return
	end
	CG_MainFrame = CreateFrame("frame", "CG_MFrame", UIParent)
	CG_MainFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	CG_MainFrame:SetWidth(140)
	CG_MainFrame:SetHeight(22)
	CG_MainFrame:SetFrameStrata("HIGH")
	CG_MainFrame:SetMovable(true)
	CG_MainFrame:EnableMouse(true)
	CG_MainFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
		if (CG_MissionInfo.Settings.Lock == 0) then
			self:StartMoving();
			self.isMoving = true;
		end
		end
	end)
	CG_MainFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and self.isMoving then
		if (CG_MissionInfo.Settings.Lock == 0) then
			self:StopMovingOrSizing();
			self.isMoving = false;
			CG_MissionInfo.Settings.left = CG_MFrame:GetLeft()
			CG_MissionInfo.Settings.top = CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()
			CG_MFrame:SetPoint("TOPLEFT", CG_MFrame:GetLeft(), (CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()))
		end
		else
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_MainFrame:SetScript("OnHide", function(self)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if ( self.isMoving ) then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
		end
	end)
	CG_MainFrameV = "made"

	CG_MainFrame.CGFrame = CreateFrame("frame", "CG_ComFrame", UIParent)
	CG_MainFrame.CGFrame:SetWidth(117)
	CG_MainFrame.CGFrame:SetHeight(25)
	CG_MainFrame.CGFrame:SetParent("CG_MFrame")
	CG_MainFrame.CGFrame:SetPoint("TOPLEFT","CG_MFrame","TOPLEFT",8,19)
	CG_MainFrame.CGFrame:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	CG_MainFrame.CGBGDrop1 = CreateFrame("frame", "CG_BGD1Frame", CG_MainFrame)
	CG_MainFrame.CGBGDrop1:SetWidth(140)
	CG_MainFrame.CGBGDrop1:SetHeight(22)
	CG_MainFrame.CGBGDrop1:SetPoint("TOPLEFT",CG_MainFrame,"TOPLEFT",0,0)
	CG_MainFrame.CGBGDrop1:EnableMouse(true)
	CG_MainFrame.CGBGDrop1:SetScript("OnMouseDown", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and not CG_MainFrame.isMoving then
			CG_MainFrame:StartMoving();
			CG_MainFrame.isMoving = true;
		end
		end
	end)
	CG_MainFrame.CGBGDrop1:SetScript("OnMouseUp", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and CG_MainFrame.isMoving then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
			CG_MissionInfo.Settings.left = CG_MFrame:GetLeft()
			CG_MissionInfo.Settings.top = CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()
			CG_MFrame:SetPoint("TOPLEFT", CG_MFrame:GetLeft(), (CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()))
		end
		else
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
		end
	end)
	CG_MainFrame.CGBGDrop1:SetScript("OnHide", function(self)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if ( CG_MainFrame.isMoving ) then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;

		end
		else
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
		end
	end)
	CG_MainFrame.CGBGDrop1:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	CG_MainFrame.CGBGDrop2 = CreateFrame("frame", "CG_BGD1Frame", CG_MainFrame)
	CG_MainFrame.CGBGDrop2:SetWidth(140)
	CG_MainFrame.CGBGDrop2:SetHeight(22)
	CG_MainFrame.CGBGDrop2:SetPoint("BOTTOMLEFT",CG_MainFrame,"BOTTOMLEFT",0,46)
	CG_MainFrame.CGBGDrop2:EnableMouse(true)
	CG_MainFrame.CGBGDrop2:SetScript("OnMouseDown", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and not CG_MainFrame.isMoving then
			CG_MainFrame:StartMoving();
			CG_MainFrame.isMoving = true;
		end
		end
	end)
	CG_MainFrame.CGBGDrop2:SetScript("OnMouseUp", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and CG_MainFrame.isMoving then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
			CG_MissionInfo.Settings.left = CG_MFrame:GetLeft()
			CG_MissionInfo.Settings.top = CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()
			CG_MFrame:SetPoint("TOPLEFT", CG_MFrame:GetLeft(), (CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()))
		end
		end
	end)
	CG_MainFrame.CGBGDrop2:SetScript("OnHide", function(self)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if ( CG_MainFrame.isMoving ) then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
		end
		else
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
		end
	end)
	CG_MainFrame.CGBGDrop2:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	if (CG_MissionInfo.Settings.Grow == 0) then
		CG_MainFrame.CGBGDrop1:Show()
		CG_MainFrame.CGBGDrop2:Hide()
	else
		CG_MainFrame.CGBGDrop2:Show()
		CG_MainFrame.CGBGDrop1:Hide()
	end
	CG_MainFrame.CGFrame:EnableMouse(true)
	CG_MainFrame.CGFrame:SetScript("OnMouseDown", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and not CG_MainFrame.isMoving then
			CG_MainFrame:StartMoving();
			CG_MainFrame.isMoving = true;
		end
		end
	end)
	CG_MainFrame.CGFrame:SetScript("OnMouseUp", function(self, button)
		if (CG_MissionInfo.Settings.Lock == 0) then
		if button == "LeftButton" and CG_MainFrame.isMoving then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
			CG_MissionInfo.Settings.left = CG_MFrame:GetLeft()
			CG_MissionInfo.Settings.top = CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()
			CG_MFrame:SetPoint("TOPLEFT", CG_MFrame:GetLeft(), (CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()))
		end
		end
	end)
	CG_MainFrame.CGFrame:SetScript("OnHide", function(self)
		if ( CG_MainFrame.isMoving ) then
			CG_MainFrame:StopMovingOrSizing();
			CG_MainFrame.isMoving = false;
		end
	end)
	CG_MainFrame.FFS = CG_MainFrame:CreateFontString("CGInfoFontString","OVERLAY","GameFontNormal")
	CG_MainFrame.FFS:SetParent("CG_ComFrame")
	CG_MainFrame.FFS:SetPoint("TOPLEFT","CG_ComFrame","TOPLEFT",8,-2)
	CG_MainFrame.FFS:SetWidth(120)
	CG_MainFrame.FFS:SetHeight(20)
	CG_MainFrame.FFS:SetJustifyH("LEFT")
	CG_MainFrame.FFS:SetText(CG_L["ConsGoreFiend"])
	CG_MainFrame.FFS:SetFont("GameFontNormal", 15)
	CG_MainFrame.FFS:SetTextColor(1, 1, 0)
	CG_MainFrame:SetHeight(30)
	local CG_TempFrameHeight = -3
	for CGroupindex = 1,20 do
		CG_CreateFrameMW(CGroupindex)
		CG_MainFrame["F" .. CGroupindex]:SetPoint("TOPLEFT","CG_MainFrame","TOPLEFT",5,CG_TempFrameHeight)
	end
end
function CG_CreateFrameMW(CG_FSName)
	CG_MainFrame["F" .. CG_FSName] = CreateFrame("frame", "CG_F" .. CG_FSName, CG_MainFrame)
	CG_MainFrame["F" .. CG_FSName]:SetWidth(225)
	CG_MainFrame["F" .. CG_FSName]:SetHeight(20)
	CG_MainFrame["F" .. CG_FSName]:SetParent("CG_MFrame")
	CG_MainFrame["F" .. CG_FSName]:SetPoint("TOPLEFT","CG_MainFrame","TOPLEFT",5,-5)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName] = CreateFrame("frame", CG_FSName .. "IMG" .. 3, CG_MainFrame["F" .. CG_FSName])
	CG_MainFrame["F" .. CG_FSName]["texture"] = CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:CreateTexture(CG_FSName .. "Texture", "OVERLAY")
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetPoint("LEFT",CG_MainFrame["F" .. CG_FSName],"LEFT", 142, 0)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetPoint("LEFT",CG_MainFrame["F" .. CG_FSName],"LEFT", 138, 0)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetWidth(80)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetHeight(15)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetFrameStrata("MEDIUM")
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetWidth(73)
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetHeight(10)
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetTexture(CG_Bar)
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetVertexColor(0.94,0.78,0)
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetAlpha(0.50)
	CG_MainFrame["F" .. CG_FSName]["texture"]:SetDrawLayer("ARTWORK", -1)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetAlpha(0.80)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 12,
		edgeSize = 12, 
		insets = {
			left = 3,
			right = 3,
			top = 3,
			bottom = 3
		}
	});
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"] = CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:CreateTexture(CG_FSName .. "Texture2", "OVERLAY")
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetPoint("LEFT",CG_MainFrame["F" .. CG_FSName],"LEFT", 142, 0)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetWidth(2)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetHeight(14)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetTexture(CG_Bar)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetVertexColor(0.94,0.78,0.78)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetAlpha(1)
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]["texture2"]:SetDrawLayer("ARTWORK", 2)
	CG_CreateFrameMWFonts(CG_FSName, 95, 20, 1, 0, CG_MainFrame["F" .. CG_FSName])
	CG_CreateFrameMWFonts(CG_FSName, 70, 20, 2, 95, CG_MainFrame["F" .. CG_FSName])
	CG_CreateFrameMWFonts(CG_FSName, 40, 20, 3, 165, CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName])
	CG_MainFrame["F" .. CG_FSName]:Hide()
	CG_MainFrame["F" .. CG_FSName]["CG_Img" .. CG_FSName]:Hide()
end
function CG_CreateFrameMWFonts(CG_FSName, CG_FSFontW, CG_FSFontH, CG_FSFontNumber, CG_FSFontPos, CG_PArent)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber] = CG_MainFrame:CreateFontString(CG_FSName .. "_FS" .. CG_FSFontNumber,"OVERLAY","GameFontNormal")
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetParent(CG_PArent)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetPoint("TOPLEFT",CG_MainFrame["F" .. CG_FSName],"TOPLEFT",CG_FSFontPos,0)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetWidth(CG_FSFontW)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetHeight(CG_FSFontH)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetJustifyH("LEFT")
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetText("")
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetFont("GameFontNormal", 15)
	CG_MainFrame["F" .. CG_FSName][CG_FSFontNumber]:SetTextColor(1, 1, 0)
end









function CG_CheckVariables()
	if (not CG_MissionInfo) then
		CG_MissionInfo = {}
		CG_MissionInfo.Settings = {}
		CG_MissionInfo.Settings.left = 100
		CG_MissionInfo.Settings.top = -100
		CG_MissionInfo.Status = "on"
	end
	if (not CG_MissionInfo.Settings.left2) then
		CG_MissionInfo.Settings.left2 = 100
		CG_MissionInfo.Settings.top2 = -100
	end
	if (not CG_MissionInfo.Scale) then
		CG_MissionInfo.Scale = 1
	end
	if (not CG_MissionInfo.Settings.Grow) then
		CG_MissionInfo.Settings.Grow = 0
	end
	if (not CG_MissionInfo.Settings.HPBar) then
		CG_MissionInfo.Settings.HPBar = {}
		CG_MissionInfo.Settings.HPBar.r = 1
		CG_MissionInfo.Settings.HPBar.g = 0
		CG_MissionInfo.Settings.HPBar.b = 0
		CG_MissionInfo.Settings.HPBar.a = 0.5
		CG_MissionInfo.Settings.HPBar2 = {}
		CG_MissionInfo.Settings.HPBar2.r = 0
		CG_MissionInfo.Settings.HPBar2.g = 1
		CG_MissionInfo.Settings.HPBar2.b = 0
		CG_MissionInfo.Settings.HPBar2.a = 0.5
	end
	if (not CG_MissionInfo.Settings.HPBar3) then
		CG_MissionInfo.Settings.HPBar3 = {}
		CG_MissionInfo.Settings.HPBar3.r = 1
		CG_MissionInfo.Settings.HPBar3.g = 0
		CG_MissionInfo.Settings.HPBar3.b = 0
		CG_MissionInfo.Settings.HPBar3.a = 1
		CG_MissionInfo.Settings.HPBar4 = {}
		CG_MissionInfo.Settings.HPBar4.r = 0
		CG_MissionInfo.Settings.HPBar4.g = 1
		CG_MissionInfo.Settings.HPBar4.b = 0
		CG_MissionInfo.Settings.HPBar4.a = 1
	end
	if (not CG_MissionInfo.Settings.HPBar5) then
		CG_MissionInfo.Settings.HPBar5 = {}
		CG_MissionInfo.Settings.HPBar5.r = 1
		CG_MissionInfo.Settings.HPBar5.g = 0
		CG_MissionInfo.Settings.HPBar5.b = 0
		CG_MissionInfo.Settings.HPBar5.a = 1
		CG_MissionInfo.Settings.HPBar6 = {}
		CG_MissionInfo.Settings.HPBar6.r = 0
		CG_MissionInfo.Settings.HPBar6.g = 1
		CG_MissionInfo.Settings.HPBar6.b = 0
		CG_MissionInfo.Settings.HPBar6.a = 1
	end
	if (not CG_MissionInfo.Settings.Lock) then
		CG_MissionInfo.Settings.Lock = 0
	end
	if (not CG_MissionInfo.Settings.NamePlate) then
		CG_MissionInfo.Settings.NamePlate = 0
	end
	if (not CG_MissionInfo.Settings.DisableSync) then
		CG_MissionInfo.Settings.DisableSync = 0
	end
	if (not CG_MissionInfo.Settings.MarkersOn) then
		CG_MissionInfo.Settings.MarkersOn = 0
	end
	if (not CG_MissionInfo.Settings.Markers) then
		CG_MissionInfo.Settings.Markers = {}
		CG_MissionInfo.Settings.Markers.m1 = 0
		CG_MissionInfo.Settings.Markers.m2 = 0
		CG_MissionInfo.Settings.Markers.m3 = 0
		CG_MissionInfo.Settings.Markers.m4 = 0
		CG_MissionInfo.Settings.Markers.m5 = 0
		CG_MissionInfo.Settings.Markers.m6 = 0
		CG_MissionInfo.Settings.Markers.m7 = 0
		CG_MissionInfo.Settings.Markers.m8 = 0
		CG_MissionInfo.Settings.Markers.m9 = 0
	end
	if (not CG_MissionInfo.Settings.RaidWarning) then
		CG_MissionInfo.Settings.RaidWarning = 0
	end
	if (not CG_MissionInfo.Settings.RaidWarningmsg1) then
		CG_MissionInfo.Settings.RaidWarningmsg1 = CG_L["Break"]
		CG_MissionInfo.Settings.RaidWarningmsg2 = CG_L["Out"]
	end
	if (not CG_MissionInfo.Settings.TimeLeft) then
		CG_MissionInfo.Settings.TimeLeft = 0
	end
end
function CG_Testing()
	if (CG_TestingVar == 1) then
		CG_agTest:Stop()
		CG_agTest2:Stop()
		CG_agTest3:Stop()
		CG_MainList = nil
		CG_MainList = {}
		CG_TestingVar = 0
	else
		CG_TestingVar = 1
		if (CG_agTest) then
			CG_agTest:Play()
			local CG_DebugtimeSync2 = debugprofilestop()
			local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
			CG_GotDigest("TestPlayer1", "MSG", GC_Timeh)
			CG_GotDigest("TestPlayer2", "MSG", GC_Timeh)
			CG_test(" 6 TestPlayer1-0.7-12000 6 TestPlayer2-0.8-12000")
		else
			local CG_DebugtimeSync2 = debugprofilestop()
			local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
			CG_GotDigest("TestPlayer1", "MSG", GC_Timeh)
			CG_GotDigest("TestPlayer2", "MSG", GC_Timeh)
			CG_agTest = CG_TestFrame:CreateAnimationGroup()
			CG_agTest.anim = CG_agTest:CreateAnimation()
			CG_agTest.anim:SetDuration(5)
			CG_agTest:SetLooping("REPEAT")
			CG_agTest:SetScript("OnLoop", function(self, event, ...)
				local CG_DebugtimeSync2 = debugprofilestop()
				local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
				CG_GotDigest("TestPlayer3", "MSG", GC_Timeh)
				CG_GotDigest("TestPlayer4", "MSG", GC_Timeh)
				CG_agTest2:Play()
				CG_test(" 6 TestPlayer3-0.4-12000 6 TestPlayer4-0.9-12000")
			end)
			CG_agTest:Play()
			CG_test(" 6 TestPlayer1-0.7-12000 6 TestPlayer2-0.8-12000")
			CG_agTest2 = CG_TestFrame:CreateAnimationGroup()
			CG_agTest2.anim = CG_agTest2:CreateAnimation()
			CG_agTest2.anim:SetDuration(5)
			CG_agTest2:SetLooping("REPEAT")
			CG_agTest2:SetScript("OnLoop", function(self, event, ...)
				local CG_DebugtimeSync2 = debugprofilestop()
				local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
				CG_GotDigest("TestPlayer5", "MSG", GC_Timeh)
				CG_GotDigest("TestPlayer6", "MSG", GC_Timeh)
				CG_agTest3:Play()
				CG_test(" 6 TestPlayer5-0.65-12000 6 TestPlayer6-0.23-12000")
			end)			CG_agF = CG_updateFrame2:CreateAnimationGroup()
			CG_agTest3 = CG_TestFrame:CreateAnimationGroup()
			CG_agTest3.anim = CG_agTest3:CreateAnimation()
			CG_agTest3.anim:SetDuration(5)
			CG_agTest3:SetLooping("REPEAT")
			CG_agTest3:SetScript("OnLoop", function(self, event, ...)
				local CG_DebugtimeSync2 = debugprofilestop()
				local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
				CG_GotDigest("TestPlayer1", "MSG", GC_Timeh)
				CG_GotDigest("TestPlayer2", "MSG", GC_Timeh)
				CG_test(" 6 TestPlayer1-0.7-12000 6 TestPlayer2-0.8-12000")
				CG_agTest:Play()
			end)
		end
	end
end

function CG_MarkerFrameFunc()
	CG_MarkerFrame = CreateFrame("frame", "CGMarkerFrame", UIParent)
	CG_MarkerFrame:SetPoint("TOPLEFT", CGOptions, "TOPLEFT", 230, 0)
	CG_MarkerFrame:SetWidth(100)
	CG_MarkerFrame:SetHeight(195)
	CG_MarkerFrame:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	CG_MarkerFrame:SetMovable(true)
	CG_MarkerFrame:EnableMouse(true)
	CG_MarkerFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
			self:StartMoving();
			self.isMoving = true;
		end
	end)
	CG_MarkerFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and self.isMoving then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_MarkerFrame:SetScript("OnHide", function(self)
		if ( self.isMoving ) then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_MarkerFrame.FS1 = CG_MarkerFrame:CreateFontString("CG_MarkerFrameFontString1","OVERLAY","GameFontNormal")
	CG_MarkerFrame.FS1:SetPoint("TOPLEFT",CG_MarkerFrame,"TOPLEFT",15,-10)
	CG_MarkerFrame.FS1:SetText(CG_L["Markers:"])
	CG_MarkerFrame.FS1:SetFont("GameFontNormal", 15)
	CG_MarkerFrame.FS1:SetTextColor(1, 1, 0)
	for CGroupindex = 1,8 do
		CG_UsedMarkers[CGroupindex] = 0
		local zpos = -((CGroupindex * 20) + 10)

		CG_MarkerFrame["CheckButton"..CGroupindex] = CreateFrame("CheckButton", "CG_MarkerFrameCheckButton"..CGroupindex, CG_MarkerFrame, "ChatConfigCheckButtonTemplate");
		CG_MarkerFrame["CheckButton"..CGroupindex]:SetPoint("TOPLEFT", 15, zpos);
		if (CG_MissionInfo.Settings.Markers["m"..CGroupindex] == 0) then
			CG_MarkerFrame["CheckButton"..CGroupindex]:SetChecked(false)
		else
			CG_MarkerFrame["CheckButton"..CGroupindex]:SetChecked(true)
		end
		CG_MarkerFrame["CheckButton"..CGroupindex]:SetScript("OnClick", function()
			if (CG_MarkerFrame["CheckButton"..CGroupindex]:GetChecked() == true) then
				CG_MissionInfo.Settings.Markers["m"..CGroupindex] = 1
			else
				CG_MissionInfo.Settings.Markers["m"..CGroupindex] = 0
			end
		end)
		CG_MarkerFrame["icon"..CGroupindex] = CreateFrame("Button", "CGMFButton"..CGroupindex, CG_MarkerFrame)
		CG_MarkerFrame["icon"..CGroupindex]:SetSize(20,20)
		CG_MarkerFrame["icon"..CGroupindex]:SetPoint("LEFT", CG_MarkerFrame["CheckButton"..CGroupindex], "LEFT",25,0)
		CG_MarkerFrame["icon"..CGroupindex]:SetNormalTexture("interface\\targetingframe\\ui-raidtargetingicons")
		if (CGroupindex == 1) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0,0.25,0,0.25)
		elseif (CGroupindex == 2) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.25,0.5,0,0.25)
		elseif (CGroupindex == 3) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.5,0.75,0,0.25)
		elseif (CGroupindex == 4) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.75,1,0,0.25)
		elseif (CGroupindex == 5) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0,0.25,0.25,0.5)
		elseif (CGroupindex == 6) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.25,0.5,0.25,0.5)
		elseif (CGroupindex == 7) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.5,0.75,0.25,0.5)
		elseif (CGroupindex == 8) then
			CG_MarkerFrame["icon"..CGroupindex]:GetNormalTexture():SetTexCoord(0.75,1,0.25,0.5)
		end

		CG_MarkerFrame["icon"..CGroupindex]:EnableMouse(true)
		CG_MarkerFrame["icon"..CGroupindex]:SetScript("OnClick", function(self)
			if (CG_MarkerFrame["CheckButton"..CGroupindex]:GetChecked() == true) then
				CG_MissionInfo.Settings.Markers["m"..CGroupindex] = 1
				CG_MarkerFrame["CheckButton"..CGroupindex]:SetChecked(true)
			else
				CG_MissionInfo.Settings.Markers["m"..CGroupindex] = 0
				CG_MarkerFrame["CheckButton"..CGroupindex]:SetChecked(false)
			end
		end)
	end
	CG_MarkerFrame.zpaButton1 = CreateFrame("Button", "CG_MarkerFrameButton1", CG_MarkerFrame)
	CG_MarkerFrame.zpaButton1:SetPoint("TOPRIGHT", CG_MarkerFrame, "TOPRIGHT", -4, -2)
	CG_MarkerFrame.zpaButton1:SetWidth(20)
	CG_MarkerFrame.zpaButton1:SetHeight(20)
	CG_MarkerFrame.zpaButton1:SetText("X")
	CG_MarkerFrame.zpaButton1:SetNormalFontObject("GameFontNormal")
	CG_MarkerFrame.zpaButton1ntex = CG_MarkerFrame.zpaButton1:CreateTexture()
	CG_MarkerFrame.zpaButton1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_MarkerFrame.zpaButton1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_MarkerFrame.zpaButton1ntex:SetAllPoints()	
	CG_MarkerFrame.zpaButton1:SetNormalTexture(CG_MarkerFrame.zpaButton1ntex)
	CG_MarkerFrame.zpaButton1htex = CG_MarkerFrame.zpaButton1:CreateTexture()
	CG_MarkerFrame.zpaButton1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_MarkerFrame.zpaButton1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_MarkerFrame.zpaButton1htex:SetAllPoints()
	CG_MarkerFrame.zpaButton1:SetHighlightTexture(CG_MarkerFrame.zpaButton1htex)
	CG_MarkerFrame.zpaButton1ptex = CG_MarkerFrame.zpaButton1:CreateTexture()
	CG_MarkerFrame.zpaButton1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_MarkerFrame.zpaButton1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_MarkerFrame.zpaButton1ptex:SetAllPoints()
	CG_MarkerFrame.zpaButton1:SetPushedTexture(CG_MarkerFrame.zpaButton1ptex)
	CG_MarkerFrame.zpaButton1:SetScript("OnClick", function(self, arg1)
		CG_MarkerFrame:Hide()
	end)
	CG_MarkerFrame:Hide()
end





function CG_Options()
	if (CG_TestingVar == 0) then
		CG_Testing()
	end
	if (CG_OptionsFrame) then
		CG_OptionsFrame:Show()
		return
	end
	CG_OptionsFrame = CreateFrame("frame", "CGOptions", UIParent)
	CG_OptionsFrame:SetPoint("CENTER", UIParent, "CENTER")
	CG_OptionsFrame:SetWidth(230)
	CG_OptionsFrame:SetHeight(255)
	CG_OptionsFrame:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	CG_OptionsFrame:SetMovable(true)
	CG_OptionsFrame:EnableMouse(true)
	CG_OptionsFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
			self:StartMoving();
			self.isMoving = true;
		end
	end)
	CG_OptionsFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and self.isMoving then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_OptionsFrame:SetScript("OnHide", function(self)
		if ( self.isMoving ) then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_RaidWarningFrame = CreateFrame("frame", "CGRaidFrames", UIParent)
	CG_RaidWarningFrame:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT",-230,-50)
	CG_RaidWarningFrame:SetWidth(230)
	CG_RaidWarningFrame:SetHeight(140)
	CG_RaidWarningFrame:SetBackdrop( { 
		bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true,
		tileSize = 16,
		edgeSize = 16, 
		insets = {
			left = 5,
			right = 5,
			top = 5,
			bottom = 5
		}
	});
	CG_RaidWarningFrame:SetMovable(true)
	CG_RaidWarningFrame:EnableMouse(true)
	CG_RaidWarningFrame.zpaButton1 = CreateFrame("Button", "CG_CG_RaidWarningFrameButton1", CG_RaidWarningFrame)
	CG_RaidWarningFrame.zpaButton1:SetPoint("TOPRIGHT", CG_RaidWarningFrame, "TOPRIGHT", -4, -2)
	CG_RaidWarningFrame.zpaButton1:SetWidth(20)
	CG_RaidWarningFrame.zpaButton1:SetHeight(20)
	CG_RaidWarningFrame.zpaButton1:SetText("X")
	CG_RaidWarningFrame.zpaButton1:SetNormalFontObject("GameFontNormal")
	CG_RaidWarningFrame.zpaButton1ntex = CG_RaidWarningFrame.zpaButton1:CreateTexture()
	CG_RaidWarningFrame.zpaButton1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_RaidWarningFrame.zpaButton1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_RaidWarningFrame.zpaButton1ntex:SetAllPoints()	
	CG_RaidWarningFrame.zpaButton1:SetNormalTexture(CG_RaidWarningFrame.zpaButton1ntex)
	CG_RaidWarningFrame.zpaButton1htex = CG_RaidWarningFrame.zpaButton1:CreateTexture()
	CG_RaidWarningFrame.zpaButton1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_RaidWarningFrame.zpaButton1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_RaidWarningFrame.zpaButton1htex:SetAllPoints()
	CG_RaidWarningFrame.zpaButton1:SetHighlightTexture(CG_RaidWarningFrame.zpaButton1htex)
	CG_RaidWarningFrame.zpaButton1ptex = CG_RaidWarningFrame.zpaButton1:CreateTexture()
	CG_RaidWarningFrame.zpaButton1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_RaidWarningFrame.zpaButton1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_RaidWarningFrame.zpaButton1ptex:SetAllPoints()
	CG_RaidWarningFrame.zpaButton1:SetPushedTexture(CG_RaidWarningFrame.zpaButton1ptex)
	CG_RaidWarningFrame.zpaButton1:SetScript("OnClick", function(self, arg1)
		CG_RaidWarningFrame:Hide()
	end)
	CG_RaidWarningFrame:SetScript("OnMouseDown", function(self, button)
		if button == "LeftButton" and not self.isMoving then
			self:StartMoving();
			self.isMoving = true;
		end
	end)
	CG_RaidWarningFrame:SetScript("OnMouseUp", function(self, button)
		if button == "LeftButton" and self.isMoving then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_RaidWarningFrame:SetScript("OnHide", function(self)
		if ( self.isMoving ) then
			self:StopMovingOrSizing();
			self.isMoving = false;
		end
	end)
	CG_RaidWarningFrame.FS1 = CG_RaidWarningFrame:CreateFontString("CG_RaidWarningFontString1","OVERLAY","GameFontNormal")
	CG_RaidWarningFrame.FS1:SetPoint("TOP",CG_RaidWarningFrame,"TOP",0,-10)
	CG_RaidWarningFrame.FS1:SetText(CG_L["Raidwarning on:"])
	CG_RaidWarningFrame.FS1:SetFont("GameFontNormal", 15)
	CG_RaidWarningFrame.FS1:SetTextColor(1, 1, 0)
	CG_RaidWarningFrame.Slider = CreateFrame("Slider", "CG_RaidWarningSlider1", CG_RaidWarningFrame, "OptionsSliderTemplate")
	CG_RaidWarningFrame.Slider:SetWidth(200)
	CG_RaidWarningFrame.Slider:SetHeight(20)
	CG_RaidWarningFrame.Slider:SetOrientation('HORIZONTAL')
	CG_RaidWarningFrame.Slider:SetPoint("TOP", CG_RaidWarningFrame, "TOP", 0, -40)
	CG_RaidWarningFrame.Slider:SetMinMaxValues(1, 300)
	CG_RaidWarningFrame.Slider:SetValue(CG_MissionInfo.Settings.RaidWarning * 10)
	getglobal(CG_RaidWarningFrame.Slider:GetName() .. 'Low'):SetText('0')
	getglobal(CG_RaidWarningFrame.Slider:GetName() .. 'High'):SetText('30')
	getglobal(CG_RaidWarningFrame.Slider:GetName() .. 'Text'):SetText(CG_MissionInfo.Settings.RaidWarning..CG_L["secs"])
	CG_RaidWarningFrame.Slider:SetScript("OnValueChanged", function(self)
		getglobal(CG_RaidWarningFrame.Slider:GetName() .. 'Text'):SetText((floor((CG_RaidWarningFrame.Slider:GetValue() / 10) * 10) / 10).."secs")
		CG_MissionInfo.Settings.RaidWarning = (floor((CG_RaidWarningFrame.Slider:GetValue() / 10) * 10) / 10)
	end)
	CG_RaidWarningFrame.FS2 = CG_RaidWarningFrame:CreateFontString("CG_RaidWarningFontString2","OVERLAY","GameFontNormal")
	CG_RaidWarningFrame.FS2:SetPoint("TOP",CG_RaidWarningFrame,"TOP",0,-65)
	CG_RaidWarningFrame.FS2:SetText(CG_L["Warning text:"])
	CG_RaidWarningFrame.FS2:SetFont("GameFontNormal", 15)
	CG_RaidWarningFrame.FS2:SetTextColor(1, 1, 0)
	CG_RaidWarningFrame.FS3 = CG_RaidWarningFrame:CreateFontString("CG_RaidWarningFontString3","OVERLAY","GameFontNormal")
	CG_RaidWarningFrame.FS3:SetPoint("TOP",CG_RaidWarningFrame,"TOP",0,-88)
	CG_RaidWarningFrame.FS3:SetText(CG_L["<Name>"])
	CG_RaidWarningFrame.FS3:SetFont("GameFontNormal", 15)
	CG_RaidWarningFrame.FS3:SetTextColor(1, 1, 0)
	CG_RaidWarningFrame.EB1 = CreateFrame("EditBox", nil, CG_RaidWarningFrame)
	CG_RaidWarningFrame.EB1:SetPoint("TOPLEFT",CG_RaidWarningFrame,"TOPLEFT",20,-85)
	CG_RaidWarningFrame.EB1:SetWidth(60)
	CG_RaidWarningFrame.EB1:SetHeight(20)
	CG_RaidWarningFrame.EB1:SetFontObject("GameFontHighlight")
	CG_RaidWarningFrame.EB1:SetText(CG_L["Break"])
	CG_RaidWarningFrame.EB1:SetAutoFocus(false)
	CG_RaidWarningFrame.EB1:SetScript("OnTextChanged", function(self)
		CG_MissionInfo.Settings.RaidWarningmsg1 = CG_RaidWarningFrame.EB1:GetText()
	end)
	CG_RaidWarningFrame.EB1:SetScript("OnEnterPressed", function(self)
		CG_RaidWarningFrame.EB1:ClearFocus()
	end)
	CG_RaidWarningFrame.EB1:SetScript("OnEscapePressed", function(self)
		CG_RaidWarningFrame.EB1:ClearFocus()
	end)
	CG_RaidWarningFrame.EB1.Left = CG_RaidWarningFrame:CreateTexture("CGWFTextureLEFT", "OVERLAY")
	CG_RaidWarningFrame.EB1.Left:SetPoint("LEFT",CG_RaidWarningFrame.EB1,"LEFT", -15, 0)
	CG_RaidWarningFrame.EB1.Left:SetWidth(75)
	CG_RaidWarningFrame.EB1.Left:SetHeight(32)
	CG_RaidWarningFrame.EB1.Left:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Left")
	CG_RaidWarningFrame.EB1.Left:SetTexCoord(0, 0.2, 0, 1.0)
	CG_RaidWarningFrame.EB1.Right = CG_RaidWarningFrame:CreateTexture("CGWFTextureRIGHT", "OVERLAY")
	CG_RaidWarningFrame.EB1.Right:SetPoint("RIGHT",CG_RaidWarningFrame.EB1,"RIGHT", 10, 0)
	CG_RaidWarningFrame.EB1.Right:SetWidth(75)
	CG_RaidWarningFrame.EB1.Right:SetHeight(32)
	CG_RaidWarningFrame.EB1.Right:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Right")
	CG_RaidWarningFrame.EB1.Right:SetTexCoord(0.7, 1.0, 0, 1.0)

	CG_RaidWarningFrame.EB2 = CreateFrame("EditBox", nil, CG_RaidWarningFrame)
	CG_RaidWarningFrame.EB2:SetPoint("TOPLEFT",CG_RaidWarningFrame,"TOPLEFT",155,-85)
	CG_RaidWarningFrame.EB2:SetWidth(60)
	CG_RaidWarningFrame.EB2:SetHeight(20)
	CG_RaidWarningFrame.EB2:SetFontObject("GameFontHighlight")
	CG_RaidWarningFrame.EB2:SetText(CG_L["Out"])
	CG_RaidWarningFrame.EB2:SetAutoFocus(false)
	CG_RaidWarningFrame.EB2:SetScript("OnTextChanged", function(self)
		CG_MissionInfo.Settings.RaidWarningmsg2 = CG_RaidWarningFrame.EB2:GetText()
	end)
	CG_RaidWarningFrame.EB2:SetScript("OnEnterPressed", function(self)
		CG_RaidWarningFrame.EB2:ClearFocus()
	end)
	CG_RaidWarningFrame.EB2:SetScript("OnEscapePressed", function(self)
		CG_RaidWarningFrame.EB2:ClearFocus()
	end)
	CG_RaidWarningFrame.EB2.Left = CG_RaidWarningFrame:CreateTexture("CGWFTextureLEFT2", "OVERLAY")
	CG_RaidWarningFrame.EB2.Left:SetPoint("LEFT",CG_RaidWarningFrame.EB2,"LEFT", -15, 0)
	CG_RaidWarningFrame.EB2.Left:SetWidth(75)
	CG_RaidWarningFrame.EB2.Left:SetHeight(32)
	CG_RaidWarningFrame.EB2.Left:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Left")
	CG_RaidWarningFrame.EB2.Left:SetTexCoord(0, 0.2, 0, 1.0)
	CG_RaidWarningFrame.EB2.Right = CG_RaidWarningFrame:CreateTexture("CGWFTextureRIGHT2", "OVERLAY")
	CG_RaidWarningFrame.EB2.Right:SetPoint("RIGHT",CG_RaidWarningFrame.EB2,"RIGHT", 10, 0)
	CG_RaidWarningFrame.EB2.Right:SetWidth(75)
	CG_RaidWarningFrame.EB2.Right:SetHeight(32)
	CG_RaidWarningFrame.EB2.Right:SetTexture("Interface\\ChatFrame\\UI-ChatInputBorder-Right")
	CG_RaidWarningFrame.EB2.Right:SetTexCoord(0.7, 1.0, 0, 1.0)





	CG_OptionsFrame.FS1 = CG_OptionsFrame:CreateFontString("zpFontString1","OVERLAY","GameFontNormal")
	CG_OptionsFrame.FS1:SetPoint("TOPLEFT",CG_OptionsFrame,"TOPLEFT",15,-10)
	CG_OptionsFrame.FS1:SetText(CG_L["ConsGoreFiend"] .. CG_Version ..CG_L[" Settings"])
	CG_OptionsFrame.FS1:SetFont("GameFontNormal", 15)
	CG_OptionsFrame.FS1:SetTextColor(1, 1, 0)
	CG_OptionsFrame.FS2 = CG_OptionsFrame:CreateFontString("zpFontString2","OVERLAY","GameFontNormal")
	CG_OptionsFrame.FS2:SetPoint("TOPLEFT",CG_OptionsFrame,"TOPLEFT",15,-33)
	CG_OptionsFrame.FS2:SetText(CG_L["Scale:"])
	CG_OptionsFrame.FS2:SetFont("GameFontNormal", 15)
	CG_OptionsFrame.FS2:SetTextColor(1, 1, 0)
	CG_OptionsFrame.ScaleB1 = CreateFrame("Button", "CGScalebutton1", CG_OptionsFrame)
	CG_OptionsFrame.ScaleB1:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 90, -33)
	CG_OptionsFrame.ScaleB1:SetWidth(20)
	CG_OptionsFrame.ScaleB1:SetHeight(16)
	CG_OptionsFrame.ScaleB1:SetText("+")
	CG_OptionsFrame.ScaleB1:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.ScaleB1ntex = CG_OptionsFrame.ScaleB1:CreateTexture()
	CG_OptionsFrame.ScaleB1ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.ScaleB1ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB1ntex:SetAllPoints()	
	CG_OptionsFrame.ScaleB1:SetNormalTexture(CG_OptionsFrame.ScaleB1ntex)
	CG_OptionsFrame.ScaleB1htex = CG_OptionsFrame.ScaleB1:CreateTexture()
	CG_OptionsFrame.ScaleB1htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.ScaleB1htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB1htex:SetAllPoints()
	CG_OptionsFrame.ScaleB1:SetHighlightTexture(CG_OptionsFrame.ScaleB1htex)
	CG_OptionsFrame.ScaleB1ptex = CG_OptionsFrame.ScaleB1:CreateTexture()
	CG_OptionsFrame.ScaleB1ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.ScaleB1ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB1ptex:SetAllPoints()
	CG_OptionsFrame.ScaleB1:SetPushedTexture(CG_OptionsFrame.ScaleB1ptex)
	CG_OptionsFrame.ScaleB1:SetScript("OnClick", function(self, arg1)
		local uiparent_scale = UIParent:GetScale()
		CG_MissionInfo.Scale = CG_MissionInfo.Scale + 0.1
		CG_MainFrame:SetScale(CG_MissionInfo.Scale)
		CG_MissionInfo.Settings.left = 100
		CG_MissionInfo.Settings.top = -100
		CG_MFrame:SetPoint("TOPLEFT", CG_MissionInfo.Settings.left , CG_MissionInfo.Settings.top)
	end)
	CG_OptionsFrame.ScaleB2 = CreateFrame("Button", "CGScalebutton2", CG_OptionsFrame)
	CG_OptionsFrame.ScaleB2:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 115, -33)
	CG_OptionsFrame.ScaleB2:SetWidth(20)
	CG_OptionsFrame.ScaleB2:SetHeight(16)
	CG_OptionsFrame.ScaleB2:SetText("-")
	CG_OptionsFrame.ScaleB2:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.ScaleB2ntex = CG_OptionsFrame.ScaleB2:CreateTexture()
	CG_OptionsFrame.ScaleB2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.ScaleB2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB2ntex:SetAllPoints()	
	CG_OptionsFrame.ScaleB2:SetNormalTexture(CG_OptionsFrame.ScaleB2ntex)
	CG_OptionsFrame.ScaleB2htex = CG_OptionsFrame.ScaleB2:CreateTexture()
	CG_OptionsFrame.ScaleB2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.ScaleB2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB2htex:SetAllPoints()
	CG_OptionsFrame.ScaleB2:SetHighlightTexture(CG_OptionsFrame.ScaleB2htex)
	CG_OptionsFrame.ScaleB2ptex = CG_OptionsFrame.ScaleB2:CreateTexture()
	CG_OptionsFrame.ScaleB2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.ScaleB2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB2ptex:SetAllPoints()
	CG_OptionsFrame.ScaleB2:SetPushedTexture(CG_OptionsFrame.ScaleB2ptex)
	CG_OptionsFrame.ScaleB2:SetScript("OnClick", function(self, arg1)
		CG_MissionInfo.Scale = CG_MissionInfo.Scale - 0.1
		CG_MainFrame:SetScale(CG_MissionInfo.Scale)
		CG_MissionInfo.Settings.left = CG_MFrame:GetLeft()
		CG_MissionInfo.Settings.top = CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()
		CG_MFrame:SetPoint("TOPLEFT", CG_MFrame:GetLeft(), (CG_MFrame:GetTop() - GetScreenHeight() / CG_MFrame:GetScale()))
	end)
	CG_OptionsFrame.ScaleB3 = CreateFrame("Button", "CGScalebutton3", CG_OptionsFrame)
	CG_OptionsFrame.ScaleB3:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 140, -33)
	CG_OptionsFrame.ScaleB3:SetWidth(45)
	CG_OptionsFrame.ScaleB3:SetHeight(16)
	CG_OptionsFrame.ScaleB3:SetText(CG_L["Reset"])
	CG_OptionsFrame.ScaleB3:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.ScaleB3ntex = CG_OptionsFrame.ScaleB3:CreateTexture()
	CG_OptionsFrame.ScaleB3ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.ScaleB3ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB3ntex:SetAllPoints()	
	CG_OptionsFrame.ScaleB3:SetNormalTexture(CG_OptionsFrame.ScaleB3ntex)
	CG_OptionsFrame.ScaleB3htex = CG_OptionsFrame.ScaleB3:CreateTexture()
	CG_OptionsFrame.ScaleB3htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.ScaleB3htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB3htex:SetAllPoints()
	CG_OptionsFrame.ScaleB3:SetHighlightTexture(CG_OptionsFrame.ScaleB3htex)
	CG_OptionsFrame.ScaleB3ptex = CG_OptionsFrame.ScaleB3:CreateTexture()
	CG_OptionsFrame.ScaleB3ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.ScaleB3ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.ScaleB3ptex:SetAllPoints()
	CG_OptionsFrame.ScaleB3:SetPushedTexture(CG_OptionsFrame.ScaleB3ptex)
	CG_OptionsFrame.ScaleB3:SetScript("OnClick", function(self, arg1)
		CG_MissionInfo.Scale = 1
		CG_MainFrame:SetScale(CG_MissionInfo.Scale)
		CG_MissionInfo.Settings.left = 100
		CG_MissionInfo.Settings.top = -100
		CG_MainFrame:SetPoint("TOPLEFT", CG_MissionInfo.Settings.left, CG_MissionInfo.Settings.top)
	end)
	CG_OptionsFrame.zpaButton2 = CreateFrame("Button", "ZPButton2", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton2:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 206, -2)
	CG_OptionsFrame.zpaButton2:SetWidth(20)
	CG_OptionsFrame.zpaButton2:SetHeight(20)
	CG_OptionsFrame.zpaButton2:SetText("X")
	CG_OptionsFrame.zpaButton2:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton2ntex = CG_OptionsFrame.zpaButton2:CreateTexture()
	CG_OptionsFrame.zpaButton2ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton2ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton2ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton2:SetNormalTexture(CG_OptionsFrame.zpaButton2ntex)
	CG_OptionsFrame.zpaButton2htex = CG_OptionsFrame.zpaButton2:CreateTexture()
	CG_OptionsFrame.zpaButton2htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton2htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton2htex:SetAllPoints()
	CG_OptionsFrame.zpaButton2:SetHighlightTexture(CG_OptionsFrame.zpaButton2htex)
	CG_OptionsFrame.zpaButton2ptex = CG_OptionsFrame.zpaButton2:CreateTexture()
	CG_OptionsFrame.zpaButton2ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton2ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton2ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton2:SetPushedTexture(CG_OptionsFrame.zpaButton2ptex)
	CG_OptionsFrame.zpaButton2:SetScript("OnClick", function(self, arg1)
		if (CG_TestingVar == 1) then
			CG_Testing()
		end
		CG_CloseCGF()
		CG_AutoLOADED = 0
		CG_MarkerFrame:Hide()
		CG_OptionsFrame:Hide()
		CG_RaidWarningFrame:Hide()
	end)
	CG_OptionsFrame.FS12 = CG_OptionsFrame:CreateFontString("zpFontString12","OVERLAY","GameFontNormal")
	CG_OptionsFrame.FS12:SetPoint("TOPLEFT",CG_OptionsFrame,"TOPLEFT",15,-50)
	CG_OptionsFrame.FS12:SetText(CG_L["Main Window Colors:"])
	CG_OptionsFrame.FS12:SetFont("GameFontNormal", 15)
	CG_OptionsFrame.FS12:SetTextColor(1, 1, 0)
	CG_OptionsFrame.zpaButton3 = CreateFrame("Button", "ZPButton3", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton3:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 15, -65)
	CG_OptionsFrame.zpaButton3:SetWidth(90)
	CG_OptionsFrame.zpaButton3:SetHeight(15)
	CG_OptionsFrame.zpaButton3:SetText(CG_L["Ahead"])
	CG_OptionsFrame.zpaButton3:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton3ntex = CG_OptionsFrame.zpaButton3:CreateTexture()
	CG_OptionsFrame.zpaButton3ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton3ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton3ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton3:SetNormalTexture(CG_OptionsFrame.zpaButton3ntex)
	CG_OptionsFrame.zpaButton3htex = CG_OptionsFrame.zpaButton3:CreateTexture()
	CG_OptionsFrame.zpaButton3htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton3htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton3htex:SetAllPoints()
	CG_OptionsFrame.zpaButton3:SetHighlightTexture(CG_OptionsFrame.zpaButton3htex)
	CG_OptionsFrame.zpaButton3ptex = CG_OptionsFrame.zpaButton3:CreateTexture()
	CG_OptionsFrame.zpaButton3ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton3ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton3ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton3:SetPushedTexture(CG_OptionsFrame.zpaButton3ptex)
	CG_OptionsFrame.zpaButton3:SetScript("OnClick", function(self, arg1)
		CGCPickA = 2
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar2.r, CG_MissionInfo.Settings.HPBar2.g, CG_MissionInfo.Settings.HPBar2.b, CG_MissionInfo.Settings.HPBar2.a, CGmyColorCallback);
	end)
	CG_OptionsFrame.zpaButton4 = CreateFrame("Button", "ZPButton4", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton4:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 115, -65)
	CG_OptionsFrame.zpaButton4:SetWidth(90)
	CG_OptionsFrame.zpaButton4:SetHeight(15)
	CG_OptionsFrame.zpaButton4:SetText(CG_L["Behind"])
	CG_OptionsFrame.zpaButton4:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton4ntex = CG_OptionsFrame.zpaButton4:CreateTexture()
	CG_OptionsFrame.zpaButton4ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton4ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton4ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton4:SetNormalTexture(CG_OptionsFrame.zpaButton4ntex)
	CG_OptionsFrame.zpaButton4htex = CG_OptionsFrame.zpaButton4:CreateTexture()
	CG_OptionsFrame.zpaButton4htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton4htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton4htex:SetAllPoints()
	CG_OptionsFrame.zpaButton4:SetHighlightTexture(CG_OptionsFrame.zpaButton4htex)
	CG_OptionsFrame.zpaButton4ptex = CG_OptionsFrame.zpaButton4:CreateTexture()
	CG_OptionsFrame.zpaButton4ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton4ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton4ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton4:SetPushedTexture(CG_OptionsFrame.zpaButton4ptex)
	CG_OptionsFrame.zpaButton4:SetScript("OnClick", function(self, arg1)
		CGCPickA = 1
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar.r, CG_MissionInfo.Settings.HPBar.g, CG_MissionInfo.Settings.HPBar.b, CG_MissionInfo.Settings.HPBar.a, CGmyColorCallback);

	end)
	CG_OptionsFrame.FS113 = CG_OptionsFrame:CreateFontString("zpFontString13","OVERLAY","GameFontNormal")
	CG_OptionsFrame.FS113:SetPoint("TOPLEFT",CG_OptionsFrame,"TOPLEFT",15,-85)
	CG_OptionsFrame.FS113:SetText(CG_L["NamePlate Countdown Colors:"])
	CG_OptionsFrame.FS113:SetFont("GameFontNormal", 15)
	CG_OptionsFrame.FS113:SetTextColor(1, 1, 0)
	CG_OptionsFrame.zpaButton5 = CreateFrame("Button", "ZPButton5", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton5:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 15, -100)
	CG_OptionsFrame.zpaButton5:SetWidth(90)
	CG_OptionsFrame.zpaButton5:SetHeight(15)
	CG_OptionsFrame.zpaButton5:SetText(CG_L["Ahead"])
	CG_OptionsFrame.zpaButton5:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton5ntex = CG_OptionsFrame.zpaButton5:CreateTexture()
	CG_OptionsFrame.zpaButton5ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton5ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton5ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton5:SetNormalTexture(CG_OptionsFrame.zpaButton5ntex)
	CG_OptionsFrame.zpaButton5htex = CG_OptionsFrame.zpaButton5:CreateTexture()
	CG_OptionsFrame.zpaButton5htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton5htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton5htex:SetAllPoints()
	CG_OptionsFrame.zpaButton5:SetHighlightTexture(CG_OptionsFrame.zpaButton5htex)
	CG_OptionsFrame.zpaButton5ptex = CG_OptionsFrame.zpaButton5:CreateTexture()
	CG_OptionsFrame.zpaButton5ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton5ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton5ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton5:SetPushedTexture(CG_OptionsFrame.zpaButton5ptex)
	CG_OptionsFrame.zpaButton5:SetScript("OnClick", function(self, arg1)
		CGCPickA = 6
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar6.r, CG_MissionInfo.Settings.HPBar6.g, CG_MissionInfo.Settings.HPBar6.b, CG_MissionInfo.Settings.HPBar6.a, CGmyColorCallback);
	end)

	CG_OptionsFrame.zpaButton6 = CreateFrame("Button", "ZPButton6", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton6:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 115, -100)
	CG_OptionsFrame.zpaButton6:SetWidth(90)
	CG_OptionsFrame.zpaButton6:SetHeight(15)
	CG_OptionsFrame.zpaButton6:SetText(CG_L["Behind"])
	CG_OptionsFrame.zpaButton6:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton6ntex = CG_OptionsFrame.zpaButton6:CreateTexture()
	CG_OptionsFrame.zpaButton6ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton6ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton6ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton6:SetNormalTexture(CG_OptionsFrame.zpaButton6ntex)
	CG_OptionsFrame.zpaButton6htex = CG_OptionsFrame.zpaButton6:CreateTexture()
	CG_OptionsFrame.zpaButton6htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton6htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton6htex:SetAllPoints()
	CG_OptionsFrame.zpaButton6:SetHighlightTexture(CG_OptionsFrame.zpaButton6htex)
	CG_OptionsFrame.zpaButton6ptex = CG_OptionsFrame.zpaButton6:CreateTexture()
	CG_OptionsFrame.zpaButton6ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton6ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton6ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton6:SetPushedTexture(CG_OptionsFrame.zpaButton6ptex)
	CG_OptionsFrame.zpaButton6:SetScript("OnClick", function(self, arg1)
		CGCPickA = 5
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar5.r, CG_MissionInfo.Settings.HPBar5.g, CG_MissionInfo.Settings.HPBar5.b, CG_MissionInfo.Settings.HPBar5.a, CGmyColorCallback);
	end)

	CG_OptionsFrame.FS13 = CG_OptionsFrame:CreateFontString("zpFontString13","OVERLAY","GameFontNormal")
	CG_OptionsFrame.FS13:SetPoint("TOPLEFT",CG_OptionsFrame,"TOPLEFT",15,-120)
	CG_OptionsFrame.FS13:SetText(CG_L["NamePlate Line Colors:"])
	CG_OptionsFrame.FS13:SetFont("GameFontNormal", 15)
	CG_OptionsFrame.FS13:SetTextColor(1, 1, 0)

	CG_OptionsFrame.zpaButton7 = CreateFrame("Button", "ZPButton7", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton7:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 15, -135)
	CG_OptionsFrame.zpaButton7:SetWidth(90)
	CG_OptionsFrame.zpaButton7:SetHeight(15)
	CG_OptionsFrame.zpaButton7:SetText(CG_L["Ahead"])
	CG_OptionsFrame.zpaButton7:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton7ntex = CG_OptionsFrame.zpaButton7:CreateTexture()
	CG_OptionsFrame.zpaButton7ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton7ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton7ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton7:SetNormalTexture(CG_OptionsFrame.zpaButton7ntex)
	CG_OptionsFrame.zpaButton7htex = CG_OptionsFrame.zpaButton7:CreateTexture()
	CG_OptionsFrame.zpaButton7htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton7htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton7htex:SetAllPoints()
	CG_OptionsFrame.zpaButton7:SetHighlightTexture(CG_OptionsFrame.zpaButton7htex)
	CG_OptionsFrame.zpaButton7ptex = CG_OptionsFrame.zpaButton7:CreateTexture()
	CG_OptionsFrame.zpaButton7ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton7ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton7ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton7:SetPushedTexture(CG_OptionsFrame.zpaButton7ptex)
	CG_OptionsFrame.zpaButton7:SetScript("OnClick", function(self, arg1)
		CGCPickA = 4
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar4.r, CG_MissionInfo.Settings.HPBar4.g, CG_MissionInfo.Settings.HPBar4.b, CG_MissionInfo.Settings.HPBar4.a, CGmyColorCallback);
	end)
	CG_OptionsFrame.zpaButton8 = CreateFrame("Button", "ZPButton8", CG_OptionsFrame)
	CG_OptionsFrame.zpaButton8:SetPoint("TOPLEFT", CG_OptionsFrame, "TOPLEFT", 115, -135)
	CG_OptionsFrame.zpaButton8:SetWidth(90)
	CG_OptionsFrame.zpaButton8:SetHeight(15)
	CG_OptionsFrame.zpaButton8:SetText(CG_L["Behind"])
	CG_OptionsFrame.zpaButton8:SetNormalFontObject("GameFontNormal")
	CG_OptionsFrame.zpaButton8ntex = CG_OptionsFrame.zpaButton8:CreateTexture()
	CG_OptionsFrame.zpaButton8ntex:SetTexture("Interface/Buttons/UI-Panel-Button-Up")
	CG_OptionsFrame.zpaButton8ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton8ntex:SetAllPoints()	
	CG_OptionsFrame.zpaButton8:SetNormalTexture(CG_OptionsFrame.zpaButton8ntex)
	CG_OptionsFrame.zpaButton8htex = CG_OptionsFrame.zpaButton8:CreateTexture()
	CG_OptionsFrame.zpaButton8htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight")
	CG_OptionsFrame.zpaButton8htex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton8htex:SetAllPoints()
	CG_OptionsFrame.zpaButton8:SetHighlightTexture(CG_OptionsFrame.zpaButton8htex)
	CG_OptionsFrame.zpaButton8ptex = CG_OptionsFrame.zpaButton8:CreateTexture()
	CG_OptionsFrame.zpaButton8ptex:SetTexture("Interface/Buttons/UI-Panel-Button-Down")
	CG_OptionsFrame.zpaButton8ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	CG_OptionsFrame.zpaButton8ptex:SetAllPoints()
	CG_OptionsFrame.zpaButton8:SetPushedTexture(CG_OptionsFrame.zpaButton8ptex)
	CG_OptionsFrame.zpaButton8:SetScript("OnClick", function(self, arg1)
		CGCPickA = 3
		CGShowColorPicker(CG_MissionInfo.Settings.HPBar3.r, CG_MissionInfo.Settings.HPBar3.g, CG_MissionInfo.Settings.HPBar3.b, CG_MissionInfo.Settings.HPBar3.a, CGmyColorCallback);
	end)
	if (CG_MissionInfo.Settings.NamePlate == 1) then
		CG_OptionsFrame.FS13:Show()
		CG_OptionsFrame.FS113:Show()
		CG_OptionsFrame.zpaButton5:Show()
		CG_OptionsFrame.zpaButton6:Show()
		CG_OptionsFrame.zpaButton7:Show()
		CG_OptionsFrame.zpaButton8:Show()
	else
		CG_OptionsFrame.FS13:Hide()
		CG_OptionsFrame.zpaButton5:Hide()
		CG_OptionsFrame.zpaButton6:Hide()
		CG_OptionsFrame.FS113:Hide()
		CG_OptionsFrame.zpaButton7:Hide()
		CG_OptionsFrame.zpaButton8:Hide()
	end
	ZPCheckButton1 = CreateFrame("CheckButton", "ZPxCheckButton1", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton1:SetPoint("TOPLEFT", 15, -155);
	if (CG_MissionInfo.Settings.Grow == 0) then
		ZPCheckButton1:SetChecked(false)
	else
		ZPCheckButton1:SetChecked(true)
	end
	getglobal(ZPCheckButton1:GetName() .. 'Text'):SetText(CG_L[": Grow Upwards"])
	getglobal(ZPCheckButton1:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton1:SetScript("OnClick", function()
		if (ZPCheckButton1:GetChecked() == true) then
			CG_MissionInfo.Settings.Grow = 1
			CG_MainFrame.CGBGDrop2:Show()
			CG_MainFrame.CGBGDrop1:Hide()
			CG_UpdateFSPos()
		else
			CG_MissionInfo.Settings.Grow = 0
			CG_MainFrame.CGBGDrop1:Show()
			CG_MainFrame.CGBGDrop2:Hide()
			CG_UpdateFSPos()
		end
	end)
	ZPCheckButton2 = CreateFrame("CheckButton", "ZPxCheckButton2", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton2:SetPoint("TOPLEFT", 15, -170);
	if (CG_MissionInfo.Settings.Lock == 0) then
		ZPCheckButton2:SetChecked(false)
	else
		ZPCheckButton2:SetChecked(true)
	end
	getglobal(ZPCheckButton2:GetName() .. 'Text'):SetText(CG_L[": Lock Position"])
	getglobal(ZPCheckButton2:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton2:SetScript("OnClick", function()
		if (ZPCheckButton2:GetChecked() == true) then
			CG_MissionInfo.Settings.Lock = 1
		else
			CG_MissionInfo.Settings.Lock = 0
		end
	end)
	ZPCheckButton3 = CreateFrame("CheckButton", "ZPxCheckButton3", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton3:SetPoint("TOPLEFT", 15, -185);
	if (CG_MissionInfo.Settings.NamePlate == 0) then
		ZPCheckButton3:SetChecked(false)
	else
		ZPCheckButton3:SetChecked(true)
	end
	getglobal(ZPCheckButton3:GetName() .. 'Text'):SetText(CG_L[": Attatch to NamePlate"])
	getglobal(ZPCheckButton3:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton3:SetScript("OnClick", function()
		if (ZPCheckButton3:GetChecked() == true) then
			CG_MissionInfo.Settings.NamePlate = 1
			CG_OptionsFrame.FS13:Show()
			CG_OptionsFrame.zpaButton5:Show()
			CG_OptionsFrame.zpaButton6:Show()
			CG_OptionsFrame.FS113:Show()
			CG_OptionsFrame.zpaButton7:Show()
			CG_OptionsFrame.zpaButton8:Show()
		else
			CG_MissionInfo.Settings.NamePlate = 0
			CG_OptionsFrame.FS13:Hide()
			CG_OptionsFrame.zpaButton5:Hide()
			CG_OptionsFrame.zpaButton6:Hide()
			CG_OptionsFrame.FS113:Hide()
			CG_OptionsFrame.zpaButton7:Hide()
			CG_OptionsFrame.zpaButton8:Hide()
		end
	end)
	ZPCheckButton4 = CreateFrame("CheckButton", "ZPxCheckButton4", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton4:SetPoint("TOPLEFT", 15, -200);
	if (CG_MissionInfo.Settings.DisableSync == 0) then
		ZPCheckButton4:SetChecked(false)
	else
		ZPCheckButton4:SetChecked(true)
	end
	getglobal(ZPCheckButton4:GetName() .. 'Text'):SetText(CG_L[": Disable ClientSync"])
	getglobal(ZPCheckButton4:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton4:SetScript("OnClick", function()
		if (ZPCheckButton4:GetChecked() == true) then
			CG_MissionInfo.Settings.DisableSync = 1
		else
			CG_MissionInfo.Settings.DisableSync = 0
		end
	end)
	ZPCheckButton14 = CreateFrame("CheckButton", "ZPxCheckButton14", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton14:SetPoint("TOPLEFT", 15, -215);
	if (CG_MissionInfo.Settings.MarkersOn == 0) then
		ZPCheckButton14:SetChecked(false)
	else
		ZPCheckButton14:SetChecked(true)
	end
	getglobal(ZPCheckButton14:GetName() .. 'Text'):SetText(CG_L[": Corrupted soul marking"])
	getglobal(ZPCheckButton14:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton14:SetScript("OnClick", function()
		if (ZPCheckButton14:GetChecked() == true) then
			CG_MissionInfo.Settings.MarkersOn = 1
			CG_MarkerFrame:Show()
		else
			CG_MissionInfo.Settings.MarkersOn = 0
			CG_MarkerFrame:Hide()
		end
	end)
	ZPCheckButton15 = CreateFrame("CheckButton", "ZPxCheckButton15", CG_OptionsFrame, "ChatConfigCheckButtonTemplate");
	ZPCheckButton15:SetPoint("TOPLEFT", 15, -230);
	if (CG_MissionInfo.Settings.RaidWarning == 0) then
		ZPCheckButton15:SetChecked(false)
	else
		ZPCheckButton15:SetChecked(true)
	end
	getglobal(ZPCheckButton15:GetName() .. 'Text'):SetText(CG_L[": RaidWarning"])
	getglobal(ZPCheckButton15:GetName() .. 'Text'):SetTextColor(1, 1, 0)
	ZPCheckButton15:SetScript("OnClick", function()
		if (ZPCheckButton15:GetChecked() == true) then
			CG_MissionInfo.Settings.RaidWarning = 10
			CG_RaidWarningFrame.Slider:SetValue(CG_MissionInfo.Settings.RaidWarning * 10)
			getglobal(CG_RaidWarningFrame.Slider:GetName() .. 'Text'):SetText(CG_MissionInfo.Settings.RaidWarning..CG_L["secs"])
			CG_RaidWarningFrame:Show()
		else
			CG_MissionInfo.Settings.RaidWarning = 0
			CG_RaidWarningFrame:Hide()
		end
	end)
end

function CGmyColorCallback(restore)
	local newR, newG, newB, newA;
	if restore then
		newR, newG, newB, newA = unpack(restore);
	else
		newA, newR, newG, newB = OpacitySliderFrame:GetValue(), ColorPickerFrame:GetColorRGB();
	end
	if (CGCPickA == 1) then
		CG_MissionInfo.Settings.HPBar.r, CG_MissionInfo.Settings.HPBar.g, CG_MissionInfo.Settings.HPBar.b, CG_MissionInfo.Settings.HPBar.a = newR, newG, newB, newA;
	end
	if (CGCPickA == 2) then
		CG_MissionInfo.Settings.HPBar2.r, CG_MissionInfo.Settings.HPBar2.g, CG_MissionInfo.Settings.HPBar2.b, CG_MissionInfo.Settings.HPBar2.a = newR, newG, newB, newA;
	end
	if (CGCPickA == 3) then
		CG_MissionInfo.Settings.HPBar3.r, CG_MissionInfo.Settings.HPBar3.g, CG_MissionInfo.Settings.HPBar3.b, CG_MissionInfo.Settings.HPBar3.a = newR, newG, newB, newA;
	end
	if (CGCPickA == 4) then
		CG_MissionInfo.Settings.HPBar4.r, CG_MissionInfo.Settings.HPBar4.g, CG_MissionInfo.Settings.HPBar4.b, CG_MissionInfo.Settings.HPBar4.a = newR, newG, newB, newA;
	end
	if (CGCPickA == 5) then
		CG_MissionInfo.Settings.HPBar5.r, CG_MissionInfo.Settings.HPBar5.g, CG_MissionInfo.Settings.HPBar5.b, CG_MissionInfo.Settings.HPBar5.a = newR, newG, newB, newA;
	end
	if (CGCPickA == 6) then
		CG_MissionInfo.Settings.HPBar6.r, CG_MissionInfo.Settings.HPBar6.g, CG_MissionInfo.Settings.HPBar6.b, CG_MissionInfo.Settings.HPBar6.a = newR, newG, newB, newA;
	end
end

function CGShowColorPicker(zpr, zpg, zpb, zpa, CG_myColorCallback)
	ColorPickerFrame:SetColorRGB(zpr,zpg,zpb);
	ColorPickerFrame.hasOpacity, ColorPickerFrame.opacity = (zpa ~= nil), zpa;
	ColorPickerFrame.previousValues = {zpr,zpg,zpb,zpa};
	ColorPickerFrame.func, ColorPickerFrame.opacityFunc, ColorPickerFrame.cancelFunc = CG_myColorCallback, CG_myColorCallback, CG_myColorCallback;
	ColorPickerFrame:Hide();
	ColorPickerFrame:Show();
end



function CG_FirstLoad()
	CG_ChatPrefix = RegisterAddonMessagePrefix("ConsGoreFiend4")
	SlashCmdList["CG_Cmd"] = CG_SlashCommand
	SLASH_CG_Cmd1 = "/cons"
	CG_CheckVariables()
	CG_CBPlates = 1
	CG_BuildFrames()
	CG_TimeAnimation("load")
	CG_MainFrame:SetScale(CG_MissionInfo.Scale)
	CG_MainFrame:SetPoint("TOPLEFT", CG_MissionInfo.Settings.left, CG_MissionInfo.Settings.top)
	if (CG_MissionInfo.Status == "off") then
		CG_CloseCGF()
	end
end
function CG_SlashCommand(CG_cmd)
	if (CG_cmd == "settings") then
		CG_Options()
		CG_MissionInfo.Status = "on"
		CG_TimeAnimation("on")
		CG_CBPlates = 1
		CG_MainFrame:Show()
		CG_MarkerFrame:SetPoint("TOPLEFT", CGOptions, "TOPLEFT", 230, 0)
		if (CG_MissionInfo.Settings.MarkersOn == 1) then
			CG_MarkerFrame:Show()
		end
		if (CG_MissionInfo.Settings.RaidWarning == 0) then
			CG_RaidWarningFrame:Hide()
		else
			CG_RaidWarningFrame:Show()
		end
		CG_RaidWarningFrame.EB1:SetText(CG_MissionInfo.Settings.RaidWarningmsg1)
		CG_RaidWarningFrame.EB2:SetText(CG_MissionInfo.Settings.RaidWarningmsg2)
	elseif (CG_cmd == "timeleft") then
		if (CG_MissionInfo.Settings.TimeLeft == 0) then
			CG_MissionInfo.Settings.TimeLeft = 1
			print("ConsGoreFiend: Showing time left is now ON")
		else
			CG_MissionInfo.Settings.TimeLeft = 0
			print("ConsGoreFiend: Showing time left is now OFF")
		end
	elseif (CG_cmd ~= "") then
		print(CG_L["To start: /cons"])
		print(CG_L["Settings: /cons settings"])
	elseif (CG_MissionInfo.Status == "on") then
		CG_CloseCGF()
	else
		CG_MissionInfo.Status = "on"
		CG_TimeAnimation("on")
		CG_CBPlates = 1
		CG_MainFrame:Show()
	end
end
function CG_GetFreeMark(CGMarkName)
	for CG_index,CG_value in pairs(CG_UsedMarkers) do
		if (CG_UsedMarkers[CG_index] == CGMarkName) then
			return CG_index
		end
	end
	for CG_index,CG_value in pairs(CG_UsedMarkers) do
		if (CG_UsedMarkers[CG_index] == 0 and CG_MissionInfo.Settings.Markers["m"..CG_index] == 1) then
			CG_UsedMarkers[CG_index] = CGMarkName
			return CG_index
		end
	end
end
function CG_RemoveMarkList(CGMarkName)
	for CG_index,CG_value in pairs(CG_UsedMarkers) do
		if (CG_UsedMarkers[CG_index] == CGMarkName) then
			CG_UsedMarkers[CG_index] = 0
		end
	end
end
function CG_GotMarkCheck(CGMOName, CGMONr)
	local CGCSdss = 0
	for CG_index,CG_value in pairs(CG_MainList) do
		if (CG_MainList[CG_index]["N"] == CGMOName) then
			CGCSdss = 1
		end
	end
	if (CG_UsedMarkers[CGMONr] and CG_UsedMarkers[CGMONr] ~= CGMOName and CGCSdss == 1) then
		CG_UsedMarkers[CGMONr] = CGMOName
	end
end
function CG_GetMarkNr(CGMarkName)
	for CG_index,CG_value in pairs(CG_MainList) do
		if (CG_MainList[CG_index]["N"] == CGMarkName) then
			if (not CG_MainList[CG_index]["Mark"]) then
				return CG_GetFreeMark(CGMarkName)
			end
		end
	end
	return
end
function CG_CloseCGF()
	for CGroupindex = 1,20 do
		CG_MainFrame["F" .. CGroupindex][2]:SetText("")
		CG_MainFrame["F" .. CGroupindex][3]:SetText("")
		CG_MainFrame["F" .. CGroupindex]:Hide()
	end
	CG_MissionInfo.Status = "off"
	CG_CBPlates = 0
	CG_TimeAnimation("off")
	if (CG_TestingVar == 1) then
		CG_Testing()
	end
	CG_MFrame:Hide()
	CG_TestingVar = 0
end
CG_updateFrame = CreateFrame("Frame")
CG_updateFrame2 = CreateFrame("Frame")
CG_TestFrame = CreateFrame("Frame")
CG_updateFrame:RegisterEvent ("PLAYER_TARGET_CHANGED")
CG_updateFrame:RegisterEvent ("PLAYER_LOGIN")
CG_updateFrame:RegisterEvent ("PLAYER_LEAVE_COMBAT")
CG_updateFrame:RegisterEvent ("COMBAT_LOG_EVENT_UNFILTERED")
CG_updateFrame:RegisterEvent ("CHAT_MSG_ADDON")
CG_updateFrame:RegisterEvent ("PLAYER_ENTER_COMBAT")
CG_updateFrame:RegisterEvent ("UPDATE_MOUSEOVER_UNIT")

CG_updateFrame:SetScript("OnEvent", function(self, event, ...)
	if (event=="PLAYER_LOGIN") then
		CG_FirstLoad()
		local CG_TimerFrame = CreateFrame("frame")
		CG_TimerFrame:SetScript("OnUpdate", CG_Timer)
		CG_MarkerFrameFunc()
	elseif (event == "CHAT_MSG_ADDON") then
		local arg1, arg2, arg3, arg4 = ...;
		if (arg1 == "ConsGoreFiend4" and CG_MissionInfo.Settings.DisableSync == 0) then
			if (string.find(arg2, "Sync")) then
				CG_DebugtimeSync = debugprofilestop()
			elseif (string.find(arg2, "GOTDIGEST(.*)") and arg4 ~= UnitName("player") and arg4 ~= CGtempname) then
				local CG_1, CG_2, CG_3 = string.find(arg2, "GOTDIGEST(.*)")
				local CG_n, CG_n, CG_3, CG_4 = string.find(CG_3, "(.*)-(.*)")
				CG_GotDigest(CG_3, "MSG", tonumber(CG_4))
			elseif (string.find(arg2, "RAIDMARKER(.*)") and arg4 ~= UnitName("player") and arg4 ~= CGtempname) then
				local CG_1, CG_2, CG_3 = string.find(arg2, "RAIDMARKER(.*)")
				local CG_n, CG_n, CG_3, CG_4 = string.find(CG_3, "(.*)-(.*)")
				CG_GotMarkCheck(CG_3, tonumber(CG_4))
			elseif (string.find(arg2, "LOSTDIGEST(.*)") and arg4 ~= UnitName("player") and arg4 ~= CGtempname) then
			else
				if (arg4 ~= UnitName("player") and arg4 ~= CGtempname) then
					CG_test(arg2)
				end
			end
		end
	elseif (event == "PLAYER_ENTER_COMBAT") then

	elseif (event == "PLAYER_LEAVE_COMBAT") then

	elseif (event == "UPDATE_MOUSEOVER_UNIT") then
		local CG_GTarget = UnitGUID("mouseover")
		if (CG_GTarget and CG_MissionInfo.Settings.MarkersOn == 1) then
			local CG_npcid = select(6, strsplit("-", CG_GTarget))
			if (CG_npcid) then
				local cgtype = strsplit("-",CG_GTarget);
				if (not UnitIsPlayer(CG_npcid) and cgtype ~= "Player") then
					if (not GetRaidTargetIndex("mouseover")) then
						local CGMOName = UnitName("mouseover")
						local CG_tMarknr = CG_GetMarkNr(CGMOName)
						if (CG_tMarknr) then
							SetRaidTarget("mouseover", CG_tMarknr)
							SendAddonMessage( "ConsGoreFiend4","RAIDMARKER" .. CGMOName.."-"..CG_tMarknr, CG_Chatto )
						end
					else
						local CGMOName = UnitName("mouseover")
						CG_GotMarkCheck(CGMOName, GetRaidTargetIndex("mouseover"))
					end
				end
			end
		end
	elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		local GC_, GC_event, GC_, GC_, GC_sourceName, GC_, GC_, GC_destGUID, GC_destName, GC_, GC_, GC_SpellID, GC_SpellName = ...
		if ("UNIT_DIED" == GC_event) then
			if (GC_destGUID) then
				local CG_n, CG_n, CG_1, CG_2, CG_3, CG_4, CG_5, CG_6, CG_7 = string.find(GC_destGUID, "(.*)-(.*)-(.*)-(.*)-(.*)-(.*)-(.*)")
				if (CG_6) then
					if (tonumber(CG_6) == 90199) then
						CG_CloseCGF()
					end
				end
			end
		end
		if ("SPELL_AURA_APPLIED" == GC_event and GC_DigestSpellID == GC_SpellID) then
			local CG_DebugtimeSync2 = debugprofilestop()
			local GC_Timeh = CG_DebugtimeSync2 - CG_DebugtimeSync
			CG_GotDigest(GC_destName, "TRIGGER", GC_Timeh)
		elseif ("SPELL_AURA_REMOVED" == GC_event and GC_DigestSpellID == GC_SpellID) then
			CG_LostDigest(GC_destName, "TRIGGER")
		end
	elseif (event == "PLAYER_TARGET_CHANGED") then
		if (CG_AutoLOADED == 0) then
			local CG_GTarget = UnitGUID("target")
			if (CG_GTarget) then
				local CG_npcid = select(6, strsplit("-", CG_GTarget))
				if (CG_npcid) then
					if (tonumber(CG_npcid) == 90199) then
						CG_AutoLOADED = 1
						CG_MissionInfo.Status = "on"
						CG_TimeAnimation("on")
						CG_CBPlates = 1
						CG_MainFrame:Show()
					end
				end
			end
		end
	end
end)