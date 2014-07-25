ZGV:RegisterGuide("Dominion\\Starting Area (1-3)",
	{
	faction="Dominion",
	startlevel=1,
	endlevel=3,
	nextguide="Dominion\\Crimson Isle (3-6)",
	image="ZygorUIGuides:TutorialExiles", 
	description="The Dominion Ark Ship starting area is where players begin their adventure through Nexus. It is suited for characters level 1-3. "
	},
	[[
	step
		.talk Axis Pheydra##937722
		..accept Rise and Shine##6992 |goto DominionArkShipTutorialCryogenics 769,16,80
	step
		.' _Enter_ the Scanner |q Rise and Shine##6992/Enter the scanner##1 |goto DominionArkShipTutorialCryogenics 769,-1,81
	step
		.' Choose _Yes_ you understand
		.' Choose _Yes_ you enjoy communing with nature
		.' Chose _No_ you do not find yourself craving brains 
		.' Survivie the Cerebral Scan |q Rise and Shine##6992/Survive the cerebral scan##2 |goto DominionArkShipTutorialCryogenics 769,-1,81
	step
		.' _Proceed_ to the highborn conditioning area |q Rise and Shine##6992/Proceed to the highborn conditioning area##3 |goto DominionArkShipTutorialCryogenics 723,-64,72
	step
		.click Suspicious Citizen##937723
		.' Interrogate 5 Suspicious Citizens |q Rise and Shine##6992/Interrogate Suspicious Citizens##4 |goto DominionArkShipTutorialCryogenics 678,-63,72
	step
		.talk Shifty Dominion Citizen##943081
		.' Interrogate Shifty Dominion Citizen |q Rise and Shine##6992/Interrogate Shifty Dominion Citizen##5 |goto DominionArkShipTutorialCryogenics 688,-75,71
	step
		.click Scan Console##262881
		.' Scan Suspicious Citizen using the Scan Console |q Rise and Shine##6992/Scan Suspicious Citizen using the Scan Console##6 |goto 708,-77,71
	step
		.talk Emperor Myrcalus##263494
		..turnin Rise and Shine##6992 |goto 769,-152,82
		..accept Dominion Devotion##6993 |goto 769,-152,82
	step
		.' _Board_ the Tram |q Dominion Devotion##6993/Board the tram##1 |goto 799,-136,88 
	step
		.' Go through the _yellow metal hallway_ |goto DominionArkShipTutorialCryogenics 753,-930,86 < 10
		.talk Mondo Zax##262927 |q Dominion Devotion##6993/Talk to Mondo Zax##2 |goto 692,-929,87
	step
		.click Cerebral Rehabilitator Alpha Controls##262929 
		.' Activate the Cerebral Rehabilitator Alpha Controls |q Dominion Devotion##6993/Activate the Cerebral Rehabilitator Alpha Controls##3 |goto 684,-942,87
	step
		.click Cerebral Rehabilitator Beta Controls##262931 
		.' Activate the Cerebral Rehabilitator Beta Controls |q Dominion Devotion##6993/Activate the Cerebral Rehabilitator Beta Controls##4 |goto 711,-942,87
	step
		.click Cerebral Rehabilitator Gamma Controls##263517
		.' Activate the Cerebral Rehabilitator Gamma Controls |q Dominion Devotion##6993/Activate the Cerebral Rehabilitator Gamma Controls##5 |goto 711,-916,87
	step
		.talk Mondo Zax##263518
		..turnin Dominion Devotion##6993 |goto 692,-929,87
		..accept Moving Targets##6994 |goto 692,-929,87
	step
		.talk Minion Togor##262905 
		.' Talk to Minion Togor to receive your weapon |q Moving Targets##6994/Talk to Minion Togor to receive your weapon##1 |goto 682,-923,85
		.' Press _I_ to open your Inventory:
		.' Equip your new weapon |q Moving Targets##6994/Equip your new weapon##2
	step
		.kill 1 Dominion Monstrosity##979002+ |q Moving Targets##6994/Attack a Dominion Monstrosity##3 |goto 613,-929,85
		.' Collect Tissue Samples from Dominion Monstrosities |q Moving Targets##6994/Collect Tissue Samples from Dominion Monstrosities##4
	step
		.click Chum Bucket##263506 
		.' Place the Tissue Samples in the Chum Bucket |q Moving Targets##6994/Place the Tissue Samples in the Chum Bucket##5 |goto 703,-941,85
	step
		.talk Emperor Myrcalus##263516
		..turnin Moving Targets##6994 |goto DominionArkShipTutorialCryogenics 798,-930,90
		..accept Purity Shall Prevail##7010 |goto DominionArkShipTutorialCryogenics 798,-930,90
	step
		'Press _C_ to use your Communicator:
		..accept The Settlement Authority##8931 |goto DominionArkShipTutorialCryogenics 801,-967,86
		|only Settler
	step
		.' _Enter_ the Cathedral of Light |q Purity Shall Prevail##7010/1 |goto DominionArkShipTutorialCryogenics 798,-1003,86
	step
		.talk Toric Antevian##262812
		..turnin Purity Shall Prevail##7010 |goto DominionArkShipTutorialCryogenics 798,-1003,86
		..accept Ever Vigilant##7007 |goto DominionArkShipTutorialCryogenics 798,-1003,86
	step
		.talk Calidor Antevian##262811 |q Ever Vigilant##7007/Talk to Calidor Antevian##1 |goto 805,-1022,86
	step
		.click Orb of Purity##262807 
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/Kneel before the shrine of each virtue##2 |count 1 |goto 778,-1011,87
		.click Sword of Strength##262809 
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/Kneel before the shrine of each virtue##2 |count 2 |goto 823,-1011,88
		.click Flowers of Devotion##262805 
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/Kneel before the shrine of each virtue##2 |count 3 |goto 833,-1034,87
	step
		.click Chalice of Courage##262810
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/Kneel before the shrine of each virtue##2 |count 4 |goto 826,-1058,88
		.click Tome of Knowledge##262806 
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/Kneel before the shrine of each virtue##2 |count 5 |goto 778,-1059,89
		.click Judgment of Justice##262808
		.' Kneel before the shrine of each virtue |q Ever Vigilant##7007/2 |goto DominionArkShipTutorialCryogenics 770,-1034,87
	step
		.talk Varonia Cazalon##973290 
		.' Receive the blessing of Dominus |q Ever Vigilant##7007/Receive the blessing of Dominus##3 |goto 800,-1033,88
	step
		.talk Settler Decima##262490
		..turnin The Settlement Authority##8931 |goto DominionArkShipTutorialCryogenics 835,-1019,87
		|only Settler
	step
		'Press _C_ to use your Communicator:
		..accept The Dominion Legions##8928 |goto DominionArkShipTutorialCryogenics 802,-974,86
		|only Soldier
	step
		'Press _C_ to use your Communicator:
		..accept The Exploration Society##8930 |goto DominionArkShipTutorialCryogenics 801,-977,86
		|only Explorer
	step
		.talk Explorer Grubozz##262456
		..turnin The Exploration Society##8930 |goto DominionArkShipTutorialCryogenics 823,-958,86
		|only Explorer
	step
		'Press _C_ to use your Communicator:
		..accept The Royal Collegium##8929 |goto DominionArkShipTutorialCryogenics 801,-968,86
		|only Scientist
	step
		.talk Emperor Myrcalus##263516
		..turnin Ever Vigilant##7007
		..accept The Imperial Museum##7008 |goto DominionArkShipTutorialCryogenics 801,-932,91
	step
		.talk Soldier Akisa##262616
		..turnin The Dominion Legions##8928 |goto DominionArkShipTutorialCryogenics 834,-913,86
		|only Soldier
	step
		.talk Scientist Trinix##262441
		..turnin The Royal Collegium##8929 |goto DominionArkShipTutorialCryogenics 860,-943,86
		|only Scientist
	step
		.' _Stand on_ the Teleporter
		.' Take a Teleporter to the Imperial Museum |q The Imperial Museum##7008/Take a teleporter to the Imperial Museum##1 |goto 878,-930,88
	step
		.talk Artemis Zin##263462
		..turnin The Imperial Museum##7008 |goto DominionArkShipTutorialCryogenics -256,-25,-2
		..accept Knowledge is Everywhere##7009 |goto DominionArkShipTutorialCryogenics -256,-25,-2
	step
		.' _Run up_ the stairs |goto -281,-17,-1 < 5
		.' _Jump_ to the glass roof here |goto -308,-29,6 < 5
		.click TALES: Embrace Your Destiny!##262815
		.' Compile a collection of TALES FROM BEYOND THE FRINGE! |q Knowledge is Everywhere##7009/Compile a collection of TALES FROM BEYOND THE FRINGE!##1 |count 25 |goto -310,-38,6
	step
		.' _Jump_ to the platform |goto -288,-53,6 < 5
		.click TALES: Embrace Your Destiny!##262814
		.' Compile a collection of TALES FROM BEYOND THE FRINGE! |q Knowledge is Everywhere##7009/Compile a collection of TALES FROM BEYOND THE FRINGE!##1 |count 50 |goto -282,-89,7
	step
		.click TALES: Embrace Your Destiny!##262816 
		.' Compile a collection of TALES FROM BEYOND THE FRINGE! |q Knowledge is Everywhere##7009/Compile a collection of TALES FROM BEYOND THE FRINGE!##1 |count 75 |goto -257,-108,6
	step
		.click Galactic Explorer's Handbook##262817 
		.' Find the Galactic Explorer's Handbook |q Knowledge is Everywhere##7009/Find the Galactic Explorer's Handbook##2 |goto -248,-109,6
	step
		.click DATACUBE: Data Dispersion##263461 
		.' Inspect the Datacube |q Knowledge is Everywhere##7009/Inspect the Datacube##3 |goto -257,-34,-2
	step
		.talk Artemis Zin##263462
		..turnin Knowledge is Everywhere##7009 |goto -256,-26,-2
		..accept Broadcast Ready##7011 |goto -256,-26,-2
	step
		.talk Artemis Zin Groupie##262803
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/Speak with Artemis Zin Groupies##1 |goto DominionArkShipTutorialCryogenics -272,-31,-3 |count 25
	step
		.talk Artemis Zin Groupie##262802
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/Speak with Artemis Zin Groupies##1 |count 50 |goto -268,-42,-4
	step
		.talk Artemis Zin Groupie##262804
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/Speak with Artemis Zin Groupies##1 |count 75 |goto -253,-45,-5
	step
		.talk Artemis Zin Groupie##262801
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/Speak with Artemis Zin Groupies##1 |goto -241,-39,-2
	step
		.talk Cambot AR-2ms##992353 
		.' Find Cambot AR-2ms |q Broadcast Ready##7011/Find Cambot AR-2ms##3 |goto -238,-74,-2
	step
		.talk Cambot D-0c##988899 
		.' Find Campbot D-0c |q Broadcast Ready##7011/Find Cambot D-0c##2 |goto -256,-55,-3
	step
		.talk Cambot Z-1n##993337
		.' Find Cambot Z-1n |q Broadcast Ready##7011/Find Cambot Z-1n##4 |goto -290,-59,-2
	step
		'Press _C_ to open your Communitcator:
		..turnin Broadcast Ready##7011
		..accept Advanced Combat Training##7012
	step
		.' Take the teleporter to the Holochambers |q Advanced Combat Training##7012/Take a teleporter to the Holochambers##1 |goto DominionArkShipTutorialCryogenics -257,5,-2
	step	
		'Press _I_ to open your Inventory:
		.' Equip the new shield in your Inventory |q Advanced Combat Training##7012/Right-click the new shield in your Inventory##2 |use 1 Shield of Fealty##8535
	step
		.talk Kezrek Warbringer##262763
		..turnin Advanced Combat Training##7012 |goto DominionArkShipTutorialCryogenics -906,-1137,-33
		..accept (Un)Safety Protocols##7013 |goto DominionArkShipTutorialCryogenics -906,-1137,-33
	step
		.' _Enter_ the Granok Simulation training room |q (Un)Safety Protocols##7013/Enter the Granok Simulation training room##1 |goto DominionArkShipTutorialCryogenics -856,-1204,-32
	step
		.kill Granok Officer##1008108+
		.kill Granok Grayneck##567862+
		.' Kill Greyneck Granok holograms |q (Un)Safety Protocols##7013/Kill Greyneck Granok holograms##2 |goto DominionArkShipTutorialCryogenics -799,-1259,-37
	step
		.click Primal Fusion Device##262744 
		.' Arm the Primal Fusion Device |q (Un)Safety Protocols##7013/Arm the Primal Fusion Device##3 |goto -781,-1278,-31 |tip After you click it, be sure to run out of the blast area to avoid damage.
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -853,-1206,-32 < 10
		.' _Enter_ the Mordesh Simulation training room |q (Un)Safety Protocols##7013/Enter the Mordesh Simulation training room##4 |goto DominionArkShipTutorialCryogenics -850,-1063,-32
	step
		.click Failed Recruit##354358
		.' Collect Failed Trainee IDs from Failed Recruits |q (Un)Safety Protocols##7013/Collect Failed Trainee IDs from Failed Recruits##5 |goto DominionArkShipTutorialCryogenics -802,-1024,-40
	step
		'Press _C_ to open your Communitcator:
		..turnin (Un)Safety Protocols##7013
		..accept Busting Skulls, Burning Trees##7017
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -853,-1067,-32 < 10
		.' _Enter_ the Exile Simulation training room |q Busting Skulls, Burning Trees##7017/Enter the Exile Simulation training room##1 |goto DominionArkShipTutorialCryogenics -988,-1210,-32
	step
		.click Eviction Notice##262700 
		.' Evict Exile Bumpkins and Exile Yokels |q Busting Skulls, Burning Trees##7017/Evict Exile Bumpkins and Exile Yokels##2 |count 33 |goto -1000,-1263,-33
		.click Eviction Notice##262704 
		.' Evict Exile Bumpkins and Exile Yokels |q Busting Skulls, Burning Trees##7017/Evict Exile Bumpkins and Exile Yokels##2 |count 66 |goto -1075,-1248,-34
		.click Eviction Notice##262703
		.' Evict Exile Bumpkins and Exile Yokels |q Busting Skulls, Burning Trees##7017/Evict Exile Bumpkins and Exile Yokels##2 |goto -1077,-1196,-34
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -986,-1209,-32 < 10
		.' Enter the Aurin Simulation training room |q Busting Skulls, Burning Trees##7017/Enter the Aurin Simulation training room##3 |goto DominionArkShipTutorialCryogenics -988,-1064,-32
	step
		.click Sapling##1021301 
		.' Incinerate 3 Saplings with your flamethrower |q Busting Skulls, Burning Trees##7017/Incinerate Saplings with your flamethrower##4 |goto -1007,-1030,-35
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -987,-1065,-32
		.talk Kezrek Warbringer##262745
		..turnin Busting Skulls, Burning Trees##7017 |goto DominionArkShipTutorialCryogenics -931,-1137,-33
		..accept Breaking the Stonebreaker##7018 |goto DominionArkShipTutorialCryogenics -931,-1137,-33
	step
		.kill 1 Commander Durek##1013988 
		.' Destroy the hologram of Commander Durek |q Breaking the Stonebreaker##7018/Destroy the hologram of Commander Durek##1 |goto -918,-834,-43
	step
		'Press _C_ to open your Communitcator:
		..turnin Breaking the Stonebreaker##7018
		..accept The Emperor##9051
	step
		.' Click _Yes_: You would like to teleport to the next area.
		.' Take a Teleporter to the Command Deck |q The Emperor##9051/Take a Teleporter to the Command Deck##1 |goto -919,-789,-36
	step
		.' _Enter_ the Emperor's Sanctum |q The Emperor##9051/Enter the Emperor's Sanctum##2 |goto DominionArkShipTutorialCryogenics -1569,-1112,240
	step
		.talk Axis Pheydra##1020793
		..turnin The Emperor##9051 |goto -1564,-1095,242
		..accept Embarkation##7019 |goto -1564,-1095,242
	step
		.' Take a teleporter to the Departures Terminal |q Embarkation##7019/Take a teleporter to the Departures Terminal##1 |goto -1547,-1096,240
	step
		.talk Axis Pheydra##262658
		..turnin Embarkation##7019 |goto DominionArkShipTutorialCryogenics -756,767,81
		..accept Mysteries of the Eldan##9556 |goto DominionArkShipTutorialCryogenics -756,767,81
]])
