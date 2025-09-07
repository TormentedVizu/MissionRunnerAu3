; Mission_ConsulateDocks.au3
; Skeleton implementation for the Nightfall mission "Consulate Docks".
; Replace the TODO sections with your own logic to navigate through
; Consulate Docks, defeat enemies, and turn in the mission.

; Provide a simple fallback for the Out() function if it isn't defined
If Not IsDeclared("Out") Then
    Func Out($msg)
        ConsoleWrite($msg & @CRLF)
    EndFunc
EndIf

Func ConsulateDocksCoop()
	Out("Consulate Docks Mission")
	If GetMapID() = $Consulate_Docks_Outpost And GetMapLoading() = 0 Then
		MoveTo(-1670, 16818)
		AddSelectedHero(-1670, 16818)
		GoToNPCNearXY(-1508, 16739)  ; Maréchal Mehdara
		Dialog(0x81)
		Dialog(0x84)
		Sleep(400)
		Map_WaitMapLoading($ConsulateDocksMission)
		AggroMoveToEx(-15428, -11913)
	AggroMoveToEx(-14804, -10940)
	AggroMoveToEx(-14870, -9933)
	AggroMoveToEx(-14720, -8935)
	AggroMoveToEx(-14558, -7941)
	AggroMoveToEx(-14937, -7014)
	AggroMoveToEx(-15431, -6138)
	AggroMoveToEx(-15506, -5140)
	AggroMoveToEx(-15459, -4132)
	AggroMoveToEx(-15415, -5137)
	AggroMoveToEx(-15346, -6138)
	AggroMoveToEx(-14476, -6645)
	AggroMoveToEx(-14162, -5695)
	AggroMoveToEx(-13310, -5153)
	AggroMoveToEx(-12332, -5411)
	AggroMoveToEx(-11593, -4731)
	AggroMoveToEx(-10787, -4136)
	AggroMoveToEx(-10019, -3493)
	AggroMoveToEx(-9208, -2891)
	AggroMoveToEx(-8205, -2873)
	AggroMoveToEx(-8078, -3877)
	AggroMoveToEx(-8057.93, -3730.01)
	AggroMoveToEx(-8117, -4295) ; NPC 
	AggroMoveToEx(-8029, -3183)
	AggroMoveToEx(-7037, -3040)
	AggroMoveToEx(-6226, -3635)
	AggroMoveToEx(-5246, -3890)
	AggroMoveToEx(-4265, -4146)
	AggroMoveToEx(-3376, -4624)
	AggroMoveToEx(-2585, -5250)
	AggroMoveToEx(-1711, -5747)
	AggroMoveToEx(-985, -6437)
	AggroMoveToEx(-275, -7144)
	AggroMoveToEx(605, -7642)
	AggroMoveToEx(1169, -8469)
	AggroMoveToEx(920, -8723)
	AggroMoveToEx(817.55, -9297.30)
	AggroMoveToEx(1105, -9708)
	AggroMoveToEx(1510, -10637)
	AggroMoveToEx(1727, -11625)
	AggroMoveToEx(1925, -12615)
	AggroMoveToEx(1300, -13396)
	AggroMoveToEx(1772, -12506)
	AggroMoveToEx(1626, -11510)
	AggroMoveToEx(1512, -10513)
	AggroMoveToEx(1400, -9511)
	AggroMoveToEx(1621, -8531)
	AggroMoveToEx(1717.17, -8053.91)
	AggroMoveToEx(2338, -7820)
	AggroMoveToEx(3310, -7551)
	AggroMoveToEx(3468, -6555)
	AggroMoveToEx(3902, -5647)
	AggroMoveToEx(4495, -4829)
	AggroMoveToEx(5060, -4002)
	AggroMoveToEx(4378, -4742)
	AggroMoveToEx(3484, -5206)
	AggroMoveToEx(2685, -4593)
	AggroMoveToEx(2230, -3702)

