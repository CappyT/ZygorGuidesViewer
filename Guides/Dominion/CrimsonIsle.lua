ZGV:RegisterGuide("Dominion\\Crimson Isle (3-6)",
	{
	faction="Dominion",
	startlevel=3,
	endlevel=6,
	nextguide="Dominion\\Deradune (6-15)",
	},
	[[
//HUMAN
	step
		.click Departures Terminal: Mondo's Beachhead##262433
		.' Travel to Nexus - Crimson Isle |q Called to Stormcaller Landing##7057/3 |goto DominionArkShipTutorialCryogenics -691,841,81
		|only Human
	step
		.talk Lieutenant Ticus##262272
		..turnin Called to Stormcaller Landing##7057 |goto CrimsonIsle -8256,-241,-995
		..accept Welcome to Crimson Isle##9127 |goto -8256,-241,-995
		|only Human
	step
		.talk Mondo Zax##262276
		..turnin Welcome to Crimson Isle##9127 |goto CrimsonIsle -8231,-231,-994
		|only Human

//DRAKEN
	step
		.click Departures Terminal: Savage Coast##262429
		.' Travel to Nexus - Crimson Isle |q Savage Coast Savagery##7060/2 |goto DominionArkShipTutorialCryogenics -690,958,81
	step
		.talk Scout Naharra##262269
		..turnin Savage Coast Savagery##7060 |goto CrimsonIsle -7663,46,-993
		..accept Welcome to Crimson Isle##9134 |goto CrimsonIsle -7663,46,-993
		|only Draken
	step
		.talk Drezkar the Gorefang##262280
		..turnin Welcome to Crimson Isle##9134 |goto -7661,14,-992
		..accept Blood in the Sand##5595 |goto -7661,14,-992
		|only Draken
	step
		.click Exile Mine##350392+ |tip They are all around the ground in this area.
		.' Disarm Exile Mines |q Blood in the Sand##5595/Disarm Exile Mines##1 |goto CrimsonIsle -7629,-36,-987
		.' Kill Scrab Striker |q Blood in the Sand##5595/Kill Scrab Strikers##2
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Blood in the Sand##5595
		..accept Seizing Power##5575
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..accept Stasis, Interrupted##8856 |goto -7676,-249,-960
		|only Draken
	step
		.click Megatech Battlebot##362868 
		.' Disable the Power Regulators |q Seizing Power##5575/Disable the Power Regulators##2 |count 33 |goto -7742,-325,-948
		.click Power Regulator##263134 
		.' Disable the Power Regulators |q Seizing Power##5575/Disable the Power Regulators##2 |count 66 |goto -7835,-373,-945
		.click Power Regulator##262872 
		.' Disable the Power Regulators |q Seizing Power##5575/Disable the Power Regulators##2 |goto -7709,-400,-944
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Seizing Power##5575
		|only Draken
	step
		'All around this area:
		.' Jump up through the suspended soldiers
		.' Free Dominion Soldiers |q Stasis, Interrupted##8856/Free Dominion Soldiers##1 |goto -7852,-349,-948
		.' Kill Megatech Battlebots |q Stasis, Interrupted##8856/Destroy Megatech Battlebots##2 |goto -7852,-349,-948
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Stasis, Interrupted##8856
		..accept Introduction to the Zax##7036
		..turnin Introduction to the Zax##7036
		..accept Forward March##5814
		|only Draken

//CHUA
	step
		.click Departures Terminal: Mondo's Beachhead##265961 
		.' Travel to Nexus - Crimson Isle |q Mondo's Beachhead##7059/Travel to Nexus - Crimson Isle##2 |goto DominionArkShipTutorialCryogenics -691,841,81
		|only Chua
	step
		.talk Engineer Zric##262270
		..turnin Mondo's Beachhead##7059 |goto -8256,-241,-995
		..accept Welcome to Crimson Isle##9132 |goto -8256,-241,-995
		|only Chua
	step
		.talk Mondo Zax##262276
		..turnin Welcome to Crimson Isle##9132 |goto CrimsonIsle -8231,-231,-994
		|only Chua
	step
		.talk Mondo Zax##262276
		..accept Mind the Mines, Scrap the Scrab##5593 |goto CrimsonIsle -8231,-232,-994
		|only Chua, Human
	step
		.click Exile Mine##356409+ |tip They are all around the ground in this area.
		.' Disarm Exile Mines |q Mind the Mines, Scrap the Scrab##5593/Disarm Exile Mines##1 |goto CrimsonIsle -8183,-172,-998
		.' Kill Scrab Strikers |q Mind the Mines, Scrap the Scrab##5593/2
		|only Chua, Human
	step
		'Press _C_ to open your Communitcator:
		..turnin Mind the Mines, Scrap the Scrab##5593
		..accept Powering Down##5573
		|only Chua, Human
	step
		'Press _C_ to open your Communitcator:
		..accept Stasis, Interrupted##8855 |goto CrimsonIsle -7898,-307,-957
		|only Chua, Human
	step
		'All around this area:
		.' _Jump up_ through the suspended soldiers
		.' Free Dominion Soldiers |q Stasis, Interrupted##8855/Free Dominion Soldiers##1 |goto -7854,-348,-948
		.' Kill Megatech Battlebots |q Stasis, Interrupted##8855/Destroy Megatech Battlebots##2
		|only Chua, Human
	step
		'Press _C_ to open your Communitcator:
		..turnin Stasis, Interrupted##8855
		|only Chua, Human
	step
		.click Power Regulator##262805 
		.' Disable the Power Regulators |q Powering Down##5573/Disable the Power Regulators##2 |count 33 |goto CrimsonIsle -7835,-373,-945
		.click Power Regulator##263134 
		.' Disable the Power Regulators |q Powering Down##5573/Disable the Power Regulators##2 |count 66 |goto CrimsonIsle -7743,-325,-948
		.click Power Regulator##262872 
		.' Disable the Power Regulators |q Powering Down##5573/Disable the Power Regulators##2 |goto CrimsonIsle -7709,-400,-944
		|only Chua, Human
//MECHARI
	step
		.talk Chancellor Juro Takigurian##262653 
		.' Speak to the hologram of Chancellor Juro Takigurian |q Mysteries of the Eldan##9556/Speak to the hologram of Chancellor Juro Takigurian##1 |goto DominionArkShipTutorialCryogenics -809,649,81
		|only Mechari
	step
		.click Hologram Control Panel##262650
		.' Activate the Hologram Control Panel |q Mysteries of the Eldan##9556/2 |goto DominionArkShipTutorialCryogenics -808,637,81
		|only Mechari
	step
		'Press _C_ to open your Communitcator:
		..turnin Mysteries of the Eldan##9556
		..accept Jagged Cove##7058
		|only Mechari
	step
		.talk Agent Lex##262658
		.' Speak with Agent Lex |q Jagged Cove##7058/1 |goto DominionArkShipTutorialCryogenics -706,590,81
		|only Mechari
	step
		.' _Go through_ the door |goto -754,713,81
		.' _Pass through_ the second door |goto -752,819,82
		.click Departures Terminal: Mondo's Beachhead##262432
		.' Click _Yes_ to travel to The Crimson Isle |q Jagged Cove##7058/3 |goto -691,840,81
		|only Mechari
	step
		.talk Agent Infivan##262271
		..turnin Jagged Cove##7058 |goto CrimsonIsle -8257,-241,-995
		..accept Welcome to Crimson Isle##9131 |goto -8257,-241,-995
		|only Mechari
	step
		.talk Mondo Zax##262276
		..turnin Welcome to Crimson Isle##9131 |goto -8232,-232,-994
		..accept Mind the Mines, Scrap the Scrab##5593 |goto -8232,-232,-994
		|only Mechari
	step
		.click Exile Mine##356409+ |tip They are all around the ground in this area.
		.' Disarm Exile Mines |q Mind the Mines, Scrap the Scrab##5593/Disarm Exile Mines##1 |goto -8183,-172,-998
		.' Kill Scrab Strikers |q Mind the Mines, Scrap the Scrab##5593/Kill Scrab Strikers##2
		|only Mechari
	step
		'Press _C_ to open your Communitcator:
		..turnin Mind the Mines, Scrap the Scrab##5593
		..accept Powering Down##5573

//ALL RACE CONTINUES CRIMSON ISLE
	step
		'Press _C_ to open your Communitcator:
		..turnin Powering Down##5573
		..accept Forward March##5814
	step
		.click Strange Dirt Pile##263281
		..accept Spatial Anomaly##5684 |goto CrimsonIsle -7663,-456,-942
	step
		.' _Run into_ the Green Glowing Orb |goto -7709,-508,-932 < 5
		|tip This will enable you to jump very high.
		.' _Jump up_ the rocks to this point |goto -7690,-602,-864 < 10
		.talk Researcher Zum##263279
		..turnin Spatial Anomaly ##5684 |goto -7690,-602,-864
	step
		.talk Mondo Zax##262281
		..turnin Forward March##5814 |goto CrimsonIsle -7666,-672,-943
		..accept Ordnance Recovery##5596 |goto CrimsonIsle -7666,-672,-943
	step
		.talk Arachnologist Borango##262296
		..accept Venomous Intent##5584 |goto CrimsonIsle -7343,-628,-996
	step
		.click Trapped Assistant##264034 |tip They look like people wrapped in spider silk, all around this area.
		.' Rescue the Trapped Assistants |q Venomous Intent##5584/Rescue the Trapped Assistants##1 |goto CrimsonIsle -7362,-473,-989
		.kill Venombite Spider##265440+ 
		.' Collect Venombite Fangs |q Venomous Intent##5584/Collect Venombite Fangs##2
	step
		.kill 1 Venombite Spider Queen##340773
		.collect 1 Spider Queen's Mandibles##14241
		.' Use the Spider Queen's Mandible in your inventory |use Spider Queen's Mandibles##14241
		..accept The Royal Maw##5728
	step
		.talk Arachnologist Borango##262296
		..turnin Venomous Intent##5584 |goto CrimsonIsle -7343,-628,-996
		..turnin The Royal Maw##5728 |goto CrimsonIsle -7343,-628,-996
	step
		.click Dominion Demolitions Expert##263321 
		.' Search for Dead Dominion Demolitions Experts |q Ordnance Recovery##5596/Search for Dead Dominion Demolitions Experts##2 |goto CrimsonIsle -7329,-680,-990
	step
		'Press _C_ to open your Communitcator:
		..turnin Ordnance Recovery##5596
		..accept Dregs and Thieves##5597
	step
		.talk Roasting Chua##263295
		..accept Fire and Brimstone##5609 |goto CrimsonIsle -7335,-890,-992
	step
		.kill Scarhide Chief##284781+
		.kill Scarhide Raider##285430+
		.kill Scarhide Farstriker##285251+
		.click Chua Explosives##267308 |tip They are in the rubble all around this area.
		.' Retrieve Chua Explosives |q Dregs and Thieves##5597/Retrieve Chua Explosives##1 |goto -7281,-861,-992
		.click Dreg Tent##263302
		.' Burn Dreg Tents |q Fire and Brimstone##5609/Burn Dreg Tents##1 |goto -7281,-861,-992
		.' Kill Scarhide Dreg Forces |q Fire and Brimstone##5609/2 |goto CrimsonIsle -7157,-874,-996
	step
		'Press _C_ to open your Communitcator:
		..turnin Dregs and Thieves##5597	
		..turnin Fire and Brimstone##5609
		..accept Tactical Demolitions ##5604
	step
		.click Bloated Oxian Corpse##263264
		.' Turn in It Smells Worse on the Inside |goto CrimsonIsle -7476,-842,-985
		|confirm
	step
		.kill 1 Dreg Abomination##289616
		.collect Abomination's Skull##14007
		.' Use the Abomination's Skull |use Abomination's Skull##14007
		..accept Dreg Mutations##5610 |goto -7509,-806,-978
	step
		.talk Mondo Zax##262288
		..turnin Dreg Mutations##5610 |goto -7489,-830,-981
	step
		.' Follow this _road up_ the hill |goto -7317,-1132,-973 < 10
		.' _Continue up_ the wooden ramp |goto -7383,-1108,-945 < 10
		.click Exile Anti-Air Cannon##263442 
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions ##5604/Destroy the Exile Anti-Air Cannons##1 |count 33 |goto -7349,-1085,-937
		.click Exile Anti-Air Cannon##263442 
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions ##5604/Destroy the Exile Anti-Air Cannons##1 |count 66 |goto -7442,-1077,-955
	step
		.' _Go up_ the wooden ramp |goto -7404,-1155,-948
		.click Exile Anti-Air Cannon##263307 
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions ##5604/Destroy the Exile Anti-Air Cannons##1 |goto -7380,-1147,-932
	step
		'Press _C_ to open your Communitcator:
		..turnin Tactical Demolitions ##5604
		..accept Moving Up##5623
	step
		.click Megatech Tactical Interface##263355
		..accept Data Grab##5582 |goto -7404,-1188,-952
	step
		.click Megatech Terminal##263374 
		.' Access Megatech Terminal |q Data Grab##5582/Access Megatech Terminals##1 |count 50 |goto -7469,-1259,-954
		.click Megatech Terminal##263341
		.' Access Megatech Terminal |q Data Grab##5582/Access Megatech Terminals##1 |goto -7502,-1164,-953
	step
		'Press _C_ to open your Communitcator:
		..turnin Data Grab##5582
	step
		.talk Mondo Zax##262292
		..turnin Moving Up##5623 |goto CrimsonIsle -7583,-1292,-954
	step
		.talk Kezrek Warbringer##262291
		..accept Enforced Radio Silence##5580 |goto -7588,-1301,-955
		..accept Heavy Armor##5583 |goto -7588,-1301,-955
	step
		.' Follow the _ramp up_ |goto -7616,-1368,-954
		.' Sabotage the Tower Controls |q Enforced Radio Silence##5580/Sabotage the Tower Controls##1 |count 50 |goto -7597,-1357,-942
	step
		.click Vindicator Tank##299901 
		.' Sabotage Exile Tanks |q Heavy Armor##5583/Sabotage Exile Tanks##1 |count 50 |goto -7647,-1387,-956
	step
		.' _Run up_ the ramp |goto CrimsonIsle -7709,-1391,-948
		.click Tower Controls##263470 
		.' Sabotage the Tower Controls |q Enforced Radio Silence##5580/Sabotage the Tower Controls##1 |goto -7701,-1412,-934
	step
		'Press _C_ to open your Communitcator:
		..turnin Enforced Radio Silence##5580
	step
		.click Hellfire Tank##303587 
		.' Sabotage Exile Tanks |q Heavy Armor##5583/Sabotage Exile Tanks##1 |goto -7768,-1341,-951
	step
		.kill Megatech Scientist##337342+
		.kill Megatech Gunner##337343+
		.' Kill Megatech Troopers and Bots |q Heavy Armor##5583/2 |goto CrimsonIsle -7750,-1345,-951
	step
		'Press _C_ to open your Communitcator:
		..turnin Heavy Armor##5583
		..accept Last Resistance##5594
	step
		'_Go up_ the ramp |goto CrimsonIsle -7832,-1430,-942
		.click Warbot Fuel##304277 
		.' Stay here and fight the waves of enemies
		.' Sabotage the Warbot Fuel and Kill Megatech Warbot |q Last Resistance##5594/Sabotage the Warbot Fuel and Kill Megatech Warbot##1 |goto CrimsonIsle -7958,-1348,-942
	step
		.click Control Panel##263441 
		.' Activate the Control Panel |q Last Resistance##5594/Activate the Control Panel##2 |goto -7992,-1363,-936
	step
		.click Ship Controls##263440 
		.' Launch the Transport Ship |q Last Resistance##5594/Launch the Transport Ship##3 |goto -8023,-1275,-921
]])
