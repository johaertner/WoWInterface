local AddonName, Addon = ...

-- Translated by 불은비_

Addon.Loc = {
    Title = "Zereth Mortis",
	Events = {
		["Prefix"] = "Event started for",
		[183953] = "자이 중개단을 섬기고자 일어납니다.",
		[183814] = "붕괴로 산맥이 전율합니다.",
		[180924] = "휴면을 끝내고 모습을 드러냅니다!",
		[180746] = "최후의 결전을 준비합니다.",
		[183748] = "지면이 진동합니다... 무언가가 지표면 아래에 잠복하고 있습니다!",
		[180978] = "저 아래의 심연에서 모습을 드러냅니다.",
		[183516] = "여왕의 복수심에 타오르는 절규가 제레스 모르티스 전역에 메아리칩니다!",
		[178778] = "고통 어린 절규를 내지릅니다!",
    },
    Rares = {
        [178778] = "걸신들린 과성장물",       -- Local broadcast (complete)
		[178229] = "포식침벌",
		[183927] = "모래의 여군주 일레우스",
		[179006] = "아카리스",		
		[183925] = "타크위츠",
		[179043] = "오릭살",
		[183747] = "비티아네",
		[182318] = "장군 자라투라",
		[181249] = "테토스",
		[180746] = "태초의 존재의 보호자", -- Zone wide broadcast (complete)
		[180924] = "가루데온",                    -- Zone wide broadcast (complete)
		[180978] = "히루콘",                     -- Zone wide broadcast (complete)
		[183814] = "조롱받는 자 오타리스(동굴)",         -- Zone wide broadcast (complete)
		[183748] = "헬믹스",                      -- Zone wide broadcast (complete)
		[184804] = "헬믹스",
		[183749] = "헬믹스",
		[183516] = "집어삼키는 자",                -- Local broadcast (complete)
		[183746] = "오티오센",
		[180917] = "불안정한 핵",           -- No broadcast
		[183737] = "탐욕스러운 자이라스",        -- No broadcast
		[183596] = "태고의 사슴 치탈리",
		[183722] = "소라노스",
		[184409] = "에우부크",
		[178563] = "돌파괴자 하데온",
		[178963] = "고르케크",
		[184413] = "변화무쌍한 별포식자",
		[178508] = "대모 페스티스(동굴)",
		[183646] = "퓨리디안",
		[183764] = "자토진",
		[183953] = "타락한 건축가",         -- Zone wide broadcast (complete)
		[181360] = "벡시스",
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