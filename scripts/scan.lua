--GAME STATUS
--CHEST TALLY
-- 5 Torn Page(s)
-- 1 Proof(s) of Nonexistence
-- 1 Ukulele Charm(s)
-- 1 Feather Charm(s)

--POPUP TALLY
-- 1 Fire spell(s)
-- 2 Blizzard spell(s)
-- 3 Cure spell(s)
-- 1 Reflect spell(s)
-- 1 Proof(s) of Connection
-- 1 Proof(s) of Peace
-- 1 Secret Ansem's Report(s) 1
-- 1 Secret Ansem's Report(s) 2
-- 1 Secret Ansem's Report(s) 3
-- 1 Secret Ansem's Report(s) 4
-- 1 Secret Ansem's Report(s) 5
-- 1 Secret Ansem's Report(s) 6
-- 1 Secret Ansem's Report(s) 7
-- 1 Secret Ansem's Report(s) 8
-- 1 Secret Ansem's Report(s) 9
-- 1 Secret Ansem's Report(s) 10
-- 1 Secret Ansem's Report(s) 11
-- 1 Secret Ansem's Report(s) 12
-- 1 Secret Ansem's Report(s) 13
-- 1 Valor Form(s)
-- 1 Wisdom Form(s)
-- 1 Limit Form(s)
-- 1 Master Form(s)
-- 1 Baseball Charm(s)
-- 1 Lamp Charm(s)

--FORM & SUMMON TALLY

--LEVEL TALLY
--SWORD TALLY

--SHIELD TALLY

--STAFF TALLY

--BONUS TALLY
-- 2 Fire spell(s)
-- 1 Blizzard spell(s)
-- 3 Thunder spell(s)
-- 2 Reflect spell(s)
-- 3 Magnet spell(s)

--SORA'S FINAL STATS IN CRITICAL MODE
-- HP: 56
-- MP: 120
-- Armor: 4
-- Accessory: 4
-- Item: 8
-- Drive: 9

function _OnInit()
	kh2libstatus, kh2lib = pcall(require, "kh2lib")	
	if not kh2libstatus then		
		print("ERROR (Auto Save): KH2-Lua-Library mod is not installed")		
		CanExecute = false		
		return	
	end	
	
	Log("Always Have Scan script")
	RequireKH2LibraryVersion(1)

	CanExecute = kh2lib.CanExecute
	if not CanExecute then
        return
    end

	Now = kh2lib.Now
	Save = kh2lib.Save
	Obj3 = ReadPointer(kh2lib.Obj0Pointer)
	Sys3 = ReadPointer(kh2lib.Sys3Pointer)
	Btl0 = ReadPointer(kh2lib.Btl0Pointer)
	Slot1 = kh2lib.Slot1
	Gauge = kh2lib.Gauge1
	Songs = kh2lib.Songs
end

function _OnFrame()
	if not CanExecute then		
		return	
	end	
	
	World = ReadByte(Now + 0x00)
	Room = ReadByte(Now + 0x01)
	Place = ReadShort(Now + 0x00)
	Door = ReadShort(Now + 0x02)
	Map = ReadShort(Now + 0x04)
	Btl = ReadShort(Now + 0x06)
	Evt = ReadShort(Now + 0x08)
	Chests()
	Popups()
	BonusRewards()
	DriveForms()
	Equipment()
	LevelRewards()
	AbilityCosts()
	StartingStatus()
	Cheats()
end

function Events(M,B,E) --Check for Map, Btl, and Evt
	return ((Map == M or not M) and (Btl == B or not B) and (Evt == E or not E))
end


function Chests()
	-- AGRABAH
	-- BEAST'S CASTLE
	-- CAVERN OF REMEMBRANCE
	-- DISNEY CASTLE
	-- HALLOWEEN TOWN
	-- HOLLOW BASTION
	-- LAND OF DRAGONS
	-- OLYMPUS COLISEUM
	-- 100 ACRE WOOD
	-- PORT ROYAL
	-- PRIDE LANDS
	-- SIMULATED TWILIGHT TOWN
	-- SPACE PARANOIDS
	-- TIMELESS RIVER
	-- TWILIGHT TOWN
	-- THE WORLD THAT NEVER WAS
end

function Popups()
	-- AGRABAH
	-- ATLANTICA
	-- BEAST'S CASTLE
	-- DISNEY CASTLE
	-- HALLOWEEN TOWN
	-- HOLLOW BASTION
	-- LAND OF DRAGONS
	-- OLYMPUS COLISEUM
	-- OLYMPUS CUPS
	-- 100 ACRE WOOD
	-- PORT ROYAL
	-- PRIDE LANDS
	-- SIMULATED TWILIGHT TOWN
	-- SPACE PARANOIDS
	-- TIMELESS RIVER
	-- TWILIGHT TOWN
	-- THE WORLD THAT NEVER WAS
end

function BonusRewards()
	-- AGRABAH
	-- BEAST'S CASTLE
	-- CAVERN OF REMEMBRANCE
	-- DISNEY CASTLE
	-- HALLOWEEN TOWN
	-- HOLLOW BASTION
	-- LAND OF DRAGONS
	-- OLYMPUS COLISEUM
	-- PORT ROYAL
	-- PRIDE LANDS
	-- SIMULATED TWILIGHT TOWN
	-- SPACE PARANOIDS
	-- TIMELESS RIVER
	-- TWILIGHT TOWN
	-- THE WORLD THAT NEVER WAS
end

function DriveForms()
	-- VALOR
	-- WISDOM
	-- LIMIT
	-- MASTER
	-- FINAL
	-- SUMMON
end

function Equipment()
	-- KEYBLADE
	-- DONALD STAFF
	-- GOOFY SHIELD
	-- ALLY WEAPON
	-- ARMOR
	-- ACCESSORY
end

function LevelRewards()
	-- Level: 1
	-- No Level 1 Dream Weapon Rewards
	-- Level: 99
	-- Cannot Level to 100 so experience is not changed
end

function AbilityCosts()
	-- MAGIC
	-- DRIVES AND SUMMONS
	-- PARTY LIMITS
end

function StartingStatus()
end

function Cheats()
	--Always Have Scan
	WriteShort(Save+0x25DA,0x808A)

end