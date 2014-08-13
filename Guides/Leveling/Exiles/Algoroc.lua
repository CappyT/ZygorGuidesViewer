ZGV:RegisterGuide("Exiles\\Algoroc (6-15)",
		{faction="Exiles",
		nextguide="Exiles\\Galeras (15-23)",
		image="ZygorUIGuides:Algoroc", 
		description="Algoroc is a zone in northern Alizar in WildStar. It is a cold, mountainous region, covered in snow and ice. Algoroc is the staging ground for humans and Granok, and is part of Exile territory. The zone is intended for characters levels 6-14.",
		startlevel=6,
		endlevel=15,
		},[[
	step
		.talk "Dodger"##268576
		..accept Touring Tremor Ridge##9164 |goto Algoroc 3856,-4525,-1006
	step
		.click Tremor Ridge Taxi Kiosk##270826
		.' Find and activate the Tremor Ridge Taxi |q Touring Tremor Ridge##9164/Find the Tremor Ridge Taxi Kiosk##2 |goto 3809,-4549,-999
		.' Find the Tremor Ridge Mailbox |q Touring Tremor Ridge##9164/Find the Tremor Ridge Mailbox##1 |goto 3860,-4572,-1010
	step
		.talk Deadeye Brightland##287539
		..turnin More Important Than Revenge##3963 |goto 3831,-4641,-1018
		..accept Deadstar Annihilation##3780 |goto 3831,-4641,-1018
	step
		.talk Prospector Tashmore##287376
		..accept Tremor Ridge Kidnappings##4520 |goto 3795,-4634,-1019
	step
		.talk Pappy Grizzleston##287444
		..accept The Loftite Hunt Begins##4609 |goto 3768,-4645,-1020
		..accept The Algoroc Accord##8953 |goto 3768,-4645,-1020
	step
		.' Find the Transmat Terminal |q Touring Tremor Ridge##9164/Find the Transmat Terminal##3 |goto 3703,-4657,-1019
	step
		'Press _C_ to use your communicator:
		..turnin Touring Tremor Ridge##9164
	step
		.click Transmat Terminal##270845
		.' Click _Yes_ to bind your Recall point to this Terminal |tip Now when you Recall you will be teleported here. |goto 3703,-4657,-1019
		|confirm
	step
		.talk Denner Hazefall##287554
		..turnin The Loftite Hunt Begins##4609
		..accept By Leaps and Bounds##3777 |goto 3640,-4607,-1020
		..accept Troublesome Tremors##4541 |goto 3640,-4607,-1020
	step
		.' Go up the stairs here |goto Algoroc 3637,-4611,-1019
		.' Jump up onto the grassy ledge |goto 3621,-4632,-1000
		.' Contiue jumping further up the cliff |goto 3646,-4723,-940
		.' Jump through a Loftite crystal floating around these cliffs |tip They are blue crystals floating above the ground. |q By Leaps and Bounds##3777/Jump through a Pure Loftite Fragment##2 |goto 3648,-4732,-939
	step
		.' Jump through additional Loftite crystals floating around these cliffs |tip They are blue crystals floating above the ground. |q By Leaps and Bounds##3777/Collect Pure Loftite Fragments##3 |goto 3648,-4732,-939
	step
		'Press _C_ to use your communicator:
		..accept Protostar SOS##4519 |goto 3634,-4694,-953
	step
		.click Ground Tremors##1177360
		.' Stabilize the second tremor |q Troublesome Tremors##4541/Stabilize the second Tremor Site##2 |goto 3595,-4686,-929
		.click Ground Tremors##1181240
		.' Stabilize the third tremor |q Troublesome Tremors##4541/Stabilize the third Tremor Site##3 |goto 3592,-4756,-880
		.click Ground Tremors##1180379
		.' Stabilize the first tremor |q Troublesome Tremors##4541/Stabilize the first Tremor Site##1 |goto 3550,-4607,-962
	step
		.click Deadstar Dagun Cage##275205
		..accept Release the Hounds##4948 |goto 3416,-4380,-1035
	step
		.click Deadstar Dagun Cage##275028 |tip More can be found around this area.
		.' Release Captured Dagun |q Release the Hounds##4948/Release Captured Dagun##1 |goto 3412,-4380,-1035
	step
		'Press _C_ to use your communicator:
		..turnin Release the Hounds##4948
	step
		.click Marauder Cage##276817 |tip More cages can be found around this area.
		.' Rescue Kidnapped Rustics |q Tremor Ridge Kidnappings##4520/Rescue Kidnapped Rustics##3 |goto 3381,-4479,-1034
	step
		.kill 1 Lieutenant Pragg##1238445
		.' Kill Lieutenant Pragg |q Deadstar Annihilation##3780/Kill Lieutenant Pragg##2 |goto 3060,-4314,-1007
	step
		.click Marauder Cage##277047
		.' Rescue Ellie Tashmore |q Tremor Ridge Kidnappings##4520/Rescue Ellie Tashmore##4 |goto 3036,-4301,-1006
	step
		.kill Deadstar Brawler##1204980
		.kill Deadstar Scrapper##1193868
		.' Kill Deadstar Marauders |q Deadstar Annihilation##3780/Kill Deadstar Marauders##3 |goto Algoroc 3454,-4456,-1031
	step
		.talk Corporal Tognar##287361
		..accept Sweep and Clear##4544 |goto Algoroc 3639,-4562,-1026
	step
		.click Marauder Mine##1247350 |tip You can find more of these all around this area.
		.' Detonate marauder mines |q Sweep and Clear##4544/Detonate Marauder Mines##1 |goto 3616,-4535,-1028
	step
		'Press _C_ to use your communicator:
		..turnin Sweep and Clear##4544
	step
		.talk Denner Hazefall##287554
		..turnin By Leaps and Bounds##3777 |goto 3639,-4607,-1020
		..turnin Troublesome Tremors##4541 |goto 3639,-4607,-1020
	step
		.talk Prospector Tashmore##287376
		..turnin Tremor Ridge Kidnappings##4520 |goto 3795,-4635,-1019
	step
		.talk Deadeye Brightland##287539
		..turnin Deadstar Annihilation##3780 |goto 3832,-4641,-1019
		..accept Dead Silence##3782 |goto 3832,-4641,-1019
	step
		.talk Merchant Holdster##291818
		..turnin The Algoroc Accord##8953 |goto 3831,-4591,-1012
	step
		.talk Pappy Grizzleston##287444
		..accept Local Loftite Discoveries##4523 |goto 3768,-4646,-1020
	step
		.click Minor Loftite Eruption##1054728 |tip You can find more Loftite site all around this area.
		.' Set Loftite Thumpers near eruption sites |q Local Loftite Discoveries##4523/Set Loftite Thumpers near loftite eruption sites##1 |goto 3692,-4572,-1028
	step
		.talk Town Mineralogist##290801
		..turnin Local Loftite Discoveries##4523 |goto 3767,-4651,-1019
	step
		.' If you are at least level _8_ a new quest will be available to you.
		.' Press _C_ to use your communicator |tip If you ever miss a call you can open your questlog with _L_, call the questgiver back and then accept that quest.
		..accept A Salvageable Situation##9043
	step
		.talk Foreman Hammerworth##287343
		..turnin A Salvageable Situation##9043 |goto 3817,-4659,-1018
		..accept Breaking It Down##9044 |goto 3817,-4659,-1018
	step
		.' Press _I_ to open your inventory and salvage the _Unusable Crafting Prototype_ |tip In your inventory, drag it to the Recycle arrow symbol in the bottom-left area of the inventory window.
		.' Salvage the Unusable Crafting Prototype |q Breaking It Down##9044/Salvage the Unusable Crafting Prototype to get a Dusty Power Core##1
	step
		.talk Drillsmith Moxmay##294440
		..turnin Breaking It Down##9044 |goto 3805,-4669,-1019
	step
		.' _Go up_ the stairs |goto Algoroc 3637,-4610,-1019 < 10
		.' _Jump up_ to the wooden platform and go up the stairs |goto 3612,-4648,-970 < 20
		.' _Jump up_ to the wooden bridge |goto 3589,-4697,-914 < 20
		.' _Continue up_ to another grassy area |goto 3580,-4721,-892 < 20
		.talk Protostar Operations Supervisor##287495
		..turnin Protostar SOS##4519 |goto Algoroc 3356,-4886,-817
		..accept Repairing the Core##4525 |goto Algoroc 3356,-4886,-817
		..accept Irradiated Creatures##4527 |goto Algoroc 3356,-4886,-817
	step
		.click Protostar Crash Victim##268944
		..accept Dragged Off....##4946 |goto Algoroc 3327,-4997,-827
	step
		.click Starboard Coolant Vent##273127 |tip It is in the water.
		.' Clear the starboard vent |q Repairing the Core##4525/Clear the Starboard Vent##1 |goto 3192,-4973,-830
		.click Port Coolant Vent##273085 |tip It is underwater.
		.' Clear the port vent |q Repairing the Core##4525/Clear the Port Vent##2 |goto 3195,-4941,-843
		.click Protostar Reactor Core##273261 |tip It is underwater.
		.' Stabilize the ship's reactor |q Repairing the Core##4525/Stabilize the ship's Reactor##3 |goto 3178,-4962,-860
	step
		'Press _C_ to use your communicator:
		..turnin Repairing the Core##4525
		..accept Bots Can't Swim##4528
	step
		.click Protostar Minebot##1373739 |tip They are on the seafloor. More can be found around this area.
		.' Activate the bot's underwater protocols |q Bots Can't Swim##4528/##1 |goto 3180,-4978,-872
	step
		'Press _C_ to use your communicator:
		..turnin Bots Can't Swim##4528
		..accept Protostar Pure Loftite Survey##4530
	step
		.' Around this area:
		.kill Highly Irradiated Snoglug##1214804
		.kill Irradiated Snoglug##1364186
		.kill Irradiated Icetail Slayer##1299368
		.' Kill Irradiated creatures |q Irradiated Creatures##4527/Kill Irradiated creatures##1 |goto 3099,-4965,-828
	step
		'Press _C_ to use your communicator:
		..turnin Irradiated Creatures##4527
	step
		.click Loftite Crystal Skull##268628
		..accept Loftite Crystal Skull##9136 |goto 3143,-5123,-806
	step
		.click Protostar Crash Survivor##1385788 |tip They are marked with an orange cog on your minimap.
		.' Find injured Protostar crash Survivors |q Dragged Off....##4946/Find injured Protostar Crash Survivors##1 |goto 3189,-5068,-817
	step
		.' Go to the waypoint
		.' Press _C_ to use your communicator
		..accept Yeti Extermination##4536 |goto Algoroc 2974,-4975,-818
	step
		.' _Enter_ the Ice Cave |goto 2965,-4968,-815
		.' All around inside this cave:
		.kill Icemaw Frostclaw##1380611
		.' Kill yeti |q Yeti Extermination##4536/Kill Yeti in Icemaw Cavern##1 |goto Algoroc 2813,-4904,-848
		.click Pure Loftite Vein##271916 |tip These look like large glowing purple crystal formations in this cave.
		.' Mark Loftite Veins  |q Protostar Pure Loftite Survey##4530/Mark Pure Loftite Veins##1 |goto Algoroc 2813,-4904,-848
	step
		.kill 1 Icemaw Alpha##1418261 |q Yeti Extermination##4536/2 |goto Algoroc 2665,-4653,-880
	step
		.' _Leave_ the Ice Cave |goto Algoroc 2956,-4961,-814 < 20
		.talk Loftite Extraction Expert##287428
		..turnin Yeti Extermination##4536 |goto Algoroc 3342,-4919,-827
		..turnin Protostar Pure Loftite Survey##4530 |goto Algoroc 3342,-4919,-827
	step
		.talk Protostar Operations Supervisor##287495
		..turnin Dragged Off....##4946 |goto 3355,-4887,-818
	step
		.' Use your _Recall_ ability on the far right side of your quickbar to teleport back to Tremor Ridge |goto Algoroc 3705,-4654,-1019 <10
//only available if a settler has set up a station
//	step
//		.talk Mercenary Grimdred##1409041
//		..accept Up, Up, and Away##3769 |goto 3696,-4490,-1031 |tip This will only be available if a Settler has built the Marketplace. Skip this quest if it is unavailable.
	step
		.talk Miner Harlow##287394
		..accept Expensive Diet##4538 |goto Algoroc 3630,-4340,-1072
	step
		.kill Shoveljaw Boulderback##1472303 |tip They look like large piles of boulders and can be found around this area.
		.' Kill Shoveljaw Boulderbacks |q Expensive Diet##4538/Kill Shoveljaw Boulderbacks##1 |goto 3547,-4286,-1073
	step
		'Press _C_ to use your communicator:
		..turnin Expensive Diet##4538
//	step
//		.' Press _T_ to use the railgun on Dominion Analysts, Researchers, and Scientists. |tip More can be found around the base of this large rock.
//		.' Use the railgun on Dominion forces |q Up, Up, and Away##3769/Use the railgun on Dominion Analysts, Researchers, and Scientists##1 |goto 3638,-4265,-1070
//	step
//		'Press _C_ to use your communicator:
//		..turnin Up, Up, and Away##3769
//only available if a settler has set up a station
	step
		.click Dominion Research Equipment##1467719
		..accept Technical Difficulties##3786 |goto Algoroc 3644,-4256,-1069
	step
		.click Dominion Research Equipment##1437641 |tip More can be found around this large rock.
		.' Destroy Dominion research equipment |q Technical Difficulties##3786/Destroy Dominion Research Equipment##1 |goto 3586,-4195,-1068
	step
		'Press _C_ to use your communicator:
		..turnin Technical Difficulties##3786
	step
		.talk Sergeant Kormak##287411
		..turnin Dead Silence##3782 |goto Algoroc 3660,-4073,-1051
		..accept Unwelcome Guests##3785 |goto Algoroc 3660,-4073,-1051
	step
		.kill Dominion Executioner##1448843
		.kill Dominion Basher##1542767
		.kill Dominion Analyst##1541466
		.kill Dominion Scientist##1543046
		.' Kill Dominion forces around this area |q Unwelcome Guests##3785/Kill Dominion forces##1 |goto Algoroc 3592,-4147,-1066
	step
		'Press _C_ to use your communicator:
		..turnin Unwelcome Guests##3785
		..accept He's the Brains##3765
	step
		.click Chua Weapon Rack##268372
		..accept Weapons of War##4951 |goto Algoroc 3577,-3889,-1030
	step
		.' In this small Dominion camp:
		.' Press _T_ to test Loftite Grenades on Dominion forces
		.' Test Loftite grenades on Dominion forces |q Weapons of War##4951/Test loftite grenades on Dominion forces##1 |goto 3570,-3858,-1030
	step
		'Press _C_ to use your communicator:
		..turnin Weapons of War##4951
	step
		.' _Enter_ the cave |goto 3559,-3811,-1020
		.' As you walk through the cave:
		.kill 1 Security Drone##1635405+ |q He's the Brains##3765/Kill Dominion Security Drones##2 |goto Algoroc 3550,-3779,-1022
	step
		.click Chua Datacenter##271208
		..accept Disturbing Data##3771 |goto Algoroc 3646,-3547,-1057
	step
		.kill 1 Inventor Hoom##1647340 |q He's the Brains##3765/Kill Inventor Hoom##1 |goto 3639,-3494,-1059
	step
		.click Chua Datacenter##271137 |tip These are marked with an orange cog on your minimap.
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 25 |goto 3642,-3492,-1059
	step
		.click Chua Datacenter##271137 |tip These are marked with an orange cog on your minimap.
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 50 |goto Algoroc 3643,-3546,-1057
	step
		.click Chua Datacenter##271038
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 75 |goto 3593,-3466,-1056
	step
		.click Chua Datacenter##271038
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |goto Algoroc 3705,-3487,-1056
	step
		'Press _C_ to use your communicator:
		..turnin Disturbing Data##3771
	step
		.' _Jump through_ the laser grid |goto Algoroc 3606,-3605,-1059
		.' Press C to open the communicator
		 ..accept DRED Reckoning##4952 |goto 3541,-3558,-1058
	step
		.' Kill Pazbo Pring |q DRED Reckoning##4952/2 |goto 3489,-3592,-1059
	step
		.' Kill Pizbo Pring |q DRED Reckoning##4952/1 |goto 3491,-3472,-1058
	step
		.' Press _C_ to open the communicator
		..turnin DRED Reckoning##4952
	step
		.talk Sergeant Kormak##287309
		..turnin He's the Brains##3765 |goto Algoroc 3658,-4072,-1051
		..accept They're Back!##3766 |goto Algoroc 3658,-4072,-1051
	step
		'Press _C_ to use your communicator:
		..turnin They're Back!##3766
		..accept Finish Him!##3770
	step
		.' Go to the waypoint
		.' Press _C_ to open the communicator
		..accept Tree Hugger##4949 |goto 3198,-3946,-1019
	step
		.kill Grimstone Digger##4299598
		.kill Grimstone Mangler##4295092
		.collect Dead Chua's Datapad##12320
		.' Use the _Dead Chua's Datapad_ in your inventory |use Dead Chua's Datapad##12320
		..accept Carcass Discovery##4539 |goto Algoroc 3149,-3897,-1003
	step
		.' Kill the Enraged Grimstone Mangler |q Tree Hugger##4949/1 |goto 3117,-3854,-992
	step
		.' Around this area:
		.kill Grimstone Mangler##1803514
		.kill Grimstone Digger##1896949
		.' Collect Chua Researcher Datapads |q Carcass Discovery##4539/1 |goto Algoroc 3136,-3904,-1003 |tip More Grimstone can be found to the southwest.
	step
		'Press _C_ to use your communicator:
		..turnin Carcass Discovery##4539
	step
		.' Press _C_ to open the communicator
		..turnin Tree Hugger##4949
	step
		.talk Stranded Protostar Crash Survivor##268305
		..accept Marooned##4971 |goto 2480,-3947,-998 |tip He's standing on a rock in the water.
	step
		.click Protostar Battery Pack##2176597
		.' Retrieve the Protostar Battery Pack |q Marooned##4971/1 |goto 2489,-3907,-1026 |tip It's underwater.
	step
		.talk Stranded Protostar Crash Survivor##4026654
		..turnin Marooned##4971 |goto 2480,-3947,-998
	step
		.' Press _C_ to open the communicator
		..accept Trapped##3792 |goto 3282,-4263,-1037
	step
		.' _Jump up_ the rocks here |goto 3263,-4280,-1033 < 10
		.' Follow the _stairs up_ |goto Algoroc 3258,-4242,-1008 < 10
		.kill Duskfall Flailer##2212285
		.kill Duskfall Squawker##1970102
		.' Kill Skeech |q Trapped##3792/1 |goto 3199,-4194,-985
	step
		.' Press _C_ to open the communicator
		..turnin Trapped##3792
	step
		.click Skull's Eye Access Panel##288101
		.' Meet Deadeye Brightland on the Skull's Eye |q Finish Him!##3770/Meet Deadeye Brightland on the Skull's Eye##1 |goto Algoroc 3348,-4298,-1047 -- VERIFY COORDS
	step
		.' _Enter_ the next room |goto Algoroc -1,52,0 -- VERIFY COORDS
		.kill 1 Captain Thokov##262406
		.' Kill Captain Thokov |q Finish Him!##3770/Kill Captain Thokov##3 |goto 0,83,-4 -- VERIFY COORDS
	step
		.click Skull's Eye Escape Pod Terminal##262403
		.' Enter the Skull's Eye Escape Pod |q Finish Him!##3770/Enter the Skull's Eye Escape Pod##4 |goto -8,19,0 -- VERIFY COORDS
	step
		.talk Deadeye Brightland##288507
		..turnin Finish Him!##3770 |goto Algoroc 3831,-4642,-1019
		..accept Gallow's Strife##4703 |goto Algoroc 3831,-4642,-1019
	step
		.' _Follow the path_ south between the mountains |goto 3897,-4449,-992
		.talk Ranch Hand Jelton##293381
		..accept Rotten Roan##5024 |goto Algoroc 4070,-4158,-1057
	step
		.click Roan Carcass##293435 |tip You can find more laying on the ground around this area.
		.' Poison Roan carcasses |q Rotten Roan##5024/Poison Roan Carcasses##1 |goto 4071,-4167,-1057
	step
		'Press _C_ to use your communicator:
		..turnin Rotten Roan##5024
		..accept Roan Killers##3912
	step
		.kill 1 Skytalon Rotbeak##2206641
		.' Press _C_ to use your communicator
		..accept Crushing the Crowes##8857 |goto 4141,-4303,-1037
	step
		'Press _C_ to use your communicator:
		..accept Thieving Skeech##4723 |goto 4151,-4197,-1052
	step
		.click Helix's Head##376164
		..accept A Freebot Puzzle##3915 |goto 4153,-4194,-1052
	step
		.' All around this area:
		.kill Swiftpaw Pouncer##406013
		.kill Swiftpaw Stalker##407956
		.' Kill Swiftpaws |q Roan Killers##3912/Kill Swiftpaws##1 |goto 4096,-4329,-1039
		.kill Skytalon Rotbeak##395910
		.' Kill Skytalong Rotbeaks |q Roan Killers##3912/Kill Skytalon Rotbeaks##2 |goto 4096,-4329,-1039
	step
		'Press _C_ to use your communicator:
		..turnin Roan Killers##3912
	step
		.talk Justice Alastair##293047 |tip He can walk around on this road so you may have to search nearby.
		..turnin Crushing the Crowes##8857 |goto Algoroc 4180,-4371,-1023
		..accept The War On Slush##3927 |goto Algoroc 4180,-4371,-1023
		..accept Slushed Away##3925 |goto Algoroc 4180,-4371,-1023
	step
		.' Enter the cave |q Thieving Skeech##4723/Locate Duskfall Caverns##1 |goto Algoroc 4169,-4218,-1052
		.' As you go through the cave:
		.click Stolen Dyes##424878 |tip These are wooden crates found inside this cave.
	step
		.click Helix's Chest##294179
		.' Find Helix's Chest |q A Freebot Puzzle##3915/Find Helix's Chest##1 |goto Algoroc 4276,-4361,-1091
		.click Helix's Legs##294142
		.' Find Helix's Legs |q A Freebot Puzzle##3915/Find Helix's Legs##2 |goto Algoroc 4161,-4445,-1090
		.click Helix's Arms##294159
		.' Find Helix's Arms |q A Freebot Puzzle##3915/Find Helix's Arms##3 |goto Algoroc 4199,-4552,-1094
	step
		.' Press _T_ to rebuild Helix |q A Freebot Puzzle##3915/Rebuild Helix##4
	step
		'Press _C_ to use your communicator:.
		..turnin A Freebot Puzzle##3915
	step
		.click Stolen Dyes##424878 |tip These are wooden crates found inside this cave.
		.' Recover Stolen Dyes |q Thieving Skeech##4723/Retrieve Stolen Dyes##2
	step
		.' _Leave_ the cave |goto Algoroc 4178,-4230,-1054
		.click Slush Still##478862
		..accept Prohibition##4711 |goto Algoroc 4161,-4444,-1011
	step
		.kill Crowe Blademaster##497497
		.kill Crowe Marksman##499756
		.' Loot Slush from Crowe enemies |q The War On Slush##3927/Confiscate Slush Kegs##1 |goto Algoroc 4132,-4467,-1006
	step
		'Press _C_ to use your communicator:
		..turnin The War On Slush##3927
	step
		.click Slush Still##504675 |tip More of these can be found around the Crowe Homestead.
		.' Sabotage Slush Sills |q Prohibition##4711/##1 |goto 4134,-4534,-996
	step
		.kill Crowe Blademaster##497497
		.kill Crowe Marksman##499756
		.' Kill Cartel thugs |q Slushed Away##3925/Kill Cartel thugs##2 |goto 4128,-4493,-1003
	step
		'Press _C_ to use your communicator:
		..turnin Prohibition##4711
	step
		.kill 1 Agnes Crowe##598947 |q Slushed Away##3925/Kill Agnes Crowe##3 |goto 4117,-4800,-929
	step
		'Press _C_ to use your communicator:
		..turnin Slushed Away##3925
	step
		.click Cartel Chest##582416
		..accept Rummage for Clues##4718 |goto 4108,-4797,-929
	step
		.click Cartel Chest##638653 |tip More chests can be found around this area.
		.' Search for Cartel Documents in Cartel Chests |q Rummage for Clues##4718/Search for Cartel Documents in Cartel Chests##1 |goto 4105,-4797,-929
	step
		'Press _C_ to use your communicator:
		..turnin Rummage for Clues##4718
	step
		'Press _C_ to use your communicator:
		..accept Crafting for the Exiles in Algoroc##5424 |goto Algoroc 4110,-4075,-1059
	step
		.click Transmat Terminal##271199
		.' Select _Yes_ to set your Recall to the Gallows Transmat Terminal |goto 4137,-4085,-1057
		|confirm
	step
		.talk Patron Purdo##294872
		..turnin Thieving Skeech##4723 |goto 4117,-4046,-1057
	step
		.talk Widow Goldcastle##294801
		..turnin Gallow's Strife##4703 |goto 4096,-4001,-1056
		..accept A Noble Deed##4764 |goto 4096,-4001,-1056
	step
		.click Peacekeeper Willams##633882
		.' Take down Peacekeeper William's body |q A Noble Deed##4764/Take down Peacekeeper Willams's body##1 |goto 4100,-3992,-1056
	step
		.talk Widow Goldcastle##294801
		..turnin A Noble Deed##4764 |goto 4096,-4001,-1056
		..accept Sizing Up the Situation##4780 |goto 4096,-4001,-1056
	step
		.' _Enter_ the Chronicle House |goto 4090,-3959,-1051
		.talk Chronicler Herrick Grenfell##292898
		..turnin Sizing Up the Situation##4780 |goto Algoroc 4117,-3948,-1052
		..accept Alerting the Judge##5234 |goto Algoroc 4117,-3948,-1052
	step
		.click Holographic Data Transmitter##292109
		..turnin Alerting the Judge##5234 |goto 4081,-3953,-1052
	step
		.talk Judge Kain##292101
		..accept The Justice Assembly##4784 |goto 4081,-3953,-1052
	step
		.talk Supervisor Arborgreen##294530
		..turnin Crafting for the Exiles in Algoroc##5424 |goto Algoroc 4198,-3992,-1042
	step
		.talk Rancher Dungarden##294904
		..accept Too Many Girrok!##3918 |goto Algoroc 4196,-3872,-1047
	step
		.kill Grimstone Ruffian##615151
		.kill Grimstone Savage##694497
		.' Kill Grimstone |q Too Many Girrok!##3918/Kill Grimstone girrok##1 |goto 4136,-3869,-1050
	step
		'Press _C_ to use your communicator:
		..turnin Too Many Girrok!##3918
	step
		'Press _C_ to use your communicator:
		..accept Rockridge Rascals##7617 |goto Algoroc 4197,-3770,-1039
	step
		.' Follow the _dirt path up_ |goto Algoroc 3934,-3930,-1034
		.talk Judge Kain##705866
		.' Speak with Judge Kain |q The Justice Assembly##4784/Speak with Judge Kain##2 |goto Algoroc 3858,-3861,-996
	step
		.' Kill the attacking enemies that come in waves |q The Justice Assembly##4784/Defend Judge Kain##3 |goto 3864,-3874,-998
	step
		.click Judge Kain's Arm##292361
		..turnin The Justice Assembly##4784 |goto 3862,-3872,-998
		..accept The Next Steps##4789 |goto 3862,-3872,-998
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4076,-3926,-1053
		.talk Chronicler Herrick Grenfell##292898
		..turnin The Next Steps##4789 |goto Algoroc 4117,-3948,-1052
		..accept An Explosive Disruption##4786 |goto Algoroc 4117,-3948,-1052
		..accept Vigilante Justice##4705 |goto Algoroc 4117,-3948,-1052
	step
		.click Bandit Speeder##292174
		.' Attach an AI Controller to the first speeder |q An Explosive Disruption##4786/Attach an AI Controller to the first speeder##1 |goto Algoroc 4106,-3975,-1056
		.click Bandit Speeder##292149
		.' Attach an AI Controller to the third speeder |q An Explosive Disruption##4786/Attach AI Controller to the third speeder##3 |goto 4126,-4014,-1056
		.click Bandit Speeder##292156
		.' Attach an AI Controller to the second speeder |q An Explosive Disruption##4786/Attach an AI Controller to the second speeder##2 |goto 4074,-4013,-1056
	step
		.' Press _T_ to activate the autopilot device |q An Explosive Disruption##4786/Activate the Autopilot Control Device##4
	step
		.kill Darkspur Butcher##744715 |tip They aren't agressive, but they are killable.
		.kill Darkspur Striker##748616 |tip They aren't agressive, but they are killable.
		.' Kill Darkspur vigilantes around town |q Vigilante Justice##4705/Help the Citizens of Gallow##1 |goto 4065,-4017,-1056
	step
		.' _Enter_ the Chronicle House |goto 4090,-3960,-1051
		.talk Chronicler Herrick Grenfell##292898
		..turnin An Explosive Disruption##4786 |goto Algoroc 4117,-3948,-1052
		..turnin Vigilante Justice##4705 |goto Algoroc 4117,-3948,-1052
	step
		.talk Justice Graybank##294843
		..accept An Emergency of Granok Proportions##4707 |goto 4097,-3942,-1052
	step
		.talk Doc Moonwell##294831
		..turnin An Emergency of Granok Proportions##4707 |goto 4102,-3931,-1054
		..accept Medical Mishap##4713 |goto 4102,-3931,-1054
	step
		.talk Madeline Forster##294866
		..accept Seeking Forster##4727 |goto Algoroc 4026,-3989,-1053
	step
		.click Munitions Cache##778744
		..accept Fire and Forget##5021 |goto Algoroc 3958,-4011,-1053
	step
		.click Munitions Cache##778744 |tip More munitions crates can be found around this area.
		.' Sabotage munitions caches |q Fire and Forget##5021/Sabotage Munitions Caches##1 |goto 3979,-3983,-1053
	step
		'Press _C_ to use your communicator:
		..turnin Fire and Forget##5021
	step
		.kill Darkspur Grifter##824532
		.kill Darkspur Hunter##785956
		.kill Darkspur Quickdraw##774466
		.' Collect medical supplies from Darkspur Cartel members |q Medical Mishap##4713/Collect Stolen Medical Supplies from Darkspur Cartel members##1 |goto 3862,-4089,-1046
	step
		.talk Prospector Burk##293974
		..accept Miner Savior##4714 |goto 3934,-4096,-1053
	step
		.' Find Forster's camp |q Seeking Forster##4727/Locate Ranger Forster's campsite##1 |goto 3844,-4074,-1042
	step
		.click Empty Sleeping Bag##292802
		.click Camping Provisions##292788
		.click Rolled-Up Camping Gear##292787
		.' Search Ranger Forster's campsite |q Seeking Forster##4727/2 |goto 3844,-4074,-1042
	step
		.' Go up and the stairs and into Burk's Claim |q Miner Savior##4714/1 |goto 3867,-4025,-1033
		.' All inside this cave:
		.kill Darkspur Butcher##846052
		.kill Darkspur Thug##822739
		.kill Darkspur Pummeler##781726
		.' Kill Cartel Goons |q Miner Savior##4714/Kill Darkspur Cartel goons##2
	step
		'Press _C_ to use your communicator:
		..turnin Miner Savior##4714
	step
		.talk Madeline Forster##294866
		..turnin Seeking Forster##4727 |goto Algoroc 4025,-3990,-1053
		..accept Tracking the Trapper##5407 |goto Algoroc 4025,-3990,-1053
	step
		.' Enter the goto Chronicle House |goto 4090,-3963,-1053
		.talk Doc Moonwell##294831
		..turnin Medical Mishap##4713 |goto Algoroc 4103,-3931,-1054
	step
		.talk Judge Kain##294848
		..accept Beyond the Realm of Medicine##4719 |goto 4103,-3930,-1054
	step
		.' _Enter_ Halen's Claim |q Beyond the Realm of Medicine##4719/1 |goto Algoroc 4007,-4391,-1017
		.talk Foreman Halsen##263503
		..turnin Beyond the Realm of Medicine##4719 |goto Algoroc 3956,-4500,-1045
		..accept Emergency Extraction##4785 |goto Algoroc 3956,-4500,-1045
	step
		.click Bore Drill##292513
		..accept Stop the Drilling##4109 |goto 3995,-4537,-1045
	step
		.kill Slateface Slammer##911449 |tip More can be found all around inside this cave.
		.' Kill Slateface Gronyx |q Emergency Extraction##4785/Kill Slateface Gronyx##3 |goto 4019,-4563,-1045
	step
		.kill 1 Troka' Ra##911283
		.' Rescue Botsmith Redfield |q Emergency Extraction##4785/Rescue Botsmith Redfield##1 |goto 4060,-4594,-1060
		.talk Botsmith Redfield##914287 |q Emergency Extraction##4785/Speak to Botsmith Redfield##2 |goto 4063,-4593,-1060
	step
		.click Bore Drill##292505 |tip More drills can be found throughout this cave.
		.' Disable Bore Drills |q Stop the Drilling##4109/Disable Bore Drills##1 |goto 4101,-4569,-1058
	step
		.talk Foreman Halsen##263503 |tip He is up near the cave entrance.
		..turnin Stop the Drilling##4109 |goto 3955,-4501,-1045
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052
		.talk Judge Kain##294848
		..turnin Emergency Extraction##4785 |goto Algoroc 4102,-3930,-1054
		..accept Alpha Strike##3939 |goto Algoroc 4102,-3930,-1054
	step
		.talk Botsmith Redfield##294854
		..accept A Call to Arm##4294 |goto 4102,-3931,-1054
	step
		.talk Chronicler Herrick Grenfell##292898
		..accept Gallow's Departed##4023 |goto 4117,-3948,-1052
	step
		.talk Chronicler Holt##293588
		.' Defend the Memorial Service |q Gallow's Departed##4023/Defend the memorial service##1 |goto Algoroc 4053,-3924,-1052
	step
		.' _Enter_ the Chronicle House |goto 4077,-3929,-1053
		.talk Chronicler Holt##293588
		..turnin Gallow's Departed##4023 |goto Algoroc 4117,-3948,-1052
	step
		.' _Enter_ the First Strike Mine |q Alpha Strike##3939/Enter the First Strike Mine##1 |goto Algoroc 3977,-3878,-1045
		.click Inactive Demolitionbot##292263
		..accept Automated Demolition##4771 |goto Algoroc 3983,-3706,-1055
	step
		'_Continue_ through the cave |goto 3957,-3618,-1090 < 10
		.click Stolen Servomotor##623572
		.' Find the OCP-200 Servomotor |q A Call to Arm##4294/Find the OCP-209 Servomotor##1 |goto 4130,-3549,-1075
	step
		.kill Enforcer Aakdoom##475168
		.' Kill Enforcer Askdoom |q Alpha Strike##3939/Kill Enforcer Aakdoom##3 |goto Algoroc 4126,-3565,-1077
		.kill "Crusher" Luk'tor##475169
		.' Kill "Crusher" Luk'tor |q Alpha Strike##3939/Kill "Crusher" Luk'tor##4 |goto Algoroc 4126,-3565,-1077
	step
		.' Press _T_ to use a Demolitionbot to gather pure loftite |goto 4079,-3494,-1092 |tip Pure loftite looks like large purple crystal formations on the ground of the cave. |q Automated Demolition##4771/Use Demolitionbots##1
	step
		'Press _C_ to use your communicator:
		..turnin Automated Demolition##4771
	step
		'_Head back_ toward the entrance of the cave |goto 4013,-3536,-1091 < 10
		.click Cartel Fuel Source##13597201
		.click Cartel Ammo Shipment##12311032
		.' Destroy Cartel assets |q Alpha Strike##3939/2 |goto Algoroc 3995,-3708,-1089
	step
		'_Go up_ the stairs and out of the cave |goto Algoroc 3994,-3635,-1091 < 10
		.' _Leave_ First Strike Mine |goto Algoroc 3961,-3856,-1044 < 10
		.' _Enter_ the Chronicle House |goto Algoroc 4077,-3927,-1053 < 10
		.talk Judge Kain##293722
		..turnin Alpha Strike##3939 |goto Algoroc 4106,-3930,-1054
	step
		.talk Botsmith Redfield##293729
		..turnin A Call to Arm##4294 |goto 4106,-3930,-1054
	step
		.talk Justice Graybank##293752
		..accept The Final Showdown##3930 |goto 4097,-3943,-1052
	step
		.' _Enter_ the cave |goto Algoroc 3972,-3871,-1043 < 10
		.click Strange Lever##291646
		.' Use the Strange Lever |q The Final Showdown##3930/Use the Strange Lever##1 |goto Algoroc 3940,-3839,-1045
		.' Meet Judge Kain in the hidden chamber |q The Final Showdown##3930/Meet Judge Kain in the hidden chamber##2 |goto Algoroc 3785,-3927,-1081
	step
		.' Go through the blue portal to enter Morek Throg's Underground Lair |q The Final Showdown##3930/Enter Morek Throg's Underground Lair##3 |goto 3770,-3967,-1081
		.kill 1 Morek Throg##638444
		.' Kill Morek Throg |q The Final Showdown##3930/Kill Morek Throg##4 |goto Algoroc 3650,-4193,-1131
	step
		.' _Go back_ through the blue portal to return to Judge Kain |goto 3740,-4176,-1131
		.talk Judge Kain##291561
		..turnin The Final Showdown##3930 |goto Algoroc 3787,-3919,-1081
		..accept Gallow's Savior##5425 |goto Algoroc 3787,-3919,-1081
	step
		.click Strange Lever##291554
		.' Use the Strange Lever to _open the secret door_ |goto 3918,-3852,-1045 < 10
		.' _Enter_ the Chronicle House |goto Algoroc 4077,-3927,-1053
		.talk Chronicler Herrick Grenfell##291829
		..turnin Gallow's Savior##5425 |goto Algoroc 4117,-3948,-1052
		..accept Dangerous Science##4830 |goto Algoroc 4117,-3948,-1052
	step
		.talk Ranger Forster##293720
		..accept Freedom at Any Cost##4737 |goto Algoroc 4173,-3470,-970
		..accept A Grim Inquisition##5408 |goto Algoroc 4173,-3470,-970
	step
		'Press _C_ to use your communicator:
		..turnin Tracking the Trapper##5407
	step
		.click Slave Chain##5219636 |tip More can be found around this area.
		.' Break Slave Chains to free Cartel Slaves |q Freedom at Any Cost##4737/1 |goto 4156,-3383,-942
	step
		.kill Grim Handler##5847608
		.kill Grim Watcher##5807786
		.' Kill Grim Slavers |q A Grim Inquisition##5408/1 |goto Algoroc 4256,-3401,-951
	step
		'Press _C_ to use your communicator:
		..turnin Freedom at Any Cost##4737
		..accept Breakout##4741
	step
		.click Grim Slave Pen Generator##293246
		.' Disable the first Grim Slave Pen Generator |q Breakout##4741/1 |goto Algoroc 4336,-3346,-929
		.click Grim Slave Pen Generator##293249
		.' Disable the second Grim Slave Pen Generator |q Breakout##4741/2 |goto Algoroc 4450,-3332,-917
	step
		.click Arms Cache##293165
		..accept Fiery Vengeance##4743 |goto 4433,-3359,-923
	step
		.kill 1 Headmistress Hilda Grim##5620792
		.' Kill Headmistress Hilda Grim |q A Grim Inquisition##5408/2 |goto 4494,-3354,-919
	step
		'Press _C_ to use your communicator:
		..turnin A Grim Inquisition##5408
	step
		.click Cartel Slaver Shack##293147
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |count 1 |goto 4435,-3352,-920
	step
		.click Cartel Slaver Shack##293146
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |count 2 |goto 4504,-3330,-910
	step
		.click Cartel Slaver Shack##293132
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |goto 4507,-3374,-920
	step
		'Press _C_ to use your communicator:
		..turnin Fiery Vengeance##4743
	step
		.click Grim Slave Pen Generator##293203
		.' Disable the third Grim Slave Pen Generator |q Breakout##4741/3 |goto 4521,-3402,-920
	step
		'Press _C_ to use your communicator:
		..turnin Breakout##4741
	step
		.talk Mortally Wounded Slave##292424
		..accept Choppin' Down Stumpkins##4029 |goto Algoroc 4347,-3407,-942
	step
		.kill Pinewrath Logchomper##6006759
		.kill Pinewrath Stumpmaker##5822223
		.kill Pinewrath Barktooth##823429
		.kill Pinewrath Trunksplitter##2524958
		.' Kill Pinewrath Stumpkins |q Choppin' Down Stumpkins##4029/1 |goto 4353,-3442,-943
	step
		'Press _C_ to use your communicator:
		..turnin Choppin' Down Stumpkins##4029 |goto 4382,-3472,-941
	step
		.click Mauled Grim Slave##292227
		..accept The Lurking Terror##5034 |goto 3996,-3416,-933
	step
		.kill 1 The Lurking Terror##5976463 |tip It patrols around this area, you may need to search for it.
		.' Kill the Lurking Terror |q The Lurking Terror##5034/1 |goto Algoroc 3576,-3160,-942
	step
		'Press _C_ to use your communicator:
		..turnin The Lurking Terror##5034
	step
		.kill 1 Arifo the Rascal##6178340
		.' Recover Lulu's Rocket from Arifo the Rascal |q Rockridge Rascals##7617/1 |goto 3499,-3536,-916
	step
		.talk Lulu Blackbush##286914
		..turnin Rockridge Rascals##7617 |goto 3718,-3309,-932
		..accept Small But Effective##7618 |goto 3718,-3309,-932
	step
		.click XAS Retrofitted Cannon##286841
		.' Press _1_ to slow your fall after launching.
		.' Test the Retrorocket Pack |q Small But Effective##7618/1 |goto 3708,-3326,-928
	step
		.click XAS Warp Pipe##280428
		.' Travel through the pipe |goto 3623,-3194,-946
		.talk Lulu Blackbush##286914
		..turnin Small But Effective##7618 |goto 3718,-3310,-932
		..accept Cat Burglary##7627 |goto 3718,-3310,-932
	step
		.' _Climb up_ to the ridge |goto 3610,-3429,-891
		.click Stolen Food##5467900
		.' Press _T_ to use the rocket pack to reach stolen food |q Cat Burglary##7627/1 |goto 3686,-3378,-877
		.click Stolen Food##6072144
		.' Press _T_ to use the rocket pack to reach stolen food |q Cat Burglary##7627/1 |goto 3362,-3463,-905
	step
		.talk Lulu Blackbush##286914
		..turnin Cat Burglary##7627 |goto 3718,-3310,-932
	step
		.' _Follow_ the road east |goto Algoroc 4243,-3920,-1050
		.talk Trooper Gorok##277649
		..turnin Trouble at the Excavation##4834 |goto Algoroc 4423,-3929,-1106 |only if havequest(4834)
		..accept The Best Offense##4856 |goto Algoroc 4423,-3929,-1106
		..accept Coming in Hot!##4978 |goto Algoroc 4423,-3929,-1106
	step
		.talk Trooper Gorok##277649
		..accept Stone Compatriot Rescue##4983 |goto 4419,-3933,-1106
	step
		.click Transmat Terminal##270842
		.' Select _Yes_ to set your Recall to the Excavation Base Camp |goto 4391,-3918,-1100
		|confirm
	step
		.' All around this dig site:
		.click Crashed Drop Pod##1039178
		.' Rescue Granok Mercenaries |q Stone Compatriot Rescue##4983/Rescue Granok Mercenaries##1 |goto 4387,-3826,-1101
		.kill Site 14 Mender##1151638
		.kill Site 14 Probe##1141201
		.kill Site 14 Augmentor##926697
		.kill Site 14 Protector##1148215
		.' Destroy Site 14 constructs |q The Best Offense##4856/Destroy Site 14 constructs##1 |goto 4387,-3826,-1101
	step
		'Press _C_ to use your communicator:
		..turnin Stone Compatriot Rescue##4983
		..turnin The Best Offense##4856
	step
		.' _Go up_ the ramp |goto 4393,-3864,-1101 < 10
		.click Drop Zone Signal##277256
		.' Defend the Landing Zone |q Coming in Hot!##4978/Activate the beacon and defend the Landing Zone##2 |goto 4354,-3727,-1077
	step
		'Press _C_ to use your communicator:
		..turnin Coming in Hot!##4978
		..accept Power Surge##4842
	step
		.kill Site 14 Mender##1151638+, Site 14 Probe##1141201+, Site 14 Augmentor##926697+, Site 14 Protector##1148215+
		.collect Augmented Remains##12523
		.' Use the Augmented Remains in your inventory |use Augmented Remains##12523
		..accept Unconventional Technology##4832
	step
		.' All around the dig site:
		.' Press _T_ on Site Constructs to weaken them
		.' Weaken Constructs and Augmented enemies |q Unconventional Technology##4832/Weaken the Constructs and Augmented Beings##1 |goto 4357,-3800,-1100
		.kill Site 14 Mender##1247627
		.kill Site 14 Probe##1248085
		.kill Augmented Rockhound Slasher##1016045
		.kill Augmented Rockhound Burrower##1128582
		.kill Site 14 Augmentor##1059525
		.' Kill Augmented enemies |q Unconventional Technology##4832/Destroy Constructs and Augmented Beings##2 |goto 4357,-3800,-1100
	step
		'Press _C_ to use your communicator:
		..turnin Unconventional Technology##4832
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/Disrupt Power Center Beta##2 |goto 4517,-3747,-1102
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/Disrupt Power Center Alpha##1 |goto 4590,-3830,-1102
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/Disrupt Power Center Gamma##3 |goto 4679,-3657,-1102
	step
		'Press _C_ to use your communicator:
		..turnin Power Surge##4842
		..accept Shields Up##5465
	step
		.click Fuel Cell##1267145 |tip Small metal cylindrical containers found around this area.
		.' Collect Energy Cores from Fuel Cells |q Shields Up##5465/Collect Energy Cores from Fuel Cells##1 |goto 4685,-3675,-1103
	step
		.' _Climb all the way up_ the steep hill and to the platform above |goto 4727,-3626,-1056 < 20
		.' _Climb up the hill_ to this spot |goto 4754,-3598,-1024 < 10
		.click Fallen Mercenary##277609
		..accept Following Orders##4982 |goto 4657,-3570,-1025
	step
		.' Target and press _T_ on Eldan Repair Constructs |tip These are small robots flying high above the ground around this area. Look carefully, they are easy to miss.
		.' Use the Exile Targeting Laser on Eldan Repair Constructs |q Following Orders##4982/Use the Exile Targeting Laser on Eldan Repair Constructs##1 |goto Algoroc 4636,-3678,-1108
	step
		'Press _C_ to use your communicator:
		..turnin Following Orders##4982
	step
		.click Eldan Shield Generator##277075
		..turnin Shields Up##5465 |goto Algoroc 4441,-3909,-1101
	step
		'Press _C_ to use your communicator:
		..turnin Clear a Path to Belle##4989
		.kill Augmented Rockhound Slasher##1890932
		.kill Augmented Rockhound Guardian##1914969
		.' Kill Canimid in the dig site |q Clear a Path to Belle##4989/Kill the Canimid in the dig site##1 |goto Algoroc 4551,-3998,-1120
	step
		.talk Belle Walker##277628
		..turnin Clear a Path to Belle##4989 |goto Algoroc 4587,-4050,-1110
		..accept Spawned Out##4987 |goto Algoroc 4587,-4050,-1110
		..accept Scientific Sampling##5469 |goto Algoroc 4587,-4050,-1110
	step
		.click Bolt##277539
		..accept Augmentation Case Study##7635 |goto 4585,-4049,-1110
	step
		.talk Trooper Mogra##277448
		..accept Grafted Gronyx##5318 |goto 4592,-4046,-1110
	step
		.kill Augmented Rockhound Burrower##1991235
		.' Collect Augmented Tissue Samples from Augmented creatures |q Scientific Sampling##5469/Collect Augmented Tissue Samples from Augmented creatures##1 |goto Algoroc 4531,-4020,-1119
	step
		'Press _C_ to use your communicator:
		..turnin Scientific Sampling##5469
	step
		.' _Enter_ the cave |goto Algoroc 4643,-3952,-1104 < 10
		'Press _C_ to use your communicator:
		..accept A Dangerous Discovery##8986
		.kill Augmented Spiderling##2008273
		.kill Augmented Recluse##1092087
		.' Kill Spiders |q A Dangerous Discovery##8986/Kill Spiders##2 |goto Algoroc 4832,-3963,-1160
		.click Captured Scientist Egg Sac##1860306 |tip They look like wiggling sacs laying on the ground.
		.' Rescue captured XAS scientists |q A Dangerous Discovery##8986/Rescue Captured XAS Scientists##1 |goto Algoroc 4832,-3963,-1160
	step
		'Press _C_ to use your communicator:
		..turnin A Dangerous Discovery##8986
	step
		.kill Site 14 Augmentor##1716990 |tip They are floating near the ground at the back of the cave.
		.' Kill Site 14 Augmentors |q Spawned Out##4987/Destroy Site 14 Augmentors##5 |goto 5023,-3878,-1178
	step
		.' Enter the Augmentors' patrol area |q Spawned Out##4987/Enter the Augmentors' patrol area##1 |goto Algoroc 4520,-4103,-1098
	step
		.' Find the Beta Cage |q Augmentation Case Study##7635/Find the Beta Cage##1 |goto 4528,-4128,-1100
		.click Belle's Recording Console##273230
		.' Summon Bolt to study the cage |q Augmentation Case Study##7635/Summon Bolt to study the Beta Cage##2 |goto 4531,-4125,-1101
	step
		.click Augmentor Spawner##274492
		.' Deactivate the first Augmentor Spawner |q Spawned Out##4987/Deactivate the first Augmentor Spawner##2 |goto 4482,-4123,-1111
	step
		.' All around this area:
		.kill Augmented XAS Scientist##2087289
		.' Kill Augmented XAS Scientists |q Grafted Gronyx##5318/Kill Augmented XAS Scientists##2 |goto 4491,-4211,-1098
		.kill Augmented Slateform Charger##1900822
		.' Destroy Augmented Gronyx |q Grafted Gronyx##5318/Destroy Augmented Gronyx##1 |goto 4491,-4211,-1098
	step
		'Press _C_ to use your communicator:
		..turnin Grafted Gronyx##5318
	step
		.' Find the Gamma Cage. |q Augmentation Case Study##7635/Find the Gamma Cage##3|goto 4508,-4257,-1098
		.click Belle's Recording Console##273215
		.' Summon Bolt to study the cage. |q Augmentation Case Study##7635/Summon Bolt to study the Gamma Cage##4 |goto 4500,-4256,-1099
	step
		.click Augmentor Spawner##274615
		.' Deactivate the second Augmentor Spawner. |q Spawned Out##4987/Deactivate the second Augmentor Spawner##3 |goto 4605,-4200,-1091
	step
		.' Find the Delta Cage. |q Augmentation Case Study##7635/Find the Delta Cage##5 |goto 4704,-4289,-1079
		.click Belle's Recording Console##273198
		.' Summon Bolt to study to cage. |q Augmentation Case Study##7635/Summon Bolt to study the Delta Cage##6 |goto 4698,-4295,-1080
	step
		'Press _C_ to use your communicator:
		..turnin Augmentation Case Study##7635
	step
		.click Augmentor Spawner##274574
		.' Deactivate the third Augmentor Spawner. |q Spawned Out##4987/Deactivate the third Augmentor Spawner##4 |goto 4836,-4249,-1072
	step
		'Press _C_ to use your communicator:
		..turnin Spawned Out##4987
		..accept Power Struggle##4826
	step
		.talk Rusty##277587
		..turnin Power Struggle##4826 |goto 4837,-4221,-1072
	step
		.talk Bolt##277571
		..accept Closing the Circuit##4825 |goto 4834,-4220,-1072
	step
		.click Eldan Switch##277022
		.' Activate the Eldan Switch. |q Closing the Circuit##4825/Activate the Eldan Switch##1 |goto 4748,-4184,-1080
		.click Damaged Eldan Circuit##277006
		.' Repair the damaged Eldan circuit. |q Closing the Circuit##4825/Repair the Damaged Eldan Circuit##2 |goto 4728,-4225,-1080
		.click Eldan Control Panel##276699
		.' Activate the Eldan control panel. |q Closing the Circuit##4825/Activate the Eldan Control Panel##3 |goto 4723,-4229,-1079
		.click The Caretaker##276759
		.' Retrieve the repaired neural core. |q Closing the Circuit##4825/Retrieve the repaired neural core##4 |goto 4712,-4229,-1078
	step
		.talk Mercenary Terek##274715
		..accept Death from Above##4984 |goto 4640,-4295,-1071
	step
		.' _Jump up_ onto the wooden platform and follow the stairs up |goto 4632,-4310,-1058 <10
		.' Take the second set of _stairs up and around_ |goto 4629,-4344,-1032 <10
		.' _Go up_ the final set of stairs up to the pipes |goto 4572,-4362,-995 <10
		.' _Jump up_ onto the pipe and follow it up |goto 4540,-4340,-974 < 10
		.click Weak Spot##274694+
		.' Set the Explosive Charges |q Death from Above##4984/1 |goto Algoroc 4505,-4348,-960
	step
		'Run back down the cliff:
		.' Take cover by Mercenary Terek. |q Death from Above##4984/2 |goto 4637,-4296,-1071
		.' Press _T_ to detonate the explosive charges. |q Death from Above##4984/3 |goto 4637,-4296,-1071
	step
		.talk Mercenary Terek##274637
		..turnin Death from Above##4984 |goto 4637,-4295,-1071
	step
		.talk Bolt##277571
		..turnin Closing the Circuit##4825 |goto 4834,-4219,-1072
	step
		.talk Rusty##277587
		..accept Last One In, Shut the Door ##4853 |goto 4837,-4220,-1072
	step
		.' Step into the portal to enter the Exo-Lab. |q Last One In, Shut the Door ##4853/Enter the Exo-Lab's main corridor##1 |goto 4866,-4229,-1064
		.click Exo-Lab Door Control Console 1##275411
		.' Use the Exo-Lab door controls. |q Last One In, Shut the Door ##4853/Use the Exo-Lab Door Control Console 1##2 |goto Algoroc 4943,-4259,-1225
		.' Defeat the enemies that come in waves. |q Last One In, Shut the Door ##4853/Defeat Exo-Lab security measures##3 |goto 4949,-4256,-1225
		.click Exo-Lab Door Control Console 2##275381
		.' Use the Exo-Lab door control console 2. |q Last One In, Shut the Door ##4853/Use the Exo-Lab Door Control Console 2##4 |goto 4938,-4193,-1225
		.' Defeat the enemies that attack in waves. |q Last One In, Shut the Door ##4853/Defeat Exo-Lab security measures##5 |goto 4932,-4190,-1224
	step
		.talk Belle Walker##275252
		..turnin Last One In, Shut the Door ##4853 |goto 4962,-4224,-1225
		..accept Confronting the Caretaker##4899 |goto 4962,-4224,-1225
	step
		.talk The Caretaker##276114
		..turnin Confronting the Caretaker##4899 |goto 4978,-4223,-1222
		..accept Breaching Security##4828 |goto 4978,-4223,-1222
	step
		.talk Belle Walker##275252
		..accept Caged Science##5261 |goto 4962,-4224,-1225
	step
		.' _Enter_ the next room. |goto 4976,-4253,-1225 <10
		.click Avatar Control Panel##276138
		.' Acess the Avatar Control Panel. |q Breaching Security##4828/Access the Avatar Control Panel##1 |goto Algoroc 5037,-4219,-1230
		.' Kill the enemies that attack you. |q Breaching Security##4828/Eliminate the Purifiers##2 |goto 5048,-4218,-1230
		.click Avatar Control Panel##276138
		.' Remove the activation chip from the control panel. |q Breaching Security##4828/Remove the Avatar's activation chip from his control panel##3 |goto 5037,-4219,-1230
	step
		.' Go in to the far room. |goto Algoroc 5121,-4213,-1226 <10
		.kill Eldan Protector Mark I##2404113
		.click Cage Panel##273283
		.' Rescue the group of scientists. |q Caged Science##5261/Rescue the first group of Scientists##1 |goto 5170,-4210,-1227
	step
		.talk The Caretaker##276114
		..turnin Breaching Security##4828 |goto 4977,-4223,-1222
	step
		.talk Belle Walker##275252
		..turnin Caged Science##5261 |goto Algoroc 4962,-4224,-1225
		..accept Precision Strike##4829 |goto 4962,-4224,-1225
	step
		.' Step into the teleporter to leave the Exo-Labs. |q Precision Strike##4829/Use the teleporter to leave Exo-Lab 14##2 |goto 4880,-4229,-1218
		.click Eldan Control Panel##276159
		.' Activate the Eldan control panel. |q Precision Strike##4829/Activate the Eldan Control Panel##3 |goto Algoroc 4461,-3889,-1094
	step
		.talk Belle Walker##277481
		..turnin Precision Strike##4829 |goto Algoroc 4426,-3930,-1106
	step
		.' Take one of the _elevators back up_ |goto 4410,-3965,-1108 < 10
		'Press _C_ to open your Comuunicator:
		..accept Galeras Adventuring Opportunities##5312 |goto Algoroc 4201,-4015,-1044
		.talk Logistics Officer##292074
		..turnin Galeras Adventuring Opportunities##5312 |goto 4201,-4015,-1044
	step
		.talk Logistics Officer##292074
		..accept Travel to Thayd##5272 |goto Algoroc 4201,-4015,-1044
	step
		.click Gallow Taxi Kiosk##270859 |tip Click the yellow icon on your map named Thayd.
		.' Travel to Thayd |q Travel to Thayd##5272/1 |goto 4203,-4009,-1045
	step
		.talk Thayd Logistics Officer##274835
		..turnin Travel to Thayd##5272 |goto Thayd 3925,-2385,-777
	step
		.talk Coordinator Mills##274838
		..accept Exile Express##5181 |goto Thayd 3970,-2392,-789
	step
		.click Merchant Delivery Point##274725
		.' Deliver the Merchant Package |q Exile Express##5181/2 |goto 4244,-2340,-804
	step
		.click Military Delivery Point##274724
		.' Deliver the Military Package |q Exile Express##5181/3 |goto Thayd 4212,-2256,-811
	step
		.click Explorer Delivery Point##274720
		.' Deliver the Explorer Package |q Exile Express##5181/4 |goto Thayd 4216,-2163,-811
	step
		.click Scientist Delivery Point##274734
		.' Deliver the Scientist Package |q Exile Express##5181/1 |goto 4263,-2449,-815
		'Press _C_ to open your Communicator:
		..turnin Exile Express##5181 |goto Thayd 4261,-2443,-815
	step
		'Press _C_ to use your communicator:
//		..accept I'll Vouch for Your Skills##9438 -- Quest not available
		..accept Galeras Deployment##4964
		..accept Chromatic Magnificence##9083
		..accept Thayd Tours##9367
	step
		'_Travel along_ the dirt path |goto Thayd 4142,-2487,-821 < 20
		.' _Go up_ the ramp into the tunnel |goto 4028,-2644,-803 < 20
		.' _Continue down_ the ramp to the left |goto 4147,-2876,-833 < 20
		.click Thayd Tour Holoprojector##274743
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |count 2 |goto 3885,-3066,-897
	step
		'_Go up_ the ramp and follow it in |goto Thayd 3986,-2979,-890 < 10
		.' _Enter_ Thayd |goto 4036,-2655,-801 < 10
		.click Thayd Tour Holoprojector##274748
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |count 3 |goto Thayd 4208,-2455,-815
	step
		.' Press _I_ to open your inventory and salvage the _Damaged Protostar Dye Collection. |tip Drag it into the button with circular arrows on the bottom of your inventory panel.
		.' Obtain Plurbinum Dye by salvaging Damaged Protostar Dye Collection |q Chromatic Magnificence##9083/2 |goto 4271,-2445,-815
	step
		.talk Protostar Appearance Modificator##270792
		..turnin Chromatic Magnificence##9083 |goto 4268,-2331,-804
	step
		.talk Trooper Renzo's Wife##274781
		..accept A Widow's Closure##9153 |goto 4249,-2332,-804
	step
		.' _Follow the path_ up and around. |goto 4325,-2361,-796 < 10
		.click Thayd Tour Holoprojector##274735
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto 4335,-2398,-788 |count 3
//Quest not available
//	step
//		.talk Supervisor Wicksprout##273786
//		..turnin I'll Vouch for Your Skills##9438 |goto 4360,-2350,-789
//		..accept Vouchers: What Are They Good For?##9448 |goto 4360,-2350,-789
//	step
//		.talk Brigade Researcher Seagarden##273784
//		.' Buy 1 _Crafting Goody Bag_ |tip It is the last item listed under the "General" section.
//		.talk Brigade Researcher Seagarden##273784
//		.' Buy a Crafting Goody Bag from Brigade Researcher Seagarden |q Vouchers: What Are They Good For?##9448/1 |goto 4333,-2346,-794
//	step
//		.talk Supervisor Wicksprout##273786
//		..turnin Vouchers: What Are They Good For?##9448 |goto 4360,-2350,-789
//Quest not available
	step
		.talk Crafting Trainer Thorpe##273763
		..accept Crafting Your First Rune##9097 |goto Thayd 4361,-2353,-789
	step
		.click Engraving Station##273730
		.' Craft a Rune of Grit for an Earth Runeslot |q Crafting Your First Rune##9097/1 |goto 4373,-2334,-788
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Crafting Your First Rune##9097 |goto Thayd 4361,-2353,-789
		..accept Modification Station##9098 |goto Thayd 4361,-2353,-789
	step
		.click Engraving Station##273730
		.' Visit the Engraving Station |q Modification Station##9098/1 |goto 4373,-2333,-788
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Modification Station##9098 |goto Thayd 4361,-2353,-789
	step
		.click Thayd Tour Holoprojector##274747
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 4261,-2202,-811 |count 4
	step
		.talk Sergeant Renzig##274948
		..turnin Galeras Deployment##4964 |goto Thayd 4108,-2340,-804
		..accept Unlikely Heroes##4944 |goto 4108,-2340,-804
	step
		.click Thayd Tour Holoprojector##274736
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto 4059,-2318,-804 |count 5
	step
		.' _Go through_ the tunnel. |goto Thayd 3990,-2299,-804 < 10
		.' _Continue through_ the Court. |goto Thayd 3953,-2081,-799 < 10
		.click Thayd Tour Holoprojector##274752
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 3887,-1832,-843 |count 6
	step
		.click Thayd Tour Holoprojector##274752 
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 4010,-1812,-843 |count 7
	step
		.' _Mounts_
		.' If you are atleast level 15 with 10 gold and 68 silver, you can buy a mount. Otherwise just skip this step.
		.talk Shopkeeper Vic##275008 |goto Thayd 3921,-1758,-843
		.' Buy the level 10 mount of your choice.
		|confirm
	step
		.' _Go through_ the doorway here. |goto 3827,-1829,-843 < 10
		.' _Pass through_ the second doorway. |goto Thayd 3837,-1928,-843 < 10
		.click Thayd Tour Holoprojector##274742
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 3673,-1959,-845 |count 8
	step
		'Press _C_ to use your communicator:
		..turnin Thayd Tours##9367
	step
		.' Press _I_ to open your inventory.
		.' Right-click the _Teleport: Thayd_ in your inventory.
		.' You can now teleport to Thayd once every 24 hours.
		|confirm
	step
		.' _Re-enter_ Thayd |goto 3835,-1929,-843 <10
		.' _Go up_ the stairs |goto Thayd 3994,-1861,-843 <10
		.' _Proceed up_ another flight of stairs |goto Thayd 4122,-1889,-816 < 10
		.' _Pass through_ the gates here |goto Thayd 4265,-1822,-800 < 10
		.' _Head through_ another gate |goto Thayd 4313,-1786,-783 < 10
		.' _Follow the path_ around |goto Thayd 4368,-1830,-782 < 10
		.' _Leave Thayd_ |goto Thayd 4445,-1889,-786 < 10
		'Press _C_ to use your communicator:
		..accept Migrant Mootation##4876 |goto Galeras 4477,-1885,-781
	step
		.kill Contaminated Galehorn##6054533
		.kill Contaminated Galehorn Charger##6284897
		.' Kill contaminated Roan |q Migrant Mootation##4876/1 |goto Galeras 4539,-1844,-776
	step
		'Press _C_ to use your communicator:
		..turnin Migrant Mootation##4876
]])
