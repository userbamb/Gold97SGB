	object_const_def ; object_event constants
	const RYUKYUURASOEPARKGATE_OFFICER

RyukyuUrasoeParkGate_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene

	db 0 ; callbacks

.DummyScene:
	end

Route101NRyukyuGuardScript:
	jumptextfaceplayer Route101NRyukyuGuardWelcomeText


Route101NRyukyuGuardWelcomeText:
	text "Somedays I wish"
	line "I could leave my"
	para "guard post and go"
	line "relax out on the"
	cont "beach."
	done


RyukyuUrasoeParkGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, RYUKYU_CITY, 4
	warp_event  5,  0, RYUKYU_CITY, 5
	warp_event  4,  7, URASOE_PARK, 1
	warp_event  5,  7, URASOE_PARK, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route101NRyukyuGuardScript, -1