;~ 	If GetMapID() = $Consulate_Docks_Outpost And GetMapLoading() = 1 Then ;Consulate Docks outpost
;~ 		Local $aWaypoints[58][4] = [ _
;~ 				[-15428, -11913, 1350, " "], _
;~ 				[-14804, -10940, 1350, " "], _
;~ 				[-14870, -9933, 1350, " "], _
;~ 				[-14720, -8935, 1350, " "], _
;~ 				[-14558, -7941, 1350, " "], _
;~ 				[-14937, -7014, 1350, " "], _
;~ 				[-15431, -6138, 1350, " "], _
;~ 				[-15506, -5140, 1350, " "], _
;~ 				[-15459, -4132, 1350, " "], _
;~ 				[-15415, -5137, 1350, " "], _
;~ 				[-15346, -6138, 1350, " "], _
;~ 				[-14476, -6645, 1350, " "], _
;~ 				[-14162, -5695, 1350, " "], _
;~ 				[-13310, -5153, 1350, " "], _
;~ 				[-12332, -5411, 1350, " "], _
;~ 				[-11593, -4731, 1350, " "], _
;~ 				[-10787, -4136, 1350, " "], _
;~ 				[-10019, -3493, 1350, " "], _
;~ 				[-9208, -2891, 1350, " "], _
;~ 				[-8205, -2873, 1350, " "], _
;~ 				[-8078, -3877, 1350, " "], _
;~ 				[-8057.93, -3730.01, 5000, "Vigilant"], _
;~ 				[-8117, -4295, 1350, "NPC at Coords"], _
;~ 				[-8029, -3183, 1350, " "], _
;~ 				[-7037, -3040, 1350, " "], _
;~ 				[-6226, -3635, 1350, " "], _
;~ 				[-5246, -3890, 1350, " "], _
;~ 				[-4265, -4146, 1350, " "], _
;~ 				[-3376, -4624, 1350, " "], _
;~ 				[-2585, -5250, 1350, " "], _
;~ 				[-1711, -5747, 1350, " "], _
;~ 				[-985, -6437, 1350, " "], _
;~ 				[-275, -7144, 1350, " "], _
;~ 				[605, -7642, 1350, " "], _
;~ 				[1169, -8469, 1350, " "], _
;~ 				[920, -8723, 1350, " "], _
;~ 				[817.55, -9297.30, 10000, "Vigilant"], _
;~ 				[1105, -9708, 1350, " "], _
;~ 				[1510, -10637, 1350, " "], _
;~ 				[1727, -11625, 1350, " "], _
;~ 				[1925, -12615, 1350, " "], _
;~ 				[1300, -13396, 1350, " "], _
;~ 				[1772, -12506, 1350, " "], _
;~ 				[1626, -11510, 1350, " "], _
;~ 				[1512, -10513, 1350, " "], _
;~ 				[1400, -9511, 1350, " "], _
;~ 				[1621, -8531, 1350, " "], _
;~ 				[1717.17, -8053.91, 5000, "Vigilant"], _
;~ 				[2338, -7820, 1350, " "], _
;~ 				[3310, -7551, 1350, " "], _
;~ 				[3468, -6555, 1350, " "], _
;~ 				[3902, -5647, 1350, " "], _
;~ 				[4495, -4829, 1350, " "], _
;~ 				[5060, -4002, 1350, " "], _
;~ 				[4378, -4742, 1350, " "], _
;~ 				[3484, -5206, 1350, " "], _
;~ 				[2685, -4593, 1350, " "], _
;~ 				[2230, -3702, 10000, "Vigilant"]]
;~ 	If GetChecked($GUI_GroupSettings_CheckStones) = True Then UseStones()
;~ 	If GetChecked($GUI_GroupSettings_CheckScrolls) = True Then UseScroll()
;~ 	If GetChecked($GUI_GroupSettings_CheckConsets) = True Then UseConsets()
;~ 	If GetChecked($CheckboxPcons) = True Then UsePcons()
;~ 		MoveandAggro($aWaypoints)
;~ 		Do
;~ 			Sleep(100)
;~ 		Until WaitMapLoading($Yohlon_Haven, 5000, True)
;~ 	EndIf

	If GetMapID() = $Yohlon_Haven Then ;Yohlon Haven
		MoveTo(3074, 591)
		MoveTo(2586, 452)
		MoveTo(2101, 314)
		GoToNPCNearXY(1704, 201)  ; Lancier du Soleil Modiki
		Dialog(0x84)
		Dialog(0x85)
		Dialog(0x86)
		Dialog(0x822401)
		;  Accepted Quest: Hunted!, ID: 548
	EndIf
EndFunc   ;==>ConsulateDocksCoop