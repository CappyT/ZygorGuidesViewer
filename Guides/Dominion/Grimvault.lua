ZGV:RegisterGuide("Dominion\\Grimvault (46-50)",
	{
	faction="Dominion",
	startlevel=46,
	endlevel=50,
	--image="ZygorUIGuides:Grimvault", 
	description="Grimvault is a zone in central Isigrol in WildStar. It is a contested zone that has been almost entirely taken over by The Strain. It is intended for level 46-50."
	},
	[[
	step
		'Press _C_ to use your communicator:
		..accept An Unexpected Enemy##9069
	step
		.' _Cross_ the bridge |goto Malgrave 1645,2779,-837 < 10
		.' _Go up_ the staircase |goto 1869,2472,-804 < 10
		.talk Corrigan Doon##289867
		.' Meet Corrigan Doon |q An Unexpected Enemy##9069/1 |goto 1829,2473,-792
		.' Press _Yes_ to enter Grimvault |q An Unexpected Enemy##9069/2 |goto 1829,2473,-792
	step
		.talk Corrigan Doon##288991
		..turnin An Unexpected Enemy##9069 |goto Grimvault 2655,858,-875
		..accept Edge of Twilight##7661 |goto 2655,858,-875
	step
		.talk Exanitologist Egazz##285263
		..accept Just Another Brick##7666 |goto 2660,857,-876
	step
		.kill 1 Cinderskin Slitherer##13536643
		'Press _C_ to use your communicator:
		..accept Endemic Eradication##7662 |goto 2686,860,-884
	step
		.click Ship Debris##13835895
		.kill Broken Fuselage##2649348
		.' Rescue injured Radiant Legion soldiers |q Edge of Twilight##7661/1 |goto Grimvault 2651,912,-888
		.kill Rancid Peep##2587235+
		.kill Cinderskin Slitherer##2657401+
		.' Kill Bloodsnout heynar, Grimspore rootbrutes, Strain and Ultraform creatures |q Endemic Eradication##7662/1 |goto Grimvault 2653,920,-889
	step
		.kill Dunbeak Scavenger##13077430+
		.kill Dunbeak Shadow##14861279+
		.click Exanite Shard##2814932
		.' Collect Exanite Shards |q Just Another Brick##7666/1 |goto Grimvault 2619,966,-875
		.kill Cinderskin Slitherer##14227495+
		.kill Rancid Peep##14013186+
		.kill Cinderskin Crawler##14771790+
		.' Kill Corpsetusk warpigs, Strain and Ultraform creatures |q Endemic Eradication##7662/2 |goto 2642,950,-887
	step
		'Press _C_ to use your communicator:
		..turnin Just Another Brick##7666
	step
		.click Destroyed Rifle##285259
		..accept I Shall Call Her...##7668 |goto Grimvault 2669,1019,-878
	step
		.click Splintered Handle##14569519
		.' Acquire a suitable handle |q I Shall Call Her...##7668/1 |tip These randomly spawn around the crash site. You may have to search for one. |goto 2618,873,-872
	step
		.' _Follow_ the road east |goto Grimvault 2801,955,-883 < 10
		.talk Pilot Tiburteus##285261
		..accept Not On My Watch##7667 |goto 3121,769,-965
	step
		.talk Injured Soldier##13849831
		.' Help Injured Soldiers up |tip You have to take each trooper one at a time. |goto 3119,797,-967
		.' Lead Injured Soldiers to the Radiant Med Outpost |q Not On My Watch##7667/2 |goto 3128,715,-969
	step
		.talk Protector Villos##285264
		..turnin Edge of Twilight##7661 |goto Grimvault 3137,707,-969
		..turnin Not On My Watch##7667 |goto 3137,707,-969
	step
		.click Big Bored Barrel##14198583
		.' Acquire a suitable barrel |q I Shall Call Her...##7668/2 |goto Grimvault 3147,775,-968
	step
		.click Rusty Trigger##10746499
		.' Acquire a suitable trigger |q I Shall Call Her...##7668/3 |goto Grimvault 3220,569,-959
	step
		.click Loose Ammunition##14280349
		.' Acquire some ammunition |q I Shall Call Her...##7668/4 |goto 3233,435,-954
	step
		.click Barbed Blightwing##14227440+
		.click Barbwing Drone##14871953+
		.click Corrupted Cankertail##14675566+
		.click Barbwing Stinger##12597972+
		.' Press _T_ to use "Big Mama" on hostile creatures |q I Shall Call Her...##7668/5 |goto Grimvault 3236,427,-954
		.kill Barbed Blightwing##14227440+
		.kill Barbwing Drone##14871953+
		.kill Corrupted Cankertail##14675566+
		.kill Barbwing Stinger##12597972+
		.' Kill enraged animals, Strain and Ultraform creatures |q Endemic Eradication##7662/3 |goto 3168,476,-952
	step
		'Press _C_ to use your communicator:
		..turnin I Shall Call Her...##7668
	step
		.talk Grudo Grozz##285260
		..accept Garbage Collection##7669 |goto Grimvault 2766,381,-1008
	step
		.talk Toric Antevian##285265
		..turnin Endemic Eradication##7662 |goto 2731,379,-1003
		..accept Hot Drop Soldiers##7663 |goto 2731,379,-1003
	step
		.' Head to the drop location |q Hot Drop Soldiers##7663/1 |goto Grimvault 3086,386,-952
	step
		.click Drop Spot##285144
		.' Call in Skydrop Specialists and defend the landing zone |q Hot Drop Soldiers##7663/2 |count 1 |goto Grimvault 3117,444,-954
		.click Drop Spot##285143
		.' Call in Skydrop Specialists and defend the landing zone |q Hot Drop Soldiers##7663/2 |count 2 |goto Grimvault 3201,400,-953
		.click Drop Spot##285145
		.' Call in Skydrop Specialists and defend the landing zone |q Hot Drop Soldiers##7663/2 |goto Grimvault 3243,460,-955
	step
		.kill Corrupted Cankertail##14190090+
		.' Press _T_ to rig dead Corrupted Cankertails to explode |q Garbage Collection##7669/1 |goto Grimvault 3228,394,-953
	step
		'Press _C_ to use your communicator:
		..turnin Garbage Collection##7669
	step
		.' Go to the Flank Tanks |q Hot Drop Soldiers##7663/3 |goto Grimvault 3042,225,-941
	step
		.talk Kezrek Warbringer##288987
		..turnin Hot Drop Soldiers##7663 |goto 3064,244,-941
		..accept Gates of Fire##7664 |goto 3064,244,-941
	step
		.click Flank Tank##285106
		.' Ride the Flank Tank |q Gates of Fire##7664/1 |goto 3087,262,-941
	step
		.' Secure the Flank Points |q Gates of Fire##7664/2 |count 1 |goto 2858,170,-947
		.' Secure the Flank Points |q Gates of Fire##7664/2 |count 2 |goto 2726,195,-963
		.' Secure the Flank Points |q Gates of Fire##7664/2 |goto 2668,151,-970
		.' Kill the Monolith Mauler |q Gates of Fire##7664/3 |goto 2678,-8,-972
	step
		'Press _C_ to use your communicator:
		..turnin Gates of Fire##7664
		..accept The Unstoppable Force##7665
	step
		'Press _C_ to use your communicator:
		..accept Rallying the Troops##7709 |goto 2662,-166,-994
	step
		.click Dominion Soldier##14925183
		.' Press _T_ to encourage Dominion Soldiers |q Rallying the Troops##7709/1 |goto 2672,-236,-1005
	step
		.talk Nurse Sabinec##284869
		..turnin Rallying the Troops##7709 |goto 2679,-318,-1011
		..accept The Hills Have Eyes##7706 |goto 2679,-318,-1011
	step
		.' Head to Dawnbringer Outpost |q The Unstoppable Force##7665/1 |goto Grimvault 2701,-332,-1006
	step
		.talk Kezrek Warbringer##284872
		..turnin The Unstoppable Force##7665 |goto 2701,-339,-1006
		..accept Can't Turn Back Now##7704 |goto 2701,-339,-1006
	step
		.talk Major Caros##284870
		..accept Fight For the Lost##7705 |goto Grimvault 2699,-357,-1011
	step
		.kill Creeping Eyestalk##14410349+
		.' Destroy Creeping Eyestalks |q The Hills Have Eyes##7706/1 |goto 2536,-480,-989
		.kill Balehoof Charger##13829448+
		.kill Balehoof Grazer##14848319+
		.kill Fetid Screecher##14342314+
		.' Kill Fetid vulcarrion, Balehoof dawngrazers and Ultraform creatures |q Fight For the Lost##7705/1 |goto 2536,-480,-989
	step
		'Press _C_ to use your communicator:
		..turnin The Hills Have Eyes##7706
	step
		.kill Creeping Spawner##14384975+
		.' Destroy Creeping Spawners |q Can't Turn Back Now##7704/1 |goto 2597,-737,-977
	step
		'Press _C_ to use your communicator:
		..turnin Can't Turn Back Now##7704
		..accept Infiltrating the Nest##7707
	step
		.kill Filthclaw Stalker##14343679+
		.kill Filthclaw Freak##13695738+
		.kill Warptooth Defiler##13953257+
		.kill Warptooth Corruptor##14024824+
		.' Kill Filthclaw malverines, Warptooth corruptors and Ultraform creatures |q Fight For the Lost##7705/2 |goto Grimvault 2154,-830,-987
	step
		.kill Crazed Scout##13845998+
		.kill Crazed Researcher##15182639+
		.kill Crazed Sharpshooter##14244280+
		.kill Crazed Medic##13917884+
		.' Kill Crazed humanoids and Ultraform creatures |q Fight For the Lost##7705/3 |goto Grimvault 2004,-1223,-992
	step
		'Press _C_ to use your communicator:
		..turnin Fight For the Lost##7705
	step
		.' Meet up with Agent Lex |q Infiltrating the Nest##7707/1 |goto Grimvault 2008,-1516,-987
	step
		.talk Agent Lex##284871
		..turnin Infiltrating the Nest##7707 |goto 2042,-1587,-987
		..accept Straight to the Heart##7708 |goto 2042,-1587,-987
		..accept Knowing the Enemy##7713 |goto 2042,-1587,-987
		..accept Life or Death##7895 |goto 2042,-1587,-987
	step
		.click Spineridge Intel##14554540
		.' Collect Spineridge Intel |q Knowing the Enemy##7713/1 |goto 2034,-1597,-987
	step
		'Press _C_ to use your communicator:
		..turnin Knowing the Enemy##7713
	step
		.kill Spineridge Watcher##7374097+
		.kill Spineridge Agent##13849530+
		.kill Ridgepaw Sniffer##14310931+
		.kill Spineridge Operative##13507929+
		.kill Spineridge Warrior##14571034+
		.' Kill Spineridge Agents |q Life or Death##7895/1 |goto 1996,-1596,-987
	step
		'Press _C_ to use your communicator:
		..turnin Life or Death##7895
	step
		.' Kill Spineridge Commander |q Straight to the Heart##7708/1 |goto Grimvault 1934,-1897,-930
	step
		.' Step onto the teleporter |q Straight to the Heart##7708/2 |goto Grimvault 1918,-2052,-891
	step
		'Press _C_ to use your communicator:
		..turnin Straight to the Heart##7708
		..accept Cutting the Power##7898
		..accept Xenophobia##7896
		..accept Techno-Phobia##7897
	step
		.' _Go up_ the ramps |goto Grimvault 2379,-1155,-1017
		.' _Take this elevator_ up |goto 2352,-999,-947
		.click Timed Explosive Marker##281462
		.' Overload the Corrupted Generators |q Cutting the Power##7898/1 |count 1 |goto 2315,-980,-894
	step
		.click Installation Panel##277815 |goto Grimvault 2330,-963,-896
		.' Ride the new platform to the next Generator |goto 2336,-958,-895
		.click Timed Explosive Marker##281465
		.' Overload the Corrupted Generators |q Cutting the Power##7898/1 |count 2 |goto 2471,-830,-894
	step
		.' Continue riding platforms and planting explosives on Generators around the perimeter of the Corrupted Installation
		.click Timed Explosive Marker##281465
		.' Overload the Corrupted Generators |q Cutting the Power##7898/2
	step
		'Press _C_ to use your communicator:
		..turnin Cutting the Power##7898
		..accept Command Override##7899
	step
		.' All around the Corrupted Installation:
		.kill Corrupted Protector##3130727
		.kill Corrupted Probe##3043402
		.' Collect Techno-Phage Samples from Corrupted constructs |q Techno-Phobia##7897/1 |goto Grimvault 2327,-1110,-951
	step
		'Press _C_ to use your communicator:
		..turnin Techno-Phobia##7897
	step
		.kill Ridgepaw Hunter##14776250+
		.kill Ridgepaw Sniffer##13657998+
		.kill Spineridge Watcher##14711445+
		.kill Spineridge Operative##14367465+
		.' Collect Bio-Phage Samples from Spineridge Agents and minions |q Xenophobia##7896/1 |goto 2381,-1116,-1017 |tip These are found on the ground, near the outside wall.
	step
		'Press _C_ to use your communicator:
		..turnin Xenophobia##7896
	step
		.' _Follow_ the path around |goto Grimvault 2383,-1003,-1017 < 10
		.' _Teleport_ to the Command Center |q Command Override##7899/1 |goto 2719,-947,-1013
		.' Kill the Corrupted Command Construct |q Command Override##7899/2 |goto 2580,-1113,-832
	step
		'Press _C_ to use your communicator:
		..turnin Command Override##7899
		..accept Big Badda Boom##7710
	step
		.talk Fractured Caretaker##284590
		.' Talk to the Red Fractured Caretaker |goto 2568,-1031,-832
		.' Click the Control Panels in the following order:
		.' 2, 4, 3, 1, 2, 4
		.' Teleport out |q Big Badda Boom##7710/6 |goto Grimvault 2591,-1138,-832
	step
		'Press _C_ to use your communicator:
		..turnin Big Badda Boom##7710
		..accept The Equalizer##9413
	step
		.' _Go up_ the ramps |goto 2510,-904,-1017 < 10
		.' _Follow_ the road west |goto 1872,-1670,-987 < 10
		.talk Commando Sykill##276234
		..turnin The Equalizer##9413 |goto 1327,-1762,-980
		..accept Death or Glory##9414 |goto 1327,-1762,-980
	step
		.click Discarded Holoprojector##276179
		..accept Minefields and Mischief##8939 |goto 1333,-1758,-980
	step
		.kill Kesselbug Larva##390190+
		.kill Kesselbug Burrower##394053+
		.kill Kesselbug Tunneler##438244+
		.' Kill Kesselbug terminites and Boiling Ravagers |q Death or Glory##9414/2 |goto 1172,-1804,-1001
	step
		.click Strain Mine##559196
		.' Press _T_ to target a Strain Mine and set the trap |q Minefields and Mischief##8939/1 |goto WesternGrimvault 1077,-2084,-974
	step
		.' Find Captain Caedis |q Death or Glory##9414/1 |goto WesternGrimvault 544,-2951,-996
	step
		.talk Captain Caedis##276175
		..turnin Death or Glory##9414 |goto 502,-2961,-996
		..turnin Minefields and Mischief##8939 |goto 502,-2961,-996
		..accept Alive and Kicking##8954 |goto 502,-2961,-996
		..accept Sudden Impact##9415 |goto 502,-2961,-996
	step
		.kill Grimrock Devastator##413259+
		.kill Grimrock Pounder##273328+
		.kill Grimrock Pummeler##273336+
		.' Kill Grimrock gronyx |q Sudden Impact##9415/1 |goto 728,-2704,-996
	step
		.kill Silvertail Stinger##818466+
		.' Kill Silvertail scrab |q Sudden Impact##9415/2 |goto WesternGrimvault 589,-2971,-999
	step
		'Press _C_ to use your communicator:
		..turnin Sudden Impact##9415
	step
		.talk Commando Sunder##556497
		.' Find and protect Commando Sunder |q Alive and Kicking##8954/1 |goto WesternGrimvault 223,-3570,-957
	step
		'Press _C_ to use your communicator:
		..turnin Alive and Kicking##8954
		..accept My Only Hope##8353
	step
		'Press _C_ to use your communicator:
		..accept Cryoship Down##7887
	step
		'Press _C_ to use your communicator:
		..accept Egg Hunt##8026 |goto WesternGrimvault 667,-4019,-1037
	step
		.click Cryoglider Eggsac##5151280 |tip Staying in the water for too long with kill you, keep an eye on the bar in the top left part of your screen.
		.' Collect Cryoglider Eggs from Cryoglider Eggsacs |q Egg Hunt##8026/1 |goto 813,-3962,-1043
	step
		'Press _C_ to use your communicator:
		..turnin Egg Hunt##8026
	step
		.talk Agent Lex##284320
		..accept Just Between Us##7687 |goto WesternGrimvault 690,-4106,-1011
	step
		.click Fist of Azrion Entry Console##279837
		.' Click _Yes_ to enter the Widowmaker |q Cryoship Down##7887/1 |goto 689,-4121,-1010
	step
		.talk Nerissa Artan##284316
		..turnin Cryoship Down##7887 |goto WesternGrimvault 1530,-4270,-1531
		..accept Come Out and Play##7681 |goto 1530,-4270,-1531
	step
		.talk Ringo Hax##287978
		..accept Running with the Blight##9405 |goto 1528,-4273,-1531
		..accept No Remorse##9409 |goto 1528,-4273,-1531
	step
		.click Luring Flare##280711
		.click Luring Flare##284395
		.' Ignite Luring Flare |q Come Out and Play##7681/1 |goto WesternGrimvault 1501,-4263,-1530
		.' Survive Strain Ambush |q Come Out and Play##7681/2 |goto 1999,-4263,-1530
	step
		.talk Nerissa Artan##284316
		..turnin Come Out and Play##7681 |goto WesternGrimvault 1530,-4270,-1531
		..accept Saving Captain Sabes##8539 |goto 1530,-4270,-1531
	step
		.' _Jump onto_ the first launcher |goto 1505,-4208,-1534 < 10
		.' _Jump onto_ the second launcher |goto 1505,-4195,-1474 < 10
		.' _Reach_ the high platform |goto 1511,-4180,-1428 < 10
		.talk Captain Sabes##287975
		.' Talk to Captain Sabes |q Saving Captain Sabes##8539/1 |goto 1531,-4160,-1427
	step
		.click Terminal 2112##287965
		.' Transmit Terminal 2112's data to Agent Lex |q Just Between Us##7687/1 |goto WesternGrimvault 1525,-4176,-1428
	step
		'Press _C_ to use your communicator:
		..turnin Just Between Us##7687
		..accept Beneath, Between, and Behind##7688
	step
		.click Beam Tether Anchor##284273
		.' Click a Beam Tether Anchor and jump down to Captain Sabes |q Saving Captain Sabes##8539/2 |goto WesternGrimvault 1490,-4177,-1427
	step
		.talk Captain Sabes##284309
		.' Check on Captain Sabes |q Saving Captain Sabes##8539/4 |goto 1487,-4157,-1531
	step
		'Press _C_ to use your communicator:
		..turnin Saving Captain Sabes##8539
		..accept Danger! High Voltage##7682
	step
		.click Auxiliary Power Generator##284387
		.' Activate the Auxiliary Power Generator |q Danger! High Voltage##7682/1 |goto 1506,-4081,-1535
	step
		.click Power Circuit##284393
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |count 1 |goto 1502,-4070,-1536
		.' _Jump onto_ the lift |goto 1486,-4062,-1536 < 10
		.click Power Circuit##284392
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |count 2 |goto 1494,-4053,-1488
		.click Power Circuit##284390
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |count 3 |goto 1478,-4037,-1488
	step
		.click Power Circuit##284394
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |count 4 |goto 1482,-4024,-1488
		.click Power Circuit##284389
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |count 5 |goto 1493,-4021,-1488
		.click Power Circuit##284391
		.' Repair the Power Circuits in the correct order |q Danger! High Voltage##7682/2 |goto 1453,-4025,-1488
	step
		.click Master Circuit Breaker##284386
		.' Reset the Master Circuit Breaker |q Danger! High Voltage##7682/3 |goto WesternGrimvault 1447,-4008,-1488
	step
		'Press _C_ to use your communicator:
		..turnin Danger! High Voltage##7682
		..accept Freedom##7683
	step
		.click Cryo Pod##284339
		.' Open the Cryo Pods |q Freedom##7683/1 |goto WesternGrimvault 1418,-4077,-1536
	step
		.' All around the Widowmaker:
		.kill Writhing Soldier##4973428+
		.kill Writhing Medic##5309331+
		.kill Writhing Warrior##5642156+
		.kill Writhing Crewman##5467761+
		.kill Writhing Officer##504645+
		.' Kill Strain creatures |q Running with the Blight##9405/1 |goto 1405,-4068,-1536
		.' Kill corrupted humanoids |q Freedom##7683/2 |goto 1400,-4083,-1536
	step
		'Press _C_ to use your communicator:
		..turnin Freedom##7683
		..accept Opposite Reaction##7684
		..turnin Running with the Blight##9405
	step
		.' _Jump onto_ the lift |goto WesternGrimvault 1341,-4064,-1536 < 10
		.' Kill Kothacheyah, the Star Slayer |q Opposite Reaction##7684/1 |goto 1305,-4042,-1488
	step
		'Press _C_ to use your communicator:
		..turnin Opposite Reaction##7684
	step
		.' _Jump onto_ the first lift |goto 1311,-4055,-1485 < 10
		.' _Jump onto_ the second lift |goto 1309,-4096,-1456 < 10
		.' _Land_ on the upper platform |goto 1287,-4148,-1427 < 10
		.' _Go through_ the doorway |goto 1273,-4158,-1426 < 10
		.click Department YYZ Entry Console##279827
		.' Click _Yes_ to enter Department YYZ |q Beneath, Between, and Behind##7688/1 |goto 1254,-4135,-1427
	step
		'Press _C_ to use your communicator:
		..turnin Beneath, Between, and Behind##7688
		..accept Limelight##7689
		..accept The Things That Should Not Be##9407
	step
		.click Security Control Board##280538 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##7689/1 |count 1 |goto WesternGrimvault 977,-3949,-1347
		.click Security Control Board##280541 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##7689/1 |count 2 |goto 934,-3956,-1346
		.click Security Control Board##280537 |tip Try to avoid the white spot lights.
		.' Hack the Security Control Boards |q Limelight##7689/1 |goto 1024,-3954,-1346
	step
		'Press _C_ to use your communicator:
		..turnin Limelight##7689
		..accept Assume Control##7690
	step
		.kill Reconfigured Ravenok##4366033+
		.kill Reprogrammed Razortail##5804710+
		.kill Reconfigured Ravenok HD##5553255+
		.' Kill augmented creatures |q The Things That Should Not Be##9407/1 |goto WesternGrimvault 938,-3966,-1346
	step
		'Press _C_ to use your communicator:
		..turnin The Things That Should Not Be##9407
	step
		.' _Go up_ the stairs |goto 956,-3933,-1346 < 10
		.click Console X-1##284305
		.' Use Console X-1 to activate the X-Periment |q Assume Control##7690/1 |goto 944,-3980,-1337
	step
		'Press _C_ to use your communicator:
		..turnin Assume Control##7690
		..accept The Weapon##7691
	step
		.' Kill the X-Periment |q The Weapon##7691/1 |goto WesternGrimvault 977,-3995,-1346
	step
		'Press _C_ to use your communicator:
		..turnin The Weapon##7691
		..accept Blaze of Glory##7685
	step
		.click Department YYZ Exit Console##279833
		.' Click _Yes_ to leave Department YYZ |goto WesternGrimvault 983,-3916,-1346
		.' _Go through_ the door |goto 1272,-4158,-1426 < 10
		.talk Captain Sabes##284310
		.' Speak to Captain Sabes |q Blaze of Glory##7685/1 |goto 1406,-4190,-1531
		.click Vacant Cryo Pod##279222
		.' Use the Fist of Azrion Exit Console |q Blaze of Glory##7685/2 |goto 1530,-4278,-1531
	step
		'Press _C_ to use your communicator:
		..turnin Blaze of Glory##7685
	step
		.kill Writhing Soldier##5686638+
		.kill Writhing Medic##5690508+
		.kill Writhing Crewman##5640323+
		.kill Writhing Officer##1003723+
		.' Kill corrupted humanoids |q No Remorse##9409/1 |goto 595,-3983,-1040
	step
		'Press _C_ to use your communicator:
		..turnin No Remorse##9409
	step
		.' _Follow_ this path north |goto WesternGrimvault 242,-3713,-937 < 10
		.click Biomech Facility Alpha Taxi Kiosk##274528
		.' Get the _Bio-Mech Facility_ flight point |goto 220,-4038,-891
		|confirm
	step
		.click Transmat Terminal##274920
		.' Set _Legion's Landing_ as your Recall |goto WesternGrimvault 337,-4058,-890
		|confirm
	step
		.talk The Caretaker##276407
		..turnin My Only Hope##8353 |goto Grimvault 71,-4097,-865
		..accept Pick Up the Pieces##8573 |goto 71,-4097,-865
		..accept The Wonderful One-Hundred##9411 |goto 71,-4097,-865
	step
		.' All around the Bio-Mech Facility - Beta Sector:
		.kill Augmented Bladefoot##5991010+
		.kill Augmented Daggerfoot##5841170+
		.' Kill Augmented hookfoots |q The Wonderful One-Hundred##9411/3 |goto -235,-3990,-954
		.' Kill Augmented Stemdragons |q The Wonderful One-Hundred##9411/1 |goto -273,-3986,-953
		.' Kill Augmented Bighorns |q The Wonderful One-Hundred##9411/2 |goto -266,-3889,-952
		.' Collect Giant Coolant Regulators from Augmented Bighorns |q Pick Up the Pieces##8573/1 |goto -267,-3877,-953
	step
		.click Plasma Generator Cell##5604587
		.' Collect Plasma Generator Coils |q Pick Up the Pieces##8573/3 |goto WesternGrimvault -377,-3629,-953
	step
		.' Found against the wall of this room:
		.click Debris Pile##275973
		.click System Board##6080706
		.' Collect System Boards from Debris Piles |q Pick Up the Pieces##8573/2 |goto WesternGrimvault -748,-3506,-1041
		.click Laser Focusing Lens##6110610
		.' Collect Laser Focusing Lenses |q Pick Up the Pieces##8573/4 |goto WesternGrimvault -748,-3506,-1041
	step
		'Press _C_ to use your communicator:
		..turnin Pick Up the Pieces##8573
		..accept We Built This Sentry##8574
	step
		.' Go back up the ramp |goto WesternGrimvault -748,-3447,-1038 < 10
		.click Heat Compensators Repair Point##275935
		.' Protect Eldan Repair Constructs at the Heat Compensators Repair Point |q We Built This Sentry##8574/4 |goto WesternGrimvault -703,-3385,-953
		.click Beam Modulation Repair Point##275931
		.' Protect Eldan Repair Constructs at the Beam Modulation Repair Point |q We Built This Sentry##8574/3 |goto -776,-3505,-953
		.click Targeting Module Repair Point##275930
		.' Protect Eldan Repair Constructs at the Targeting Module Repair Point |q We Built This Sentry##8574/2 |goto -653,-3590,-953
		.click Shielding Repair Point##275929
		.' Protect Eldan Repair Constructs at the Shielding Repair Point |q We Built This Sentry##8574/1 |goto -575,-3468,-953
	step
		.click Turret Control Board##275925
		.' Activate Turret Control Board |q We Built This Sentry##8574/5 |goto -720,-3568,-947
	step
		'Press _C_ to use your communicator:
		..turnin We Built This Sentry##8574
		..accept On the Loose##8581
	step
		.' Jump down here |goto WesternGrimvault -743,-3552,-953
		.' Follow the ramp down |goto -712,-3556,-1041
		.' Kill Augmented Skeledroids |q The Wonderful One-Hundred##9411/4 |goto WesternGrimvault -739,-3880,-1119 |tip These are found inside the underground section of Bio-Mech Facility.
	step
		'Press _C_ to use your communicator:
		..turnin The Wonderful One-Hundred##9411
	step
		.' Follow one of the ramps back up to the normal level |goto WesternGrimvault -810,-3725,-1111
		.kill 1 Clone of Stormtalon##6239836
		.' Destroy Clone of Stormtalon |q On the Loose##8581/1 |goto Grimvault -600,-4097,-948
	step
		.talk The Caretaker##276078
		..turnin On the Loose##8581 |goto WesternGrimvault -638,-4020,-955
		..accept On Through the Light##8598 |goto WesternGrimvault -638,-4020,-955
	step
		.' Teleport to the Spire |q On Through the Light##8598/1 |goto WesternGrimvault -645,-4036,-953
	step
		'Press _C_ to use your communicator:
		..turnin On Through the Light##8598
		..accept System Sweep##8582
		..accept Clean Reboot##8599
	step
		.click Initializing Socket Panel##275901
		.' Activate the Initializing Socket Panel |q Clean Reboot##8599/1 |goto WesternGrimvault -1095,-4009,-724
	step
		.' Ride an elevator down |goto WesternGrimvault -1022,-4011,-722
		.click System Core Console##275892
		.' Activate the System Core Console |q Clean Reboot##8599/2 |goto -1015,-4087,-832
	step
		'Press _C_ to use your communicator:
		..turnin Clean Reboot##8599
	step
		.click Energy Worm##6078949
		.kill Twitchy Surgeling##6083332
		.' Press _T_ to use the Deletion Grenade on Energy Worms and kill Twitchy Surgelings |q System Sweep##8582/1 |goto -995,-4073,-832
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
		.' _Ride_ an elevator up |goto -1123,-4106,-832 < 10
		.' _Run across_ the platforms here when they form a bridge |goto WesternGrimvault -1052,-4070,-721 < 10
		.' _Step into_ the teleporter |goto WesternGrimvault -896,-4149,-720
		.' _Jump down_ here |goto -412,-4125,-953 < 10
		.' _Follow_ the ramp down |goto -397,-4097,-1042 < 10
		.' _Go down_ the next ramp |goto -743,-4259,-1119 < 10
		.' _Step into_ the teleporter |goto -1020,-4099,-1200 < 10
		.' Enter the Phagelabs |q Down into the Phagelabs##8164/1 |goto -1261,-5370,-1020
	step
		'Press _C_ to use your communicator:
		..turnin Down into the Phagelabs##8164
		..accept Protected Light##8155
	step
		.' This area is affected by _Corruption_. Keep an eye on the bar in the top left part of your screen
		.' If your Corrupted level goes beyond 50, some enemies will no longer be aggressive, but your damage will be reduced
		.' Once your Corruption level reaches 100 you start taking damage
		.' Remove your Corruption by standing near _Exanite Lanters_, which are part of the next quest
		|confirm
	step
		'Press _C_ to use your communicator:
		..accept Shadows Over Eldan##8156 |goto Grimvault -768,-5391,-1032
	step
		.' Follow the path through Phagelab Level 1 as you do the following:
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
		.' _Step into_ the teleporter |goto WesternGrimvault -931,-5520,-1030
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
		.kill Corrupted Phage Scientist##6451620
		.' Collect Phagelab Override Codes |q Minutes to Madness##8158/1 |goto Grimvault -447,-5328,-1040
		.click Phagelab Panel##276087
		.' Activate the Phagelab Panels |q Minutes to Madness##8158/2 |goto -447,-5334,-1040
	step
		.' _Go through_ the teleporter |goto -392,-5335,-1035 < 10
		.talk The Caretaker##276207
		..turnin Minutes to Madness##8158 |goto Grimvault -1164,-5334,-1039
		..accept Face the Phage Lord##8159 |goto -1164,-5334,-1039
	step
		.' _Pass through_ the doorway |goto -1142,-5303,-1035 < 10
		.' _Ride_ the elevator down |goto -1128,-5260,-1036 < 10
		.' _Go through_ the teleporter |goto -1135,-5245,-1072 < 10
		.' Click and activate all _12 Exanite Lanters_ in this room to lure Vorion out |goto WesternGrimvault -948,-4094,-1900
		|confirm
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
		.' _Go through_ the teleporter |goto -1299,-5371,-1020
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
		.' _Go through_ the two doors |goto 162,-5393,-1029
		.kill 1 Shade of Water##609530
		.' Collect Essence of Water from the Shade of Water |q Shades of the Entity##8354/2 |goto 151,-5298,-1030
	step
		.' _Go back_ to the main chamber |goto 163,-5393,-1029
		.' _Go through_ the two doors |goto -119,-5393,-1029
		.kill 1 Shade of Fire##605607
		.' Collect Essence of Fire from the Shade of Fire |q Shades of the Entity##8354/1 |goto -107,-5295,-1029
	step
		.' _Go back_ to the main chamber |goto -123,-5393,-1029
		.' _Go through_ the door |goto 22,-5330,-1020
		.' _Step into_ the teleporter |goto 22,-5220,-1007
		.kill 1 Shade of Logic##573497
		.' Collect Essence of Logic from the Shade of Logic |q Shades of the Entity##8354/3 |goto Grimvault 429,-5180,-1037
	step
		.' _Go through_ the door |goto 429,-5256,-1033
		.' _Jump across_ the platforms to the opposite side of the room |goto 430,-5407,-1035 |tip They fire in 3 different patterns and briefly flash red before firing.
		.kill 1 Shade of Life##578988
		.' Collect Essence of Life from the Shade of Life |q Shades of the Entity##8354/4 |goto WesternGrimvault 429,-5520,-1037
	step
		.' _Step into_ the teleporter |goto WesternGrimvault 381,-5491,-1033
		.' _Go through_ the first puzzle teleporter |goto 49,-5063,-1017
		.' _Go through_ the second puzzle teleporter |goto 16,-5031,-1017
		.' _Go through_ the third puzzle teleporter |goto 50,-5002,-1017
		.' _Go through_ the final puzzle teleporter |goto 14,-5030,-1017
		.' _Step into_ the teleporter |goto -169,-5033,-769
		.kill 1 Shade of Air##616005
		.' Collect Essence of Air from the Shade of Air |q Shades of the Entity##8354/6 |goto 171,-4622,-1080
	step
		.' _Go through_ the door |goto 201,-4620,-1082
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
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 1 |goto GrimvaultCore -67,35,-694
		.click Defiled Console##262233
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 2 |goto GrimvaultCore -2,73,-694
		.click Defiled Console##262231
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 3 |goto 64,35,-694
	step
		.click Defiled Console##262230
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 4 |goto 64,-41,-694
		.click Defiled Console##262234
		.' Cleanse the Defiled Consoles |q Breaching the Core##8356/2 |count 5 |goto -1,-78,-694
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
		|confirm
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
		.' Use your Recall ability to teleport back to _Legion's Landing_ |goto WesternGrimvault 339,-4059,-890 < 10
		.click Bounty Board##276695
		..accept Freedom of Information##8585 |goto WesternGrimvault 276,-3992,-886
	step
		.' Follow the ramp down |goto WesternGrimvault 50,-4061,-871 < 10
		.' Step into the teleporter |goto WesternGrimvault -649,-4027,-952 < 10
		.click External Interface Terminal##276472
		.' Hack External Interface Terminals |q Freedom of Information##8585/1 |count 1 |goto -1056,-4032,-721
		.click External Interface Terminal##276471
		.' Hack External Interface Terminals |q Freedom of Information##8585/1 |count 2 |goto -1089,-4064,-721
		.' Run across the bridge when the platforms come down |goto -1052,-4069,-721 < 10
		.click External Interface Terminal##276473
		.' Hack External Interface Terminals |q Freedom of Information##8585/1 |count 3 |goto -991,-4161,-721
		.click External Interface Terminal##276470
		.' Hack External Interface Terminals |q Freedom of Information##8585/1 |goto -960,-4129,-721
	step
		'Press _C_ to use your communicator:
		..turnin Freedom of Information##8585
	step
		.' Congratulations, you have completed the Dominion Leveling Guide!
]])
