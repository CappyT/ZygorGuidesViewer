if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Grimvault (46-50)",
	{
	faction="Exiles",
	startlevel=46,
	endlevel=50,
	image="ZygorUIGuides:Grimvault", 
	description="Grimvault is a zone in central Isigrol in WildStar. It is a contested zone that has been almost entirely taken over by The Strain. It is intended for level 46-50.",
	},
	[[
	step
		'Press _C_ to use your communicator:
		..accept An Unexpected Enemy##9070
	step
		.talk Deadeye Brightland##284334
		.' Meet Deadeye Brightland |q An Unexpected Enemy##9070/1 |goto Grimvault 1532,2499,-853
		.' Click _Yes_ to enter Grimvault |q An Unexpected Enemy##9070/2 |goto 1532,2499,-853
	step
		.talk Deadeye Brightland##282287
		..turnin An Unexpected Enemy##9070 |goto Grimvault 828,766,-947
		..accept Edge of Twilight##8051 |goto 828,766,-947
	step
		.talk Mineralogist Esmzov##282286
		..accept Just Another Brick##8056 |goto 827,771,-947
	step
		.kill 1 Cinderskin Slitherer##2305286
		.' Press _C_ to use your communicator
		..accept Endemic Eradication##8052 |goto 842,724,-958
	step
		.click Ship Debris##874726
		.kill Broken Fuselage##2649348+
		.' Rescue injured FCON troopers |q Edge of Twilight##8051/1 |goto 848,735,-957
		.kill Rancid Peep##2587235+
		.kill Cinderskin Slitherer##2657401+
		.' Kill Bloodsnout heynar, Grimspore rootbrutes, Strain and Ultraform creatures |q Endemic Eradication##8052/1 |goto 853,706,-956
	step
		.click Destroyed Rifle##280100
		..accept I Shall Call Her...##8058 |goto 776,678,-949
	step
		.click Splintered Handle##2581640 |tip This is found near the crashed ship.
		.' Acquire a suitable handle |q I Shall Call Her...##8058/1 |goto 760,724,-948
	step
		.kill 1 Dunbeak Scavenger##1346420+
		.click Exanite Shard##2814932
		.' Collect Exanite Shards |q Just Another Brick##8056/1 |goto Grimvault 702,729,-935
	step
		'Press _C_ to use your communicator:
		..turnin Just Another Brick##8056
	step
		.talk Sergeant Krull##282284
		..turnin Edge of Twilight##8051 |goto Grimvault 657,435,-945
	step
		.talk Pilot Rainbury##282278
		..accept Not On My Watch##8057 |goto Grimvault 622,428,-955
	step
		.talk Injured Trooper##2872858
		.' Help Injured Troopers up |tip You have to take each trooper one at a time. |goto Grimvault 605,392,-956 < 10
		.' Lead the Injured Trooper to the E-Med Station |q Not On My Watch##8057/2 |goto Grimvault 658,439,-945
	step
		.talk Sergeant Krull##282284
		..turnin Not On My Watch##8057 |goto 658,436,-945
	step
		.click Big Bored Barrel##885020
		.' Acquire a suitable barrel |q I Shall Call Her...##8058/2 |goto Grimvault 623,383,-951
	step
		.' Found all around the Fractured Fields:
		.kill Barbed Blightwing##2765372+
		.kill Blightwing Swarmer##2925708+
		.kill Barbwing Drone##2729829+
		.kill Barbwing Stinger##2726208+
		.kill Corrupted Stemdragon##2771991+
		.kill Corrupted Cankertail##2347207+
		.' Kill Corpsetusk warpigs, Strain and Ultraform creatures |q Endemic Eradication##8052/2 |goto Grimvault 737,84,-927
	step
		.click Rusty Trigger##2731909
		.' Acquire a suitable trigger |q I Shall Call Her...##8058/3 |goto 782,224,-930
		.click Loose Ammunition##2926871
		.' Acquire ammunition |q I Shall Call Her...##8058/4 |goto 727,193,-926
	step
		.click Enraged Cankertail##2955945
		.click Barbed Blightwing##2565067
		.' Press _T_ to use "Big Mama" on hostile creatures |q I Shall Call Her...##8058/5 |goto Grimvault 687,168,-921
	step
		'Press _C_ to use your communicator:
		..turnin I Shall Call Her...##8058
	step
		.talk Sergeant Kara##282283
		..turnin Endemic Eradication##8052 |goto Grimvault 909,35,-919
		..accept Hot Drop Troopers##8053 |goto 909,35,-919
	step
		.talk Zhanna Zarkkovian##282276
		..accept Garbage Collection##8059 |goto 934,63,-925
	step
		.click The Final Stand Taxi Kiosk##279311
		.' Get the _Final Stand_ taxi point |goto Grimvault 952,18,-925
		|confirm |q 8059
	step
		.click Transmat Terminal##280031
		.' Click _Yes_ to set your Recall to the _Final Stand_ |goto 992,-38,-916
		|confirm  |q 8059
	step
		.' Found all around this area:
		.kill Corrupted Cankertail##2930991+
		.click Dead Corrupted Cankertail##2838891
		.' Rig dead Corrupted Cankertails to explode |q Garbage Collection##8059/1 |goto Grimvault 847,139,-937
	step
		'Press _C_ to use your communicator:
		..turnin Garbage Collection##8059
	step
		.' Go to the drop location |q Hot Drop Troopers##8053/1 |goto Grimvault 794,214,-933
		.click Drop Spot##282166
		.' Call in Dropdown Destroyers |q Hot Drop Troopers##8053/2 |count 33 |goto 794,216,-932
		.click Drop Spot##285573
		.' Call in Dropdown Destroyers |q Hot Drop Troopers##8053/2 |count 66 |goto Grimvault 654,199,-907
		.click Drop Spot##285576
		.' Call in Dropdown Destroyers |q Hot Drop Troopers##8053/2 |goto 679,78,-926
	step
		.' Go to the Flank Tanks |q Hot Drop Troopers##8053/3 |goto 599,-24,-918
	step
		.talk Commander Durek##282279
		..turnin Hot Drop Troopers##8053 |goto 599,-22,-918
		..accept Gates of Fire##8054 |goto 599,-22,-918
	step
		.click Flank Tank##281984
		.' Ride the Flank Tank |q Gates of Fire##8054/1 |goto 594,-47,-918
	step
		.' Secure the Flank Points |q Gates of Fire##8054/2 |count 33 |goto Grimvault 612,-192,-920
		.' Secure the Flank Points |q Gates of Fire##8054/2 |count 66 |goto 640,-277,-930
		.' Secure the Flank Points |q Gates of Fire##8054/2 |goto 732,-384,-941
		.kill Monolith Mauler##2876262
		.' Kill the Monolith Mauler |q Gates of Fire##8054/3 |goto 737,-446,-951
	step
		'Press _C_ to use your communicator:
		..turnin Gates of Fire##8054
		..accept The Unstoppable Force##8055
	step
		'Press _C_ to use your communicator:
		..accept Rallying the Troops##8035 |goto Grimvault 816,-499,-942
	step
		.click Exile Soldier##3044034
		.' Press _T_ to encourage Exile Soldiers |q Rallying the Troops##8035/1 |goto Grimvault 883,-588,-977
	step
		.' Head to Stonebreaker Post |q The Unstoppable Force##8055/1 |goto Grimvault 839,-716,-983
	step
		.talk Commander Durek##281785
		..turnin The Unstoppable Force##8055 |goto Grimvault 842,-719,-983
		..accept Can't Turn Back Now##8030 |goto 842,-719,-983
	step
		.talk Kit Brinny##281781
		..turnin Rallying the Troops##8035 |goto Grimvault 832,-706,-983
		..accept The Hills Have Eyes##8032 |goto 832,-706,-983
	step
		.talk Sergeant Cragstone##281780
		..accept Fight for the Lost##8031 |goto Grimvault 819,-690,-983
	step
		.' All around this area:
		.kill Balehoof Grazer##2970406+
		.kill Fetid Scavenger##2700301+
		.kill Fetid Screecher##2684619+
		.' Kill Fetid vulcarrion, Balehoof dawngrazers and Ultraform creatures |q Fight for the Lost##8031/1 |goto 1145,-678,-961
		.kill Creeping Eyestalk##2918641+
		.' Destroy Creeping Eyestalks |q The Hills Have Eyes##8032/1 |goto 1188,-725,-957
	step
		'Press _C_ to use your communicator:
		..turnin The Hills Have Eyes##8032
	step
		.kill Creeping Spawner##3046375+ |tip These appear as orange skulls on your minimap. More can be found to the northeast.
		.' Destroy Creeping Spawners |q Can't Turn Back Now##8030/1 |goto 1399,-936,-962
	step
		'Press _C_ to use your communicator:
		..turnin Can't Turn Back Now##8030
		..accept Infiltrating the Nest##8033
	step
		.kill Warptooth Defiler##2772708+
		.kill Filthclaw Freak##2792119+
		.kill Filthclaw Stalker##7531455+
		.kill Warptooth Corruptor##1817367+
		.' Kill Filthclaw malverines, Warptooth corruptors and Ultraform creatures |q Fight for the Lost##8031/2 |goto Grimvault 1839,-1087,-984
	step
		.kill Crazed Sharpshooter##3112272+
		.kill Crazed Scout##3109241+
		.kill Crazed Medic##3110951+
		.' Kill Crazed humanoids |q Fight for the Lost##8031/3 |goto 2018,-1222,-984
	step
		'Press _C_ to use your communicator:
		..turnin Fight for the Lost##8031
	step
		.' Meet up with Avra Darkos |q Infiltrating the Nest##8033/1 |goto Grimvault 2019,-1485,-987
		.talk Avra Darkos##281784
		..turnin Infiltrating the Nest##8033 |goto 1966,-1562,-987
		..accept Straight to the Heart##8034 |goto 1966,-1562,-987
		..accept Knowing The Enemy##8038 |goto 1966,-1562,-987
		..accept Life or Death##8039 |goto 1966,-1562,-987
	step
		.click Spineridge Intel##3130328
		.' Collect Spineridge Intel |q Knowing The Enemy##8038/1 |goto 1967,-1542,-985
		.kill Spineridge Warrior##3110484+
		.kill Spineridge Operative##3214619+
		.kill Spineridge Agent##3194758+
		.' Kill Spineridge skurge |q Life or Death##8039/1 |goto 1987,-1578,-987
	step
		'Press _C_ to use your communicator:
		..turnin Knowing The Enemy##8038
		..turnin Life or Death##8039
	step
		.kill 1 Spineridge Commander##3202714 |q Straight to the Heart##8034/1 |goto 1936,-1900,-931
	step
		.' Step onto the teleporter |q Straight to the Heart##8034/2 |goto 1916,-2055,-892
	step
		'Press _C_ to use your communicator:
		..turnin Straight to the Heart##8034
		..accept Cutting the Power##8042
		..accept Xenophobia##8040
		..accept Techno-Phobia##8041
	step
		.' Go _up the ramps_ |goto Grimvault 1531,-1365,-1007 < 10
		.' _Take this elevator_ up |goto 1427,-1487,-937 < 10
		.click Timed Explosive Marker##281462
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 12 |goto 1436,-1529,-884
	step
		.' _Ride the elevator_ up |goto Grimvault 1244,-1470,-937 < 10
		.click Timed Explosive Marker##281465
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 25 |goto 1220,-1508,-884
	step
		.' _Ride the elevator_ |goto 1126,-1330,-937 < 10
		.click Timed Explosive Marker##285226
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 37 |goto 1084,-1337,-884
	step
		.' _Ride the elevator_ |goto 1142,-1147,-937 < 10
		.click Timed Explosive Marker##285228
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 50 |goto 1112,-1124,-886
	step
		.' _Ride the elevator_ |goto 1282,-1029,-937 < 10
		.click Timed Explosive Marker##285229
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 62 |goto 1270,-994,-885
	step
		.' _Ride the elevator_ up |goto 1465,-1044,-937 < 10
		.click Timed Explosive Marker##285227
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 75 |goto 1488,-1010,-884
	step
		.' _Ride the elevator_ up |goto 1584,-1185,-937 < 10
		.click Timed Explosive Marker##285233
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |count 87 |goto 1626,-1176,-884
	step
		.' _Ride the elevator_ |goto 1568,-1369,-937 < 10
		.click Timed Explosive Marker##285231
		.' Overload the Corrupted Generators |q Cutting the Power##8042/1 |goto 1604,-1392,-884
	step
		'Press _C_ to use your communicator:
		..turnin Cutting the Power##8042
		..accept Command Override##8043
	step
		.' All around the Corrupted Installation:
		.kill Corrupted Protector##3130727+
		.kill Corrupted Probe##3043402+
		.' Collect Techno-Phage Samples from Corrupted constructs |q Techno-Phobia##8041/1 |goto 1576,-1373,-886
	step
		'Press _C_ to use your communicator:
		..turnin Techno-Phobia##8041
	step
		.kill Ridgepaw Hunter##3303299+
		.kill Spineridge Watcher##3256352+
		.kill Ridgepaw Sniffer##3302201+
		.kill Spineridge Operative##3275847+
		.' Collect Bio-Phage Samples from Spineridge Agents and minions |tip These are found on the ground, near the outside wall. |q Xenophobia##8040/1 |goto Grimvault 1394,-1470,-1007
	step
		'Press _C_ to use your communicator:
		..turnin Xenophobia##8040
	step
		.' Teleport to the Command Center |q Command Override##8043/1 |goto 1157,-1237,-1003
		.kill 1 Corrupted Command Construct##3285213
		.' Kill the Corrupted Command Construct |q Command Override##8043/2 |goto Grimvault 1380,-1277,-821
	step
		'Press _C_ to use your communicator:
		..turnin Command Override##8043
		..accept Big Badda Boom##8036
	step
		.talk Fractured Caretaker##281328
		.' Talk to the Red Fractured Caretaker |goto Grimvault 1310,-1215,-821
		.' Click the Control Panels in the following order:
		.' _2, 4, 3, 1, 2, 4_
		.' Activate Control Panels in sequence |q Big Badda Boom##8036/1 |goto 1344,-1233,-821
		.' Teleport out |q Big Badda Boom##8036/6 |goto 1399,-1293,-819
	step
		'Press _C_ to use your communicator:
		..turnin Big Badda Boom##8036
		..accept The Equalizer##9416
	step
		.' _Follow the ramps_ up |goto Grimvault 1245,-1425,-1007 < 10
		.talk Trooper Stan##275839
		..turnin The Equalizer##9416 |goto Grimvault 1005,-1713,-968
		..accept Death or Glory##9417 |goto 1005,-1713,-968
	step
		.click Discarded Holoprojector##275784
		..accept Minefields and Mischief##8940 |goto 1005,-1715,-968
	step
		.click Boiling Depot Taxi Kiosk##279309
		.' Get the _Boiling Depot_ taxi point |goto Grimvault 992,-1743,-973
		|confirm |q 8940
	step
		.kill Kesselbug Larva##3346469+
		.kill Kesselbug Burrower##3335310+
		.kill Boiling Ravager##3240267+
		.' Kill Kesselbug terminites and Boiling Ravagers |q Death or Glory##9417/2 |goto Grimvault 1168,-1802,-995
	step
		.click Strain Mine##2432907
		.' Press _T_ to target a Strain Mine and set the trap |q Minefields and Mischief##8940/1 |goto Grimvault 1054,-2090,-973
	step
		.' _Follow the road_ north |goto Grimvault 893,-2261,-1005 < 10
		.' _Go east_ on the road here |goto Grimvault 782,-2983,-1002 < 10
		.talk Corporal Hauser##275851
		..turnin Minefields and Mischief##8940 |goto Grimvault 969,-3039,-994
		..turnin Death or Glory##9417 |goto 969,-3039,-994
		..accept Alive and Kicking##8945 |goto 969,-3039,-994
		..accept Sudden Impact##9418 |goto 969,-3039,-994
	step
		.kill Silvertail Pincer##5362277+
		.kill Silvertail Stinger##4469374+
		.' Kill Silvertail scrab |q Sudden Impact##9418/2 |goto Grimvault 1088,-3140,-996
		.kill Grimrock Pummeler##5494723+
		.kill Grimrock Devastator##5200770+
		.' Kill Grimrock gronyx |q Sudden Impact##9418/1 |goto 1062,-3186,-1008
	step
		'Press _C_ to use your communicator:
		..turnin Sudden Impact##9418
	step
		'Press _C_ to use your communicator:
		..accept Cryoship Down##8094 |goto 1058,-3293,-996
	step
		.talk Trooper Richter##4720099
		.' Kill the enemies that attack in waves
		.' Find Trooper Richter |q Alive and Kicking##8945/1 |goto 1065,-3419,-996
	step
		'Press _C_ to use your communicator:
		..turnin Alive and Kicking##8945 |goto 1065,-3419,-996
		..accept My Only Hope##8353 |goto 1065,-3419,-996
	step
		'Press _C_ to use your communicator:
		..accept Egg Hunt##8909 |goto Grimvault 946,-3830,-1010
	step
		.click Cryoglider Eggsac##5151280 |tip Staying in the water for too long with kill you, keep an eye on the bar in the top left part of your screen.
		.' Collect Cryoglider Eggs from Cryoglider Eggsacs |q Egg Hunt##8909/1 |goto 813,-3962,-1043
	step
		'Press _C_ to use your communicator:
		..turnin Egg Hunt##8909
	step
		.talk Avra Darkos##280501
		..accept Just Between Us##8101 |goto 811,-4138,-1044
	step
		.click Widowmaker Entry Console##271936
		.' Click _Yes_ to enter the Widowmaker |q Cryoship Down##8094/1 |goto 806,-4143,-1045
	step
		.talk Ashella Sunfell##280492
		..turnin Cryoship Down##8094 |goto Grimvault 2017,-4281,-1531
		..accept Come Out and Play##8095 |goto 2017,-4281,-1531
	step
		.talk Lulu Blackbush##280495
		..accept Running with the Blight##9406 |goto 2022,-4278,-1531
		..accept No Remorse##9410 |goto 2022,-4278,-1531
	step
		.click Luring Flare##280711
		.' Ignite Luring Flare |q Come Out and Play##8095/1 |goto 1996,-4264,-1531
		.' Survive Strain Ambush |q Come Out and Play##8095/2 |goto 1999,-4263,-1530
	step
		.talk Ashella Sunfell##280492
		..turnin Come Out and Play##8095 |goto 2017,-4281,-1531
		..accept Saving Commander Vaxul##8823 |goto 2017,-4281,-1531
	step
		.' _Jump onto_ the launcher |goto WesternGrimvault 2003,-4205,-1536 < 10
		.' Jump onto the _second launcher_ |goto WesternGrimvault 2005,-4200,-1469 < 10
		.' _Land_ on the upper platform |goto 2009,-4178,-1428 < 10
		.talk Commander Vaxul##280481
		.' Talk to Commander Vaxul |q Saving Commander Vaxul##8823/1 |goto 2023,-4160,-1427
	step
		.click Terminal 1984##280542
		.' Transmit Terminal 1984's data to Avra Darkos |q Just Between Us##8101/1 |goto 2024,-4176,-1428
	step
		'Press _C_ to use your communicator:
		..turnin Just Between Us##8101
		..accept Beneath, Between, and Behind##8102
	step
		.click Beam Tether Anchor##280477
		.' Click a Beam Tether Anchor and jump down to Commander Vaxul |goto 1982,-4158,-1427
		.talk Commander Vaxul##280474
		.' Check on Commander Vaxul |q Saving Commander Vaxul##8823/4 |goto 1994,-4155,-1531
	step
		'Press _C_ to use your communicator:
		..turnin Saving Commander Vaxul##8823
		..accept Danger! High Voltage##8096
	step
		.click Auxiliary Power Generator##280626
		.' Activate the Auxiliary Power Generator |q Danger! High Voltage##8096/1 |goto 2008,-4077,-1536
	step
		.click Power Circuit##280630
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |count 16 |goto 2002,-4070,-1536
		.' _Jump onto_ the lift |goto 1984,-4062,-1534 < 10
		.click Power Circuit##280637
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |count 33 |goto 1994,-4053,-1488
		.click Power Circuit##280633
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |count 50 |goto 1978,-4035,-1488
	step
		.click Power Circuit##280638
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |count 66 |goto 1982,-4027,-1488
		.click Power Circuit##280634
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |count 83 |goto 1993,-4021,-1489
	step
		.click Power Circuit##280631
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##8096/2 |goto 1954,-4027,-1488
		.click Power Circuit Breaker##280640
		.' Reset the Power Circuit Breaker |q Danger! High Voltage##8096/3 |goto 1952,-4008,-1487
	step
		'Press _C_ to use your communicator:
		..turnin Danger! High Voltage##8096
		..accept Freedom##8097
	step
		.click Cryo Pod##280622
		.' Open the Cryo Pods |q Freedom##8097/1 |goto 1902,-4066,-1536
	step
		.' All around the Widowmaker:
		.kill Writhing Soldier##4973428+
		.kill Writhing Medic##5309331+
		.kill Writhing Warrior##5642156+
		.kill Writhing Crewman##5467761+
		.' Kill Strain creatures |q Running with the Blight##9406/1 |goto 1906,-4091,-1533
		.' Kill the corrupted humanoids |q Freedom##8097/2 |goto 1906,-4091,-1533
	step
		'Press _C_ to use your communicator:
		..turnin Running with the Blight##9406
		..turnin Freedom##8097
		..accept Opposite Reaction##8098
	step
		.' _Jump onto_ the lift |goto 1842,-4063,-1534 < 10
		.' Kill Tekli the Admonisher |q Opposite Reaction##8098/1 |goto 1802,-4042,-1488
	step
		'Press _C_ to use your communicator:
		..turnin Opposite Reaction##8098
	step
		.' _Jump onto_ the lift |goto Grimvault 1813,-4057,-1484 < 10
		.' _Jump_ onto the second lift |goto 1813,-4096,-1456 < 10
		.' _Land_ on the upper platform here |goto 1783,-4159,-1427 < 10
		.' _Go through_ the doorway |goto 1772,-4158,-1426 < 10
		.click Department 5150 Entry Console##271931
		.' Click _Yes_ to enter Department 5150 |q Beneath, Between, and Behind##8102/1 |goto 1754,-4138,-1427
	step
		'Press _C_ to use your communicator:
		..turnin Beneath, Between, and Behind##8102
		..accept Limelight##8103
		..accept The Things That Should Not Be##9408
	step
		.click Security Control Board##280538 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##8103/1 |count 33 |goto Grimvault 978,-3744,-1347
		.click Security Control Board##280541 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##8103/1 |count 66 |goto Grimvault 932,-3744,-1346
		.click Security Control Board##280537 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##8103/1 |goto 1027,-3744,-1346
	step
		'Press _C_ to use your communicator:
		..turnin Limelight##8103
		..accept Assume Control##8104 |tip You must be at least level 48 to continue this quest chain.
	step
		.kill Reconfigured Ravenok##4366033+
		.kill Reprogrammed Razortail##5804710+
		.kill Reconfigured Ravenok HD##5553255+
		.' Kill augmented creatures |q The Things That Should Not Be##9408/1 |goto 957,-3733,-1346
	step
		'Press _C_ to use your communicator:
		..turnin The Things That Should Not Be##9408
	step
		.' _Go up_ the stairs |goto 957,-3720,-1346 < 10
		.click Interface OU-812##280512
		.' Use Interface OU-812 to activate Big Baby |q Assume Control##8104/1 |goto 944,-3769,-1337
	step
		'Press _C_ to use your communicator:
		..turnin Assume Control##8104
		..accept The Weapon##8105
	step
		.' Kill Big Baby |q The Weapon##8105/1 |goto 977,-3780,-1346
	step
		'Press _C_ to use your communicator:
		..turnin The Weapon##8105
		..accept Blaze of Glory##8099
	step
		.' You may have looted a quest item. Press _I_ to open your inventory and right click the _Sealed XAS Documents_
		.' Press _C_ to use your communicator
		..accept Double Envelope##8849
	step
		'Press _C_ to use your communicator:
		..turnin Double Envelope##8849
	step
		.click Department 5150 Exit Console##271937
		.' Click _Yes_ to leave Department 5150 |goto 983,-3708,-1346
		.' _Go through_ the doorway |goto Grimvault 1771,-4158,-1426
		.talk Commander Vaxul##280489
		.' Speak to Commander Vaxul |q Blaze of Glory##8099/1 |goto 1905,-4190,-1531
		.click Vacant Cryo Pod##280488
		.' Enter Vacant Cryo Pod |q Blaze of Glory##8099/3 |goto 2029,-4267,-1530
	step
		'Press _C_ to use your communicator:
		..turnin Blaze of Glory##8099
	step
		.kill Writhing Soldier##5686638+
		.kill Writhing Medic##5690508+
		.kill Writhing Crewman##5640323+
		.kill Writhing Officer##1069221+
		.kill Writhing Warrior##8361199+
		.' Kill corrupted humanoids |q No Remorse##9410/1 |goto Grimvault 898,-4061,-1034
	step
		'Press _C_ to use your communicator:
		..turnin No Remorse##9410
	step
		.' _Follow the path_ northwest |goto Grimvault 509,-4293,-958 < 10
		.click Transmat Terminal##274358
		.' Click _Yes_ to set your Recall ability to Aborian Camp |goto 340,-4135,-890
		|confirm |q 8353
	step
		.click Biomech Facility Alpha Taxi Kiosk##275218
		.' Get the _Bio-Mech Facility_ taxi point |goto WesternGrimvault 226,-4154,-891
		|confirm |q 8353
	step
		.talk The Caretaker##276079
		..turnin My Only Hope##8353 |goto Grimvault 71,-4097,-865
		..accept Pick Up the Pieces##8983 |goto 71,-4097,-865
		..accept The Wonderful One-Hundred##9425 |goto 71,-4097,-865
	step
		.' All around the Bio-Mech Facility - Gamma Sector:
		.kill Augmented Bladefoot##5991010+
		.kill Augmented Daggerfoot##5841170+
		.' Kill Augmented hookfoots |q The Wonderful One-Hundred##9425/3 |goto Grimvault -383,-4457,-955
		.' Kill Augmented Stemdragons |q The Wonderful One-Hundred##9425/1 |goto -337,-4491,-955
		.' Kill Augmented Bighorns |q The Wonderful One-Hundred##9425/2 |goto -274,-4346,-953
		.' Collect Giant Coolant Regulators from Augmented Bighorns |q Pick Up the Pieces##8983/1 |goto -274,-4346,-953
	step
		.click Plasma Generator Cell##5604587
		.' Collect Plasma Generator Coils |q Pick Up the Pieces##8983/3 |goto -414,-4505,-953
	step
		.' Found against the wall of this room:
		.click Debris Pile##275973
		.click System Board##6080706
		.' Collect System Boards from Debris Piles |q Pick Up the Pieces##8983/2 |goto Grimvault -677,-4638,-1042
		.click Laser Focusing Lens##6110610
		.' Collect Laser Focusing Lenses |q Pick Up the Pieces##8983/4 |goto Grimvault -639,-4634,-1042
	step
		'Press _C_ to use your communicator:
		..turnin Pick Up the Pieces##8983
		..accept We Built This Sentry##8984
	step
		.' _Go back up_ the ramp |goto WesternGrimvault -600,-4662,-1038 < 10
		.click Targeting Module Repair Point##275930
		.' Protect Eldan Repair Constructs at the Targeting Module Repair Point |q We Built This Sentry##8984/2 |goto -573,-4726,-953
		.click Beam Modulation Repair Point##275931
		.' Protect Eldan Repair Constructs at the Beam Modulation Repair Point |q We Built This Sentry##8984/3 |goto Grimvault -701,-4808,-952
		.click Heat Compensators Repair Point##275935
		.' Protect Eldan Repair Constructs at the Heat Compensators Repair Point |q We Built This Sentry##8984/4 |goto -775,-4679,-951
		.click Shielding Repair Point##275929
		.' Protect Eldan Repair Constructs at the Shielding Repair Point |q We Built This Sentry##8984/1 |goto Grimvault -646,-4602,-951
	step
		.click Turret Control Board##275925
		.' Activate Turret Control Board |q We Built This Sentry##8984/5 |goto Grimvault -720,-4626,-947
	step
		'Press _C_ to use your communicator:
		..turnin We Built This Sentry##8984
		..accept On the Loose##8987
	step
		.' _Jump down_ here |goto Grimvault -684,-4619,-977 < 10
		.' _Follow the ramp_ down |goto Grimvault -717,-4628,-1045 < 10
		.kill Augmented Skeledroid##6090588+ |tip These are found inside the underground section of Bio-Mech Facility.
		.' Kill Augmented Skeledroids |q The Wonderful One-Hundred##9425/4 |goto Grimvault -719,-4271,-1118
	step
		'Press _C_ to use your communicator:
		..turnin The Wonderful One-Hundred##9425
	step
		.' Follow one of the ramps back up to the normal level |goto Grimvault -808,-4472,-1110
		.kill 1 Clone of Stormtalon##6239836
		.' Destroy Clone of Stormtalon |q On the Loose##8987/1 |goto Grimvault -600,-4097,-948
	step
		.talk The Caretaker##276078
		..turnin On the Loose##8987 |goto -637,-4180,-955
		..accept On Through the Light##8598 |goto -637,-4180,-955
	step
		.' Teleport to the Spire |q On Through the Light##8598/1 |goto Grimvault -649,-4155,-953
	step
		'Press _C_ to use your communicator:
		..turnin On Through the Light##8598
		..accept System Sweep##8582
		..accept Clean Reboot##8599
	step
		.click Initializing Socket Panel##275901
		.' Activate the Initializing Socket Panel |q Clean Reboot##8599/1 |goto Grimvault -939,-4168,-724
	step
		.' _Ride an elevator_ down |goto -925,-4091,-722 < 10
		.click System Core Console##275892
		.' Activate the System Core Console |q Clean Reboot##8599/2 |goto -1015,-4087,-832
	step
		'Press _C_ to use your communicator:
		..turnin Clean Reboot##8599
	step
		.click Energy Worm##6078949
		.kill Twitchy Surgeling##6083332+
		.' Press _T_ to use the Deletion Grenade on Energy Worms then kill Twitchy Surgelings |q System Sweep##8582/1 |goto -995,-4073,-832
	step
		'Press _C_ to use your communicator:
		..turnin System Sweep##8582
		..accept Power Corrupts##8600
	step
		.click Eldan Circuit Alpha##275869
		.' Click the Eldan Circuit Alpha |goto -989,-4062,-831
		.' Kill Megawatt |q Power Corrupts##8600/1 |goto -943,-4019,-830
		.click Eldan Circuit Beta##275868
		.' Click the Eldan Circuit Beta |goto -1058,-4129,-830
		.' Kill Gigawatt |q Power Corrupts##8600/2 |goto -1103,-4175,-831
	step
		'Press _C_ to use your communicator:
		..turnin Power Corrupts##8600
		..accept Down into the Phagelabs##8164
	step
		.' _Ride_ an elevator up |goto Grimvault -1036,-4193,-832 < 10
		.' _Step into_ the teleporter to leave the Spire |goto -896,-4151,-720 < 10
		.' _Jump down_ here |goto Grimvault -412,-4128,-953 < 10
		.' _Follow the ramp_ down |goto -395,-4097,-1042 < 10
		.' _Follow_ the second ramp down to the lowest level |goto -747,-4256,-1120 < 10
		.' _Step into_ the teleporter |goto -1019,-4099,-1197 < 10
		.' Enter the Phagelabs |q Down into the Phagelabs##8164/1 |goto -1265,-5367,-1020
	step
		'Press _C_ to use your communicator:
		..turnin Down into the Phagelabs##8164
		..accept Protected Light##8155
	step
		.' This area is affected by _Corruption_. Keep an eye on the bar in the top left part of your screen
		.' If your Corrupted level goes beyond 50, some enemies will no longer be aggressive, but your damage will be reduced
		.' Once your Corruption level reaches 100 you start taking damage
		.' Remove your Corruption by standing near _Exanite Lanters_, which are part of the next quest
		|confirm |q 8155
	step
		'Press _C_ to use your communicator:
		..accept Shadows Over Eldan##8156 |goto Grimvault -768,-5391,-1032
	step
		.' _Follow the path through_ Phagelab Level 1 as you do the following:
		.click Exanite Lantern##276160
		.' Light the Exanite Lanterns |q Protected Light##8155/1 |goto Grimvault -761,-5408,-1033
		.kill Depraved Rottenclaw##6233225+
		.kill Depraved Viletooth##6075066+
		.' Kill Depraved canimid |q Shadows Over Eldan##8156/1 |goto -721,-5376,-1033
		.kill Phagelab Probe##6330931+
		.kill Phagelab Defender##6362867+
		.kill Phagelab Defector##5863995+
		.' Destroy Phagelab constructs |q Shadows Over Eldan##8156/2 |goto Grimvault -827,-5300,-1041
	step
		'Press _C_ to use your communicator:
		..turnin Protected Light##8155
		..turnin Shadows Over Eldan##8156
		..accept Clear the Air##8157
	step
		.' You may have looted a quest item while doing the previous quests
		.' Press _I_ to open your inventory and right click the _Bio-Phage Sample_
		..accept Capsules of Corruption##8160
	step
		.' All around Phagelab Level 1:
		.kill Parasitic Pustule##6026969+
		.kill Depraved Viletooth##1532599+
		.' Collect Vials of Bio-Phage from corrupted creatures |q Capsules of Corruption##8160/1 |goto -852,-5302,-1041
	step
		'Press _C_ to use your communicator:
		..turnin Capsules of Corruption##8160
		..accept All in the Dosage##8161
	step
		.' All around Phagelab Level 1:
		.click Parasitic Pustule##6230141
		.click Depraved Rottenclaw##6386065
		.' Press _T_ to throw bio-phage samples at corrupted creatures |q All in the Dosage##8161/1 |goto -849,-5305,-1041
	step
		'Press _C_ to use your communicator:
		..turnin All in the Dosage##8161
	step
		.' _Step into_ the teleporter |goto Grimvault -935,-5517,-1030 < 10
		.' Let your _Corruption_ level rise to 50, corrupting you and allowing you to use Phagelab Exhaust Vents
		.click Phagelab Exhaust Vent##276101 |tip These are bulging sacs and are easily spotted by their large circular AoE.
		.' Destroy the Phagelab Exhaust Vents |q Clear the Air##8157/1 |goto Grimvault -296,-5479,-1022
	step
		'Press _C_ to use your communicator:
		..turnin Clear the Air##8157
		..accept Minutes to Madness##8158
	step
		.kill Corrupted Phage Scientist##5972798
		.' Collect Phagelab Override Codes |q Minutes to Madness##8158/1 |goto Grimvault -463,-5446,-1031
		.click Phagelab Panel##276087
		.' Activate the Phagelab Panels |q Minutes to Madness##8158/2 |goto -447,-5334,-1040
	step
		.' _Go through_ the teleporter |goto -391,-5334,-1035
		.talk The Caretaker##276207
		..turnin Minutes to Madness##8158 |goto Grimvault -1164,-5334,-1039
		..accept Face the Phage Lord##8159 |goto -1164,-5334,-1039
	step
		.' _Pass through_ the doorway |goto -1142,-5303,-1035 < 10
		.' _Ride_ the elevator down |goto -1128,-5260,-1036 < 10
		.' _Go through_ the teleporter |goto -1135,-5245,-1072 < 10
		.' Click and activate all _12 Exanite Lanters_ in this room to lure Vorion out |goto WesternGrimvault -948,-4094,-1900
		|confirm |q 8159
	step
		.kill 1 Vorion the Corruptor##6404456
		.' Defeat Vorion the Corruptor |q Face the Phage Lord##8159/1 |goto Grimvault -1025,-4094,-1899
		.' _Step into_ the teleporter |goto -934,-4097,-1894
		.' _Go up_ the elevator |goto WesternGrimvault -1126,-5256,-1073
		.' _Pass through_ the doorway |goto Grimvault -1115,-5361,-1035
		.' Click _Yes_ to leave the Phagelabs |q Face the Phage Lord##8159/2 |goto -1028,-5418,-1036
	step
		.talk The Caretaker##276206
		..turnin Face the Phage Lord##8159 |goto Grimvault -1290,-5375,-1021
		..accept Rotten to the Core##8355 |goto -1290,-5375,-1021
		..accept A Plan For Every Contingency##8604 |goto -1290,-5375,-1021
	step
		'Press _C_ to use your communicator:
		..accept Shades of the Entity##8354
	step
		.' _Go through_ the teleporter |goto -1299,-5371,-1020 < 10
		.kill Defiled Probe##6056622+
		.kill Defiled Protector##6514287+
		.kill Agent of the Entity##6548903+
		.kill Blade of the Entity##6530977+
		.kill Claw of the Entity##6525199+
		.' Destroy Defiled constructs and Agents of the Entity |q Rotten to the Core##8355/1 |goto Grimvault 11,-5393,-1019
		.click Defiled Protector##6514287
		.' Press _T_ to reboot subdued Defiled Protectors |tip You must weaken them, but don't actually kill them. |q A Plan For Every Contingency##8604/1 |goto 21,-5402,-1019
	step
		'Press _C_ to use your communicator:
		..turnin Rotten to the Core##8355
		..turnin A Plan For Every Contingency##8604
	step
		.' _Go through_ the two doors |goto 162,-5393,-1029 < 10
		.kill 1 Shade of Water##609530
		.' Collect Essence of Water from the Shade of Water |q Shades of the Entity##8354/2 |goto 151,-5298,-1030
	step
		.' _Go back_ to the main chamber |goto 163,-5393,-1029 < 10
		.' _Go through_ the two doors |goto -119,-5393,-1029 < 10
		.kill 1 Shade of Fire##605607
		.' Collect Essence of Fire from the Shade of Fire |q Shades of the Entity##8354/1 |goto -107,-5295,-1029
	step
		.' _Go back_ to the main chamber |goto -123,-5393,-1029 < 10
		.' _Go through_ the door |goto 22,-5330,-1020 < 10
		.' _Step into_ the teleporter |goto 22,-5220,-1007 < 10
		.kill 1 Shade of Logic##573497
		.' Collect Essence of Logic from the Shade of Logic |q Shades of the Entity##8354/3 |goto Grimvault 429,-5180,-1037
	step
		.' _Go through_ the door |goto 429,-5256,-1033 < 10
		.' _Jump across_ the platforms to the opposite side of the room |goto 430,-5407,-1035 < 10 |tip They fire in 3 different patterns and briefly flash red before firing.
		.kill 1 Shade of Life##578988
		.' Collect Essence of Life from the Shade of Life |q Shades of the Entity##8354/4 |goto WesternGrimvault 429,-5520,-1037
	step
		.' _Step into_ the teleporter |goto WesternGrimvault 381,-5491,-1033 < 10
		.' _Go through_ the first puzzle teleporter |goto 49,-5063,-1017 < 10
		.' Go through the _second puzzle teleporter_ |goto 16,-5031,-1017 < 10
		.' Go through the _third puzzle teleporter_ |goto 50,-5002,-1017 < 10
		.' Go through the _final puzzle teleporter_ |goto 14,-5030,-1017 < 10
		|confirm |q 8354
	step
		.click Genesis Prime Figurine##267627
		..accept Genesis Prime Figurine##9147 |goto WesternGrimvault -152,-5236,-771
	step
		.' _Step into_ the teleporter |goto -169,-5033,-769 < 10
		.kill 1 Shade of Air##616005
		.' Collect Essence of Air from the Shade of Air |q Shades of the Entity##8354/6 |goto 171,-4622,-1080
	step
		.' _Go through_ the door |goto 201,-4620,-1082 < 10
		.kill 1 Shade of Earth##616735
		.' Collect Essence of Earth from the Shade of Earth |q Shades of the Entity##8354/5 |goto 170,-4669,-1083
	step
		'Press _C_ to use your communicator:
		..turnin Shades of the Entity##8354
		..accept Breaching the Core##8356
	step
		.click Entity Portal to Core##276323
		.' Enter the Core |q Breaching the Core##8356/1 |goto 171,-4808,-1082
	step
		.click Defiled Console##262232
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 16 |goto GrimvaultCore -67,35,-694
		.click Defiled Console##262233
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 33 |goto GrimvaultCore -2,73,-694
		.click Defiled Console##262231
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 50 |goto 64,35,-694
	step
		.click Defiled Console##262230
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 66 |goto 64,-41,-694
		.click Defiled Console##262234
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 83 |goto -1,-78,-694
		.click Defiled Console##262229
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |goto -67,-41,-694
	step
		.click The Entity##262220
		.' Press _T_ to use the Tear of Drusera to drive out The Entity |q Breaching the Core##8356/3 |goto GrimvaultCore -17,-3,-694
	step
		.talk Drusera##262301
		..turnin Breaching the Core##8356 |goto -78,-3,-694
		..accept With Great Power##8357 |goto -78,-3,-694
	step
		.' The next fight is very easy. You get turned into Drusera and use her powers to fight
		.' Her skills include:
		.' Primal Element Blast: _1_. Deals damage to the boss. Deals more damage the longer you let it channel without moving
		.' Ethreal Displacement: _2_. AoE that kills all adds near you
		.' Prime Restoration: _3_. Fully heals you. Has a 3 second cast and 30 second cooldown time
		|confirm |q 8357
	step
		.click Drusera's Portal to the Bio-Mech Facility##262233
		.' Click the portal to engage the Defiled World Destroyer |q With Great Power##8357/1 |goto -79,-10,-694
	step
		.kill 1 Defiled World Destroyer##276194
		.' Damage the Defiled World Destroyer with Drusera's abilities |q With Great Power##8357/2 |goto -567,-4390,-915
	step
		.talk Drusera##262288
		..turnin With Great Power##8357 |goto GrimvaultCore -77,-2,-694
	step
		.' Use your Recall ability to teleport back to Arborian Camp |goto WesternGrimvault 340,-4135,-890 < 20
		|confirm
	step
		.click Bounty Board##276060
		..accept Freedom of Information##8988 |goto WesternGrimvault 272,-4173,-885
	step
		.' _Follow the ramp down_ |goto WesternGrimvault 55,-4132,-870 < 10
		.' _Step into_ the teleporter |goto -643,-4169,-953 < 10
		.click External Interface Terminal##275835
		.' Hack External Interface Terminals |q Freedom of Information##8988/1 |count 25 |goto -959,-4129,-721
		.click External Interface Terminal##276922
		.' Hack External Interface Terminals |q Freedom of Information##8988/1 |count 50 |goto -991,-4160,-721
		.' _Run across the bridge_ when the platforms come down |goto -996,-4124,-721 < 10
		.click External Interface Terminal##276923
		.' Hack External Interface Terminals |q Freedom of Information##8988/1  |count 75 |goto -1089,-4064,-721
		.click External Interface Terminal##275837
		.' Hack External Interface Terminals |q Freedom of Information##8988/1 |goto -1057,-4033,-721
	step
		'Press _C_ to use your communicator:
		..turnin Freedom of Information##8988
	step
		.' Congratulations, you have completed the Exiles' Leveling Guide!
	]]
)