if not ZGV then return end
ZGV:RegisterGuide("Dominion\\The Destiny (1-3)",
	{
	faction="Dominion",
	startlevel=1,
	endlevel=3,
	nextguide="Dominion\\Crimson Isle (3-6)",
	image="ZygorUIGuides:TheDestiny", 
	description="The Destiny is the Dominion Ark Ship starting area, where players begin their adventure through Nexus. It is suited for characters level 1-3.",
	},
	[[
	step
		.talk Axis Pheydra##937722 |goto DominionArkShipTutorialCryogenics 769,16,80
		..accept Rise and Shine##6992
	step
		.' Proceed_ to the reacclimation area |q Rise and Shine##6992/1 |goto DominionArkShipTutorialCryogenics 701,-37,72
	step
		.click Cerebral Scanner
		.' Use the Cerebral Scanner Console to scan the Apprehensive Citizens' |q Rise and Shine##6992/2 |goto DominionArkShipTutorialCryogenics 706,-77,71
	step
		.talk Particularly Suspicious Citizen##943081 |goto DominionArkShipTutorialCryogenics 706,-63,72
		.' Interrogate Shifty Dominion Citizen |q Rise and Shine##6992/3
	step
		' Kill 3 Jaillyn's Phantoms
		.' Kill Jaillyn's Phantoms |q Rise and Shine##6992/4 |goto DominionArkShipTutorialCryogenics 744,-64,72
	step
		.talk Axis Pheydra##937722
		.' Speak with Axis Pheydra |q Rise and Shine##6992/5 |goto DominionArkShipTutorialCryogenics 765,-108,80
	step
		.talk Emperor Myrcalus##263494 |goto DominionArkShipTutorialCryogenics 769,-152,82
		..turnin Rise and Shine##6992
		..accept Moving Targets##6994
	step
		.' _Board_ the Tram |q Moving Targets##6994/1 |goto DominionArkShipTutorialCryogenics 799,-136,88
	step
		.' Go through the _yellow metal hallway_ |goto DominionArkShipTutorialCryogenics DominionArkShipTutorialCryogenics 753,-930,86 < 10 |c |q 6994/2
	step
		.talk Mondo Zax##262927 |goto DominionArkShipTutorialCryogenics 692,-929,87
		.' Talk to Mondo Zax in his Lab |q Moving Targets##6994/2
	step
		.'Click _Cerebral Rehabilitator_ controls |goto DominionArkShipTutorialCryogenics 711,-916,87
		.' Activate the Cerebral Rehabilitator Alpha Controls |q Moving Targets##6994/3
	step
		.' Go to the back of lab:  |goto DominionArkShipTutorialCryogenics 613,-929,85 < 10 |c |q 6994/4
	step
		' Kill 3 Unfortunate Citizens
		.' _Destroy Unfortunate Citizens_ |q Moving Targets##6994/4
	step  
		.' Teleport to Subdeck 77 |q Moving Targets##6994/5 |goto DominionArkShipTutorialCryogenics 564,-954,85
	step
		.talk Kezrek Warbringer##262763 |goto DominionArkShipTutorialCryogenics -907,-1132,-33
		..turnin Moving Targets##6994
		..accept Misplaced Mordesh##7013
	step
		.' _Enter_ the Mordesh Observation room |q Misplaced Mordesh##7013/1 |goto DominionArkShipTutorialCryogenics -859,-1072,-32
	step
		.talk Chief Orderly
		.' Talk to the Chief Orderly |q Misplaced Mordesh##7013/2 |tip This will start a holdout |goto DominionArkShipTutorialCryogenics -794,-1011,-38
	step
		.'Defend the Containment Warden from prisoners |q Misplaced Mordesh##7013/3
	step
		.talk Kezrek Warbringer##262763 |goto DominionArkShipTutorialCryogenics -929,-1131,-33
		..turnin Misplaced Mordesh##7013
		..accept Burning Trees, Busting Skulls##7017
	step
		.' _Enter_ the Aurin Observation room |q Burning Trees, Busting Skulls##7017/1 |goto DominionArkShipTutorialCryogenics -976,-1075,-32
	step
		.click Sapling##1021301
		.' Incinerate 2 Saplings with your flamethrower |q Burning Trees, Busting Skulls##7017/2 |goto DominionArkShipTutorialCryogenics -1007,-1030,-35
	step
		.' Press _C_ to use your Communicator:
		..turnin Burning Trees, Busting Skulls##7017
		..accept Seizing the Saboteur##7018
	step
		.' _Enter_ the Arkship Intellicore |q Seizing the Saboteur##7018/1 |goto DominionArkShipTutorialCryogenics -862,-1197,-32
	step
		' Kill Psi-Armorer Jaillyn Sweetspur
		.' _Defeat Psi-Armorer Jaillyn Sweetspur_ |q Seizing the Saboteur##7018/2 |goto DominionArkShipTutorialCryogenics -809,-1251,-37
	step
		.click Jaillyn Sweetspur
		.' _Secure the prisoner Jaillyn Sweetspur_ |q Seizing the Saboteur##7018/3 |goto DominionArkShipTutorialCryogenics -810,-1258,-37
	step
		.' Take teleport to Alexis Pheydra |goto DominionArkShipTutorialCryogenics -786,-1215,-37
		.talk Alexis Pheydra
		.' _Escort Jaillyn Sweetspur to Alexis Pheydra_ |q Seizing the Saboteur##7018/4 |goto DominionArkShipTutorialCryogenics -1569,-1234,-37
	step
		.' _Enter_ the Emperor's Sanctum |q Seizing the Saboteur##7018/5 |goto DominionArkShipTutorialCryogenics -1569,-1112,240
	step
		.talk Axis Pheydra##1020793 |goto DominionArkShipTutorialCryogenics -1566,-1099,242
		..turnin Seizing the Saboteur##7018
		..accept Ready for the Big Time##7057
	step
		.' Take a teleporter to the Departures Terminal |q Ready for the Big Time##7057/1 |goto DominionArkShipTutorialCryogenics -1547,-1096,240
	step
		.' _Talk to Artemis Zin_ |q Ready for the Big Time##7057/2 |goto DominionArkShipTutorialCryogenics -750,768,81
	step
		.' _Talk to Chancellor Juro Takigurian_ |q Ready for the Big Time##7057/3 |goto DominionArkShipTutorialCryogenics -745,684,81
	step
		.' _Enter_ the Departures room |goto DominionArkShipTutorialCryogenics -718,695,82 <3 |q 7057/4 |c
	step
		.'You can choose your next destination:
		.' Click here to continue to _Crimson Isle_ |nextguide Dominion\\Crimson Isle (3-6)
		.' Click here to continue to _Levian Bay_ |nextguide Dominion\\Levian Bay (3-6)
	]]
)
