if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Algoroc (6-15)",
	{
	faction="Exiles",
	startlevel=6,
	endlevel=15,
	nextguide="Exiles\\Thayd (15)",
	image="ZygorUIGuides:Algoroc", 
	description="Algoroc is a zone in northern Alizar in WildStar. It is a cold, mountainous region, covered in snow and ice. Algoroc is the staging ground for humans and Granok, and is part of Exile territory. The zone is intended for characters levels 6-14.",
	},
	[[
	step
		.talk "Dodger"##268576
		..accept Touring Tremor Ridge##9164 |goto Algoroc 3856,-4525,-1006
	step
		.talk Tremor Ridge Guard
		.' Talk to a Tremor Ridge Guard to get Directions |q Touring Tremor Ridge##9164/1 |goto Algoroc 3851,-4545,-1009
	step
		.click Tremor Ridge Taxi Kiosk##270826
		.' Find and activate the Tremor Ridge Taxi |q Touring Tremor Ridge##9164/2 |goto Algoroc 3809,-4549,-999
		'_Taxi_ locations open automatically now
	step
		.click Mailbox
		.' Find the Tremor Ridge Mailbox |q Touring Tremor Ridge##9164/3 |goto 3860,-4572,-1010
	step
		.talk Merchant Lilyford
		.' Talk to Merchant Lilyford |q Touring Tremor Ridge##9164/4 |goto Algoroc 3821,-4623,-1019
		'You can rent a mount for 24 hour playtime
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
		.'M.A.C. offers a mission where you can learn about your Support Role: _Healing_ |goto Algoroc 3723,-4632,-1023 |only Esper, Medic, Spellslinger
		.'M.A.C. offers a mission where you can learn about your Support Role: _Tanking_ |goto Algoroc 3723,-4632,-1023 |only Engineer, Stalker, Warrior
		|confirm |q 3780
	step
		.click Transmat Terminal##275393
		.' Select the Transmat Terminal |q Touring Tremor Ridge##9164/5 |goto Algoroc 3703,-4657,-1019 <10
		'Click _Yes_ to bind to Tremor Ridge
	step
		'Press _C_ to use your communicator:
		..turnin Touring Tremor Ridge##9164
	step
		.' _Freight Supervisor Lola_ offers a _Expedition_.  Expeditions are solo instances.  Give good XP, a blue reward, and a random epic drop.  This one is for level 6-9 players. |goto Algoroc 3688,-4611,-1025
		|confirm |q 3780
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
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Tremor Ridge |goto Algoroc 3703,-4657,-1019 <10 |c |noway |q 4520
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
		.click Ground Tremors##1180379
		.' Stabilize the first tremor |q Troublesome Tremors##4541/1 |goto 3550,-4607,-962
	step
		.click Ground Tremors##1177360
		.' Stabilize the second tremor |q Troublesome Tremors##4541/2 |goto 3595,-4686,-929
	step
		.' Jump through additional Loftite crystals floating around these cliffs |tip They are blue crystals floating above the ground. |q By Leaps and Bounds##3777/3 |goto 3648,-4732,-939
	step
		.click Ground Tremors##1181240
		.' Stabilize the third tremor |q Troublesome Tremors##4541/3 |goto 3592,-4756,-880
	step
		'Press _C_ to use your communicator:
		..accept Protostar SOS##4519 |goto 3515,-4790,-834 <20
	step
		.talk Protostar Operations Supervisor##287495
		..turnin Protostar SOS##4519 |goto Algoroc 3356,-4886,-817
		..accept Repairing the Core##4525 |goto Algoroc 3356,-4886,-817
		..accept Irradiated Creatures##4527 |goto Algoroc 3356,-4886,-817
	step
		.click Protostar Crash Victim##268944
		..accept Dragged Off....##4946 |goto Algoroc 3327,-4997,-827
	step
		.click Starboard Coolant Vent##273127 |tip It is in the water.
		.' Clear the starboard vent |q Repairing the Core##4525/1 |goto 3192,-4973,-830
	step
		.click Port Coolant Vent##273085 |tip It is underwater.
		.' Clear the port vent |q Repairing the Core##4525/2 |goto 3195,-4941,-843
	step
		.click Protostar Reactor Core##273261 |tip It is underwater.
		.' Stabilize the ship's reactor |q Repairing the Core##4525/3 |goto 3178,-4962,-860
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
		.click Protostar Crash Survivor##1385788 |tip They are marked with an orange cog on your minimap.
		.' Find injured Protostar crash Survivors |q Dragged Off....##4946/Find injured Protostar Crash Survivors##1 |goto 3189,-5068,-817
	step
		.' Go to the waypoint
		.' Press _C_ to use your communicator
		..accept Yeti Extermination##4536 |goto Algoroc 2974,-4975,-818 <10
	step
		.' _Enter_ the Ice Cave |goto 2965,-4968,-815 <10
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
		..turnin Protostar Pure Loftite Survey##4530 |goto Algoroc 3342,-4919,-827
		..turnin Yeti Extermination##4536 |goto Algoroc 3342,-4919,-827
	step
		.talk Protostar Operations Supervisor##287495
		..turnin Dragged Off....##4946 |goto 3355,-4887,-818
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Tremor Ridge |goto Algoroc 3703,-4657,-1019 <10 |c |noway |q 3777
	step
		.' Press _C_ to use your communicator
		..accept A Salvageable Situation##9043
	step
		.talk Denner Hazefall##287554
		..turnin By Leaps and Bounds##3777 |goto 3639,-4607,-1020
		..turnin Troublesome Tremors##4541 |goto 3639,-4607,-1020
	step
		.talk Foreman Hammerworth##287343 |goto 3812,-4665,-1019
		..turnin A Salvageable Situation##9043
		..accept Breaking It Down##9044
	step
		.' Press _I_ to open your inventory and salvage the _Unusable Crafting Prototype_ |tip In your inventory, drag it to the Recycle arrow symbol in the bottom-left area of the inventory window.
		.' Salvage the Unusable Crafting Prototype |q Breaking It Down##9044/Salvage the Unusable Crafting Prototype to get a Dusty Power Core##1
	step
		.talk Drillsmith Moxmay##294440
		..turnin Breaking It Down##9044 |goto 3805,-4669,-1019
	step
		.talk Miner Harlow##287394
		..accept Expensive Diet##4538 |goto Algoroc 3630,-4340,-1072
	step
		.kill Shoveljaw Boulderback##1472303 |tip They look like large piles of boulders and can be found around this area.
		.' Kill Shoveljaw Boulderbacks |q Expensive Diet##4538/Kill Shoveljaw Boulderbacks##1 |goto 3547,-4286,-1073
	step
		'Press _C_ to use your communicator:
		..turnin Expensive Diet##4538
	step
		.talk Sergeant Kormak##287411
		..turnin Dead Silence##3782 |goto Algoroc 3660,-4073,-1051
		..accept Unwelcome Guests##3785 |goto Algoroc 3660,-4073,-1051
	step
		.click Dominion Research Equipment##1467719
		..accept Technical Difficulties##3786 |goto Algoroc 3644,-4256,-1069
	step
		.click Dominion Research Equipment##1437641 |tip More can be found around this large rock.
		.' Destroy Dominion research equipment |q Technical Difficulties##3786/Destroy Dominion Research Equipment##1 |goto 3586,-4195,-1068
		.' Kill Dominion forces around this area |q Unwelcome Guests##3785/Kill Dominion forces##1 |goto Algoroc 3592,-4147,-1066
	step
		'Press _C_ to use your communicator:
		..turnin Unwelcome Guests##3785
		..turnin Technical Difficulties##3786
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
		' Keep walking to the end |goto Algoroc 3662,-3613,-1058 <10
		.click Chua Datacenter##271208
		..accept Disturbing Data##3771 |goto Algoroc 3646,-3547,-1057
	step
		.click Chua Datacenter##271038 |tip These are marked with an orange cog on your minimap.
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 50 |goto 3593,-3466,-1056
	step
		.kill 1 Inventor Hoom##1647340 |q He's the Brains##3765/Kill Inventor Hoom##1 |goto 3639,-3494,-1059
	step
		.click Chua Datacenter##271137 |tip These are marked with an orange cog on your minimap.
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 75 |goto 3642,-3492,-1059
	step
		.click Chua Datacenter##271137 |tip These are marked with an orange cog on your minimap.
		.' Recover designs from Chua Datacenters |q Disturbing Data##3771/1 |count 100 |goto Algoroc 3704,-3487,-1056
	step
		'Press _C_ to use your communicator:
		..turnin Disturbing Data##3771
	step
		.talk Sergeant Kormak##287309
		..turnin He's the Brains##3765 |goto Algoroc 3658,-4072,-1051
		..accept They're Back!##3766 |goto Algoroc 3658,-4072,-1051
	step
		'Press _C_ to use your communicator:
		..turnin They're Back!##3766
		..accept Finish Him!##3770 |tip We will do this one later since gives a free teleport to town.
	step
		.' Go to the waypoint
		.' Press _C_ to open the communicator
		..accept Tree Hugger##4949 |goto 3184,-3926,-1015 <15
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
		..turnin Tree Hugger##4949
	step
		.click Skull's Eye Access Panel##288101
		.' Meet Deadeye Brightland on the Skull's Eye |q Finish Him!##3770/Meet Deadeye Brightland on the Skull's Eye##1 |goto Algoroc 3348,-4298,-1047 -- VERIFY COORDS
	step
		.' _Enter_ the next room |goto Algoroc -1,52,0 <10
		.kill 1 Captain Thokov##262406
		.' Kill Captain Thokov |q Finish Him!##3770/Kill Captain Thokov##3 |goto 0,83,-4
	step
		.click Skull's Eye Escape Pod Terminal##262403
		.' Enter the Skull's Eye Escape Pod |q Finish Him!##3770/Enter the Skull's Eye Escape Pod##4 |goto -8,19,0 -- VERIFY COORDS
	step
		.talk Deadeye Brightland##288507
		..turnin Finish Him!##3770 |goto Algoroc 3831,-4642,-1019
		..accept Gallow's Strife##4703 |goto Algoroc 3831,-4642,-1019
	step
		.' Press C to open the communicator
		..accept Crafting for the Exiles in Algoroc##5424 |goto Algoroc 4046,-4019,-1058 <10
	step
		.' Press C to open the communicator
		..accept [Dungeon] Protogames Preparations##9763 |tip No need to complete dungeon for reward
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
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052 <10
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
		.talk Patron Purdo##294872
		..accept Thieving Skeech##4723 |goto 4117,-4046,-1057
	step
		.talk Rancher Standhill
		..accept Road Killers##3912 |goto Algoroc 4108,-4061,-1057
	step
		.click Transmat Terminal##271199
		.' Select _Yes_ to set your Recall to the Gallow Transmat Terminal |goto 4137,-4085,-1057
		|confirm
	step
		.talk Protogames Recruiter
		..turnin [Dungeon] Protogames Preparations##9763 |goto Algoroc 4160,-4063,-1054
	step
		.' Follow the _dirt path up_ |goto Algoroc 3934,-3930,-1034
		.talk Judge Kain##705866
		.' Speak with Judge Kain |q The Justice Assembly##4784/1 |goto Algoroc 3858,-3861,-996
	step
		.' Kill the attacking enemies that come in waves |q The Justice Assembly##4784/2 |goto 3864,-3874,-998
	step
		.click Judge Kain's Arm##292361
		..turnin The Justice Assembly##4784 |goto 3862,-3872,-998
		..accept The Next Steps##4789 |goto 3862,-3872,-998
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052 <10
		.talk Chronicler Herrick Grenfell##292898
		..turnin The Next Steps##4789 |goto Algoroc 4117,-3948,-1052
		..accept An Explosive Disruption##4786 |goto Algoroc 4117,-3948,-1052
		..accept Vigilante Justice##4705 |goto Algoroc 4117,-3948,-1052
	step
		.click Darkspur Speeder##292174
		.' Attach an AI Controller to the first speeder |q An Explosive Disruption##4786/1 |goto Algoroc 4106,-3975,-1056
	step
		.click Darkspur Speeder##292149
		.' Attach an AI Controller to the third speeder |q An Explosive Disruption##4786/3 |goto 4126,-4014,-1056
	step
		.click Darkspur Speeder##292156
		.' Attach an AI Controller to the second speeder |q An Explosive Disruption##4786/2 |goto 4074,-4013,-1056
	step
		.' Press _T_ to activate the autopilot device |q An Explosive Disruption##4786/4
	step
		.' Kill Darkspur vigilantes around town |q Vigilante Justice##4705/1 |goto 4065,-4017,-1056
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052 <10
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
		.click Munitions Cache##778744
		..accept Fire and Forget##5021 |goto Algoroc 3958,-4011,-1053
	step
		.' Collect medical supplies from Darkspur Cartel members |q Medical Mishap##4713/1 |goto 3862,-4089,-1046
		.click Munitions Cache##778744 |tip More munitions crates can be found around this area.
		.' Sabotage munitions caches |q Fire and Forget##5021/Sabotage Munitions Caches##1 |goto 3979,-3983,-1053
	step
		'Press _C_ to use your communicator:
		..turnin Fire and Forget##5021
	step
		.talk Prospector Burk##293974
		..accept Miner Savior##4714 |goto 3934,-4096,-1053
	step
		.' Go up and the stairs and into Burk's Claim |q Miner Savior##4714/1 |goto 3867,-4025,-1033 <5
		.' All inside this cave:
		.kill Darkspur Butcher##846052
		.kill Darkspur Thug##822739
		.kill Darkspur Pummeler##781726
		.' Kill Cartel Goons |q Miner Savior##4714/Kill Darkspur Cartel goons##2 |goto 3810,-3905,-1034 <30
	step
		'Press _C_ to use your communicator:
		..turnin Miner Savior##4714
	step
		.' Enter the goto Chronicle House |goto Algoroc 4090,-3961,-1052 <10
		.talk Doc Moonwell##294831
		..turnin Medical Mishap##4713 |goto Algoroc 4103,-3931,-1054
	step
		.talk Judge Kain##294848
		..accept Beyond the Realm of Medicine##4719 |goto 4103,-3930,-1054
	step
		.' _Follow the path_ south between the mountains |goto 3897,-4449,-992
		.talk Ranch Hand Jelton##293381
		..accept Rotten Roan##5024 |goto Algoroc 4070,-4158,-1057
	step
		.' All around this area:
		.' Kill Swiftpaws |q Roan Killers##3912/Kill Swiftpaws##1 |goto 4096,-4329,-1039
		.' Kill Skytalong Rotbeaks |q Roan Killers##3912/Kill Skytalon Rotbeaks##2 |goto 4096,-4329,-1039
		.' Poison Roan carcasses |q Rotten Roan##5024/1 |tip You can find more laying on the ground around this area.
	step
		'Press _C_ to use your communicator:
		..turnin Roan Killers##3912
		..turnin Rotten Roan##5024
	step
		.' _Enter_ Halen's Claim |q Beyond the Realm of Medicine##4719/1 |goto Algoroc 4007,-4391,-1017
	step
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
		.click Bore Drill##292505
		.' Disable Bore Drills |q Stop the Drilling##4109/1 |count 66 |goto 4062,-4620,-1059
	step
		.kill 1 Troka' Ra##911283
		.' Rescue Botsmith Redfield |q Emergency Extraction##4785/Rescue Botsmith Redfield##1 |goto 4060,-4594,-1060
		.talk Botsmith Redfield##914287 |q Emergency Extraction##4785/Speak to Botsmith Redfield##2 |goto 4063,-4593,-1060
	step
		.click Bore Drill##292505
		.' Disable Bore Drills |q Stop the Drilling##4109/1 |count 100 |goto 4101,-4569,-1058
	step
		.talk Foreman Halsen##263503 |tip He is up near the cave entrance.
		..turnin Stop the Drilling##4109 |goto 3955,-4501,-1045
	step
		.click Helix's Head##376164
		..accept A Freebot Puzzle##3915 |goto 4153,-4194,-1052
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
		.talk Helix
		..turnin A Freebot Puzzle##3915 |tip You can complete it from communicator too
	step
		.click Stolen Dyes##424878 |tip These are wooden crates found inside this cave.
		.' Recover Stolen Dyes |q Thieving Skeech##4723/2
	step
		.' _Leave_ the cave |goto Algoroc 4178,-4230,-1054
		.' Press _C_ to use your communicator 	//can accept from Justice Alastair too
		..accept Crushing the Crowes##8857 |goto 4141,-4303,-1037
	step
		.talk Justice Alastair##293047
		..turnin Crushing the Crowes##8857 |goto Algoroc 4180,-4371,-1023
		..accept The War On Slush##3927 |goto Algoroc 4180,-4371,-1023
		..accept Slushed Away##3925 |goto Algoroc 4180,-4371,-1023
	step
		.' Travel to the Crowe Homeastead |q Slushed Away##3925/1 |goto Algoroc 4167,-4426,-1013 <15
	step
		.click Slush Still##478862
		..accept Prohibition##4711 |goto Algoroc 4161,-4444,-1011
	step
		' Around area:
		.' Kill Cartel thugs |q Slushed Away##3925/2
		.' Confiscate Slush Kegs |q The War On Slush##3927/1
		.click Slush Still##504675
		.' Sabotage Slush Sills |q Prohibition##4711/##1
	step
		.kill 1 Agnes Crowe##598947 |q Slushed Away##3925/Kill Agnes Crowe##3 |goto 4117,-4800,-929
	step
		'Press _C_ to use your communicator:
		..turnin Slushed Away##3925
		..turnin The War On Slush##3927
		..turnin Prohibition##4711
	step
		.click Cartel Chest##582416
		..accept Rummage for Clues##4718 |goto 4108,-4797,-929
	step
		.click Cartel Chest##638653 |tip They are close to buildings
		.' Search for Cartel Documents in Cartel Chests |q Rummage for Clues##4718/Search for Cartel Documents in Cartel Chests##1 |goto 4105,-4797,-929
	step
		'Press _C_ to use your communicator:
		..turnin Rummage for Clues##4718
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Gallow |goto Algoroc 4137,-4085,-1057 < 10 |c |noway |q 4785
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052 <10
		.talk Judge Kain##294848
		..turnin Emergency Extraction##4785 |goto Algoroc 4102,-3930,-1054
		..accept Alpha Strike##3939 |goto Algoroc 4102,-3930,-1054
	step
		.talk Botsmith Redfield##294854
		..accept A Call to Arm##4294 |goto 4102,-3931,-1054
	// this 3 part chain should be given earlier, lvl 9 we are at 11-12.
	// rewards no gear... candidate for removal
	step 	
		.talk Chronicler Herrick Grenfell##292898
		..accept Gallow's Departed##4023 |goto 4117,-3948,-1052
	step
		.talk Chronicler Holt##293588
		.' Defend the Memorial Service |q Gallow's Departed##4023/1 |goto Algoroc 4053,-3924,-1052
	step
		.' _Enter_ the Chronicle House |goto Algoroc 4077,-3929,-1053 <10
		.talk Chronicler Holt##293588
		..turnin Gallow's Departed##4023 |goto Algoroc 4117,-3948,-1052
	step
		.talk Patron Purdo##294872
		..turnin Thieving Skeech##4723 |goto 4117,-4046,-1057
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
		.' Press _T_ to use a Demolitionbot to gather pure loftite |goto 4079,-3494,-1092 |tip Pure loftite looks like large purple crystal formations on the ground of the cave. |q Automated Demolition##4771/1
	step
		'Press _C_ to use your communicator:
		..turnin Automated Demolition##4771
	step
		'_Head back_ toward the entrance of the cave |goto 4013,-3536,-1091 < 10
		.click Cartel Fuel Source##13597201
		.click Cartel Ammo Shipment##12311032
		.' Destroy Cartel assets |q Alpha Strike##3939/2 |goto Algoroc 3995,-3708,-1089
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Gallow |goto Algoroc 4137,-4085,-1057 < 10 |c |noway |q 3939
	step
		//'_Go up_ the stairs and out of the cave |goto Algoroc 3994,-3635,-1091 < 10
		//.' _Leave_ First Strike Mine |goto Algoroc 3961,-3856,-1044 < 10
		.' _Enter_ the Chronicle House |goto Algoroc 4090,-3961,-1052 <10
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
		.' Go through the blue portal to enter Morek Throg's Underground Lair |q The Final Showdown##3930/3 |goto 3770,-3967,-1081
		.' Kill Morek Throg |q The Final Showdown##3930/Kill Morek Throg##4 |goto Algoroc 3650,-4193,-1131
	step
		.' _Go back_ through the blue portal to return to Judge Kain |goto 3740,-4176,-1131
		.talk Judge Kain##291561
		..turnin The Final Showdown##3930 |goto Algoroc 3787,-3919,-1081
		..accept Gallow's Savior##5425 |goto Algoroc 3787,-3919,-1081
	step
		.click Strange Lever##291554
		.' Use the Strange Lever to _open the secret door_ |goto 3918,-3852,-1045 < 10
		.' _Enter_ the Chronicle House  |goto Algoroc 4090,-3961,-1052 <10
		.talk Chronicler Herrick Grenfell##291829
		..turnin Gallow's Savior##5425 |goto Algoroc 4117,-3948,-1052
		..accept Dangerous Science##4830 |goto Algoroc 4117,-3948,-1052
	step
		.talk Madeline Forster##294866
		..accept Seeking Forster##4727 |goto Algoroc 4201,-3920,-1053
	step
		.talk Rancher Dungarden##294904
		..accept Too Many Girrok!##3918 |goto Algoroc 4196,-3872,-1047
	step
		.' Find Forster's camp |q Seeking Forster##4727/Locate Ranger Forster's campsite##1 |goto 4153,-3770,-1030 <15
	step
		.click Empty Sleeping Bag##292802
		.click Camping Provisions##292788
		.click Rolled-Up Camping Gear##292787
		.' Search Ranger Forster's campsite |q Seeking Forster##4727/2 |goto 4153,-3770,-1030
	step
		'Press _C_ to use your communicator:
		..turnin Seeking Forster##4727
		..accept Tracking the Trapper##5407
	step
		.kill Grimstone Ruffian##615151
		.kill Grimstone Savage##694497
		.' Kill Grimstone |q Too Many Girrok!##3918/Kill Grimstone girrok##1 |goto 4136,-3869,-1050
	step
		'Press _C_ to use your communicator:
		..turnin Too Many Girrok!##3918
	step
		.talk Ranger Forster##293720
		..accept Freedom at Any Cost##4737 |goto Algoroc 4173,-3470,-970
		..accept A Grim Inquisition##5408 |goto Algoroc 4173,-3470,-970
	step
		'Ignore the communicator call _Rockridge Rascals_.  We are _NOT_ going there. 
		|confirm |q 5407
		//'Press _C_ to use your communicator:
		//..accept Rockridge Rascals##7617
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
		.click Cartel Slaver Shack##293147
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |count 33 |goto 4433,-3359,-923
	step
		.click Cartel Slaver Shack##293146
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |count 66 |goto 4499,-3331,-911
	step
		.kill 1 Headmistress Hilda Grim##5620792
		.' Kill Headmistress Hilda Grim |q A Grim Inquisition##5408/2 |goto 4494,-3354,-919
	step
		.click Cartel Slaver Shack##293132
		.' Press _T_ to burn the Cartel's Slaver shack |q Fiery Vengeance##4743/1 |goto 4507,-3374,-920 <10
	step
		.click Grim Slave Pen Generator##293203
		.' Disable the third Grim Slave Pen Generator |q Breakout##4741/3 |goto 4521,-3402,-920
	step
		'Press _C_ to use your communicator:
		..turnin Breakout##4741
		..turnin A Grim Inquisition##5408
		..turnin Fiery Vengeance##4743
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Gallow |goto Algoroc 4137,-4085,-1057 < 10 |c |noway |q 4830
	step
		.' _Follow_ the road east |goto Algoroc 4243,-3920,-1050 <10
		'_Captain Milo_ offers a _Expedition_.  Expeditions are solo instances.  Give good XP, a blue reward, and a random epic drop.  This one is for level 13-16 players.  |goto Algoroc 4372,-3985,-1059
		|confirm |q 4830
	step
		.talk Trooper Gorok##277649
		..turnin Dangerous Science##4830 |goto Algoroc 4423,-3929,-1106
		..accept Coming in Hot!##4978 |goto Algoroc 4423,-3929,-1106
	step
		.talk Trooper Kerrika
		..accept Stone Compatriot Rescue##4983 |goto 4419,-3933,-1106
	step
		.click Transmat Terminal##270842
		.' Select _Yes_ to set your Recall to the Excavation Base Camp |goto 4391,-3918,-1100
		|confirm
	step
		.' All around this dig site:
		.click Crashed Drop Pod##1039178
		.' Rescue Granok Mercenaries |q Stone Compatriot Rescue##4983/Rescue Granok Mercenaries##1 |goto 4387,-3826,-1101
	step
		'Press _C_ to use your communicator:
		..turnin Stone Compatriot Rescue##4983
	step
		.' _Go up_ the ramp |goto 4393,-3864,-1101 < 10
		.click Drop Zone Signal##277256
		.' Defend the Landing Zone |q Coming in Hot!##4978/Activate the beacon and defend the Landing Zone##2 |goto 4354,-3727,-1077
	step
		'Press _C_ to use your communicator:
		..turnin Coming in Hot!##4978
		..accept The Best Offense##4856
		..accept Power Surge##4842
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/2 |goto 4517,-3747,-1102
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/1 |goto 4590,-3830,-1102
	step
		.' Jump into the swirling green energy ball to disrupt the power center |q Power Surge##4842/3 |goto 4679,-3657,-1102
	step
		.kill Site 14 Mender##1151638
		.kill Site 14 Probe##1141201
		.kill Site 14 Augmentor##926697
		.kill Site 14 Protector##1148215
		.' Destroy Site 14 constructs |q The Best Offense##4856/Destroy Site 14 constructs##1 |goto 4387,-3826,-1101
	step
		'Press _C_ to use your communicator:
		..turnin Power Surge##4842
		..turnin The Best Offense##4856
		..accept Shields Up##5465
	step
		.click Fuel Cell##1267145 |tip Small metal cylindrical containers found around this area.
		.' Collect Energy Cores from Fuel Cells |q Shields Up##5465/Collect Energy Cores from Fuel Cells##1 |goto 4685,-3675,-1103
	step
		.click Eldan Shield Generator##277075
		..turnin Shields Up##5465 |goto Algoroc 4441,-3909,-1101
	step
		'Press _C_ to use your communicator:
		..accept Clear a Path to Belle##4989
	step
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
		.kill Site 14 Mender##1151638+, Site 14 Probe##1141201+, Site 14 Augmentor##926697+, Site 14 Protector##1148215+
		.collect Augmented Remains##12523
		.' Use the Augmented Remains in your inventory |use Augmented Remains##12523
		..accept Unconventional Technology##4832
	step
		.' All around the dig site:
		.' Press _T_ on Site Constructs to weaken them
		.' Weaken Constructs and Augmented enemies |q Unconventional Technology##4832/Weaken the Constructs and Augmented Beings##1 |goto 4357,-3800,-1100
		.' Kill Augmented enemies |q Unconventional Technology##4832/Destroy Constructs and Augmented Beings##2 |goto 4357,-3800,-1100
		.' Collect Augmented Tissue Samples from Augmented creatures |q Scientific Sampling##5469/1 |goto Algoroc 4531,-4020,-1119
	step
		'Press _C_ to use your communicator:
		..turnin Unconventional Technology##4832
		..turnin Scientific Sampling##5469
		..accept Thayd Awaits##5312	|tip This one is available at level 14
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
		.' Find the Gamma Cage. |q Augmentation Case Study##7635/Find the Gamma Cage##3|goto 4508,-4257,-1098
		.click Belle's Recording Console##273215
		.' Summon Bolt to study the cage. |q Augmentation Case Study##7635/4 |goto 4500,-4256,-1099
	step
		.click Augmentor Spawner##274615
		.' Deactivate the second Augmentor Spawner. |q Spawned Out##4987/3 |goto 4605,-4200,-1091
	step
		.' Find the Delta Cage. |q Augmentation Case Study##7635/5 |goto 4704,-4289,-1079
		.click Belle's Recording Console##273198
		.' Summon Bolt to study to cage. |q Augmentation Case Study##7635/6 |goto 4698,-4295,-1080
	step
		.click Augmentor Spawner##274574
		.' Deactivate the third Augmentor Spawner. |q Spawned Out##4987/4 |goto 4836,-4249,-1072
	step
		.' All around this area:
		.kill Augmented XAS Scientist##2087289
		.' Kill Augmented XAS Scientists |q Grafted Gronyx##5318/Kill Augmented XAS Scientists##2 |goto 4491,-4211,-1098
		.kill Augmented Slateform Charger##1900822
		.' Destroy Augmented Gronyx |q Grafted Gronyx##5318/Destroy Augmented Gronyx##1 |goto 4491,-4211,-1098
	step
		'Press _C_ to use your communicator:
		..turnin Spawned Out##4987
		..turnin Augmentation Case Study##7635
		..accept Power Struggle##4826
		..turnin Grafted Gronyx##5318
	step
		.talk Rusty##277587
		..turnin Power Struggle##4826 |goto 4837,-4221,-1072
	step
		.talk Bolt##277571
		..accept Closing the Circuit##4825 |goto 4834,-4220,-1072
	step
		.click Eldan Switch##277022
		.' Activate the Eldan Switch. |q Closing the Circuit##4825/Activate the Eldan Switch##1 |goto 4748,-4184,-1080
	step
		.click Damaged Eldan Circuit##277006
		.' Repair the damaged Eldan circuit. |q Closing the Circuit##4825/Repair the Damaged Eldan Circuit##2 |goto 4728,-4225,-1080
	step
		.click Eldan Control Panel##276699
		.' Activate the Eldan control panel. |q Closing the Circuit##4825/Activate the Eldan Control Panel##3 |goto 4723,-4229,-1079
	step
		.click The Caretaker##276759
		.' Retrieve the repaired neural core. |q Closing the Circuit##4825/4 |goto 4712,-4229,-1078
	step
		.talk Bolt##277571
		..turnin Closing the Circuit##4825 |goto 4834,-4219,-1072
	step
		.talk Rusty##277587
		..accept Last One In, Shut the Door ##4853 |goto 4837,-4220,-1072
	step
		.' Step into the portal to enter the Exo-Lab. |q Last One In, Shut the Door ##4853/Enter the Exo-Lab's main corridor##1 |goto 4866,-4229,-1064
	step
		.click Exo-Lab Door Control Console 1##275411
		.' Use the Exo-Lab door controls. |q Last One In, Shut the Door ##4853/Use the Exo-Lab Door Control Console 1##2 |goto Algoroc 4943,-4259,-1225
		.' Defeat the enemies that come in waves. |q Last One In, Shut the Door ##4853/Defeat Exo-Lab security measures##3 |goto 4949,-4256,-1225
	step
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
		.' Acess the Avatar Control Panel. |q Breaching Security##4828/1 |goto Algoroc 5037,-4219,-1230
		.' Kill the enemies that attack you. |q Breaching Security##4828/2 |goto 5048,-4218,-1230
	step
		.click Avatar Control Panel##276138
		.' Remove the activation chip from the control panel |q Breaching Security##4828/3 |goto 5037,-4219,-1230
	step
		.' Go in to the far room. |goto Algoroc 5121,-4213,-1226 <10
		.kill Eldan Protector Mark I##2404113
		.click Cage Panel##273283
		.' Rescue the group of scientists |q Caged Science##5261/1 |goto 5170,-4210,-1227
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
		.' Activate the Eldan control panel |q Precision Strike##4829/3 |goto Algoroc 4461,-3889,-1094
	step
		.talk Belle Walker##277481
		..turnin Precision Strike##4829 |goto Algoroc 4426,-3930,-1106
		..accept Travelin' to Thayd##5270
	step
		'Press _C_ to open your Comuunicator:
		..accept Alpha Sanctum Expedition##10096
	step
		.' Take one of the _elevators back up_ |goto 4410,-3965,-1108 < 10
		.click Gallow Taxi Kiosk##270859 |tip Click the yellow icon on your map named Thayd.
		.' Use the Gallow Taxi Kiosk to travel to Thayd |q Travel to Thayd##5270/1 |goto 4203,-4009,-1045
	]]
)
