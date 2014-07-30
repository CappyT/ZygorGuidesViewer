ZGV:RegisterGuide("Exiles\\Tutorial Area (1-3)",
	{
		faction="Exiles",
		startlevel=1,
		endlevel=3,
		nextguide="Exiles\\Northern Wilds (3-6)",
		image="ZygorUIGuides:TutorialExiles", 
		description="Northern Wilds is a zone in northern Alizar in WildStar. Northern Wilds is a beginner zone for The Exiles, and is suited for characters level 3-6. "
	},[[
	step
		.talk Deadeye Brightland##770555
		..accept Cryo Crisis##6735 |goto ExileArkShipTutorial 1510,819,80
	step
		.' Follow Deadeye Brightland |q Cryo Crisis##6735/1 |goto ExileArkShipTutorial 1510,772,71 < 10
		.click 1 Main Power Generator Console##312773
		.' Activate the Main Power Generator  |q Cryo Crisis##6735/2 |goto 1514,749,72
	step
		.click 1 Cryo Controls##312761
		.' Activate the Cryo Controls  |q Cryo Crisis##6735/3 |goto 1424,745,71
	step
		'_Run up_ the stairs |goto ExileArkShipTutorial 1510,707,77 < 10 |tip Try to avoid the red circles on the ground.
		.' Ride the tram |q Cryo Crisis##6735/4 |goto 1543,670,87 
	step
		.talk Victor Lazarin##313516
		..turnin Cryo Crisis##6735 |goto ExileArkShipTutorial 1443,-107,85
		..accept Medbay Mayhem##6832 |goto ExileArkShipTutorial 1443,-107,85
	step
		.talk Sergeant Kara##312733
		.' Receieve your first weapon |q Medbay Mayhem##6832/Talk to Sergeant Kara to receive your weapon##1 |goto 1410,-109,85
	step
		.' Press _I_ to open your inventory and right click your weapon to equip it |q Medbay Mayhem##6832/Right-click on your new weapon in your Inventory##2
	step
		.kill 1 Malfunctioning Medbot##912578
		.' Damage a Malfunctioning Medbot with your abilities |q Medbay Mayhem##6832/Damage a Malfunctioning Medbot using your abilities##3 |goto 1363,-107,85
		.kill 2 Malfunctioning Medbot##912578
		.' Collect Cryosickness Serum from Malfunctioning Medbot |q Medbay Mayhem##6832/Collect Cryosickness Serum from Malfunctioning Medbots##4 |goto 1351,-108,85
	step
		.' _Go back_ through the doorway |goto 1372,-107,86 < 10
		.' _Pass through_ the second doorway here |goto 1395,-125,86 < 10
		.click Sadie Brightland##313576
		.' Heal Sadie Brightland |q Medbay Mayhem##6832/Heal Sadie Brightland##5 |goto 1446,-137,85
	step
		.talk Deadeye Brightland##313677
		..turnin Medbay Mayhem##6832 |goto 1447,-135,85
		..accept Have a Drink on Me##8887 |goto 1447,-135,85
//Soldier Opening Quest
	 step
		.' _Proceed into_ the next room |goto 1493,-107,86 < 10
		.' _Go up_ the large staircase |goto ExileArkShipTutorial 1525,-124,88
		'Press _C_ to open your Communicator
		..accept Free Companies of Nexus##8867
		|only Soldier
	step
		.talk Soldier Benzag##263152
		..turnin Free Companies of Nexus##8867 |goto ExileArkShipTutorial 1677,-128,104
		|only Soldier
//Explorer Opening Quest
	step
		.' _Proceed into_ the next room |goto 1493,-107,86 < 10
		.' _Go up_ the large staircase |goto ExileArkShipTutorial 1525,-124,88
		'Press _C_ to use your Communicator
		..accept Explorers Union##8864
		|only Explorer
	step
		.talk Explorer Wennie##263115
		..turnin Explorers Union##8864 |goto ExileArkShipTutorial 1623,-177,106
		|only Explorer
//Settler Opening Quest
	step
		.' _Proceed into_ the next room |goto 1493,-107,86 < 10
		.' _Go up_ the large staircase |goto ExileArkShipTutorial 1525,-124,88
		'Press _C_ to use your Communicator
		..accept The Pioneering League##8866
		|only Settler
	step
		.talk Settler Vales##262978
		..turnin The Pioneering League##8866 |goto ExileArkShipTutorial 1673,-164,104
		|only Settler
//Scientist Opening Quest
	step
		.' _Proceed into_ the next room |goto 1493,-107,86 < 10
		'Press _C_ to use your Communicator
		..accept Exile Academy of Science##8865 |goto 1525,-108,85
		|only Scientist
	step
		.talk Scientist Mikael##262560
		.' _Go up_ the large staircase |goto 1527,-145,96 < 10
		..turnin Exile Academy of Science##8865 |goto ExileArkShipTutorial 1619,-123,106 
		|only Scientist
	step
		.talk Brewmaster Greko##313613
		..turnin Have a Drink on Me##8887 |goto 1618,-171,106
		..accept A Little Friendly Carousal##8815 |goto 1618,-171,106
	step
		.talk Trooper Madeline##312727 |q A Little Friendly Carousal##8815/##1 |goto 1628,-172,106
		.talk Archaeologist Vella##312729 |q A Little Friendly Carousal##8815/##2 |goto 1668,-163,104
		.talk Durag##312728 |q A Little Friendly Carousal##8815/Talk to Durag##3 |goto 1665,-122,104
	step
		.talk Avra Darkos##313629
		..turnin A Little Friendly Carousal##8815 |goto 1622,-124,106
		..accept The Widow's Web##6715 |goto 1622,-124,106
	step
		.' Stand in the teleport to travel to the Command Deck |q The Widow's Web##6715/##1 |goto 1641,-146,105 
	step
		.talk Commander Durek##905884
		..turnin The Widow's Web##6715 |goto ExileArkShipTutorial -1357,-14,335
		..accept Deck Sweeper##6758 |goto ExileArkShipTutorial -1357,-14,335
	step
		.' Press _I_ to open your inventory and right click your shield to equip it |q Deck Sweeper##6758/Right-click your new shield found in your inventory##1
	step
		'_Go down the ramp_ to the lower floor |goto -1356,-83,335 <10
		.kill 3 Draken Berserker##911030
		.' Kill Draken Berserkers |q Deck Sweeper##6758/Kill Draken Berserkers##2 |goto -1409,-72,318
	step
		.kill 3 Mechari Hacker##921943
		.' Kill Mechari Hackers |q Deck Sweeper##6758/Kill Mechari Hackers##3 |goto -1398,-13,318
	step
		'Press _C_ to use your communicator:
		..turnin Deck Sweeper##6758
		..accept Walker's Aid##8979
	step
		.' Step into the teleporter to travel to the Relic Room |q Walker's Aid##8979/Teleport to the Relic Room##1 |goto -1357,-76,321
	step
		.talk Belle Walker##313630
		..turnin Walker's Aid##8979 |goto ExileArkShipTutorial -262,-24,-2
		..accept Relic Raid##6854 |goto ExileArkShipTutorial -262,-24,-2
	step
		.' _Go up_ the stairs |goto ExileArkShipTutorial -293,-24,6 < 10
		.click Bomb Detonator##312725
		.' Deactivate the Bomb Detonator |q Relic Raid##6854/Deactivate the Bomb Detonator##1 |goto -300,-48,7
	step
		.' _Jump across_ the small gap and continue along the upper level of the room. |goto -282,-72,7 < 10
		.click Bombs##313410
		.' Defuse the Bombs |q Relic Raid##6854/Defuse the Bombs##2 |goto -254,-81,8
	step
		.' _Jump across_ the small gap |goto -235,-77,7
		.' _Jump across_ the second gap |goto -225,-60,8 < 10
		.' _Carefully jump across_ the suspended bridge to get to the far platform |goto -234,-48,9
		.click Primal F-Bomb Controls##313407
		.' Disarm the F-Bomb Controls |q Relic Raid##6854/Disarm the Primal F-Bomb Controls##3 |goto -251,-49,12
	step
		.talk Belle Walker##313630
		..turnin Relic Raid##6854 |goto -262,-24,-2
		..accept Relics and Lore##8974 |goto -262,-24,-2
	step
		.click Galactic Explorer's Handbook##312207
		.' Collect the Galactic Explorer's Handbook |q Relics and Lore##8974/Collect the Galactic Explorer's Handbook##1 |goto -264,-56,-3
	step
		.click TALES: Adventure Awaits!##312229
		.' Compile the Tales |q Relics and Lore##8974/2 |count 1 |goto -247,-57,-3
		.click TALES: Adventure Awaits!##312229
		.' Compile the Tales |q Relics and Lore##8974/2 |count 2 |goto -244,-42,-3
		.click TALES: Adventure Awaits!##312247
		.' Compile the Tales |q Relics and Lore##8974/2 |goto -267,-37,-3
	step
		.click Datacube Shield Controls##312721
		.' Override the Datacube Shield Controls |q Relics and Lore##8974/Override the Datacube Shield Controls##3 |goto -254,-45,-3
		.click DATACUBE: Nexus##312726
		.' Activate the Nexus Datacube |q Relics and Lore##8974/Activate the Nexus Datacube##4 |goto -257,-47,-3
	step
		.talk Belle Walker##313630
		..turnin Relics and Lore##8974 |goto -263,-24,-2
	step
		'Press _C_ to use your communicator:
		..accept To the Defense##8886
	step
		.' Step into the teleporter to travel to the Greenhouse |q To the Defense##8886/Take a teleporter to the Greenhouse##1 |goto -257,-12,-1
	step
		.talk Queen Myala Everstar##313634
		..turnin To the Defense##8886 |goto ExileArkShipTutorial -919,-1300,-28
		..accept Green Thumb##6742 |goto ExileArkShipTutorial -919,-1300,-28
	step
		.click Seared Celery##934442
		.click Terrified Taproot##937169
		.' Gather 5 vegetables from around this area |tip You can easily see how many you have by your buffs above your character frame. |goto -879,-1340,-36
		|confirm |q 6742/2
	step
		.' Lead the vegetables to safety |q Green Thumb##6742/Lead veggies to a safe planter##3 |goto -803,-1328,-31
	step
		.kill Chua Incinerator##913181
		.kill Chua Saboteur##913180
		.' Kill Chua attackers |q Green Thumb##6742/Kill the Chua attackers##1 |goto -812,-1394,-33
	step
		'Press _C_ to use your communicator:
		..turnin Green Thumb##6742
		..accept The High and Mighty##8796
	step
		.talk Arwick Redleaf##313632
		.' Find and talk to Arwick Redleaf |q The High and Mighty##8796/Find and talk to Arwick Redleaf##1 |goto -919,-1457,-35
	step
		.kill Lowborn Soldier##937845
		.kill Cassian Medic##300631
		.' Kill Cassian Soldiers |q The High and Mighty##8796/Kill Cassian soldiers##2 |goto -835,-1492,-37
		.kill Dominion Turret##948072
		.' Destroy Dominion Turrets |q The High and Mighty##8796/Destroy Dominion Turrets##3 |goto -835,-1492,-37
	step
		'Press _C_ to use your communicator:
		..turnin The High and Mighty##8796
		..accept Warbot Worries##8913
	step
		.kill 1 Warbot Infiltrator##946656 |q Warbot Worries##8913/Destroy the Warbot Infiltrator##1 |goto -917,-1683,-35
	step
		.talk Arwick Redleaf##313631
		..turnin Warbot Worries##8913 |goto -919,-1458,-35
	step
		'Press _C_ to use your communicator:
		..accept Nexus, Ho!##6728
	step
		.click Central Teleporter Circuit##312452
		.' Reactivate the Central Teleporter Circuit |q Nexus, Ho!##6728/Reactivate the Central Teleporter Circuit##1 |goto -925,-1259,-27
	step
		.' Step into the teleporter to travel to the Terminal Junction |q Nexus, Ho!##6728/Take a teleporter to Terminal Junction##2 |goto -918,-1261,-27
	step
		.talk Avra Darkos##313344
		..turnin Nexus, Ho!##6728 |goto ExileArkShipTutorial -995,767,83
		..accept Mysteries of the Eldan##9555 |goto ExileArkShipTutorial -995,767,83 |only Human, Granok
		..accept Mysteries of the Eldan##9552 |goto ExileArkShipTutorial -995,767,83 |only Aurin, Mordesh
	step
		.talk Professor Rhoda Wellspring##312446
		.' Speak to the hologram of Professor Rhoda Wellspring |q Mysteries of the Eldan##9555/Speak to the hologram of Professor Rhoda Wellspring##1 |goto ExileArkShipTutorial -1038,897,83
		|only Human, Granok
	step
		.click Hologram Control Panel##312442
		.' Activate the Hologram Control Panel |q Mysteries of the Eldan##9555/Activate the Hologram Control Panel##2 |goto -1039,891,84
		|only Human, Granok
	step
		.talk Professor Rhoda Wellspring##262599
		.' Speak to the hologram of Professor Rhoda Wellspring |q Mysteries of the Eldan##9552/1 |goto ExileArkShipTutorial -1039,639,83
		|only Aurin, Mordesh
	step
		.click Hologram Control Panel##262596
		.' Activate the Hologram Control Panel |q Mysteries of the Eldan##9552/2 |goto -1038,643,84
		|only Aurin, Mordesh
	step
		.' Press _C_ to turn in Mysteries of the Eldan
		..turnin Mysteries of the Eldan##9555
		..accept Never Thayd Away##6760 |only Human
		..accept Base Drop##6759 |only Granok
		|only Human, Granok
	step
		.' Press _C_ to turn in Mysteries of the Eldan
		..turnin Mysteries of the Eldan##9552
		..accept Everstar Grove##6761 |only Aurin
		..accept The Ravenous Grove##6762 |only Mordesh
		|only Aurin, Mordesh
	step
		.' Go through the doorway |goto ExileArkShipTutorial -964,590,83
		.talk Victor Lazarin##263525
		.' Speak to Victor Lazarin |q The Ravenous Grove##6762/1 |goto -921,595,85
		|only Mordesh
	step
		.talk Deadeye Brightland##313624
		.' Speak to Deadeye Brightland |q Never Thayd Away##6760/Speak to Deadeye Brightland##1 |goto ExileArkShipTutorial -922,831,82
		|only Human
	step
		.' Go through the doorway |goto -962,945,83
		.talk Commander Durek##263725
		.' Speak to Commander Durek |q Base Drop##6759/1 |goto -927,940,84
		|only Granok
	step
		.click Departures Terminal: Hammer of Gnox##262602
		.' Travel to the Northern Wilds on Nexus |q Base Drop##6759/2 |goto ExileArkShipTutorial -925,935,85
		|only Granok
	step
		.talk Queen Myala Everstar##263462
		.' Speak to Queen Myala Everstar |q Everstar Grove##6761/1 |goto ExileArkShipTutorial -933,694,83
		|only Aurin
//To Northern Wilds (3-6)
	step
		.' You will be able to continue your adventure in two locations from this point on:
		.' Click here if you wish to continue to the _Northern Wilds_ |nextguide Exiles\\Northern Wilds (3-6)
		.' Click here if you wish to continue to the _Everstar Groove_ |nextguide Exiles\\Everstar Grove (3-6)
]])
