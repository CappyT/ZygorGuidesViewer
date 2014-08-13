ZGV:RegisterGuide("Dominion\\LevianBay (3-6)",
	{
	faction="Dominion",
	startlevel=3,
	endlevel=6,
	nextguide="Dominion\\Ellevar (6-15)",
	},
[[
//HUMAN
	step
		.click Departures Terminal: Stormcaller Landing##262430
		.' Travel to Nexus - Levian Bay |q Called to Stormcaller Landing##7057/2 |goto DominionArkShipTutorialCryogenics -696,684,81
		|only Human
	step
		.talk Lieutenant Ticus##263628
		..turnin Called to Stormcaller Landing##7057 |goto LevianBay -3836,-6053,-981
		..accept Welcome to Levian Bay##9126 |goto LevianBay -3836,-6053,-981
		|only Human
//MECHARI
	step
		.click Departures Terminal: Jagged Cove##262431
		.' Travel to Nexus - Levian Bay |q Jagged Cove##7058/2 |goto DominionArkShipTutorialCryogenics -684,590,81
		|only Mechari
	step
		.talk Agent Infivan##263622
		..turnin Jagged Cove##7058 |goto LevianBay -3781,-6338,-996
		..accept Welcome to Levian Bay##9130 |goto -3781,-6338,-996
		|only Mechari
//MECHARI - HUMAN
	step
		.talk Pilot Apex##263645
		..turnin Welcome to Levian Bay##9130 |goto LevianBay -3776,-6312,-996
		..accept Lighting the Way##5855 |goto -3776,-6312,-996
		|only Mechari
	step
		.click Signal Flare##263847+
		.' Light the Signal Flares |q Lighting the Way##5855/2 |goto LevianBay -3568,-6166,-984 |tip They are all along this path.
		.kill Seaspine Girrok##263006+
		.kill Seaspine Dagun##263134+ 
		.' Kill Seaspine or Stomrcaller beasts |q Lighting the Way##5855/1 |goto LevianBay -3665,-6260,-980
		|only Mechari
	step
		'Press _C_ to open your Communicator:
		..turnin Lighting the Way##5855
		|only Mechari
//DRAKEN
	step
		.click Departures Terminal: Stormcaller Landing##262430
		.' Travel to Nexus - Levian Bay |q Savage Coast Savagery##7060/3 |goto DominionArkShipTutorialCryogenics -695,686,81
		|only draken
	step
		.talk Scout Naharra##263625
		..turnin Savage Coast Savagery##7060 |goto LevianBay -3836,-6054,-981
		..accept Welcome to Levian Bay##9135 |goto LevianBay -3836,-6054,-981
		|only draken
//CHUA
	step
		.click Departures Terminal: Stormcaller Landing##262430
		.' Travel to Nexus - Levian Bay |q Mondo's Beachhead##7059/3 |goto DominionArkShipTutorialCryogenics -696,684,81
		|only chua
	step
		.talk Departures Terminal: Stormcaller Landing##262430
		..turnin Mondo's Beachhead##7059 |goto LevianBay -3836,-6054,-981
		..accept Welcome to Levian Bay##9133 |goto -3836,-6054,-981
		|only chua
//CHUA - DRAKEN - HUMAN
	step
		.talk Pilot Icarios##263647
		..turnin Welcome to Levian Bay##9133 |goto LevianBay -3832,-6069,-980 |only chua
		..turnin Welcome to Levian Bay##9135 |goto LevianBay -3832,-6069,-980 |only draken
		..turnin Welcome to Levian Bay##9126 |goto LevianBay -3836,-6053,-981 |only human
		..accept Lighting the Way##6780 |goto -3832,-6069,-980 |only chua, draken, human
		|only chua, draken, human
	step
		.click Signal Flare##263820
		.' Light the Signal Flares |q Lighting the Way##6780/2 |count 20 |goto LevianBay -3794,-6056,-981
		|only chua, draken, human
	step
		.click Signal Flare##263820
		.' Light the Signal Flares |q Lighting the Way##6780/2 |count 40 |goto -3730,-6100,-985
		|only chua, draken, human
//ALL
	step
		.click Eldan Artifact##263787
		..accept Eldan Excavation##5858 |goto LevianBay -3711,-6032,-987
	step
		.click Eldan Artifact##263794
		.' Recover Eldan Artifacts |q Eldan Excavation##5858/1 |goto LevianBay -3706,-5968,-998
//CHUA - DRAKEN - HUMAN
	step
		.click Signal Flare##263847+
		.' Light the Signal Flares |q Lighting the Way##6780/2 |goto LevianBay -3568,-6166,-984 |tip They are all along this path.
		.kill Seaspine Girrok##263006+
		.kill Seaspine Dagun##263134+ 
		.' Kill Seaspine or Stomrcaller beasts |q Lighting the Way##6780/1 |goto LevianBay -3580,-6126,-976
		|only chua, draken, human
	step
		'Press _C_ to open your Communicator:
		..turnin Lighting the Way##6780
		|only chua, draken, human
	step
		.talk Scholar Valensa##263642
		..turnin Eldan Excavation##5858 |goto LevianBay -3475,-6119,-978
	step
		.talk Wingman Volaticus##263644
		..accept Find Artemis Zin##5856 |goto -3475,-6116,-978
	step
		'_Enter_ the small cave |goto LevianBay -3315,-5957,-968 < 10
		.click Cambot Z-1n##263763
		.' Retrieve Cambot Z-1n |q Find Artemis Zin##5856/2 |goto -3263,-5965,-961 |tip Kill Malverine's as you do this quest.
	step
		.click Slain Exile Agent##263633
		..accept What Is Dead May Never Spy##6142 |goto LevianBay -3242,-5901,-969
	step
		'_Exit_ the cave |goto LevianBay -3311,-5954,-966 < 10
		.click Blood-Spattered Crate##263765
		..accept Stand and Deliver##6171 |goto -3260,-6095,-957 |tip Kill Malverine's as you pickup this quest.
	step
		.click Cambot AR-2ms##263762
		.' Retrieve Cambot AR-2ms |q Find Artemis Zin##5856/3 |goto LevianBay -3216,-6123,-956 |tip Kill Malverine's as you do this quest.
	step
		.kill Malverine Stalker##263100+
		.' Kill Malverine Stalkers |q Find Artemis Zin##5856/1 |goto LevianBay -3114,-6081,-957
	step
		.talk Supervisor Sernelia##263630
		..turnin Stand and Deliver##6171 |goto LevianBay -3021,-6081,-960
	step
		.talk Artemis Zin##263641
		..turnin Find Artemis Zin##5856 |goto LevianBay -3011,-6070,-961
		..accept Eldan Insecurity##5857 |goto -3011,-6070,-961
	step
		.talk Analyst Spector##263651
		..turnin What Is Dead May Never Spy##6142 |goto LevianBay -3012,-6082,-961
	step
		.click Eldan Terminal##263831
		.' Use the Eldan Terminal |q Eldan Insecurity##5857/1 |goto LevianBay -2721,-5941,-1025
	step
		'Press _C_ to open your Communicator:
		..accept Eldan Insecurity##5857 |goto -2770,-5997,-1068
	step
		.kill 1 Eldan Defender##298968
		.' Press _C_ to open your Communicator:
		..accept Rerouting Power##5867 |goto LevianBay -2728,-6010,-1068
	step
		.' Jump through the first Eldan Power Pod |q Rerouting Power##5867/1 |goto -2730,-6024,-1067
	step
		.' Jump through the third Eldan Power Pod |q Rerouting Power##5867/3 |goto -2539,-5910,-1067
	step
		.' Jump through the second Eldan Power Pod |q Rerouting Power##5867/2 |goto -2831,-5839,-1067
	step
		.click Power Core##263749
		.kill Malfunctioning Scout Drone##268854+
		.kill Eldan Defender##281756+
		.' Collect Power Core Fragments |q Eldan Insecurity##5857/2 |goto LevianBay -2825,-5793,-1068
	step
		'Press _C_ to open your Communicator:
		..turnin Rerouting Power##5867
		..turnin Eldan Insecurity##5857
		..accept Enter the Station##5868 |goto LevianBay -2699,-5897,-1031
	step
		.click Eldan Terminal##263831
		.' Activate the Eldan Terminal |q Enter the Station##5868/1 |goto LevianBay -2720,-5940,-1025
	step
		.' Use the Teleporter |q Enter the Station##5868/2 |goto LevianBay -2686,-5880,-1027
	step
		.talk Artemis Zin##263638
		..turnin Enter the Station##5868 |goto -2713,-5949,-1327
		..accept Introduction to the Caretaker##6789 |goto -2713,-5949,-1327
	step
		.talk The Caretaker##263639
		..turnin Introduction to the Caretaker##6789 |goto LevianBay -2713,-5957,-1327
		..accept Seizing Control##5859 |goto -2713,-5957,-1327
	step
		.' Take the Eldan Teleporter to Security Hub Sigma |q Seizing Control##5859/1 |goto LevianBay -2606,-5954,-1323
	step
		'Press _C_ to open your Communicator:
		..accept Automated Repairs##5860 |goto LevianBay -1769,-6009,-1051
	step
		'_Go through_ the corridor on the right |goto LevianBay -1850,-5986,-1053 < 10
		.click Eldan Control Panel##263615
		.' Release the third Repair Construct |q Automated Repairs##5860/3 |goto -1956,-5920,-1062
		.click Eldan Control Panel##263607
		.' Release the fourth Repair Construct |q Automated Repairs##5860/4 |goto -1930,-5893,-1062
	step
		.click Eldan Security Node##263754
		.' Repair the western Eldan Security Node |q Seizing Control##5859/4 |goto -1951,-5986,-1062
	step
		'_Head back_ through the corridor |goto LevianBay -1917,-5985,-1062 < 10
		.' _Continue_ into the round hallway |goto -1684,-5986,-1053 < 10
		.' Release the first Repair Construct |q Automated Repairs##5860/1 |goto -1577,-5921,-1062
		.click Eldan Control Panel##263602
		.' Release the second Repair Construct |q Automated Repairs##5860/2 |goto -1605,-5892,-1062
	step
		.kill Eldan Protector##262900+, Eldan Defender##262901+, Malfunctioning Security Construct##262898+
		.' Collect Power Crystals from Eldan Constructs |q Seizing Control##5859/2 |goto LevianBay -1594,-5971,-1062
	step
		.click Eldan Security Node##263755
		.' Repair the eastern Eldan Security Node |q Seizing Control##5859/3 |goto LevianBay -1583,-5984,-1062
	step
		.'_Continue_ into the southern hallway |goto -1768,-5925,-1053 < 10
		.' Repair the Eldan Primary Access Hub |q Seizing Control##5859/5 |goto -1766,-5818,-1045
	step
		.' Use the Eldan Teleporter to return to the Elder Vault |q Seizing Control##5859/6 |goto LevianBay -1767,-6019,-1048
	step
		.talk The Caretaker##263636
		..turnin Seizing Control##5859 |goto LevianBay -2703,-5990,-1327
		..turnin Automated Repairs##5860 |goto -2703,-5990,-1327
		..accept The Key to Power##5959 |goto LevianBay -2703,-5989,-1327
	step
		.' Take the Eldan Teleporter to Engineering Sublevel Theta |q The Key to Power##5959/1 |goto LevianBay -2826,-5955,-1322
	step
		'Press _C_ to open your Communicator:
		..accept Skeech Incursion##5960 |goto LevianBay -1765,-6241,-954
	step
		.' _Jump down_ here |goto LevianBay -1849,-6216,-954 < 10
		.click Eldan Chest##263732 |tip Jump down to the path between the cliffs.
		.' Retrieve the Human Access Key |q The Key to Power##5959/2 |goto LevianBay -1868,-6226,-989
	step
		.kill 1 Skeech Hag##270263 |goto LevianBay -1955,-6194,-1005
		.collect Skeech Hag's Head##15028
		
		.' Use the Skeech Hag's Head in your inventory |use Skeech Hag's Head##15028
		..accept Getting a Head##5863
	step
		.click Skeech Burrow##263717
		.' Collapse Skeech Burrows |q Skeech Incursion##5960/2 |goto -1837,-6238,-957
		.kill Skeech Brawler##262852+, Skeech Shaman##262860+
		.' Kill Skeech |q Skeech Incursion##5960/1 |goto -1837,-6238,-957
		.click Eldan Access Key Fragment##263724
		.' Collect Access Key Fragments |q The Key to Power##5959/3 |goto -1837,-6238,-957
	step
		'Press _C_ to open your Communicator:
		..turnin Skeech Incursion##5960
	step
		.' Use the Eldan Teleporter to return to the Elder Vault |q The Key to Power##5959/4 |goto LevianBay -1771,-6241,-954
	step
		.talk Analyst Spector##263652
		..turnin Getting a Head##5863 |goto LevianBay -2723,-5950,-1327
	step
		.talk The Caretaker##263636
		..turnin The Key to Power##5959 |goto LevianBay -2704,-5990,-1327
		..accept Unlocking Knowledge##5861 |goto -2704,-5990,-1327
	step
		.talk Artemis Zin##263635
		..turnin Unlocking Knowledge##5861 |goto LevianBay -2711,-5984,-1327
		..accept The Elder Cube##8826 |goto -2711,-5984,-1327
	step
		.talk Artemis Zin##263629
		..turnin The Elder Cube##8826 |goto -2711,-5985,-1327
		..accept Lost in the Fog##5865 |goto -2711,-5985,-1327
	step
		'_Pass through_ the hallway |goto LevianBay -2682,-6005,-1326 < 10
		.' _Enter_ the doorway |goto -2713,-6136,-1328 < 10
		.' Use the Eldan Teleporter to access the cave to the surface |q Lost in the Fog##5865/1 |goto -2713,-6198,-1327
	step
		'_Move along_ the canyons path |goto LevianBay -2219,-5145,-985 < 20
		.talk Kevo##263343
		..accept Unwelcome Guests##5864 |goto -2323,-5112,-976
	step
		.click Drop Pod Landing Beacon##263679
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2 |count 33 |goto LevianBay -2456,-5077,-993
	step
		.click Drop Pod Landing Beacon##263680
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2 |count 66 |goto LevianBay -2454,-5129,-988
	step
		.click Drop Pod Landing Beacon##263678
		.' Sabotage Exile Drop Pod Landing Beacons |q Lost in the Fog##5865/2 |goto -2529,-5117,-991
	step
		'Press _C_ to open your Communicator:
		..turnin Lost in the Fog##5865
	step
		.kill Exile Gunner##325173+, Exile Trooper##262805+
		.' Kill Exile forces in Greyshore |q Unwelcome Guests##5864/1 |goto LevianBay -2436,-5077,-992
	step
		'Press _C_ to open your Communicator:
		..turnin Unwelcome Guests##5864
		..accept A Daring Escape##5866 |goto -2499,-5074,-998
	step
		.kill 1 Exile Warbot##262833
		.' Defeat the Exile Warbot |q A Daring Escape##5866/1 |goto LevianBay -2422,-4918,-975
	step
		.' Follow the _path around_ |goto -2367,-5040,-981 < 10
		.click Girrok Vomit##262777
		..accept Girrok Ate My Status Report##8964 |goto -2336,-4952,-953
	step
		.click Navigation Controls##263668
		.' Choose _Yes_ to leave Levian Bay behind
		.' Use the Exile ship's Navigation Controls |q A Daring Escape##5866/2 |goto LevianBay -2543,-4965,-953
]])