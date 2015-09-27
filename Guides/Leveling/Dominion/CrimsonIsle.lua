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
	step
		.click Departures Terminal: Crimson Isle |goto DominionArkShipTutorialCryogenics -702,689,81
		.' Choose Crimson Isle as Nexus landing point |q Ready for the Big Time##7057/4
		|only if havequest(7057) // will not show for players who skipped arkship
	step
		.talk Lieutenant Ticus##262272 |goto CrimsonIsle -8256,-241,-995
		..turnin Ready for the Big Time##7057 
		..accept Welcome to Crimson Isle##9127
		|only if completedquest(7018) // will not show for players who skipped arkship
	step
		.talk Explorer Grubozz |goto CrimsonIsle -8238,-242,-997
		..turnin The Exploration Society##10085
		|only Explorer
	step
		.talk Scientist Trinix |goto CrimsonIsle -8238,-242,-997
		..turnin The Royal Collegium##10084
		|only Scientist
	step
		.talk Settler Decima |goto CrimsonIsle -8238,-242,-997
		..turnin The Settlement Authority##10086
		|only Settler
	step
		.talk Soldier Akisa |goto CrimsonIsle -8238,-242,-997
		..turnin The Dominion Legions##10087
		|only Soldier
	step
		.talk Mondo Zax##262276 |goto CrimsonIsle -8231,-231,-994
		..turnin Welcome to Crimson Isle##9127 |only if havequest(9127) // only arkship players have this
		..accept Mind the Mines, Scrap the Scrab##5593
	step
		.talk Chancelor Juro Takigurian |goto CrimsonIsle -8236,-214,-996
		..turnin The Eldan Enigma##10139
	step
		' Around the area: |goto CrimsonIsle -8183,-172,-998
		.' Disarm Exile Mines |q Mind the Mines, Scrap the Scrab##5593/1
		.' Kill Scrab Strikers |q Mind the Mines, Scrap the Scrab##5593/2
	step
		'Press _C_ to open your Communitcator:
		..turnin Mind the Mines, Scrap the Scrab##5593
		..accept Powering Down##5573
	step
		.' Find the Megatech Shield Generator |q Powering Down##5573/1 |goto ChrimsonIsle -7922,-287,-961
	step
		'Press _C_ to open your Communitcator:
		..accept Stasis, Interrupted##8855 |goto CrimsonIsle CrimsonIsle -7898,-307,-957
	step
		.click Power Regulator##262805 |goto CrimsonIsle -7835,-373,-945
		.' Disable the Power Regulators |q Powering Down##5573/2 |count 1 |tip Kill robots and free soldiers on your way
	step
		.click Power Regulator##263134 |goto CrimsonIsle -7743,-325,-948
		.' Disable the Power Regulators |q Powering Down##5573/2 |count 2 |tip Kill robots and free soldiers on your way
	step
		.click Power Regulator##262872 |goto CrimsonIsle -7709,-400,-944
		.' Disable the Power Regulators |q Powering Down##5573/2 |tip Kill robots and free soldiers on your way
	step
		' In this area:
		.' _Jump_ through the suspended soldiers
		.' Free Dominion Soldiers |q Stasis, Interrupted##8855/1
		.' Kill Megatech Battlebots |q Stasis, Interrupted##8855/2
	step
		'Press _C_ to open your Communitcator:
		..turnin Powering Down##5573
		..turnin Stasis, Interrupted##8855
		..accept Forward March##5814
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
		.' _Jump down_. You will get a fall buff
		.talk Craftmaster Tiberia Marcela |goto CrimsonIsle -7696,-650,-941
		..turnin Rune Runedown##10208
	step
		' Press _I_ to open your inventory
		' _Ctrl_ + _Right Click_ shoulders, select _Edit Runes_
		' Click the Spiral button, select the Rune
		' Equip the shoulders
		.'When done head to Mondo Sax |goto CrimsonIsle -7681,-662,-943 <15 |c |q 5814
	step
		.talk Mondo Zax##262281 |goto CrimsonIsle -7667,-673,-943
		..turnin Forward March##5814
		..accept Ordnance Recovery##5596
	step
		.' Find the blimp crash site|q Ordinance Recovery##5596/1 |goto CrimsonIsle -7431,-680,-986 <5
	step
		.click Dominion Demolitions Expert##263321 
		.' Search for Dead Dominion Demolitions Experts |q Ordnance Recovery##5596/2 |goto CrimsonIsle -7329,-680,-990
	step
		'Press _C_ to open your Communitcator:
		..turnin Ordnance Recovery##5596
		..accept Dregs and Thieves##5597
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
		.' Follow this _road up_ the hill |goto CrimsonIsle -7317,-1132,-973 < 10 |c |q 5604
	step
		.' _Continue up_ the wooden ramp |goto CrimsonIsle -7379,-1113,-949 <5 |c |q 5604
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
		.' Follow the _ramp up_ |goto CrimsonIsle -7616,-1368,-954 |c |q 5580
	step
		.' Sabotage the Tower Controls |q Enforced Radio Silence##5580/1 |count 1 |goto CrimsonIsle -7597,-1357,-942
	step
		.click Vindicator Tank##299901 |goto CrimsonIsle -7647,-1387,-956 <5
		.' Sabotage Exile Tanks |q Heavy Armor##5583/1 |count 1
	step
		.' Follow the _big ramp up_ |goto CrimsonIsle -7709,-1391,-948 <10 |c |q 5580
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
		'_Go up_ the ramp |goto CrimsonIsle -7832,-1430,-942 <10 |c |q 5594
	step
		.click Warbot Fuel##304277 |goto CrimsonIsle -7956,-1349,-941
		' Fight waves of enemies and Warbot
		.' Sabotage the Warbot Fuel and Kill Megatech Warbot |q Last Resistance##5594/1
	step
		.click Control Panel##263441 
		.' Activate the Control Panel |q Last Resistance##5594/2 |goto CrimsonIsle -7990,-1361,-935 <5
	step
		.click Ship Controls##263440
		'Click _Yes_ to launch the transport to Deradune
		.' Launch the Transport Ship |q Last Resistance##5594/3 |goto CrimsonIsle -8023,-1275,-921
	]]
)