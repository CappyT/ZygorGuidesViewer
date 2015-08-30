if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Deradune (6-15)",
	{
	faction="Dominion",
	startlevel=6,
	endlevel=15,
	nextguide="Dominion\\Illium (15)",
	image="ZygorUIGuides:Deradune",
	description="Deradune is a desert zone in western Olyssia full of wild life. Deradune serves as one of the starting zone for the Dominion, and is controlled mostly by Draken. Deradune is intended for characters level 6-15."
	},
	[[
	step
		'Press _C_ to open your Communitcator:
		..turnin Last Resistance##5594
	step
		.talk Huntress Kezzia##3548 |goto Deradune -5715,-641,-974
		..accept Bloodrush##3165
	step
		.talk Acolyte Kiari##287368 |goto Deradune -5715,-641,-974
		..accept Sanguine Sanctity##6489
	step
		.talk Demydra##287385 |goto Deradune -5666,-655,-974
		..accept Bloodfire Village Amenities##9875
	step
		.talk Bloodfire Guard |goto Deradune -5724,-615.5,-974
		.' Speak with a Bloodfire Guard |q Bloodfire Village Amenities##9875/1
	step
		.' Select the Bloodfire Village Taxi Kiosk |q Bloodfire Village Amenities##9875/2 |goto Deradune -5745,-617,-972
		'_Taxi_ locations open automatically now
	step
		.click Mailbox##277103 |goto Deradune -5646,-682,-975
		.' Select the Mailbox |q Bloodfire Village Amenities##9875/3
	step
		.talk Merchant Drokari |q Bloodfire Village Amenities##9875/4 |goto Deradune -5624,-697,-977
		'You can rent a mount for 24 hour playtime
	step
		.click Transmat Terminal##284476 |goto Deradune -5599,-781,-983
		.' Select the Transmat Terminal |q Bloodfire Village Amenities##9875/5
		'Click _Yes_ to bind to Bloodfire Village
	step
		'Press _C_ to open your Communitcator:
		..turnin Bloodfire Village Amenities##9875
	step
		.click Strange Skull##287753 |goto Deradune -5629,-651,-975
		..accept A Skull without a Home##3395
	step
		.talk Bloodshaman Sorkan##286768 |goto Deradune -5684,-501,-981
		..turnin Sanguine Sanctity##6489
		..accept Fights of Passage##5420
	step
		' _Start Ritual_ by killing the _Sacrificial Warpig_
		' Kill _Ekor_, _Galthaz_, _Teresh_
		.' Survive the Rite of Passage |q Fights of Passage##5420/1 |goto Deradune -5674,-468,-979
	step
		.talk Bloodshaman Sorkan##286768 |goto Deradune -5684,-501,-981
		..turnin Fights of Passage##5420
	step
		.click Waterlogged Plank##287891 |goto Deradune -5778,-411,-999
		..accept Survival of the Fittest##3295
	step
		' Click _Coastal Runt_, then press _T_ to kill it |goto Deradune -5892,-621,-998
		.' Choose a creature to kill |q Survival of the Fittest##3295/1
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Bloodfire Village |goto Deradune -5599,-782,-983 < 10 |c |noway
	step
		.talk Elder Torvak##272261 |goto Deradune -5623,-778,-983
		..turnin Survival of the Fittest##3295
	step
		.talk Bloodshaman Akilos##275070 |goto Deradune -5575,-698,-978
		..turnin A Skull without a Home##3395
		..accept The Bloodfeast##3320
	step
		.click Draken Pike##275227 |goto Deradune -5591,-704,-967
		.' Place the Bloodfeast Trophy on the skull pile |q The Bloodfeast##3320/1
	step
		'Press _C_ to open your Communitcator:
		..turnin The Bloodfeast##3320
	step
		.talk Agent Lex##272110 |goto Deradune -5604,-638,-979
		..accept Enhanced Interrogation##5796
	step
		.talk Captured Shadeleaf Weaver##275074 
		.' Interrogate the Captured Shadeleaf Weaver |q Enhanced Interrogation##5796/1 |goto Deradune -5608,-612,-979
	step
		.talk Agent Lex##272110 |goto Deradune -5604,-638,-979
		..turnin Enhanced Interrogation##5796
	step
		.talk Game Huntress Wyla##271960 |goto Deradune -5461,-633,-984
		..accept The Watchers of Deradune##5600
	step
		'Kill any animal near this spot |goto Deradune -5455,-633,-983
		.' Slay a beast near a Huntress |q The Watchers of Deradune##5600/1
	step
		.kill Whitepaw Pouncer##6417387+
		.kill Gnarlfoot Brute##5887404+
		.kill Whitepaw Slasher##5737965+
		.' Kill Whitepaw Pumera and Gnarlfoot Razortail |q Bloodrush##3165/2 |goto Deradune -5296,-823,-966
	step
		'Press _C_ to open your Communitcator:
		..turnin Bloodrush##3165
		..accept Scent of Blood##3167
	step
		.click Poacher Corpse##293711
		.' Investigate the Poacher Camp |q Scent of Blood##3167/1 |goto Deradune -5248,-671,-979
		.' Follow the Scent Trail |q Scent of Blood##3167/2 |goto Deradune -5165,-764,-978 < 10
	step
		'Follow the trail
		.click Coarsehair Corpse##286449
		.' Follow the Scent Trail |q Scent of Blood##3167/3 |goto Deradune -5054,-640,-977 < 10
	step
		'Follow the trail
		.click Pumera Corpse##286556
		.' Follow the Scent Trail |q Scent of Blood##3167/4 |goto Deradune -5019,-552,-978
	step
		' Kill _Kifo_ and _Kivuli_  |goto Deradune -5019,-552,-978
		.' Kill the Pumera Called Kivuli |q Scent of Blood##3167/5
		.' Kill the Pumera Called Kifo |q Scent of Blood##3167/6
	step
		'Press _C_ to open your Communitcator:
		..turnin Scent of Blood##3167
		..accept Blood for Blood##3170
	step
		.' Kill _Shadeleaf Mystic_ |tip If he's missing skip the next 2 steps |goto Deradune -5083,-539,-985
		' Use the _Aurin Datacron_ in your inventory
		..accept The Aurin Enclave##3171
	step
		.' Kill Ullana Shadeleaf |q The Aurin Enclave##3171/1 |goto Deradune -5179,-488,-985
	step
		'Press _C_ to open your Communitcator:
		..turnin The Aurin Enclave##3171
	step
		.talk Huntress Kezzia##286407 |goto Deradune -4903,-648,-955 < 5
		.' Meet Huntress Kezzia at Zonaga's Lair |q Blood for Blood##3170/1
	step
		' Kill _Zonga_ and press _F_ to loot the head |goto Deradune -4861,-715,-962
		.'Slay Zonaga in Zonaga's Lair and retrieve its head |q Blood for Blood##3170/2
	step
		.click Unstable Accelerite##286178 |goto Deradune -5036,-655,-973
		..accept Unstable Accelerite##6485
	step
		'_Unstable Accelerite_ gives a speed boost
		.click Unstable Accelerite##286178 |goto Deradune -5036,-655,-973
		.' Pick up the Unstable Accelerite |q Unstable Accelerite##6485/1
	step
		' _Run_ back to town and click _Bloodfeast Altar_ |goto Deradune -5563,-696,-979 < 10 |c |q 3170/3
	step
		.' Place Zonaga's Head on the Bloodfeast Altar |q Blood for Blood##3170/3
	step
		.talk Huntress Kezzia##272020 |goto Deradune -5611,-683,-978
		..turnin Blood for Blood##3170
	step
		'Press _C_ to open your Communitcator:
		..accept Blasphemous Moodies##3316
	step
		.talk Mika##276440 |goto Deradune -5622,-710,-978
		..turnin The Watchers of Deradune##5600
	step
		.talk Hologram of Engineer Giba##286515 |goto Deradune -5633,-730,-978
		..turnin Unstable Accelerite##6485
	step
		.' _Freight Supervisor Lola_ offers a _Shiphand_.  Shiphands are solo instances.  Give good XP, a blue reward, and a random epic drop, and needed to reach level 15.  This one is for level 6 players. |goto Deradune -5659,-855,-977
		|confirm |q 3316
	step
		.talk Apprentice Laveka##272191 |goto Deradune -5488,-1088,-967
		..turnin Blasphemous Moodies##3316
		..accept Mojo Moodies##3302
	step
		.talk Engineer Giba##272173 |goto Deradune -5445,-1098,-966
		..accept Explosive Mammodin##5444
	step
		.talk Engineer Biba##272125
		.' Speak with Engineer Biba to take control of a mammodin |q Explosive Mammodin##5444/1 |goto Deradune -5446,-1088,-967
		'Control the Mammodin to explode near poachers in this area  |goto Deradune -5274,-1109,-949
		.' Kill Poachers in Bloodfire Savannah |q Explosive Mammodin##5444/2
	step
		'Press _C_ to open your Communitcator:
		..accept Eaten!##3297
	step
		.talk Engineer Giba##271879 |goto Deradune -5445,-1098,-966
		..turnin Explosive Mammodin##5444
	step
		.kill Stonetusk Flattener##5804805+
		.kill Stonetusk Trampler##6258155+
		.' Find Scout Furlo inside a Stonetusk mammodin |q Eaten!##3297/2 |goto Deradune -5288,-1188,-955
	step
		.' Found inside the Mammodin's body:
		.talk Scout Furlo##5443915
		..turnin Eaten!##3297
	step
		.' Watch for a crate to drop out of the sky, then kill the _Airdropped_ mob that comes out
		.' Use the _Genetic Performance Tracker_ in your inventory |use Genetic Performance Tracker##16109
		..accept Tracking Genetic Performance##5601 |goto Deradune -5446,-1341,-956
	step
		.kill Deadwind Jackal##2966141+
		.kill Deadwind Elder Witchdoctor##3057409+
		.' Kill Deadwind Moodies |q Mojo Moodies##3302/1 |goto Deradune -5596,-1494,-944
	step
		'Press _C_ to open your Communitcator:
		..turnin Mojo Moodies##3302
	step
		'Press _C_ to open your Communitcator:
		..accept Tamolo's Necromojo##3304 |goto Deradune -5604,-1496,-945
	step
		.' Kill Tamolo |q Tamolo's Necromojo##3304/1 |goto Deradune -5626,-1525,-944
		.' Retrieve Tamolo's Necromojo Staff |q Tamolo's Necromojo##3304/2
	step
		.talk Apprentice Laveka##271909 |goto Deradune -5488,-1088,-967
		..turnin Tamolo's Necromojo##3304
		..accept The Staff and the Shaman##5799
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Bloodfire Village |goto Deradune -5599,-782,-983 < 10 |c |noway
	step
		.talk Huntress Kezzia##272301 |goto Deradune -5611,-683,-978
		..accept Clanlord Makaza##3370
	step
		'Press _C_ to open your Communitcator:
		..accept A Salvageable Situation##9046
	step
		.talk Bloodshaman Akilos##274826 |goto Deradune -5575,-698,-978
		..turnin The Staff and the Shaman##5799
	step
		.talk Researcher Zeelo##286554 |goto Deradune -5628,-626,-973
		..turnin Tracking Genetic Performance##5601
		..turnin A Salvageable Situation##9046
		..accept Breaking it Down##9048
	step
		'Press _I_ to open your inventory
		.' Drag the _Unstable Crafting Prototype_ over the _Salvage_ icon at the bottom of the inventory window|tip It looks like a recycle symbol.
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking it Down##9048/1
	step
		.talk Longshot Vydin##273693 |goto Deradune -5661,-762,-975
		..turnin Breaking it Down##9048
	step
		' _Enter_ the large hut |goto Deradune -5668,-679,-971 < 15 |c |q 3370
	step
		.talk Clanlord Makaza##271963 |goto Deradune -5742,-727,-967
		..turnin Clanlord Makaza##3370
		..accept Scout Jagged Rock##5943
	step
		.talk Scout Malius##286300 |goto Deradune -5536,-165,-980
		..turnin Scout Jagged Rock##5943
		..accept Soften Them Up##5606
	step
		.click Rocket Launcher##286513 |goto Deradune -5549,-169,-981
		..accept Surface to Air##6334
	step
		.click 1 Exile Patrolship##5493882 |goto Deradune -5565,-179,-982
		.' Press _T_ to shoot down an Exile Attack Ship |q Surface to Air##6334/1 |tip Move your camera to look up at the sky.
	step
		'Press _C_ to open your Communicator:
		..turnin Surface to Air##6334
	step
		.' Follow the road _down the path_ |goto Deradune -5655,-118,-980 < 10 |c |q 5606
	step
		..accept Communications Blackout##3162 |goto Deradune -5665,-36,-998
	step
	    'Around this area:
		.' Sabotage the Exile Communications Relay |q Communications Blackout##3162/1 |goto Deradune -5726,-47,-993
		.' Kill Jagged Rock Mercenaries |q Soften Them Up##5606/1 |goto Deradune -5780,14,-1000
	step
		'Press _C_ to open your Communicator:
		..turnin Communications Blackout##3162
		..accept Cornered Prey##3160
	step
		.click Explosives Detonator##983659 |goto Deradune -5737,10,-999
		.' Steal an Explosives Detonator |q Cornered Prey##3160/2
	step
		.click Explosives Crate##1029423  |goto Deradune -5796,16,-999 |tip Crates are around the rocks in this area.
		.' Steal Explosive Charges from Crates |q Cornered Prey##3160/1
	step
		.click Ship Engine##286374 |goto Deradune -5703,114,-999
		.' Plant Explosive Charges on the Engines |q Cornered Prey##3160/3 |count 1
	step
		.click Ship Cockpit##286179 |goto Deradune -5688,121,-996
		.' Plant an Explosive Charge in the cockpit |q Cornered Prey##3160/4
	step
		.click Ship Engine##286374 |goto Deradune -5673,124,-1000
		.' Plant Explosive Charges on the Engines |q Cornered Prey##3160/3
	step
		.' Go here, then Press _T_ to: |goto Deradune -5754,100,-995 < 5
		.' Detonate the charges from a safe distance |q Cornered Prey##3160/5
	step
		'Press _C_ to open your Communicator:
		..turnin Soften Them Up##5606
		..accept Capture the Mercenary##5607
		..turnin Cornered Prey##3160
	step
	    'Kill any Jagged mob around Mine entrance
		.' Press _I_ and click the _Jagged Rock Cage Key_ in your inventory
		..accept Maintaining One's Honor##3166
	step
		.' _Enter_ the Cave |goto Deradune -5654,78,-1001 < 10 |c |q 3166/1
		..accept What's Mine is Mine##5608 |goto Deradune -5628,86,-1002
	step
		.' Follow the path _through the cave_ |goto Deradune -5507,99,-1002 < 10 |c |q 3166/1
	step
		.' _Continue through_ the cave, and kill Miners on your way |goto Deradune -5488,68,-1003 < 10
		.click Mercenary Prison Cage##286952 |goto Deradune -5405,57,-994
		.' Free Firewalker Jarrok |q Maintaining One's Honor##3166/1
	step
		.' Kill Firewalker Jarrok |q Maintaining One's Honor##3166/2 |goto Deradune -5391,61,-994 |tip Kill Miners on your way
	step
		.' Kill Mercenary Arkos |q Capture the Mercenary##5607/1 |goto Deradune -5254,91,-1001
	step
		'Press _C_ to open your Communicator:
		..turnin Capture the Mercenary##5607
		..accept A Captive Audience##3163
	step
		.kill Jagged Rock Extractorbot##1201404+
		.kill Jagged Rock Minebot##6350379+
		.kill Jagged Rock Miner##6523490+
		.' Kill Miners |q What's Mine is Mine##5608/1 |goto Deradune -5617,89,-1001
	step
		'Press _C_ to open your Communicator:
		..turnin What's Mine is Mine##5608
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Bloodfire Village |goto Deradune -5599,-782,-983 < 10 |c |noway |q 3163
	step
		.talk Elder Torvak##271978 |goto Deradune -5624,-778,-983
		..turnin Maintaining One's Honor##3166
	step
		.' Enter the _Bloodfire Clanhall_ |goto Deradune -5661,-676,-973 < 15 |c |q 3163/1
	step
		.' Witness Clanlord Makaza's Judgment |q A Captive Audience##3163/1 |goto Deradune -5742,-727,-967
		.' Listen to Clanlord Makaza |q A Captive Audience##3163/2
	step
		.talk Clanlord Makaza##271963 |goto Deradune -5742,-727,-967
		..turnin A Captive Audience##3163
		..accept Arrival of the Luminai##3347
	step
		.talk Clanlord Makaza##1290547 |goto Deradune -5747,-624,-972
		..turnin Arrival of the Luminai##3347
	step
		.talk Huntress Kezzia##272301 |goto Deradune -5611,-683,-978
		..accept Chua Troubles##3507
	step
		.talk Overseer Tongo##292399 |goto Deradune -5073,-1543,-949
		..turnin Chua Troubles##3507
	step
		.talk Mondo Zax##292395 |goto Deradune -5095,-1555,-945
		..accept Terminite Containment##5692
	step
		.click Transmat Terminal##283551 |goto Deradune -4990,-1544,-941
		' Click _Yes_ to set _Feralplain Collective_ as your Recall Point
		|confirm |q 5692
	step
		.talk Scientist Twilo##292106 |goto Deradune -5177,-1807,-936
		..turnin Terminite Containment##5692
		..accept Turn Up the Heat##5714
	step
		.talk Scientist Argin##292265 |goto Deradune -5182,-1818,-934
		..accept Venom Sacs##5751
		..accept Breaking Eggs##5752
	step
		.click Trapped Scanbot##1468082 |goto Deradune -5148,-1914,-960
		..accept When the Gooing Gets Tough##5697
	step
		'Press _C_ to open your Communicator:
		..accept Mitey Infestation##5758 |goto Deradune -5194,-1888,-961
	step
		'All around this area: |goto Deradune -5146,-1914,-960
		.' Collect Venom Sacs off Hillscourge Terminite |q Venom Sacs##5751/1
		.' Detonate Terminite Eggs |q Breaking Eggs##5752/1
		.' Free Trapped Scanbots around Hillscourge |q When the Gooing Gets Tough##5697/1
	step
		'Press _C_ to open your Communicator:
		..turnin Venom Sacs##5751
		..turnin When the Gooing Gets Tough##5697
		..turnin Breaking Eggs##5752
	step
		.' _Enter_ the cave |goto Deradune Deradune -5061,-1923,-964
		.talk Professor Ontus##292360 |goto Deradune -5033,-2009,-1005
		..accept Into the Lab Below##5693
	step
		.talk Analyst Bungo##292332 |goto Deradune -5033,-2009,-1005
		..accept Terminite Tissue Trial##5698
	step
		.' _Step into_ the teleporter to enter Exo-Lab 79 |goto Deradune -5039,-2028,-1004 < 7 |c |q 5693/1
	step
		.' Look for Researcher Martinus |q Into the Lab Below##5693/1 |goto Deradune -5026,-1792,-1209
	step
		.click Researcher Martinus##271345 |goto Deradune -5026,-1792,-1209
		..accept Fragments of the Past##5694
	step
		' They are around the area |goto Deradune -4988,-1767,-1209
		.' Kill Terminites |q Turn Up the Heat##5714/4
		.' Collect Energized Terminite Tissues |q Terminite Tissue Trial##5698/1
		.' Collect Datacube Fragments |q Fragments of the Past##5694/1
	step
		.' Go to the Terminite Mound containing Exo-Lab 79 |q Turn Up the Heat##5714/1 |goto Deradune -4954,-1741,-1209
	step
		'Press _C_ to open your Communicator:
		..turnin Turn Up the Heat##5714
		..turnin Into the Lab Below##5693
		..turnin Terminite Tissue Trial##5698
	step
		.click Eldan Datacube Terminal##271346
		.' Use the Eldan Datacube Terminal to reconstruct the Datacube |q Fragments of the Past##5694/2 |goto Deradune -5007,-1750,-1207 < 5
	step
		.click DATACUBE: Fail-Safe Mechanism##271432 |goto Deradune -4997,-1758,-1206
		.' Activate the DATACUBE: Fail-Safe Mechanism |q Fragments of the Past##5694/3
	step
		'Press _C_ to open your Communicator:
		..turnin Fragments of the Past##5694
		..accept Powering the Fail-Safe##5695
	step
		.click Eldan Power Conduit##271200 |goto Deradune -4968,-1756,-1209
		.' Repair the first Eldan Power Conduit |q Powering the Fail-Safe##5695/1 |count 33
	step
		.click Eldan Power Conduit##271236 |goto Deradune -4895,-1755,-1205
		.' Repair the second Eldan Power Conduit |q Powering the Fail-Safe##5695/2 |count 66
	step
		.click Eldan Power Conduit##271204 |goto Deradune -4829,-1770,-1201
		.' Repair the final Eldan Power Conduit |q Powering the Fail-Safe##5695/3
	step
		'Press _C_ to open your Communicator:
		..turnin Powering the Fail-Safe##5695
		..accept Terminated!##5696
	step
		' This is a holdout.  Press _T_ to use Flamethrower |goto Deradune -4852,-1848,-1201
		.' Activate the Eldan Power Controller |q Terminated!##5696/1
		.' Fight off waves of Terminites |q Terminated!##5696/2
	step
		.click Eldan Fail-Safe##270950 |goto Deradune -4829,-1827,-1200
		.' Activate the Eldan Fail-Safe |q Terminated!##5696/3
	step
		.' _Run through_ the hallway |goto Deradune -4860,-1755,-1199 < 10 |c |q 5758/1
	step
		.' _Continue_ on the way out |goto Deradune 1294 -5026,-1824,-1208 < 10 |c |q 5758/1
	step
		.' _Teleport_ out |goto Deradune 1293 -5027,-1995,-1198 < 10 |c |q 5758/1
	step
		.' _Leave_ the Exo-Lab 79 |goto Deradune -5064,-1910,-959 < 10 |c |q 5758/1
	step
		.' _Enter_ the termite cave |goto Deradune 1774 -5316,-1675,-958 < 10 |c |q 5758/1
	step
		.' Go to the Terminite Mound Containing Exo-Lab 78 |q Mitey Infestation##5758/1 |goto Deradune -5329,-1703,-968
	step
		.' Enter Exo-Lab 78 |q Mitey Infestation##5758/2 |goto Deradune -5357,-1785,-1002
	step
		'Press _C_ to open your Communicator:
		..accept Caught in a Web##5766
	step
		'As you go through this area:  |goto Deradune -5461,-2055,-1099
		.' Free Trapped Researchers |q Caught in a Web##5766/1
		.' Kill Deathmite Spiders |q Mitey Infestation##5758/3
	step
		'Press _C_ to open your Communicator:
		..turnin Mitey Infestation##5758
		..turnin Caught in a Web##5766
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Feralplain Collective |goto Deradune -4991,-1542,-941 < 10 |c |noway
	step
		.talk Professor Ontus##292360 |goto Deradune -5044,-1580,-945
		..turnin Terminated!##5696
	step
		'Press _C_ to open your Communicator:
		..accept Calling All Testers##5822
	step
		'Press _C_ to open your Communicator:
		..accept Crafting for the Dominion in Deradune##6855
	step
		.talk Craftmaster Tullio##287115 |goto Deradune -5042,-1503,-947
		..turnin Crafting for the Dominion in Deradune##6855
	step
		.talk Minion Togor##269908 |goto Deradune -4849,-1202,-941
		..turnin Calling All Testers##5822
		..accept Small Modifications##5625
	step
		'Click a _Pumera_, then Press _T_ from distance |goto Deradune -4773,-1163,-927
		.' Test the Aggression Enhancer on an Unmodified Pumera |q Small Modifications##5625/1
	step
		'Click a _Pumera_, then Press _T_ from distance |goto Deradune -4751,-1182,-921
		.' Use the Aggression Enhancer and then kill Enhanced Pumera |q Small Modifications##5625/2
	step
		'Press _C_ to open your Communicator:
		..turnin Small Modifications##5625
		..accept The Carnivorizor##5626
	step
		.talk Supervisor Renla##269872 |goto Deradune -4748,-1278,-916
		..accept Rogue Razortails##5627
		..accept Cause and Defect##5632
	step
		.click Gentle Dawngrazer##1494517 |goto Deradune -4814,-1314,-912
		.' Press _T_ to use the Carnivorizor on Gentle Dawngrazers |q The Carnivorizor##5626/1
	step
		.click Razortail Cage##269936 |goto Deradune -4787,-1366,-915 < 10
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1 |count 33
	step
		.click Razortail Cage##269938 |goto Deradune -4735,-1335,-916
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1 |count 66
	step
		.click Razortail Cage##269936 |goto Deradune -4733,-1388,-910 < 10
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1
	step
		.click Chua Researcher##269714 |goto Deradune -4809,-1397,-914
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 20
	step
		.click Chua Researcher##269714 |goto Deradune -4686,-1393,-912
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 40
	step
		.click Chua Researcher##269774 |goto Deradune -4689,-1315,-911
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 60
	step
		.click Chua Researcher##269718 |goto Deradune -4568,-1269,-911
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 80
	step
		.click Chua Researcher##269716 |goto Deradune -4719,-1146,-933
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1
	step
		'Press _C_ to open your Communicator:
		..turnin Cause and Defect##5632
	step
		.talk Supervisor Renla##269872 |goto Deradune -4751,-1280,-916
		..turnin Rogue Razortails##5627
		..turnin The Carnivorizor##5626
		..accept Huge Success!##5628
	step
		'Press _C_ to open your Communicator:
		..accept Hearts and Minds and Wings##5509 |goto Deradune -4732,-1513,-912
	step
		.talk Lord Voricus##270653 |goto Deradune -4712,-1547,-911
		'Report to Lord Voricus |q Hearts and Minds and Wings##5509/1
	step
		.talk Emissary Autarka##270727 |goto Deradune -4719,-1553,-911
		..turnin Hearts and Minds and Wings##5509
		..accept Diplomatic Preparations##5510
	step
		.click Transmat Terminal##283551 |goto Deradune -4703,-1523,-911
		.' Click _Yes_ to set _Tall Rock Point_ as your Recall Point
		|confirm |q 5628
	step
		.kill Stonetusk Earthshaker##4063692 |goto Deradune -4593,-1532,-922
		.' Collect a Mammodin Horn |q Diplomatic Preparations##5510/3
	step
		'All around this area |goto Deradune -4519,-1419,-941 < 20
		' Collect Shiny Stones  |q Diplomatic Preparations##5510/1
		.' Kill Zomclaw Buzzards for Tail Feathers |q Diplomatic Preparations##5510/2
	step
		.talk Minion Togor##269880 |goto Deradune -4498,-1309,-928
		.' Find and Speak to Minion Togor |q Huge Success!##5628/1
	step
		.' Kill Experiment 878 |q Huge Success!##5628/2 |goto Deradune -4487,-1271,-932
	step
		'Press _C_ to open your Communicator:
		..turnin Huge Success!##5628
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Tall Rock Point |goto Deradune -4702,-1522,-911 < 10 |c |noway |q 5510
	step
		.talk Emissary Autarka##270727 |goto Deradune -4719,-1552,-911
		..turnin Diplomatic Preparations##5510
		..accept Hostile Negotiations##5511
	step
		.' Carefully follow the edge around this cliff |goto Deradune -4738,-1665,-900 < 10
		.click Ceremonial Falkrin Horn##270171 |goto Deradune -4797,-1875,-893
		.' Blow the Ceremonial Falkrin Horn |q Hostile Negotiations##5511/1
	step
		'Watch the Dialogue, then fight the waves |goto Deradune -4811,-1893,-897
		.' Help "negotiate" with the Falkrin |q Hostile Negotiations##5511/2
	step
		.talk Clanlord Makaza##292410 |goto Deradune -4717,-1553,-911
		..turnin Hostile Negotiations##5511
		..accept Rescue the Emissaries##5512
		..accept Challenge the Strongest##5513
	step
		.talk Mondo Zax##292411 |goto Deradune -4710,-1548,-911
		..accept Innovative Methods##5514
	step
		' _Head up_ the moutain path |goto Deradune -4628,-1619,-908 < 10 |c |q 5512
	step
		.click Emissary Autarka's Head##269934 |goto Deradune -4638,-1709,-862
		..turnin Rescue the Emissaries##5512
		..accept Autarka's Response##5517
		..accept Picking up the Pieces##5519
	step
		'Press _C_ to open your Communicator:
		..accept Demoralize Them##5520 |goto Deradune -4631,-1708,-864
	step
		.click Bloodtalon Totem##269999 |goto Deradune -4580,-1739,-855
		.' Destroy Bloodtalon Totems |tip These appear as orange cogs on your minimap. |q Demoralize Them##5520/1 |count 20
	step
		.click Mechari Arms##4296298 |goto Deradune -4486,-1624,-855
		.' Collect the missing Mechari Arms |q Picking up the Pieces##5519/3
	step
		.' Kill Warmonger Murali |q Challenge the Strongest##5513/2 |goto Deradune -4496,-1605,-855
	step
		.' Kill Crusher Zhong |q Challenge the Strongest##5513/3 |goto Deradune -4312,-1724,-872
	step
		.click Mechari Legs##4535359 |goto Deradune -4378,-1743,-862
		.' Collect the missing Mechari Legs |q Picking up the Pieces##5519/2
	step
		'Press _C_ to open your Communicator:
		..accept Primal Air Energies##5521 |goto Deradune -4570,-1804,-858
	step
		.click Air Altar##271678 |goto Deradune -4560,-1823,-859
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 25
	step
		.click Air Altar##271676 |goto Deradune -4492,-1824,-857
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 50
	step
		.click Air Altar##271710 |goto Deradune -4433,-1880,-859
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 75
	step
		.click Air Altar##271670 |goto Deradune -4395,-1905,-859
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1
	step
		'Press _C_ to open your Communicator:
		..turnin Primal Air Energies##5521
	step
		.' Kill Keeper Akhin |q Challenge the Strongest##5513/1 |goto Deradune -4587,-2040,-860
	step
		'Press _C_ to open your Communicator:
		..turnin Challenge the Strongest##5513
	step
		'Right-click _Falkrin Hut_ to: |goto Deradune -4588,-2040,-861
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 20
	step
		'Right-click _Falkrin Hut_ to: |goto Deradune -4675,-1980,-864
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 40
	step
		.click Mechari Torso##4360568 |goto Deradune -4649,-1919,-863
		.' Collect the missing Mechari Torso |q Picking up the Pieces##5519/1
	step
		'Right-click _Falkrin Hut_ to: |goto Deradune -4660,-1893,-864
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 60
	step
		'Right-click _Falkrin Hut_ to: |goto Deradune -4711,-1869,-863
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 80
	step
		'Right-click _Falkrin Hut_ to: |goto Deradune -4690,-1848,-862
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |tip If you are in previous one, just right click it
	step
		.' All around Bloodtalon Perch: |goto Deradune -4657,-1928,-864
		.' Kill Bloodtalon Falkrin |q Autarka's Response##5517/1
		.' Destroy Bloodtalon Totems |q Demoralize Them##5520/1
	step
		'Press _C_ to open your Communicator:
		..turnin Demoralize Them##5520
		..turnin Innovative Methods##5514
		..turnin Autarka's Response##5517
		..accept Secrets of the Falkrin##5515
	step
		.' _Go up_ the ramp and through the gate |goto Deradune -4516,-1894,-849 < 10 |c |q 5515/1
	step
		.' Get to Bloodtalon Tower |q Secrets of the Falkrin##5515/1 |goto Deradune -4492,-1933,-838
		.' Teleport to Bride Vultura's nest|q Secrets of the Falkrin##5515/2 |goto Deradune -4474,-1947,-822
	step
		.' Kill Bride Vultura |q Secrets of the Falkrin##5515/3 |goto Deradune 1371 -4257,-1947,-727
	step
		'_Enter_ the teleporter |goto Deradune -4338,-1934,-727 < 10 |c |q 5519
	step
		.' _Continue_ on the path |goto Deradune -4499,-1927,-841 < 10 |c |q 5519
	step
		.click Emissary Autarka's Head##270162 |goto Deradune -4638,-1710,-862
		..turnin Picking up the Pieces##5519
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Tall Rock Point |goto Deradune -4702,-1522,-911 < 10 |c |noway |q 5515
	step
		.talk Clanlord Makaza##292410 |goto Deradune -4717,-1553,-911
		..turnin Secrets of the Falkrin##5515
	step
		'Press _C_ to open your Communicator:
		..accept Your Service is Required##7015
	step
		.talk Scientist Primm##292383 |goto Deradune -4628,-1087,-942
		..accept Zamm in a Jam##5688
	step
		.talk Agent Lex##287016 |goto Deradune -4619,-1065,-942
		..turnin Your Service is Required##7015
		..accept Into the Wild##5633
		..accept An Aurin Infestation##3509
	step
		'Press _C_ to open your Communicator:
		..accept The Guardian of the Grove##5650 |goto Deradune -4488,-983,-940
	step
		' Kill _Wildwood_ Aurin in area |goto Deradune -4488,-983,-940
		.' Collect Aurin Datachrons |q An Aurin Infestation##3509/1
	step
		'Press _C_ to open your Communicator:
		..turnin An Aurin Infestation##3509
		..turnin Into the Wild##5633
	step
		.' Scout Wildwood Grove |q Into the Wild##5633/1 |goto Deradune -4429,-943,-936
	step
		'Press _C_ to open your Communicator:
		..accept Wildwood Terraformer##5634
	step
		.click Terraformer Power Basin##269020 |goto Deradune -4443,-953,-938
		.' Access the Terraformer Power Basin |q Wildwood Terraformer##5634/1
	step
		.click Aurin Relic Cache##268249 |goto Deradune -4439,-984,-943
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2 |count 33
	step
		.click Aurin Relic Cache##266875 |goto Deradune -4447,-833,-927
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2 |count 66
	step
		.click Aurin Relic Cache##268680 |goto Deradune -4370,-854,-930
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2
	step
		.click Terraformer Power Basin##268988 |goto Deradune -4430,-918,-936
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3 |count 33
	step
		.click Terraformer Power Basin##269020 |goto Deradune -4443,-953,-938
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3 |count 66
	step
		.click Terraformer Power Basin##268986 |goto Deradune -4410,-948,-938
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3
	step
		.click Eldan Terraformer##268990 |goto Deradune -4414,-931,-936
		.' Deactivate the Eldan Terraformer |q Wildwood Terraformer##5634/4
	step
		.' Kill Yirian, the Grove Guardian |q The Guardian of the Grove##5650/1 |goto Deradune -4373,-960,-939
	step
		.click Aurin Portal##268808 |goto Deradune -4355,-956,-936
		.' Destroy the Aurin Portal |q The Guardian of the Grove##5650/2
	step
		'Press _C_ to open your Communicator:
		..turnin The Guardian of the Grove##5650
	step
		.talk Researcher Zamm##271177 |goto Deradune -4396,-1021,-932
		.' Rescue Researcher Zamm |q Zamm in a Jam##5688/2
	step
		.talk Agent Lex##287016 |goto Deradune -4617,-1064,-942
		..turnin Wildwood Terraformer##5634
	step
		.talk Scientist Primm##292383 |goto Deradune -4629,-1086,-942
		..turnin Zamm in a Jam##5688
	step
		'Press _C_ to open your Communicator:
		..accept Conservation in the Basin##9067
	step
		'Press _C_ to open your Communicator:
		..accept Firewalker SOS##6037 |goto Deradune -4369,-673,-956 < 10
	step
		.' Locate Camp Firewalker |q Firewalker SOS##6037/1 |goto Deradune -4407,-626,-967
	step
		.click Firewalker Guard##291507 |goto Deradune -4397,-612,-969
		 .' Investigate the crime scene |q Firewalker SOS##6037/2 |count 14
	step
		.click Transmat Terminal##286155
		.' Click _Yes_ to set _Camp Firewalker_ as your Recall point |goto Deradune -4388,-607,-968
		|confirm |q 6037
	step
		.click Ammunition Crate##291541 |goto Deradune -4408,-591,-967
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 28
	step
		.click Abandoned Coins##291532 |count 42 |goto Deradune -4417,-589,-968
		.' Investigate the crime scene |q Firewalker SOS##6037/2
	step
		.click Cage Door##291542 |goto Deradune -4433,-590,-969
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 57
	step
		.click Vaelen's Holoprojector##291544 |goto Deradune -4448,-622,-968
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 71
	step
		.click Firewalker Guard##291531 |goto Deradune -4421,-622,-968
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 85
	step
		.click Councilor Vaelen##291523 |goto Deradune -4431,-619,-969
		.' Investigate the crime scene |q Firewalker SOS##6037/2
	step
		.talk Agent Lex##291506 |goto Deradune -4431,-619,-969
		..turnin Firewalker SOS##6037
		..accept Hunting the Mercenary##6045
	step
		.click Dominion Medical Kit##291571 |goto Deradune -4187,-464,-940
		.' Locate the first clue |q Hunting the Mercenary##6045/1
	step
		.talk Wounded Game Huntress##291516 |goto Deradune -4295,-347,-945
		.' Locate the second clue |q Hunting the Mercenary##6045/2
	step
		.talk Injured ICI Tracker##291517 |goto Deradune -4229,-155,-949
		.' Meet with the ICI Tracker |q Hunting the Mercenary##6045/3
	step
		.click Stolen ICI Speeder##291526 |goto Deradune -4424,34,-968
		.' Track the Stolen ICI Speeder |q Hunting the Mercenary##6045/4
	step
		'Press _C_ to open your Communicator:
		..turnin Hunting the Mercenary##6045
		..accept Leave No Leaf Unturned##6072 |goto Deradune -4428,33,-968
	step
		'Around this area: |goto Deradune -4329,57,-970 < 20
		.' Kill Wildvine Aurin |q Leave No Leaf Unturned##6072/1
	step
		'Press _C_ to open your Communicator:
		..turnin Leave No Leaf Unturned##6072
		..accept The Root of Treachery##6047
	step
		.'_Enter_ the underground tunnel |goto Deradune -4526,413,-960 < 10 |c |q 6047/1
	step
		.' Locate Mercenary Arkos |q The Root of Treachery##6047/1 |goto Deradune -4510,392,-993
	step
		.' Defeat Mercenary Arkos |q The Root of Treachery##6047/2 |goto Deradune -4504,401,-994
	step
		'Press _C_ to open your Communicator:
		..turnin The Root of Treachery##6047
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Camp Firewalker Point |goto Deradune -4388,-607,-968 < 10 |c |noway |q 9067
	step
		'Press _C_ to open your Communicator:
		..accept Emergency Support##5916
	step
		.'Cross this bridge |goto Deradune -4511,-375,-969 |c |q 9067
	step
		.talk Conservationist Caius##291390 |goto Deradune -4671,-428,-970
		..turnin Conservation in the Basin##9067
	step
		.talk Biologist Ari##291391 |goto Deradune -4682,-435,-970
		..accept A Shocking Solution##5924
	step
		'Click _Plumclaw Prowler_, then Press _T_ to:  |goto Deradune -4747,-414,-965
		.' Shock Plumclaw Prowlers |q A Shocking Solution##5924/1
		.' Recover Stolen Provisions |q A Shocking Solution##5924/2
	step
		.talk Biologist Ari##291391 |goto Deradune -4682,-435,-970
		..turnin A Shocking Solution##5924
	step
		.talk Conservationist Caius##291390 |goto Deradune -4671,-428,-970
		..accept Conservation Efforts##5881
	step
		' Click a _Ripjaw_, _Goldfang_ or _Dusktail_, press _T_ to:
		.' Tag Ripjaw Thrashers |q Conservation Efforts##5881/3 |goto Deradune -4543,-558,-970
		.' Tag Goldfang Stalkers |q Conservation Efforts##5881/2 |goto Deradune 1752 -4607,-322,-968
		.' Tag Dusktail Harts and Dusktail Grazers |q Conservation Efforts##5881/1 |goto Deradune -4621,-264,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Conservation Efforts##5881
		..accept Lost Mammodin##5911
	step
		.' Locate Subject A43K |q Lost Mammodin##5911/1 |goto Deradune -4815,-376,-959
		.click Subject A43K##291438 |goto Deradune -4815,-376,-959
		.' Recover Subject A43K's tracking chip |q Lost Mammodin##5911/2
	step
		'Press _C_ to open your Communicator:
		..turnin Lost Mammodin##5911
		..accept Delivering the Bad News##5914
	step
		.talk Conservationist Caius##291365 |goto Deradune -4671,-428,-970
		.' Report to Conservationist Caius |q Delivering the Bad News##5914/1
		.' Eavesdrop on Conservationist Caius's conversation |q Delivering the Bad News##5914/2
	step
		.click Goldfang Corpse##291432 |goto Deradune -4602,-283,-969
		.' Examine a Goldfang Corpse |q Delivering the Bad News##5914/3 |tip These are marked as an orange cog on your minimap.
	step
		.click Dusktail Corpse##291430 |goto Deradune -4581,-264,-968
		.' Examine a Dusktail Corpse |q Delivering the Bad News##5914/4 |tip These are marked as an orange cog on your minimap.
	step
		.click Rusthoof Corpse##291415 |goto Deradune -4739,-16 ,-952.2
		.' Examine a Rusthoof Corpse |q Delivering the Bad News##5914/5 |tip These are marked as an orange cog on your minimap.
	step
		'Press _C_ to open your Communicator:
		..turnin Delivering the Bad News##5914
		..accept Poacher Hunt##5915
	step
		.' Locate the Grimvoid Marauder Camp |q Poacher Hunt##5915/1 |goto Deradune -4743,252,-950
	step
		'Press _C_ to open your Communicator:
		..turnin Poacher Hunt##5915
		..accept Hunters Become Hunted##5921
	step
		.click Fuel Drum##4731399 |goto Deradune -4754,231,-952
		..accept Up in Flames##6052
	step
		'All around this area: |goto Deradune -4778,252,-951 < 20
		.click Fuel Drum##4731399
		.' Ignite Fuel Drums |q Up in Flames##6052/1
	step
		.click Grimvoid Communications Relay##291364 |goto Deradune -4825,308,-949
		.' Disable the Grimvoid Communications Relays |q Hunters Become Hunted##5921/1 |count 1
	step
		.click Grimvoid Communications Relay##291364 |goto Deradune -4774,371,-951
		.' Disable the Grimvoid Communications Relays |q Hunters Become Hunted##5921/1
	step
		.' Destroy Grimvoid Marauders and Triguns |q Hunters Become Hunted##5921/2 |goto Deradune -4756,438,-951
	step
		'Press _C_ to open your Communicator:
		..turnin Hunters Become Hunted##5921
		..accept What Must Be Done##5922
	step
		.' Kill Grimvoid Marauders |q Up in Flames##6052/2 |goto Deradune -4754,433,-951
		.' Bring Lord Venator to justice |q What Must Be Done##5922/1 |goto Deradune -4787,423,-951
	step
		.talk Conservationist Caius##291390 |goto Deradune -4669,-430,-971
		..turnin What Must Be Done##5922
	step
		'Press _C_ to open your Communicator:
		..accept A Grave Threat##3622
	step
		.talk Biologist Ari##291391 |goto Deradune -4683,-436,-970
		..turnin Up in Flames##6052
	step
		.' Head through the gates and _up the path_ |goto Deradune -4842,-236,-950 < 10 |c |q 3622
	step
		.click Transmat Terminal##283551 |goto Deradune -4946,-137,-934
		.' Click _Yes_ to set _Endless Vigil_ as your Recall Point
		|confirm |q 3622
	step
		.'_Cross_ the bridge |goto Deradune -5036,-174,-935 |c |q 3622
	step
		.talk Cairnguard Drakuz##291428 |goto Deradune -5129,-150,-932
		..turnin A Grave Threat##3622
		..accept Honor the Dead##5883
	step
		.click Clanlord Monument##291462 |goto Deradune -5122,-178,-935
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1 |count 33
	step
		'Press _C_ to open your Communicator:
		..accept Trespassers Will Be Violated##5940
	step
		.click Clanlord Monument##291479 |goto Deradune -5172,-147,-937
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1 |count 66
	step
		.click Clanlord Monument##291479 |goto Deradune -5125,-114,-932
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1
	step
		.' Find Apprentice Laveka |q Honor the Dead##5883/2 |goto Deradune -5172,-110,-936
	step
		.talk Apprentice Laveka##291493 |goto Deradune -5172,-109,-936
		..turnin Honor the Dead##5883
		..accept A Meeting in Darkness##5925
	step
		.click Stolen Draken Bone##4962199 |goto Deradune -5188,-85,-938
		..accept Collecting Bones##3655
	step
		.' Find Witchwake Cavern |q A Meeting in Darkness##5925/1 |goto Deradune -5327,21,-940
	step
		.click Bonebound Totem##291480 |goto Deradune -5346,19,-940
		.' Activate the Bonebound Totem |q A Meeting in Darkness##5925/2
	step
		.' This starts a holdout, survice the waves.  |goto Deradune -5348,16,-940
		.' Survive Apprentice Laveka's demostration |q A Meeting in Darkness##5925/3
	step
		'Press _C_ to open your Communicator:
		..turnin A Meeting in Darkness##5925
		..accept Righteous Fury##5926
	step
		.click Stolen Draken Bone##4922299 |goto Deradune -5221,141,-952
		.' Retrieve Stolen Draken Bones |q Collecting Bones##3655/1
	step
		.' Kill Risen Draken |q Righteous Fury##5926/1
		.' Destroy Witchwake Totems |q Righteous Fury##5926/2
		.' Kill Witchwake Necromancers |q Righteous Fury##5926/3 |goto Deradune -5132,237,-947
		.' Kill Witchwake Moodies |q Trespassers Will Be Violated##5940/1 |goto Deradune -5174,195,-951
	step
		'Press _C_ to open your Communicator:
		..turnin Trespassers Will Be Violated##5940
		..turnin Righteous Fury##5926
		..accept A Violent End##5927
	step
		.' Follow road south |goto Deradune -5013,285,-947 < 15 |c |q 5927/1
	step
		.' Go inside cave |goto Deradune -5034,338,-943 < 10  |c |q 5927/1
	step
		.' Find High Clanlord Zhur the Risen's Tomb |q A Violent End##5927/1 |goto Deradune -5062,434,-945
	step
		.' Defeat High Clanlord Zhur the Risen |q A Violent End##5927/2 |goto Deradune -5218,449,-978
	step
		.' _Recall-Transmat_ to Endless Vigil |goto Deradune -4946,-137,-934 < 10 |c |noway |q 5927
	step
		.click Draken Resting Place##291526 |goto Deradune -5128,-146,-932
		.' Return Bones to Draken Resting Place |q Collecting Bones##3655/2
	step
		.talk Cairnguard Drakuz##291368 |goto Deradune -5128,-146,-932
		..turnin A Violent End##5927
		..turnin Collecting Bones##3655
	step
		.' Find the Royal Collegium expedition in Leviathan's Rest |q Emergency Support##5916/1 |goto Deradune -5071,-70,-967
	step
		.talk DRED Tech Farlo##287388 |goto Deradune -5071,-70,-967
		..turnin Emergency Support##5916
		..accept Stick It to Them!##3651
	step
		.talk Kevo##287389 |goto Deradune -5098,-43,-976
		..accept Getting the Band Back Together##5917
		..accept Find Lady Zin##5972
	step
		.talk Supply Officer Alcede##291648 |goto Deradune -5086,-32,-977
		..accept Swallowed Supplies##5988
	step
		.talk Artemis Zin##291234 |goto Deradune -5118,40,-978
		..turnin Find Lady Zin##5972
		..accept Eldan Decryption##5918
	step
		.click Inactive A37 Augmentor##291194 |goto Deradune -5120,41,-978
		.' Activate the A37 Augmentor |q Eldan Decryption##5918/1
	step
		.' Observe the A37 Augmentor |q Eldan Decryption##5918/2 |goto Deradune -5132,57,-978
	step
		.talk Artemis Zin##291218 |goto Deradune -5118,40,-978
		..turnin Eldan Decryption##5918
		..accept Hostile Acquisitions##5919
	step
		.click Hand##291475 |goto Deradune -5031,56,-980
		..accept No Good Deed...##5941
	step
		.' Rescue members of Artemis Zin's expedition |q Getting the Band Back Together##5917/1
		.' Collect Swallowed Supplies from Oozing Sludgeons |q Swallowed Supplies##5988/1
		.' Collect Augmentor Data Cores from A37 Augmentors |q Hostile Acquisitions##5919/1
		 'Press _T_ to use Glop Gun on mobs
		.' Use the Glop Gun on tar pit creatures |q Stick It to Them!##3651/1 |goto Deradune -5079,127,-979 < 20
	step
		'Press _C_ to open your Communicator:
		..turnin Stick It to Them!##3651
		..turnin Getting the Band Back Together##5917
		..turnin Swallowed Supplies##5988
		..turnin Hostile Acquisitions##5919
		..accept Unlocking the Gate##5920
	step
		'Press _C_ to open your Communicator:
		..accept Illium Awaits##9878 |tip You get this when reach level 14
	step
		'Press _T_ to:
		.' Scan for the first exo-lab access key |q Unlocking the Gate##5920/1 |goto Deradune -5081,130,-979
	step
		'Press _T_ to:
		.' Scan for the second exo-lab access key |q Unlocking the Gate##5920/2 |goto Deradune -4993,60,-971
	step
		'Press _T_ to:
		.' Scan for the third exo-lab access key |q Unlocking the Gate##5920/3 |goto Deradune -4935,197,-968
		.' _Follow_ the energy signature trail |q Unlocking the Gate##5920/4 |goto Deradune -4906,316,-993
	step
		.talk Artemis Zin##5278424 |goto Deradune -4903,317,-992
		..turnin Unlocking the Gate##5920
		..accept Meet Me Inside##6033
	step
		'_Step into_ the green teleporter |goto Deradune -4904,333,-990 < 10
		.talk Artemis Zin##5278424 |goto Deradune -5153,415,-1151
		..turnin Meet Me Inside##6033
		..accept Ticket to Ride##5958
	step
		.talk Kevo##291343 |goto Deradune -5154,404,-1151
		..accept Cleaning Up the Lab##5908
	step
		.talk The Caretaker##291342 |goto Deradune -5149,410,-1151
		..turnin Ticket to Ride##5958
		..accept Security Sync##5992
		..accept Fragmented Memory##5993
	step
		.' Use the teleporter to travel to the security level |q Security Sync##5992/1 |goto Deradune -5038,303,-1143
	step
		.click Security Avatar##291299 |goto Deradune -4932,389,-1231
		.' Sync the Security Avatar |q Security Sync##5992/2
	step
		.' Return to Exo-Lab A37's main level |q Security Sync##5992/3 |goto Deradune -4975,509,-1228
	step
		.' Kill Skeledroids |q Cleaning Up the Lab##5908/1 |goto Deradune -5041,410,-1146
	step
		'Press _C_ to open your Communicator:
		..turnin Cleaning Up the Lab##5908
	step
		.' Use the teleporter to travel to the information station |q Fragmented Memory##5993/1 |goto Deradune -5038,519,-1142
	step
		.kill External Memory Core##5107194+
		.click Memory Core Fragment##5192783
		.' Gather Memory Core Fragments |q Fragmented Memory##5993/2 |goto Deradune -5247,480,-1231
	step
		.click Information Avatar##291230 |goto Deradune -5274,390,-1231
		.' Synchronize the Information Avatar |q Fragmented Memory##5993/3
	step
		.' Return to main level of Exo-Lab A37 |q Fragmented Memory##5993/4 |goto Deradune -5231,508,-1228
	step
		' _Head back_ toward the front
		.talk The Caretaker##291342 |goto Deradune -5148,410,-1151
		..turnin Security Sync##5992
		..turnin Fragmented Memory##5993
		..accept Organic Dismemberment##5905
	step
		.' Travel to the Augmentation Area via Teleporter |q Organic Dismemberment##5905/1 |goto Deradune -4985,409,-1142
	step
		.click Augmentation Defense Terminal##291249 |goto Deradune -5102,405,-1221
		.' Activate the Augmentation Defense Terminal |q Organic Dismemberment##5905/2
	step
		.kill A37 Augmentor##555782 |goto Deradune -5091,426,-1223
		.' Destroy the A37 Augmentor Before Time Runs Out |q Organic Dismemberment##5905/3
	step
		'Press _C_ to open your Communicator:
		..turnin Organic Dismemberment##5905
		..accept The Icing on the Cake##5907
	step
		.click DATACUBE: Skeletal Catalyst##287188 |goto Deradune -5103,595,-1209
		.' Access the Eldan Datacube |q The Icing on the Cake##5907/1
	step
		.'_Take the teleporter_ out |goto Deradune -5103,371,-1217 < 5 |c |q 5907
	step
		.' _Go through_ the hallway |goto Deradune -5088,439,-1146 < 5|c |q 5907
	step
		.talk Artemis Zin##291322 |goto Deradune -5153,415,-1151
		..turnin The Icing on the Cake##5907
		..accept Traveling to Illium##9876
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Endless Vigil |goto Deradune -4946,-137,-934 < 10 |c |noway |q 9876
	step
		.talk Captain Milo
		..accept Shiphand: The Steady Traveler##6426 |goto Deradune -4881,-102,-931
	step
		' Click _Transport to Steady Traveler_ ladder, then click _Yes_, _Normal_ and _Enter_
		.' Use the Transport Ship to reach the Steady Traveler |q Shiphand: The Steady Traveler##6426/1 |goto Deradune -4881,-102,-931
	step
		' Talk to _Captain Milo_ and follow his instructions
		.' Save Outpost M-13 |q Shiphand: The Steady Traveler##6426/2
	step
		' Leave cave and head to ship
		.talk Captain Milo
		..turnin Shiphand: The Steady Traveler##6426
	step
		.click Endless Vigil Taxi Kiosk##286774| goto Deradune -4900,-89,-931
		.' Use the Endless Vigil Taxi Kiosk to travel to Illium | q  Traveling to Illium##9876/1
	step
		.talk Tour Guide Aexa##2193 |goto Illium -3363,-674,-890
		..turnin Traveling to Illium##9876
	]]
)