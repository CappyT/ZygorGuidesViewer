if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Levian Bay (3-6)",
	{
	faction="Dominion",
	startlevel=3,
	endlevel=6,
	nextguide="Dominion\\Ellevar (6-15)",
	image="ZygorUIGuides:LevianBay",
	description="Levian Bay is a wild coastal region that graces the shores of one of Nexus's great oceans, and a treasure trove of Eldan history, rare artifacts, and mysterious creatures. Is the starting area for Cassian and Mechari.  It is suited for characters level 3-6."
	},
	[[
//HUMAN breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Stormcaller Landing##262430 |goto DominionArkShipTutorialCryogenics -696,684,81
		.' Travel to Nexus - Levian Bay |q Called to Stormcaller Landing##7057/2
		|only Human
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Lieutenant Ticus##263628 |goto LevianBay -3836,-6053,-981
		..turnin Called to Stormcaller Landing##7057
		..accept Welcome to Levian Bay##9126
		|only Human

//DRAKEN breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Stormcaller Landing##262430 |goto DominionArkShipTutorialCryogenics -695,686,81
		.' Travel to Nexus - Levian Bay |q Savage Coast Savagery##7060/3
		|only Draken
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Scout Naharra##263625 |goto LevianBay -3836,-6054,-981
		..turnin Savage Coast Savagery##7060
		..accept Welcome to Levian Bay##9135
		|only Draken

//CHUA breadcumb
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Stormcaller Landing##262430 |goto DominionArkShipTutorialCryogenics -696,684,81
		.' Travel to Nexus - Levian Bay |q Mondo's Beachhead##7059/3
		|only Chua
	step
		' _If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Departures Terminal: Stormcaller Landing##262430 |goto LevianBay -3836,-6054,-981
		..turnin Mondo's Beachhead##7059
		..accept Welcome to Levian Bay##9133
		|only Chua

//HUMAN, CHUA, DRAKEN chain
	step
		.talk Pilot Icarios##263647 |goto LevianBay -3832,-6064,-980
		..turnin Welcome to Levian Bay##9133 |only Chua
		..turnin Welcome to Levian Bay##9135 |only Draken
		..turnin Welcome to Levian Bay##9126 |only Human
		..accept Lighting the Way##6780
		.'Tutorial skippers, click _>_ after obtaining the quest
		|only Chua, Draken, Human
	step
		.click Signal Flare##263820 |goto LevianBay -3794,-6056,-981
		.' Light the Signal Flares |q Lighting the Way##6780/2 |count 20
		|only Chua, Draken, Human
	step
		.click Eldan Artifact##263787 |goto LevianBay -3711,-6032,-987
		..accept Eldan Excavation##5858
		|only Chua, Draken, Human
	step
		.click Eldan Artifact##263794
		.' Recover Eldan Artifacts |q Eldan Excavation##5858/1 |goto LevianBay -3706,-5968,-998
		|only Chua, Draken, Human
	step
		.click Signal Flare##263820 |goto LevianBay -3730,-6100,-985
		.' Light the Signal Flares |q Lighting the Way##6780/2 |count 40
		|only Chua, Draken, Human
	step
		.' Kill Seaspine or Stomrcaller beasts |q Lighting the Way##6780/1 |goto LevianBay -3580,-6126,-976
		.' Light the Signal Flares |q Lighting the Way##6780/2 |goto LevianBay -3568,-6166,-984
		|only Chua, Draken, Human

//MECHARI breadcumb
	step
		.'_If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.click Departures Terminal: Jagged Cove##262431 |goto DominionArkShipTutorialCryogenics -684,590,81
		.' Travel to Nexus - Levian Bay |q Jagged Cove##7058/2
		|only Mechari
	step
		.'_If you skipped_ the Arkship tutorial, click _>_ to skip this step
		.talk Agent Infivan##263622 |goto LevianBay -3781,-6338,-996
		..turnin Jagged Cove##7058
		..accept Welcome to Levian Bay##9130
		|only Mechari
	step
		.talk Pilot Apex##263645 |goto LevianBay -3776,-6312,-996
		..turnin Welcome to Levian Bay##9130
		..accept Lighting the Way##5855
		.'Tutorial skippers, click _>_ after obtaining the quest
		|only Mechari
	step
		.click Signal Flare##263820 |goto LevianBay -3761,-6286,-991
		.' Light the Signal Flares |q Lighting the Way##5855/2 |count 20
		|only Mechari
	step
		.click Signal Flare##263820 |goto LevianBay -3700,-6271,-984
		.' Light the Signal Flares |q Lighting the Way##5855/2 |count 40
		|only Mechari
	step
		.click Signal Flare##263820 |goto LevianBay -3669,-6234,-982
		.' Light the Signal Flares |q Lighting the Way##5855/2 |count 60
		|only Mechari
	step
		.click Signal Flare##263820 |goto LevianBay -3612,-6207,-984
		.' Light the Signal Flares |q Lighting the Way##5855/2 |count 80
		|only Mechari
	step
		.click Eldan Artifact##263787 |goto LevianBay -3711,-6032,-987
		..accept Eldan Excavation##5858
		|only Mechari
	step
		.click Eldan Artifact##263794
		.' Recover Eldan Artifacts |q Eldan Excavation##5858/1 |goto LevianBay -3706,-5968,-998
		|only Mechari
	step
		.' Kill Seaspine or Stomrcaller beasts |q Lighting the Way##5855/1 |goto LevianBay -3580,-6126,-976
		.' Light the Signal Flares |q Lighting the Way##5855/2 |goto LevianBay -3568,-6166,-983
		|only Mechari

// ALL Classes chain
	step
		.talk Wingman Volaticus##263644 |goto LevianBay -3475,-6116,-978
		..turnin Lighting the Way##5855 |only Mechari
		..turnin Lighting the Way##6780 |only Chua, Draken, Human
		..accept Find Artemis Zin##5856
	step
		'_Enter_ the small cave |goto LevianBay -3315,-5957,-968 < 10 |c |q 5856/2
	step
		.click Cambot Z-1n##263763 |goto LevianBay -3263,-5965,-961
		.' Retrieve Cambot Z-1n |q Find Artemis Zin##5856/2 |tip Kill Malverine's as you do this quest.
	step
		.click Slain Exile Agent##263633 |goto LevianBay -3242,-5901,-969
		..accept What Is Dead May Never Spy##6142
	step
		'_Exit_ the cave |goto LevianBay -3311,-5954,-966 < 10 |c |q 5856/3
	step
		.click Blood-Spattered Crate##263765 |goto LevianBay -3260,-6095,-957
		..accept Stand and Deliver##6171 |tip Kill Malverine's as you pickup this quest.
	step
		.click Cambot AR-2ms##263762 |goto LevianBay -3216,-6123,-956
		.' Retrieve Cambot AR-2ms |q Find Artemis Zin##5856/3 |tip Kill Malverine's as you do this quest.
	step
		.kill Malverine Stalker##263100+
		.' Kill Malverine Stalkers |q Find Artemis Zin##5856/1 |goto LevianBay -3114,-6081,-957
	step
		.talk Supervisor Sernelia##263630 |goto LevianBay -3021,-6081,-960
		..turnin Stand and Deliver##6171
	step
		.talk Analyst Spector##263651 |goto LevianBay -3012,-6082,-961
		..turnin What Is Dead May Never Spy##6142
	step
		.talk Scholar Valensa##263642 |goto LevianBay -3016,-6076,-960
		..turnin Eldan Excavation##5858
	step
		.talk Artemis Zin##263641 |goto LevianBay -3011,-6070,-961
		..turnin Find Artemis Zin##5856
		..accept Eldan Insecurity##5857
	step
		.'_Jump down_ and follow the ramp | goto LevianBay -2988,-6049,-974 < 10 |c |q 5857/1
	step
		.click Eldan Terminal##263831 |goto LevianBay -2781,-5968,-1035
		.' Use the Eldan Terminal |q Eldan Insecurity##5857/1
	step
		'Press _C_ to open your Communicator:
		..accept Eldan Insecurity##5857 |goto LevianBay -2770,-5997,-1068
	step
		'Either kill 1 _Eldan Defender_ or click _Power Core_
		.' Press _C_ to open your Communicator:
		..accept Rerouting Power##5867 |goto LevianBay -2728,-6010,-1068
	step
		.' Jump through the first Eldan Power Pod |q Rerouting Power##5867/1 |goto LevianBay -2730,-6024,-1067
	step
		.' Jump through the third Eldan Power Pod |q Rerouting Power##5867/3 |goto LevianBay -2539,-5910,-1067
	step
		.' _Go up_ the ramp |goto LevianBay -2555,-5805,-1068 < 10 |c |q 5867/2
	step
		.' _Jump down_ here |goto LevianBay -2777,-5872,-1030 < 10 |c |q 5867/2
	step
		.' Jump through the second Eldan Power Pod |q Rerouting Power##5867/2 |goto LevianBay -2831,-5839,-1067
	step
		.click Power Core##263749
		.kill Malfunctioning Scout Drone##268854+
		.kill Eldan Defender##281756+
		.' Collect Power Core Fragments |q Eldan Insecurity##5857/2 |goto LevianBay -2825,-5793,-1068
	step
		'Press _C_ to open your Communicator:
		..turnin Rerouting Power##5867
		..turnin Eldan Insecurity##5857
		..accept Enter the Station##5868
	step
		.click Eldan Terminal##263831 |goto LevianBay -2781,-5968,-1035
		.' Activate the Eldan Terminal |q Enter the Station##5868/1
	step
		.' Use the Teleporter |q Enter the Station##5868/2 |goto LevianBay -2682,-5874,-1027
	step
		.talk Artemis Zin##263638 |goto LevianBay -2713,-5949,-1327
		..turnin Enter the Station##5868
		..accept Introduction to the Caretaker##6789
	step
		.talk The Caretaker##263639 |goto LevianBay -2712,-5952,-1327
		..turnin Introduction to the Caretaker##6789
		..accept Seizing Control##5859
	step
		.' Take the Eldan Teleporter to Security Hub Sigma |q Seizing Control##5859/1 |goto LevianBay -2600,-5954,-1322
	step
		'Press _C_ to open your Communicator:
		..accept Automated Repairs##5860 |goto LevianBay -1769,-6009,-1051
	step
		'_Go through_ the corridor on the right |goto LevianBay -1850,-5986,-1053 < 10 |c |q 5860/3
	step
		.click Eldan Control Panel##263615 |goto LevianBay -1956,-5920,-1062
		.' Release the third Repair Construct |q Automated Repairs##5860/3
	step
		.click Eldan Control Panel##263607 |goto LevianBay -1930,-5893,-1062
		.' Release the fourth Repair Construct |q Automated Repairs##5860/4
	step
		.kill Eldan Protector##262900+, Eldan Defender##262901+, Malfunctioning Security Construct##262898+
		.'Collect Power Crystals from Eldan Constructs |q Seizing Control##5859/2 |goto LevianBay -1935,-5966,-1061
	step
		.click Eldan Security Node##263754 |goto LevianBay -1951,-5986,-1062
		.' Repair the western Eldan Security Node |q Seizing Control##5859/4
	step
		'_Head back_ through the corridor |goto LevianBay -1917,-5985,-1062 < 10 |c |q 5860/1
	step
		.' _Continue_ into the round hallway |goto LevianBay -1684,-5986,-1053 < 10 |c |q 5860/1
	step
		.click Eldan Control Panel
		.' Release the first Repair Construct |q Automated Repairs##5860/1 |goto LevianBay -1577,-5921,-1062
	step
		.click Eldan Control Panel##263602
		.' Release the second Repair Construct |q Automated Repairs##5860/2 |goto LevianBay -1605,-5892,-1062
	step
		.click Eldan Security Node##263755 |goto LevianBay -1583,-5984,-1062
		.' Repair the eastern Eldan Security Node |q Seizing Control##5859/3
	step
		.'_Continue_ into the southern hallway |goto LevianBay -1768,-5925,-1053 < 10 |c |q 5859/1
	step
		.' Repair the Eldan Primary Access Hub |q Seizing Control##5859/5 |goto LevianBay -1766,-5818,-1045
	step
		.' Use the Eldan Teleporter to return to the Elder Vault |q Seizing Control##5859/6 |goto LevianBay -1767,-6019,-1048
	step
		.talk The Caretaker##263636 |goto LevianBay -2703,-5985,-1326
		..turnin Seizing Control##5859
		..turnin Automated Repairs##5860
		..accept The Key to Power##5959
	step
		.' Take the Eldan Teleporter to Engineering Sublevel Theta |q The Key to Power##5959/1 |goto LevianBay -2826,-5955,-1322
	step
		'Press _C_ to open your Communicator:
		..accept Skeech Incursion##5960 |goto LevianBay -1765,-6241,-954
	step
		.' _Jump down_ here |goto LevianBay -1849,-6216,-954 < 10 |c |q 5959/2
	step
		.click Eldan Chest##263732 |tip Jump down to the path between the cliffs.
		.' Retrieve the Human Access Key |q The Key to Power##5959/2 |goto LevianBay -1868,-6226,-989
	step
		.kill 1 Skeech Hag##270263 |goto LevianBay -1955,-6194,-1005
		.' Use the Skeech Hag's Head in your inventory |use Skeech Hag's Head##15028
		..accept Getting a Head##5863
	step
		' Get _Keys_ from kills or items in floor  |goto LevianBay -1837,-6238,-957
		.' Collect Access Key Fragments |q The Key to Power##5959/3
		.' Kill Skeech |q Skeech Incursion##5960/1
		.' Collapse Skeech Burrows |q Skeech Incursion##5960/2
	step
		'Press _C_ to open your Communicator:
		..turnin Skeech Incursion##5960
	step
		.' Use the Eldan Teleporter to return to the Elder Vault |q The Key to Power##5959/4 |goto LevianBay -1771,-6241,-954
	step
		.talk Analyst Spector##263652 |goto LevianBay -2723,-5950,-1327
		..turnin Getting a Head##5863
	step
		.talk The Caretaker##263636 |goto LevianBay -2703,-5985,-1326
		..turnin The Key to Power##5959
		..accept Unlocking Knowledge##5861
	step
		.talk Artemis Zin##263635 |goto LevianBay -2706,-5984,-1326
		..turnin Unlocking Knowledge##5861
		..accept The Elder Cube##8826
	step
		.talk Artemis Zin##263629 |goto LevianBay -2706,-5984,-1326
		..turnin The Elder Cube##8826
		..accept Lost in the Fog##5865
	step
		.'_Pass through_ the hallway |goto LevianBay -2682,-6005,-1326 < 10 |c |q 5865/1
	step
		.' _Enter_ the doorway |goto LevianBay -2713,-6136,-1328 < 10 |c |q 5865/1
	step
		.' Use the Eldan Teleporter to access the cave to the surface |q Lost in the Fog##5865/1 |goto LevianBay -2713,-6198,-1327
	step
		'_Move along_ the canyons path |goto LevianBay -2219,-5145,-985 < 20 |c |q 5865/1
	step
		.talk Kevo##263343 |goto LevianBay -2323,-5112,-976
		..accept Unwelcome Guests##5864
	step
		.click Drop Pod Landing Beacon##263679 |goto LevianBay -2456,-5077,-993
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2 |count 33
	step
		.click Drop Pod Landing Beacon##263680 |goto LevianBay -2454,-5129,-988
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2 |count 66
	step
		.click Drop Pod Landing Beacon##263678 |goto LevianBay -2529,-5117,-991
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2
	step
		'Press _C_ to open your Communicator:
		..turnin Lost in the Fog##5865
	step
		.kill Exile Gunner##325173+, Exile Trooper##262805+
		.' Kill Exile forces in Greyshore |q Unwelcome Guests##5864/1 |goto LevianBay -2436,-5077,-992
	step
		'Press _C_ to open your Communicator:
		..turnin Unwelcome Guests##5864
		..accept A Daring Escape##5866 |goto LevianBay -2499,-5074,-998
	step
		.' Follow the _path around_ |goto LevianBay -2367,-5040,-981 < 10 |c |q 5866/1
	step
		.click Girrok Vomit##262777 |goto LevianBay -2336,-4952,-953
		..accept Girrok Ate My Status Report##8964
	step
		.' Defeat the Exile Warbot |q A Daring Escape##5866/1 |goto LevianBay -2422,-4918,-975
	step
		.click Navigation Controls##263668 |goto LevianBay -2543,-4965,-953
		.' Choose _Yes_ to leave Levian Bay behind
		.' Use the Exile ship's Navigation Controls |q A Daring Escape##5866/2
	]]
)