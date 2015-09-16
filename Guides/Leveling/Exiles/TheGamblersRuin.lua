if not ZGV then return end
ZGV:RegisterGuide("Exiles\\The Gambler's Ruin (1-3)",
	{
	faction="Exiles",
	startlevel=1,
	endlevel=3,
	nextguide="Exiles\\Northern Wilds (3-6)",
	image="ZygorUIGuides:TheGamblersRuin", 
	description="Northern Wilds is a zone in northern Alizar in WildStar. Northern Wilds is a beginner zone for The Exiles, and is suited for characters level 3-6. ",
	},
	[[
	step
		.talk Deadeye Brightland##770555 |goto ExileArkShipTutorial 1493,816,80
		..accept Cryo Crisis##6735
	step
		.' Follow Deadeye Brightland |q Cryo Crisis##6735/1 |goto ExileArkShipTutorial 1510,772,71 < 10
	step
		.click Cryo Controls
		.' Activate the Cryo Controls to free Sadie Brightland |q Cryo Crisis##6735/2 |goto ExileArkShipTutorial 1424,745,72
	step
		.kill Sabotage Bots
		.' Destroy Sabotage Bots  |q Cryo Crisis##6735/3 |goto ExileArkShipTutorial 1510,742,72 < 5
	step
		'_Run up_ the stairs |goto ExileArkShipTutorial 1510,707,77 < 10 |tip Try to avoid the red circles on the ground.
		.' Ride the tram |q Cryo Crisis##6735/4 |goto ExileArkShipTutorial 1543,670,87 
	step
		.talk Victor Lazarin##313516 |goto ExileArkShipTutorial 1443,-107,85
		..turnin Cryo Crisis##6735
		..accept Medbay Mayhem##6832
	step
		.' Investigate the cause of the malfunctioning bots |q Medbay Mayhem##6832/1 |goto ExileArkShipTutorial 1365,-107,85
	step
		.' Kill 3 _Malfunctioning Medbot_ or _Dominion Saboteur_ |q Medbay Mayhem##6832/2 |goto ExileArkShipTutorial 1363,-107,85
	step
		.' Take teleporter to Command Deck |goto ExileArkShipTutorial 1383,-118,86
		.talk Commander Durek##905884 |goto ExileArkShipTutorial -1357,-14,335
		..turnin Medbay Mayhem##6832
		..accept Deck Sweeper##6758 
	step
		'_Go down the ramp_ to the lower floor |goto ExileArkShipTutorial -1356,-83,335 <10
		.kill 4 _Draken_ or _Mechari Agents_
		.' Kill Draken and Mechari Agents |q Deck Sweeper##6758/1 |goto ExileArkShipTutorial -1409,-72,318
	step
		'Take teleporter to the Greenhouse |goto ExileArkShipTutorial -1358,-77,321
		.talk Queen Myala Everstar##313634 |goto ExileArkShipTutorial -919,-1300,-28
		..turnin Deck Sweeper##6758
		..accept Green Thumb##6742
	step
		' They are around this small zone
		.' Gather 3 vegetables |q Green Thumb##6742/1 |goto ExileArkShipTutorial -879,-1357,-36
	step
		.' Lead the vegetables to safety |q Green Thumb##6742/2 |goto ExileArkShipTutorial -856,-1425,-34
	step
		'Press _C_ to use your communicator:
		..turnin Green Thumb##6742
		..accept Warbot Worries##8913
	step
		' Kill _Cassian Soldier_ and _Cassian Medic_
		.' Kill Cassian Soldiers |q Warbot Worries##8913/1 |goto ExileArkShipTutorial -835,-1492,-37
	step
		.' Kill _Warbot Infiltrator_ |q Warbot Worries##8913/2 |goto ExileArkShipTutorial -917,-1683,-35 |tip You need to destroy the 2 shield generators
	step
		.' Take the teleporter to the Docking Bay |goto ExileArkShipTutorial -864,-1672,-33
		.talk Queen Myala Everstar |goto ExileArkShipTutorial -995,768,83
		..turnin Warbot Worries##8913
		..accept Nexus, Ho!##6760
	step
		.' Go through the hall |goto -998,809,83 <5
		.' Talk to Professor Rhoda Wellspring |q Nexus, Ho!##6760/1 |goto ExileArkShipTutorial -987,845,83
	step
		.' Go through the doorway |goto ExileArkShipTutorial -967,841,83 <5
		.' Take the bridge |goto -922,827,82 <5
		.' Head to Departure consoles |goto ExileArkShipTutorial -857,808,78 |q 6760/2|c
	step
		.'You can choose your next destination:
		.' Click here to continue to _Northern Wilds_ |nextguide Exiles\\Northern Wilds (3-6)
		.' Click here to continue to _Everstar Groove_ |nextguide Exiles\\Everstar Grove (3-6)
	]]
)
