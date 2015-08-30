if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Crimson Isle (3-6)",
	{
	faction="Dominion",
	startlevel=3,
	endlevel=6,
	nextguide="Dominion\\Deradune (6-15)",
	image="ZygorUIGuides:CrimsonIsle", 
	description="The Crimson Isle is a flat island currently under investigation by The Dominion. It is the primary starting place for Draken and Chua. It is suited for characters level 3-6."
	},
	[[
//DRAKEN breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Savage Coast##262429 |goto DominionArkShipTutorialCryogenics -690,958,81
		.' Travel to Nexus - Crimson Isle |q Savage Coast Savagery##7060/2
		|only Draken
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Scout Naharra##262269 |goto CrimsonIsle -7663,46,-993
		..turnin Savage Coast Savagery##7060
		..accept Welcome to Crimson Isle##9134
		|only Draken
	step
		.talk Drezkar the Gorefang##262280 |goto CrimsonIsle -7661,14,-992
		..turnin Welcome to Crimson Isle##9134
		..accept Blood in the Sand##5595
		'Tutorial skippers, click _>_ after obtaining the quest
		|only Draken
	step
		' Around the area: |goto CrimsonIsle -7629,-36,-987
		.' Disarm Exile Mines |q Blood in the Sand##5595/1
		.' Kill Scrab Striker |q Blood in the Sand##5595/2
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Blood in the Sand##5595
		..accept Seizing Power##5575
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..accept Stasis, Interrupted##8856 |goto CrimsonIsle -7676,-249,-960
		|only Draken
	step
		.click Power Regulator##262805 |goto CrimsonIsle -7742,-325,-948
		.' Disable the Power Regulators |q Seizing Power##5575/2 |count 33
	step
		.click Power Regulator##263134 |goto CrimsonIsle -7835,-373,-945
		.' Disable the Power Regulators |q Seizing Power##5575/2 |count 66
	step
		.click Power Regulator##262872 |goto CrimsonIsle -7709,-400,-944
		.' Disable the Power Regulators |q Seizing Power##5575/2
		|only Draken
	step
		.' _Jump_ through the suspended soldiers |goto CrimsonIsle -7852,-349,-948
		.' Free Dominion Soldiers |q Stasis, Interrupted##8856/1
		.' Kill Megatech Battlebots |q Stasis, Interrupted##8856/2
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..turnin Seizing Power##5575
		..turnin Stasis, Interrupted##8856
		|only Draken
	step
		'Press _C_ to open your Communitcator:
		..accept Introduction to the Zax##7036
		..turnin Introduction to the Zax##7036
		..accept Forward March##5814
		|only Draken
//CHUA breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Mondo's Beachhead##265961 |goto DominionArkShipTutorialCryogenics -691,841,81
		.' Travel to Nexus - Crimson Isle |q Mondo's Beachhead##7059/2
		|only Chua
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Engineer Zric##262270 |goto CrimsonIsle -8256,-241,-995
		..turnin Mondo's Beachhead##7059
		..accept Welcome to Crimson Isle##9132
		|only Chua

//HUMAN breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Mondo's Beachhead##262433 |goto DominionArkShipTutorialCryogenics -691,841,81
		.' Travel to Nexus - Crimson Isle |q Called to Stormcaller Landing##7057/3
		|only Human
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Lieutenant Ticus##262272 |goto CrimsonIsle -8256,-241,-995
		..turnin Called to Stormcaller Landing##7057
		..accept Welcome to Crimson Isle##9127
		|only Human

//MECHARI breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Mondo's Beachhead##262433 |goto DominionArkShipTutorialCryogenics -691,841,81
		.' Travel to Nexus - Crimson Isle |q Jagged Cove##7058/3
		|only Mechari
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Agent Infivan##262271 |goto CrimsonIsle -8257,-241,-995
		..turnin Jagged Cove##7058
		..accept Welcome to Crimson Isle##9131
		|only Mechari

//SHARED by CHUA, HUMAN, MECHARI
	step
		.talk Mondo Zax##262276 |goto CrimsonIsle -8231,-231,-994
		..turnin Welcome to Crimson Isle##9132 |only Chua
		..turnin Welcome to Crimson Isle##9127 |only Human
		..turnin Welcome to Crimson Isle##9131 |only Mechari
		..accept Mind the Mines, Scrap the Scrab##5593
		'Tutorial skippers, click _>_ after obtaining the quest
		|only Chua, Human, Mechari
	step
		' Around the area: |goto CrimsonIsle -8183,-172,-998
		.' Disarm Exile Mines |q Mind the Mines, Scrap the Scrab##5593/1
		.' Kill Scrab Strikers |q Mind the Mines, Scrap the Scrab##5593/2
		|only Chua, Human, Mechari
	step
		'Press _C_ to open your Communitcator:
		..turnin Mind the Mines, Scrap the Scrab##5593
		..accept Powering Down##5573
		|only Chua, Human, Mechari
	step
		'Press _C_ to open your Communitcator:
		..accept Stasis, Interrupted##8855 |goto CrimsonIsle CrimsonIsle -7898,-307,-957
		|only Chua, Human, Mechari
	step
		.' _Jump_ through the suspended soldiers |goto CrimsonIsle -7854,-348,-948
		.' Free Dominion Soldiers |q Stasis, Interrupted##8855/1
		.' Kill Megatech Battlebots |q Stasis, Interrupted##8855/2
		|only Chua, Human, Mechari
	step
		.click Power Regulator##262805 |goto CrimsonIsle -7835,-373,-945
		.' Disable the Power Regulators |q Powering Down##5573/2 |count 33
	step
		.click Power Regulator##263134 |goto CrimsonIsle -7743,-325,-948
		.' Disable the Power Regulators |q Powering Down##5573/2 |count 66
	step
		.click Power Regulator##262872 |goto CrimsonIsle -7709,-400,-944
		.' Disable the Power Regulators |q Powering Down##5573/2
		|only Chua, Human, Mechari
	step
		'Press _C_ to open your Communitcator:
		..turnin Powering Down##5573
		..turnin Stasis, Interrupted##8855
		..accept Forward March##5814
		|only Chua, Human, Mechari

//ALL RACE CONTINUES CRIMSON ISLE
	step
		.click Strange Dirt Pile##263281 |goto CrimsonIsle -7663,-452,-942 < 5
		..accept Spatial Anomaly##5684
	step
		.' _Run into_ the Green Glowing Orb |goto CrimsonIsle -7709,-508,-932 < 5 |tip This will enable you to jump very high. |c |q 5684
	step
		.' _Jump up_ the rocks to this point |goto CrimsonIsle -7690,-602,-864 < 10 |c |q 5684
	step
		.talk Researcher Zum##263279 |goto CrimsonIsle -7690,-602,-864
		..turnin Spatial Anomaly##5684
	step
		.talk Mondo Zax##262281 |goto CrimsonIsle -7667,-673,-943
		..turnin Forward March##5814
		..accept Ordnance Recovery##5596
	step
		.' Find the blimp crash site|q Ordinance Recovery##5596/1 |goto CrimsonIsle -7412,-668,-996
	step
		.talk Arachnologist Borango##262296 |goto CrimsonIsle -7343,-628,-996
		..accept Venomous Intent##5584
	step
		.click Trapped Assistant##264034 |tip Look like people wrapped in silk
		.' Rescue the Trapped Assistants |q Venomous Intent##5584/1 |goto CrimsonIsle -7362,-473,-989
		.kill Venombite Spider##265440+ 
		.' Collect Venombite Fangs |q Venomous Intent##5584/2
	step
		.kill 1 Venombite Spider Queen##340773 |goto CrimsonIsle -7277,-446,-992
		.collect 1 Spider Queen's Mandibles##14241
		.' Use the Spider Queen's Mandible in your inventory |use Spider Queen's Mandibles##14241
		..accept The Royal Maw##5728
	step
		.talk Arachnologist Borango##262296 |goto CrimsonIsle -7339,-626,-995
		..turnin Venomous Intent##5584
		..turnin The Royal Maw##5728
	step
		.click Dominion Demolitions Expert##263321 
		.' Search for Dead Dominion Demolitions Experts |q Ordnance Recovery##5596/2 |goto CrimsonIsle -7329,-680,-990
	step
		'Press _C_ to open your Communitcator:
		..turnin Ordnance Recovery##5596
		..accept Dregs and Thieves##5597
	step
		.talk Roasting Chua##263295 |goto CrimsonIsle -7098,-876,-993
		..accept Fire and Brimstone##5609
	step
		'Around the area, click _Explosives_ and _Tents_: |goto CrimsonIsle -7281,-861,-992
		.' Retrieve Chua Explosives |q Dregs and Thieves##5597/1
		.' Burn Dreg Tents |q Fire and Brimstone##5609/1
		.' Kill Scarhide Dreg Forces |q Fire and Brimstone##5609/2
	step
		'Press _C_ to open your Communitcator:
		..turnin Dregs and Thieves##5597	
		..turnin Fire and Brimstone##5609
		..accept Tactical Demolitions##5604
	step
		.click Bloated Oxian Corpse##263264 |goto CrimsonIsle -7476,-842,-985
		..accept It Smells Worse on the Inside##6232
	step
		.kill 1 Dreg Abomination##289616 |goto CrimsonIsle -7509,-806,-978
		.collect Abomination's Skull##14007
		.' Use the Abomination's Skull |use Abomination's Skull##14007
		..accept Dreg Mutations##5610
	step
		.talk Mondo Zax##262288 |goto CrimsonIsle -7489,-830,-981
		..turnin Dreg Mutations##5610
	step
		.' Follow this _road up_ the hill |goto CrimsonIsle -7317,-1132,-973 < 10 |c |q 5604/1
	step
		.' _Continue up_ the wooden ramp |goto CrimsonIsle -7383,-1108,-945 < 5 |c |q 5604/1
	step
		.click Exile Anti-Air Cannon##263442 |goto CrimsonIsle -7349,-1085,-937
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions##5604/1 |count 33
	step
		.click Exile Anti-Air Cannon##263442 |goto CrimsonIsle -7442,-1077,-955
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions##5604/1 |count 66
	step
		.' _Go up_ the wooden ramp |goto CrimsonIsle -7404,-1155,-948 < 5 |c |q 5604/1
	step
		.click Exile Anti-Air Cannon##263307 |goto CrimsonIsle -7380,-1147,-932
		.' Destroy the Exile Anti-Air Cannon |q Tactical Demolitions##5604/1
	step
		'Press _C_ to open your Communitcator:
		..turnin Tactical Demolitions##5604
		..accept Moving Up##5623
	step
		.'_Jump down_ here | goto CrimsonIsle -7392,-1176,-932 < 5 |c |q 5623
	step
		.click Megatech Tactical Interface##263355 |goto CrimsonIsle -7404,-1188,-952
		..accept Data Grab##5582
	step
		.click Megatech Terminal##263341 |goto CrimsonIsle -7502,-1164,-953
		.' Access Megatech Terminal |q Data Grab##5582/1 |count 50
	step
		.click Megatech Terminal##263374 |goto CrimsonIsle -7469,-1259,-954
		.' Access Megatech Terminal |q Data Grab##5582/1
	step
		'Press _C_ to open your Communitcator:
		..turnin Data Grab##5582
	step
		.talk Mondo Zax##262292 |goto CrimsonIsle -7583,-1292,-954
		..turnin Moving Up##5623
	step
		.talk Kezrek Warbringer##262291 |goto CrimsonIsle -7585,-1299,-954
		..accept Enforced Radio Silence##5580
		..accept Heavy Armor##5583
	step
		.' Follow the _ramp up_ |goto CrimsonIsle -7616,-1368,-954 |c |q 5580/1
	step
		.' Sabotage the Tower Controls |q Enforced Radio Silence##5580/1 |count 50 |goto CrimsonIsle -7597,-1357,-942
	step
		.click Vindicator Tank##299901 |goto CrimsonIsle -7647,-1387,-956
		.' Sabotage Exile Tanks |q Heavy Armor##5583/1 |count 50
	step
		.' Follow the _big ramp up_ |goto CrimsonIsle -7709,-1391,-948 < 10 |c |q 5580/1
	step
		.' Sabotage the Tower Controls |q Enforced Radio Silence##5580/1 |goto CrimsonIsle -7701,-1412,-934
	step
		'Press _C_ to open your Communitcator:
		..turnin Enforced Radio Silence##5580
	step
		.click Hellfire Tank##303587 |goto CrimsonIsle -7768,-1341,-951
		.' Sabotage Exile Tanks |q Heavy Armor##5583/1
	step
		' Kill _Megatech Scientist_, _Gunner_, and _Trooper_
		.' Kill Megatech Troopers and Bots |q Heavy Armor##5583/2 |goto CrimsonIsle -7750,-1345,-951
	step
		'Press _C_ to open your Communitcator:
		..turnin Heavy Armor##5583
		..accept Last Resistance##5594
	step
		'_Go up_ the ramp |goto CrimsonIsle -7832,-1430,-942 < 10 |c |q 5594/1
	step
		.click Warbot Fuel##304277 |goto CrimsonIsle -7956,-1349,-941
		' Fight waves of enemies and Warbot
		.' Sabotage the Warbot Fuel and Kill Megatech Warbot |q Last Resistance##5594/1
	step
		.click Control Panel##263441 
		.' Activate the Control Panel |q Last Resistance##5594/2 |goto CrimsonIsle -7990,-1361,-935 < 5
	step
		.click Ship Controls##263440
		'Click _Yes_ to launch the transport to Deradune
		.' Launch the Transport Ship |q Last Resistance##5594/3 |goto CrimsonIsle -8023,-1275,-921
	]]
)