	object_const_def ; object_event constants
	const KANTOMANSIONROOFHOUSE_PHARMACIST

KantoMansionRoofHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

KantoMansionRoofHousePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM03_CURSE
	iftrue .GotCurse
	writetext KantoMansionRoofHousePharmacistIntroText
	buttonsound
	checktime NITE
	iftrue .Night
	writetext KantoMansionRoofHousePharmacistNotNightText
	waitbutton
	closetext
	end

.Night:
	writetext KantoMansionRoofHousePharmacistStoryText
	buttonsound
	verbosegiveitem TM_CURSE
	iffalse .NoRoom
	setevent EVENT_GOT_TM03_CURSE
.GotCurse:
	writetext KantoMansionRoofHousePharmacistCurseText
	waitbutton
.NoRoom:
	closetext
	end

KantoMansionRoofHousePharmacistIntroText:
	text "Let me recount a"
	line "terrifying tale…"
	done

KantoMansionRoofHousePharmacistNotNightText:
	text "Then again, it's"
	line "not as scary while"

	para "it's still light"
	line "outside."

	para "Come back after"
	line "sunset, OK?"
	done

KantoMansionRoofHousePharmacistStoryText:
	text "Once upon a time,"
	line "there was a little"

	para "boy who was given"
	line "a new BICYCLE…"

	para "He wanted to try"
	line "it right away…"

	para "He was having so"
	line "much fun that he"

	para "didn't notice the"
	line "sun had set…"

	para "While riding home"
	line "in the pitch-black"

	para "night, the bike"
	line "suddenly slowed!"

	para "The pedals became"
	line "heavy!"

	para "When he stopped"
	line "pedaling, the bike"

	para "began slipping"
	line "backwards!"

	para "It was as if the"
	line "bike were cursed"

	para "and trying to drag"
	line "him into oblivion!"

	para "…"

	para "…"

	para "SHRIEEEEK!"

	para "The boy had been"
	line "riding uphill!"

	para "…"
	line "Ba-dum ba-dum!"

	para "For listening so"
	line "patiently, you may"
	cont "take this--TM03!"
	done

KantoMansionRoofHousePharmacistCurseText:
	text "TM03 is CURSE."

	para "It's a terrifying"
	line "move that slowly"

	para "whittles down the"
	line "victim's HP."
	done

KantoMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, KANTO_MANSION_ROOF, 3
	warp_event  4,  7, KANTO_MANSION_ROOF, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, KantoMansionRoofHousePharmacistScript, -1
