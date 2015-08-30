ZGV:RegisterGuide("Dominion\\The Destiny (1-3)",
	{
	faction="Dominion",
	startlevel=1,
	endlevel=3,
	nextguide="Dominion\\Crimson Isle (3-6)",
	image="ZygorUIGuides:TheDestiny", 
	description="The Destiny is the Dominion Ark Ship starting area, where players begin their adventure through Nexus. It is suited for characters level 1-3."
	},
	[[
	step
		.talk Axis Pheydra##937722 |goto DominionArkShipTutorialCryogenics 769,16,80
		..accept Rise and Shine##6992
	step
		.' _Enter_ the Scanner |q Rise and Shine##6992/1 |goto DominionArkShipTutorialCryogenics 769,-1,81
	step
		.' Choose _Yes_ ,_Yes_, then _No_
		.' Survivie the Cerebral Scan |q Rise and Shine##6992/2 |goto DominionArkShipTutorialCryogenics 769,-1,81
	step
		.' _Proceed_ to the highborn conditioning area |q Rise and Shine##6992/3 |goto DominionArkShipTutorialCryogenics 723,-64,72
	step
		.click Suspicious Citizen##937723
		.' Interrogate 5 Suspicious Citizens |q Rise and Shine##6992/4 |goto DominionArkShipTutorialCryogenics 678,-63,72
	step
		.talk Shifty Dominion Citizen##943081 |goto DominionArkShipTutorialCryogenics 688,-75,71
		.' Interrogate Shifty Dominion Citizen |q Rise and Shine##6992/5
	step
		.click Scan Console##262881 |goto DominionArkShipTutorialCryogenics 708,-77,71
		.' Scan Suspicious Citizen using the Scan Console |q Rise and Shine##6992/6
	step
		.talk Emperor Myrcalus##263494 |goto DominionArkShipTutorialCryogenics 769,-152,82
		..turnin Rise and Shine##6992
		..accept Dominion Devotion##6993
	step
		.' _Board_ the Tram |q Dominion Devotion##6993/1 |goto DominionArkShipTutorialCryogenics 799,-136,88
	step
		.' Go through the _yellow metal hallway_ |goto DominionArkShipTutorialCryogenics DominionArkShipTutorialCryogenics 753,-930,86 < 10 |c |q 6993/2
	step
		.talk Mondo Zax##262927 |goto DominionArkShipTutorialCryogenics 692,-929,87
		.' Talk to Mondo Zax in his Lab |q Dominion Devotion##6993/2
	step
		.click Cerebral Rehabilitator Alpha Controls##262929 |goto DominionArkShipTutorialCryogenics 684,-942,87
		.' Activate the Cerebral Rehabilitator Alpha Controls |q Dominion Devotion##6993/3
	step
		.click Cerebral Rehabilitator Beta Controls##262931 |goto DominionArkShipTutorialCryogenics 711,-942,87
		.' Activate the Cerebral Rehabilitator Beta Controls |q Dominion Devotion##6993/4
	step
		.click Cerebral Rehabilitator Gamma Controls##263517 |goto DominionArkShipTutorialCryogenics 711,-916,87
		.' Activate the Cerebral Rehabilitator Gamma Controls |q Dominion Devotion##6993/5
	step
		.talk Mondo Zax##263518 |goto DominionArkShipTutorialCryogenics 692,-929,87
		..turnin Dominion Devotion##6993
		..accept Moving Targets##6994
	step
		.talk Minion Togor##262905 |goto DominionArkShipTutorialCryogenics 684,-924,86
		.' Talk to Minion Togor to receive your weapon |q Moving Targets##6994/1
	step
		.' Press _I_ to open your Inventory:
		.' Equip your new weapon |q Moving Targets##6994/2
	step
		.' Go past the lab traps:  |goto DominionArkShipTutorialCryogenics 613,-929,85 < 10 |c |q 6994/3
	step
		.' _Kill Dominion Monstrosity_ |q Moving Targets##6994/3
		.' Collect Tissue Samples from Dominion Monstrosities |q Moving Targets##6994/4
	step
		.click Chum Bucket##263506  |goto DominionArkShipTutorialCryogenics 703,-941,85
		.' Place the Tissue Samples in the Chum Bucket |q Moving Targets##6994/5
	step
		.talk Emperor Myrcalus##263516 |goto DominionArkShipTutorialCryogenics 798,-930,90
		..turnin Moving Targets##6994
		..accept Purity Shall Prevail##7010
	step
		'Press _C_ to use your Communicator:
		..accept The Settlement Authority##8931 |goto DominionArkShipTutorialCryogenics 801,-967,86
		|only Settler
	step
		.' _Enter_ the Cathedral of Light |q Purity Shall Prevail##7010/1 |goto DominionArkShipTutorialCryogenics 798,-1003,86
	step
		.talk Toric Antevian##262812 |goto DominionArkShipTutorialCryogenics 801,-1000,86
		..turnin Purity Shall Prevail##7010
		..accept Ever Vigilant##7007
	step
		.talk Calidor Antevian##262811 |q Ever Vigilant##7007/1 |goto DominionArkShipTutorialCryogenics 804,-1019,86
	step
		.talk Varonia Cazalon##973290 |goto DominionArkShipTutorialCryogenics 802,-1031,88
		.' Receive the blessing of Dominus |q Ever Vigilant##7007/2
	step
		.talk Settler Decima##262490 |goto DominionArkShipTutorialCryogenics 835,-1019,87
		..turnin The Settlement Authority##8931
		.' Start EXPANSION: Songs of Worship (optional) |startmission EXPANSION: Songs of Worship##1825
		|only Settler
	step
		' Talk to _Vigilant Congregant_ or click _Participation Card_
		.' Collect 4 Cards |tradeget 4 Participation Card##33263 |goto DominionArkShipTutorialCryogenics 826,-1042,86 |mission 1825
		|only Settler
	step
		.click Cathedral of Light - Settler Depot##262600 |tip This is where you build Expansions.  In this case will add a buff table behind you
		.' Click the Vigilant Choir to add time |mission EXPANSION: Songs of Worship##1825 |goto DominionArkShipTutorialCryogenics 792,-1050,87
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
		'Press _C_ to use your Communicator:
		..accept The Royal Collegium##8929 |goto DominionArkShipTutorialCryogenics 801,-968,86
		|only Scientist
	step
		.talk Emperor Myrcalus##263516 |goto DominionArkShipTutorialCryogenics 802,-933,91
		..turnin Ever Vigilant##7007
		..accept The Imperial Museum##7008
	step
		.talk Explorer Grubozz##262456 |goto DominionArkShipTutorialCryogenics 824,-956,86
		..turnin The Exploration Society##8930
		|only Explorer
	step
		.talk Soldier Akisa##262616 |goto DominionArkShipTutorialCryogenics 834,-913,86
		..turnin The Dominion Legions##8928
		|only Soldier
	step
		.talk Scientist Trinix##262441 |goto DominionArkShipTutorialCryogenics 857,-942,86
		..turnin The Royal Collegium##8929
		|only Scientist
	step
		.' _Stand on_ the Teleporter
		.' Take a Teleporter to the Imperial Museum |q The Imperial Museum##7008/1 |goto DominionArkShipTutorialCryogenics 878,-930,88
	step
		.talk Artemis Zin##263462 |goto DominionArkShipTutorialCryogenics -256,-25,-2
		..turnin The Imperial Museum##7008
		..accept Knowledge is Everywhere##7009
	step
		' _Run up_ the stairs |goto DominionArkShipTutorialCryogenics -281,-17,-1 < 10 |c |q 7009/1
	step
		'Click _Antevian Tribute Display_, press _G_ to:
		.' Scan _Antevian Tribute Display_ |mission ANALYSIS: Not-so-Humble Beginnings##3147 |count 25 |goto DominionArkShipTutorialCryogenics -303,-13,7
		|only Scientist
	step
		.' _Jump_ to the glass roof here |goto DominionArkShipTutorialCryogenics -308,-29,6 < 10 |c |q 7009/1
	step
		.click TALES: Embrace Your Destiny!##262815 |goto DominionArkShipTutorialCryogenics -310,-38,6
		.' Compile a collection of TALES FROM BEYOND THE FRINGE! |q Knowledge is Everywhere##7009/1 |count 1
	step
		.' _Jump_ to the platform |goto DominionArkShipTutorialCryogenics -288,-53,6 < 5
	step
		'Click _Zax Tribute Display_, press _G_ to:
		.' Scan _Zax Tribute Display_ |mission ANALYSIS: Not-so-Humble Beginnings##3147 |count 50 |goto DominionArkShipTutorialCryogenics -294,-65,7
		|only Scientist
	step
		.click TALES: Embrace Your Destiny!##262814 |goto DominionArkShipTutorialCryogenics -257,-108,6
		.' Compile a collection of TALES FROM BEYOND THE FRINGE! |q Knowledge is Everywhere##7009/1 |count 2
	step
		'Click _Kezrek Warbringer Display_, press _G_ to:
		.' Scan _Kezrek Warbringer Display_ |mission ANALYSIS: Not-so-Humble Beginnings##3147 |count 75 |goto DominionArkShipTutorialCryogenics -232,-106,7
		|only Scientist
	step
		.click Galactic Explorer's Handbook##262817 |goto DominionArkShipTutorialCryogenics -235,-77,6
		.' Find the Galactic Explorer's Handbook |q Knowledge is Everywhere##7009/2
	step
		'Click _Axis Pheydra Tribute Display_, press _G_ to:
		.' Scan _Axis Pheydra Tribute Display_ |mission ANALYSIS: Not-so-Humble Beginnings##3147 |goto DominionArkShipTutorialCryogenics -233,-64,7
		|only Scientist
	step
		'_Scientists_ can find hidden Datacubes and lore in the world |only Scientist
		.click DATACUBE: Data Dispersion##263461 |goto DominionArkShipTutorialCryogenics -255,-37,-1
		.' Inspect the Datacube |q Knowledge is Everywhere##7009/3
	step
		.talk Artemis Zin##263462 |goto DominionArkShipTutorialCryogenics -256,-26,-2
		..turnin Knowledge is Everywhere##7009
		..accept Broadcast Ready##7011
	step
		.talk Artemis Zin Groupie##262803 |goto DominionArkShipTutorialCryogenics -272,-31,-3
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/1 |count 25
	step
		.talk Artemis Zin Groupie##262802 |goto DominionArkShipTutorialCryogenics -268,-42,-4
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/1 |count 50
	step
		.talk Artemis Zin Groupie##262804 |goto DominionArkShipTutorialCryogenics -253,-45,-5
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/1 |count 75
	step
		.talk Artemis Zin Groupie##262801 |goto DominionArkShipTutorialCryogenics -241,-39,-2
		.' Speak with Artemis Zin Groupies |q Broadcast Ready##7011/1
	step
		.talk Cambot AR-2ms##992353 |goto DominionArkShipTutorialCryogenics -238,-74,-2
		.' Find Cambot AR-2ms |q Broadcast Ready##7011/3
	step
		.talk Cambot D-0c##988899 |goto DominionArkShipTutorialCryogenics -256,-55,-3
		.' Find Campbot D-0c |q Broadcast Ready##7011/2
	step
		.talk Cambot Z-1n##993337 |goto DominionArkShipTutorialCryogenics -290,-59,-2
		.' Find Cambot Z-1n |q Broadcast Ready##7011/4
	step
		'Press _C_ to open your Communitcator:
		..turnin Broadcast Ready##7011
		..accept Advanced Combat Training##7012
	step
		.' Take the teleporter to the Holochambers |q Advanced Combat Training##7012/1 |goto DominionArkShipTutorialCryogenics -257,5,-2
	step	
		'Press _I_ to open your Inventory:
		.' Right-click the new shield in your Inventory |q Advanced Combat Training##7012/2 |use 1 Shield of Fealty##8535
	step
		.talk Kezrek Warbringer##262763 |goto DominionArkShipTutorialCryogenics -907,-1140,-33
		..turnin Advanced Combat Training##7012
		..accept (Un)Safety Protocols##7013
	step
		.' _Enter_ the Granok Simulation training room |q (Un)Safety Protocols##7013/1 |goto DominionArkShipTutorialCryogenics -856,-1204,-32
	step
		'Click _Maintenance Switch_ to spawn a ramp |goto DominionArkShipTutorialCryogenics -838,-1208,-36
		.click Holochamber Surveillance Camera  |goto DominionArkShipTutorialCryogenics -813,-1194,-20
		.' Click _Holochamber Surveillance Camera_ |mission OPERATIONS: Eyes Ever Watching##3154 | count 1
		|only Explorer
	step
		' Kill 2 _Granok_ holograms
		.' Kill Greyneck Granok holograms |q (Un)Safety Protocols##7013/2 |goto DominionArkShipTutorialCryogenics -799,-1259,-37
	step
		'Click _Medical Refrigerator_, press _G_ to: |goto DominionArkShipTutorialCryogenics -304,-17,7
		.' Scan _Medical Refrigerator_ |mission ANALYSIS: Trust, but Verify##3150  |count 25 |goto DominionArkShipTutorialCryogenics -801,-1266,-36
		|only Scientist
	step
		.click Primal Fusion Device##262744 |goto DominionArkShipTutorialCryogenics -781,-1278,-31
		.' Arm the Primal Fusion Device |q (Un)Safety Protocols##7013/3 |tip Run away after you click to avoid damage.
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -853,-1206,-32 < 10
		.' Click _ASSASINATION: Avra Darkos (Soldier Mission)_ (optional)|tip These consoles will give you Soldier missions around the world |goto DominionArkShipTutorialCryogenics -944,-1156,-33
		.' _Enter_ the Mordesh Simulation training room |q (Un)Safety Protocols##7013/4 |goto DominionArkShipTutorialCryogenics -850,-1063,-32
		 |only Soldier
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -853,-1206,-32 < 10
		.' _Enter_ the Mordesh Simulation training room |q (Un)Safety Protocols##7013/4 |goto DominionArkShipTutorialCryogenics -850,-1063,-32
		|only Explorer, Scientist, Settler
	step
		'Click _Maintenance Switch_ to spawn a ramp |goto DominionArkShipTutorialCryogenics -839,-1067,-34
		.click Holochamber Surveillance Camera |goto DominionArkShipTutorialCryogenics -816,-1079,-26
		.' Click _Holochamber Surveillance Camera_ |mission OPERATIONS: Eyes Ever Watching##3154 | count 2
		|only Explorer
	step
		.click Failed Recruit##354358
		.' Collect Failed Trainee IDs from Failed Recruits |q (Un)Safety Protocols##7013/5 |goto DominionArkShipTutorialCryogenics -802,-1024,-40
	step
		'Click _"Fresh" Remains_, press _G_ to: |goto DominionArkShipTutorialCryogenics -805,-1049,-36
		.' Scan _"Fresh" Remains_ |mission ANALYSIS: Trust, but Verify##3150 |count 50 |goto DominionArkShipTutorialCryogenics -805,-1049,-36
		|only Scientist
	step
		.' Kill _Avra Darkos_ |mission ASSASSINATION: Avra Darkos##3144 |goto DominionArkShipTutorialCryogenics -868,-1006,-38
		|only Soldier
	step
		'Press _C_ to open your Communitcator:
		..turnin (Un)Safety Protocols##7013
		..accept Busting Skulls, Burning Trees##7017
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -853,-1067,-32 < 10 |c |q 7017/1
	step
		.' _Enter_ the Exile Simulation training room |q Busting Skulls, Burning Trees##7017/1 |goto DominionArkShipTutorialCryogenics -988,-1210,-32
	step
		.click Eviction Notice |goto DominionArkShipTutorialCryogenics -999,-1259,-33
		.' Evict Exile Bumpkins and Exile Yokels |q Busting Skulls, Burning Trees##7017/2 |count 50
	step
		'Click _Maintenance Switch_ to spawn a ramp |goto DominionArkShipTutorialCryogenics -1000,-1203,-36
		.click Holochamber Surveillance Camera |goto DominionArkShipTutorialCryogenics -1010,-1197,-25
		.' Click _Holochamber Surveillance Camera_ |mission OPERATIONS: Eyes Ever Watching##3154 | count 3
		|only Explorer
	step
		.click Eviction Notice |goto DominionArkShipTutorialCryogenics -1034,-1194,-38
		.' Evict Exile Bumpkins and Exile Yokels |q Busting Skulls, Burning Trees##7017/2
	step
		'Click _Speaker_, press _G_ to: |goto DominionArkShipTutorialCryogenics -1068,-1193,-33
		.' Scan _Speaker_ |mission ANALYSIS: Trust, but Verify##3150 |count 75 |goto DominionArkShipTutorialCryogenics -1068,-1193,-33
		|only Scientist
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -986,-1209,-32 < 10 |c |q 7017/3
	step
		.' Enter the Aurin Simulation training room |q Busting Skulls, Burning Trees##7017/3 |goto DominionArkShipTutorialCryogenics -988,-1064,-32
	step
		'Climb tree from here |goto DominionArkShipTutorialCryogenics -1028,-1026,-33
		.' Climb the tree in the Aurin Simulation Room |tip Click checkmark right to I'm Impressed |mission SURVEILLANCE: I'm Impressed##3153 |goto DominionArkShipTutorialCryogenics -1039,-1018,-11
		|only Explorer
	step
		'Click _Thumper_, press _G_ to: |goto DominionArkShipTutorialCryogenics -1024,-1040,-35
		.' Scan _Thumper_ |mission ANALYSIS: Trust, but Verify##3150 |goto DominionArkShipTutorialCryogenics -1024,-1040,-35
		|only Scientist
	step
		.click Sapling##1021301
		.' Incinerate 2 Saplings with your flamethrower |q Busting Skulls, Burning Trees##7017/4 |goto DominionArkShipTutorialCryogenics -1007,-1030,-35
	step
		.click RESCUE OP: Simulation Scientists |tip This is a holdout mission.  You have to defend position against waves of mobs. |goto DominionArkShipTutorialCryogenics -1070,-1039,-33
		.'Defend the Simulation Scientist while they gather samples |mission RESCUE OP: Simulation Scientists##3149 |goto DominionArkShipTutorialCryogenics -1070,-1043,-34
		|only Soldier
	step
		.' _Run out_ of the Simulator |goto DominionArkShipTutorialCryogenics -985,-1066,-32 < 10 |c |q 7017
	step
		.talk Kezrek Warbringer##262745 |goto DominionArkShipTutorialCryogenics -931,-1132,-33
		..turnin Busting Skulls, Burning Trees##7017
		..accept Breaking the Stonebreaker##7018
	step
		.' Collect 9 Triple-Arc Batteries
		.click Holochambers - Settler Depot##262600
		.' Add time to _Hologram Knockdown_ and _Run Boost_ |mission EXPANSION: Holochamber Haven##3164 |goto DominionArkShipTutorialCryogenics -902,-1154,-33
		|only Settler
	step
		.' Destroy the hologram of Commander Durek |q Breaking the Stonebreaker##7018/1 |goto DominionArkShipTutorialCryogenics -918,-834,-43
	step
		'Press _C_ to open your Communitcator:
		..turnin Breaking the Stonebreaker##7018
		..accept The Emperor##9051
	step
		.' Take a Teleporter to the Command Deck |q The Emperor##9051/1 |goto DominionArkShipTutorialCryogenics -918,-788,-36
	step
		.' _Enter_ the Emperor's Sanctum |q The Emperor##9051/2 |goto DominionArkShipTutorialCryogenics -1569,-1112,240
	step
		.talk Axis Pheydra##1020793 |goto DominionArkShipTutorialCryogenics -1564,-1095,242
		..turnin The Emperor##9051
		..accept Embarkation##7019
	step
		.' Take a teleporter to the Departures Terminal |q Embarkation##7019/1 |goto DominionArkShipTutorialCryogenics -1547,-1096,240
	step
		.talk Axis Pheydra##262658 |goto DominionArkShipTutorialCryogenics -756,768,81
		..turnin Embarkation##7019
		..accept Mysteries of the Eldan##9556 |only Mechari, Human
		..accept Mysteries of the Eldan##9557 |only Chua, Draken
//MECHARI - HUMAN
	step
		.talk Chancellor Juro Takigurian##262653 |goto DominionArkShipTutorialCryogenics -806,650,82
		.' Speak to the hologram of Chancellor Juro Takigurian |q Mysteries of the Eldan##9556/1
		|only Mechari, Human
	step
		.click Hologram Control Panel##262650 |goto DominionArkShipTutorialCryogenics -806,639,81
		.' Activate the Hologram Control Panel |q Mysteries of the Eldan##9556/2
		|only Mechari, Human
	step
		'Press _C_ to open your Communitcator:
		..turnin Mysteries of the Eldan##9556
		..accept Jagged Cove##7058 |only Mechari
		..accept Called to Stormcaller Landing##7057 |only Human
		|only Mechari, Human
	step
		.talk Agent Lex##262658 |goto DominionArkShipTutorialCryogenics -706,590,81
		.' Speak with Agent Lex |q Jagged Cove##7058/1
		|only Mechari
	step
		.talk Artemis Zin##262657 |goto DominionArkShipTutorialCryogenics -708,694,81
		.' Speak with Artemis Zin |q Called to Stormcaller Landing##7057/1
		|only Human
//CHUA - DRAKEN
	step
		.talk Chancellor Juro Takigurian##262653 |goto DominionArkShipTutorialCryogenics -809,886,82
		.' Speak to the hologram of Chancellor Juro Takigurian |q Mysteries of the Eldan##9557/1
		|only Chua, Draken
	step
		.click Hologram Control Panel##266177 |goto DominionArkShipTutorialCryogenics -809,898,81
		.' Activate the Hologram Control Panel |q Mysteries of the Eldan##9557/2
		|only Chua, Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Mysteries of the Eldan##9557
		..accept Mondo's Beachhead##7059 |only Chua
		..accept Savage Coast Savagery##7060 |only Draken
		|only Chua, Draken
	step
		.talk Mondo Zax##266184  |goto DominionArkShipTutorialCryogenics -704,840,81
		.' Speak with Mondo Zax |q Mondo's Beachhead##7059/1
		|only Chua
	step
		.talk Kezrek Warbringer##262655 |goto DominionArkShipTutorialCryogenics -704,945,81
		.' Speak with Kezrek Warbringer |q Savage Coast Savagery##7060/1
		|only Draken
	step
		.'You can choose your next destination:
		.' Click here to continue to _Crimson Isle_ |nextguide Dominion\\Crimson Isle (3-6)
		.' _Or_
		.' Click here to continue to _Levian Bay_ |nextguide Dominion\\Levian Bay (3-6)
	]]
)
