ZGV:RegisterGuide("Dominion\\Deradune (6-15)",
	{
	faction="Dominion",
	startlevel=6,
	endlevel=15,
	nextguide="Dominion\\Auroria (15-23)",
	image="ZygorUIGuides:Deradune", 
	description="Deradune is a desert zone in westernOlyssia that has been taken over by The Dominion. Deradune serves as one of the starting zone for the Dominion, and is controlled mostly by Draken. Deradune is intended for characters level 6-15."
	},
	[[
	step
		'Press _C_ to open your Communitcator:
		..turnin Last Resistance##5594
	step
		.talk Demydra##287385
		..accept Touring Bloodfire Village##9170 |goto Deradune -5755,-633,-972
	step
		.click Bloodfire Village Taxi Kiosk##287816
		.' Select the Bloodfire Village Taxi Kiosk |q Touring Bloodfire Village##9170/Select the Bloodfire Village Taxi Kiosk##1 |goto Deradune -5745,-617,-972
	step
		.talk Acolyte Kiari##287368
		..accept Sanguine Sanctity##6489 |goto Deradune -5720,-624,-975
	step
		.click Mailbox##277103 
		.' Select the Mailbox |q Touring Bloodfire Village##9170/Select the Mailbox##2 |goto Deradune -5646,-682,-975
	step
		.talk Huntress Kezzia##272301
		..accept Bloodrush##3165 |goto -5611,-684,-978
	step
		.click Transmat Terminal##284476
		.' Select the Transmat Terminal |q Touring Bloodfire Village##9170/Select the Transmat Terminal##3 |goto -5599,-781,-983
		.' Follow Demydra on a tour |q Touring Bloodfire Village##9170/Follow Demydra on a tour##4 |goto -5599,-781,-983
	step
		'Right Click this Terminal to set it as a Recall Point
		.click Transmat Terminal##284476 |goto -5599,-781,-983
		|confirm
	step
		.talk Demydra##287386
		..turnin Touring Bloodfire Village##9170 |goto -5607,-778,-983
	step
		.click Strange Skull##287753
		..accept A Skull without a Home##3395 |goto -5596,-875,-985
	step
		.talk Bloodshaman Akilos##275070
		..turnin A Skull without a Home##3395 |goto -5575,-698,-978
		..accept Blasphemous Moodies##3316 |goto -5575,-698,-978
		..accept The Bloodfeast##3320 |goto -5575,-698,-978
	step
		.click Draken Pike##275227 
		.' Place the Bloodfeast Trophy on the skull pile |q The Bloodfeast##3320/Place the Bloodfeast Trophy on the skull pile##1 |goto -5591,-704,-967
	step
		.talk Bloodshaman Akilos##275070
		..turnin The Bloodfeast##3320 |goto -5575,-697,-978
	step
		.talk Agent Lex##272110
		..accept Enhanced Interrogation##5796 |goto -5605,-639,-979
	step
		.talk Captured Shadeleaf Weaver##275074 
		.' Interrogate the Captured Shadeleaf Weaver |q Enhanced Interrogation##5796/Interrogate the Captured Shadeleaf Weaver##1 |goto -5608,-612,-979
	step
		.talk Agent Lex##272110
		..turnin Enhanced Interrogation##5796 |goto -5605,-638,-979
	step
		.click Waterlogged Plank##287891
		..accept Survival of the Fittest##3295 |goto Deradune -5887,-634,-999
	step
		'Press _T_ to:
		.kill Zomclaw Blubber Eater##852901 
		.' Choose a creature to kill |q Survival of the Fittest##3295/Choose a creature to kill##1 |goto -5892,-621,-998
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat |goto Deradune -5599,-782,-983 < 100 |c |noway
	step
		.talk Elder Torvak##272261
		..turnin Survival of the Fittest##3295 |goto Deradune -5623,-778,-983
	step
		.talk Apprentice Laveka##272191
		..turnin Blasphemous Moodies##3316 |goto Deradune -5488,-1088,-967
		..accept Mojo Moodies##3302 |goto Deradune -5488,-1088,-967
	step
		.talk Engineer Giba##272173
		..accept Explosive Mammodin##5444 |goto -5445,-1098,-966
	step
	 	.talk Engineer Biba##272125 |q Explosive Mammodin##5444/Speak with Engineer Biba to take control of a mammodin##1 |goto Deradune -5446,-1088,-967
		'Control the Mammodin to explode near poachers in this area
		.' Kill Poachers in Bloodfire Savannah |q Explosive Mammodin##5444/Kill Poachers in Bloodfire Savannah##2 |goto -5274,-1109,-949
	step
		'Press _C_ to open your Communitcator:
		..accept Eaten!##3297
	step
		.talk Engineer Giba##271879
		..turnin Explosive Mammodin##5444 |goto Deradune -5445,-1098,-966
	step
		.kill Stonetusk Flattener##5804805+
		.kill Stonetusk Trampler##6258155+
		.' Find Scout Furlo inside a Stonetusk mammodin |q Eaten!##3297/2 |goto Deradune -5288,-1188,-955
	step
		.' Found inside the Mammodin's body:
		.talk Scout Furlo##5443915
		..turnin Eaten!##3297
	step
		.' Watch for a crate to drop out of the sky, then kill the mob that comes out
		.kill 1 Airdropped Girrok##636325
		.kill 1 Airdropped Ravenok##1003602
		.kill 1 Airdropped Malverine##999552
		.collect 1 Genetic Performance Tracker##16109
		.' Use the Genetic Performance Tracker in your inventory |use Genetic Performance Tracker##16109
		..accept Tracking Genetic Performance##5601 |goto -5446,-1341,-956
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
		'Press _C_ to open your Communitcator:
		..accept Tamolo's Necromojo##3304 |goto -5604,-1496,-945
	step
		.kill 1 Tamolo##976579 |q Tamolo's Necromojo##3304/Retrieve Tamolo's Necromojo Staff##2 |goto -5626,-1525,-944
	step
		.kill 1 Deadwind Jackal##2966141+
		.kill 1 Deadwind Elder Witchdoctor##3057409+
		.' Kill Deadwind Moodies |q Mojo Moodies##3302/1 |goto Deradune -5596,-1494,-944
	step
		'Press _C_ to open your Communitcator:
		..turnin Mojo Moodies##3302
	step
		.talk Apprentice Laveka##271909
		..turnin Tamolo's Necromojo##3304 |goto Deradune -5488,-1089,-967
		..accept The Staff and the Shaman##5799 |goto Deradune -5488,-1087,-967
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat |goto Deradune -5599,-782,-983 < 100 |c |noway
	step
		.talk Bloodshaman Akilos##274826
		..turnin The Staff and the Shaman##5799 |goto Deradune -5575,-698,-978
	step
		.talk Researcher Zeelo##286554
		..turnin Tracking Genetic Performance##5601 |goto -5628,-626,-973
		..accept Breaking it Down##9048 |goto -5628,-626,-973
	step
		'Press _I_ to open your inventory
		.' Click the Salvage button at the bottom of your inventory |tip It looks like 2 arrows in a circle.
		.' Click _Next_ until you see _Unusable Crafting Prototype_ then click _Salvage_
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking it Down##9048/Salvage the Unusable Crafting Prototype to get a Dusty Power Core##1
	step
		.talk Longshot Vydin##273693
		..turnin Breaking it Down##9048 |goto -5661,-762,-975
	step
		.talk Longshot Vydin##273693
		..turnin Sanguine Sanctity##6489 |goto -5684,-501,-981
		..accept Fights of Passage##5420 |goto -5684,-501,-981
	step
		.kill 1 Sacrificial Warpig##734311
		.' Start the Ritual by killing the Sacrificial Warpig
		.kill 1 Ekor##737877
		.kill 1 Galthaz##681782
		.kill 1 Teresh##739091
		.' Survive the Rite of Passage |q Fights of Passage##5420/Survive the Rite of Passage##1 |goto Deradune -5674,-468,-979
	step
		.talk Bloodshaman Sorkan##286768
		..turnin Fights of Passage##5420 |goto Deradune -5684,-500,-981
	step
		.talk Game Huntress Wyla##271960
		..accept The Watchers of Deradune##5600 |goto Deradune -5461,-633,-984
	step
		'Kill any animal near this spot
		.' Slay a beast near a Huntress |q The Watchers of Deradune##5600/Slay a beast near a Huntress##1 |goto -5455,-633,-983
	step
		.talk Mika##276440
		..turnin The Watchers of Deradune##5600 |goto Deradune -5622,-710,-978
	step
		.' Travel to the Poacher Camp |q Scent of Blood##3167/Travel to the Poacher Camp##1 |goto Deradune -5247,-671,-979 
	step
		.click Poacher Corpse##293711
		.' Examine the Poacher Corpses |q Scent of Blood##3167/Examine the Poacher Corpses##2 |goto -5248,-671,-979
	step
		'As you follow the trail, do the folliwng:
		.click Coarsehair Corpse##286449 |goto Deradune -5163,-764,-978 < 10
		.click Bruiserbot##700993 |goto Deradune -5054,-640,-977 < 10
		.' Follow the Scent Trail |q Scent of Blood##3167/Follow the Scent Trail##3
	step
		.kill 1 Kivuli##783893
		.kill 1 Kifo##782590 
		.' Kill the Pumera Called Kivuli |q Scent of Blood##3167/Kill the Pumera Called Kivuli##5 |goto -5023,-547,-982\
	step
		'Press _C_ to open your Communitcator:
		..turnin Scent of Blood##3167
		..accept Blood for Blood##3170
	step
		.talk Huntress Kezzia##286407 
		.' Meet Huntress Kezzia at Zonaga's Lair |q Blood for Blood##3170/Meet Huntress Kezzia at Zonaga's Lair##1 |goto -4902,-650,-956
	step
		.kill 1 Zonaga##804348 
		.' Slay Zonaga and Retrieve Its Head |q Blood for Blood##3170/Slay Zonaga and Retrieve Its Head##2 |goto Deradune -4861,-715,-962
	step
		.kill 1 Shadeleaf Mystic##756977 |tip They are all around this area.
		.kill 1 Shadeleaf Novice##6084880
		.' Press _I_ and click the _Aurin Datachron_ in your inventory
		..accept The Aurin Enclave##3171 |goto Deradune -5269,-717,-979
	step
		.kill 1 Ullana Shadeleaf##955848 |q The Aurin Enclave##3171/Kill Ullana Shadeleaf##1 |goto Deradune -5187,-487,-985
	step
		'Press _C_ to open your Communicator:
		..turnin The Aurin Enclave##3171
	step
		.click Unstable Accelerite##286178
		..accept Unstable Accelerite##6485 |goto Deradune -5036,-655,-973
	step
		'As soon as you click this, you will run at a very fast rate so be ready to head back to town
		.click Unstable Accelerite##286178 
		.' Pick up the Unstable Accelerite |q Unstable Accelerite##6485/Pick up the Unstable Accelerite##1 |goto -5036,-655,-973
	step
		.click Bloodfeast Altar##286414 
		.' Place Zonaga's Head on the Bloodfeast Altar |q Blood for Blood##3170/Place Zonaga's Head on the Bloodfeast Altar##3 |goto Deradune -5563,-696,-979
	step
		.talk Huntress Kezzia##272020
		..turnin Blood for Blood##3170 |goto -5611,-683,-978
		..accept Clanlord Makaza##3370 |goto -5611,-683,-978
	step
		.talk Hologram of Engineer Giba##286515
		..turnin Unstable Accelerite##6485 |goto -5633,-730,-978
	step
		' _Enter_ the large hut |goto Deradune -5668,-679,-971 < 10
		.talk Clanlord Makaza##271963
		..turnin Clanlord Makaza##3370 |goto Deradune -5742,-727,-967
		..accept Scout Jagged Rock##5943 |goto Deradune -5742,-727,-967
	step
		.click Rocket Launcher##286513
		..accept Surface to Air##6334 |goto Deradune -5549,-169,-981
	step
		.talk Scout Malius##286300
		..turnin Scout Jagged Rock##5943
		..accept Soften Them Up##5606 |goto -5536,-165,-980
	step
		.click 1 Exile Patrolship##5493882
		.' Press _T_ to shoot down an Exile Attack Ship |q Surface to Air##6334/1 |goto Deradune -5565,-179,-982 |tip Move your camera to look up at the sky.
	step
		'Press _C_ to open your Communicator:
		..turnin Surface to Air##6334
	step
		.' Follow the road _down the path_ |goto -5655,-118,-980 < 10
		..accept Communications Blackout##3162 |goto Deradune -5665,-36,-998
	step
		.kill Jagged Rock Brawler##1001517+
		.kill Jagged Rock Officer##6046036+
		.kill Jagged Rock Swordsman##6408821+
		.' Kill Jagged Rock Mercenaries |q Soften Them Up##5606/Kill Jagged Rock Mercenaries##1 |goto -5780,14,-1000
	step
		'Press _C_ to open your Communicator:
		..turnin Soften Them Up##5606
		..accept Capture the Mercenary##5607
	step
		.click Exile Communications Relay##286284
		.' Sabotage the Exile Communications Relay |q Communications Blackout##3162/Sabotage the Exile Communications Relay##1 |goto -5726,-47,-993
	step
		'Press _C_ to open your Communicator:
		..turnin Communications Blackout##3162
		..accept Cornered Prey##3160
	step
		.click Explosives Detonator##983659
		.' Steal an Explosives Detonator |q Cornered Prey##3160/2 |goto Deradune -5737,10,-999
	step
		.click Explosives Crate##1029423 |tip They're around the rocks in this area.
		.' Steal Explosive Charges from Crates |q Cornered Prey##3160/Steal Explosive Charges from Crates##1 |goto -5796,16,-999
	step
		.click Ship Engine##286374 
		.' Plant Explosive Charges on the Engines |q Cornered Prey##3160/Plant Explosive Charges on the Engines##3 |count 1 |goto -5703,114,-999
		.click Ship Cockpit##286179 
		.' Plant an Explosive Charge in the cockpit |q Cornered Prey##3160/Plant an Explosive Charge in the cockpit##4 |goto -5688,121,-996
		.click Ship Engine##286374 
		.' Plant Explosive Charges on the Engines |q Cornered Prey##3160/Plant Explosive Charges on the Engines##3 |goto -5673,124,-1000
	step
		.' Press _T_ to use the Detonator:
		.' Use the detonator |q Cornered Prey##3160/Use the detonator##5 |goto -5725,65,-1000 
	step
		'Press _C_ to open your Communicator:
		..turnin Cornered Prey##3160
	step
		.' Press _I_ and click the _Jagged Rock Cage Key_ in your inventory
		..accept Maintaining One's Honor##3166
	step
		.' _Enter_ the Cave |goto Deradune -5654,78,-1001 < 10
		..accept What's Mine is Mine##5608 |goto Deradune -5628,86,-1002
	step
		.' Follow the path _through the cave_ |goto Deradune -5507,99,-1002 < 10
		.' _Continue through_ the cave |goto -5488,68,-1003 < 10
		.click Mercenary Prison Cage##286952 
		.' Free Firewalker Jarrok |q Maintaining One's Honor##3166/Free Firewalker Jarrok##1 |goto Deradune -5405,57,-994
	step
		.kill 1 Firewalker Jarrok##4747404
		.' Slay Firewalker Jarrok and Collect Claws of the Firewalker |q Maintaining One's Honor##3166/2 |goto Deradune -5391,61,-994
	step
		.kill 1 Mercenary Arkos##1202632
		.' Fight Mercenary Arkos |q Capture the Mercenary##5607/Fight Mercenary Arkos##1 |goto Deradune -5254,91,-1001 
	step
		'Press _C_ to open your Communicator:
		..turnin Capture the Mercenary##5607
		..accept A Captive Audience##3163
	step
		.kill Jagged Rock Extractorbot##1201404+
		.kill Jagged Rock Minebot##6350379+
		.kill Jagged Rock Miner##6523490+
		.' Kill Miners |q What's Mine is Mine##5608/Kill Miners##1 |goto Deradune -5617,89,-1001
	step
		'Press _C_ to open your Communicator:
		..turnin What's Mine is Mine##5608
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat |goto Deradune -5599,-782,-983 < 100 |c |noway |q 3163
	step
		.talk Elder Torvak##271978
		..turnin Maintaining One's Honor##3166 |goto Deradune -5624,-778,-983
	step
		.' Enter the _Bloodfire Clanhall_ |goto -5661,-676,-973 < 10
		.' Witness Clanlord Makaza's Judgment |q A Captive Audience##3163/Witness Clanlord Makaza's Judgment##1 |goto Deradune -5742,-727,-967
		.' Listen to Clanlord Makaza |q A Captive Audience##3163/Listen to Clanlord Makaza##2
	step
		.talk Clanlord Makaza##271963
		..turnin A Captive Audience##3163 |goto -5742,-727,-967
		..accept Arrival of the Luminai##3347 |goto -5742,-727,-967
	step
		.talk Clanlord Makaza##1290547
		..turnin Arrival of the Luminai##3347 |goto Deradune -5747,-624,-972
	step
		'Press _C_ to open your Communitcator:
		..accept Feralplain Collective##3506
	step
		.click Feralplain Collective Taxi Kiosk##286918
		.' Get the _Feralplain Collective_ flight point |goto -5120,-1531,-945
		|confirm |q 3506
	step
		.talk Overseer Tongo##292399
		..turnin Feralplain Collective##3506 |goto Deradune -5073,-1543,-949
	step
		.talk Mondo Zax##292395
		..accept Terminite Containment##5692 |goto -5097,-1557,-945
	step
		.click Transmat Terminal##283551
		' Click _Yes_ to set _Feralplain Collective_ as your Recall Point |goto Deradune -4990,-1544,-941
		|confirm |q 5692
	step
		.talk Scientist Twilo##292106
		..turnin Terminite Containment##5692 |goto Deradune -5177,-1807,-936
		..accept Turn Up the Heat##5714 |goto Deradune -5177,-1807,-936
	step
		.talk Scientist Argin##292265
		..accept Venom Sacs##5751 |goto Deradune -5182,-1818,-934
		..accept Breaking Eggs##5752 |goto Deradune -5182,-1818,-934
	step
		.click Trapped Scanbot##1468082
		..accept When the Gooing Gets Tough##5697 |goto -5148,-1914,-960
	step
		'Press _C_ to open your Communicator:
		..accept Mitey Infestation##5758 |goto Deradune -5194,-1888,-961
	step
		'All around this area: |goto -5146,-1914,-960
		.kill 1 Hillscourge Rumbler##1451685
		.' Collect Venom Sacs off Hillscourge Terminite |q Venom Sacs##5751/Collect Venom Sacs off Hillscourge Terminite##1
		.click Terminite Egg##1377983 
		.' Detonate Terminite Eggs |q Breaking Eggs##5752/Detonate Terminite Eggs##1
		.click Trapped Scanbot##1470089
		.' Free Trapped Scanbots around Hillscourge |q When the Gooing Gets Tough##5697/Free Trapped Scanbots around Hillscourge##1
	step
		'Press _C_ to open your Communicator:
		..turnin When the Gooing Gets Tough##5697
		..turnin Venom Sacs##5751
		..turnin Venom Sacs##5751
	step
		.' _Enter_ the cave |goto Deradune -5061,-1923,-964
		.talk Professor Ontus##292360
		..accept Into the Lab Below##5693 |goto -5034,-2013,-1006
	step
		.talk Analyst Bungo##292332
		..accept Terminite Tissue Trial##5698 |goto -5030,-2011,-1006
		..accept Turn Up the Heat##5714 |goto -5030,-2011,-1006
	step
		.' _Step into_ the teleporter to enter Exo-Lab 79 |goto Deradune -5039,-2028,-1004 < 7
		.' Look for Researcher Martinus |q Into the Lab Below##5693/Look for Researcher Martinus##1 |goto Deradune -5026,-1792,-1209
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Lab Below##5693
	step
		.click Researcher Martinus##271345
		..accept Fragments of the Past##5694 |goto -5026,-1792,-1209
	step
		.kill Energized Hillscourge Rumbler##6603764+
		.kill Energized Hillscourge Demolisher##5507475+
		.' Kill Terminites |q Turn Up the Heat##5714/4 |goto -4988,-1767,-1209
		.' Collect Energized Terminite Tissues |q Terminite Tissue Trial##5698/1 |goto -4990,-1769,-1209
		.click Eldan Datacube Fragment##6214147
		.' Collect Datacube Fragments |q Fragments of the Past##5694/1
	step
		.' Go to the Terminite Mound containing Exo-Lab 79 |q Turn Up the Heat##5714/Go to the Terminite Mound containing Exo-Lab 79##1 |goto -4954,-1741,-1209
	step
		'Press _C_ to open your Communicator:
		..turnin Terminite Tissue Trial##5698
		..turnin Turn Up the Heat##5714
	step
		.click Eldan Datacube Terminal##271346
		.' Use the Eldan Datacube Terminal to reconstruct the Datacube |q Fragments of the Past##5694/2 |goto -5007,-1750,-1207
	step
		.click DATACUBE: Fail-Safe Mechanism##271432
		.' Activate the DATACUBE: Fail-Safe Mechanism |q Fragments of the Past##5694/3 |goto -4997,-1758,-1206
	step
		'Press _C_ to open your Communicator:
		..turnin Fragments of the Past##5694
		..accept Powering the Fail-Safe##5695
	step
		.click Eldan Power Conduit##271200
		.' Repair the first Eldan Power Conduit |q Powering the Fail-Safe##5695/Repair the first Eldan Power Conduit##1 |count 33 |goto -4968,-1756,-1209	
		.click Eldan Power Conduit##271236 
		.' Repair the second Eldan Power Conduit |q Powering the Fail-Safe##5695/Repair the second Eldan Power Conduit##2 |count 66 |goto Deradune -4895,-1755,-1205
		.click Eldan Power Conduit##271204
		.' Repair the final Eldan Power Conduit |q Powering the Fail-Safe##5695/Repair the final Eldan Power Conduit##3 |goto Deradune -4829,-1770,-1201
	step
		'Press _C_ to open your Communicator:
		..turnin Powering the Fail-Safe##5695
		..accept Terminated!##5696
	step
		.' Activate the Eldan Power Controller |q Terminated!##5696/Activate the Eldan Power Controller##1 |goto -4852,-1848,-1201 
		.' Fight off waves of Terminites |q Terminated!##5696/Fight off waves of Terminites##2 |goto -4852,-1848,-1201
		.' Press _T_ to use your Flamethrower
	step
		.click Eldan Fail-Safe##270950 
		.' Activate the Eldan Fail-Safe |q Terminated!##5696/Activate the Eldan Fail-Safe##3 |goto -4829,-1827,-1200
	step
		'Press _C_ to open your Communicator:
		..turnin Terminated!##5696
		..accept Calling All Testers##5822
	step
		.' _Run through_ the hallway |goto Deradune -4860,-1755,-1199 < 10
		.' _Continue_ on the way out |goto Deradune 1294 -5026,-1824,-1208 < 10
		.' _Teleport_ out |goto Deradune 1293 -5027,-1995,-1198 < 10
		.' _Leave_ the Exo-Lab 79 |goto Deradune -5064,-1910,-959 < 10
		.' _Enter_ the termite cave |goto Deradune 1774 -5316,-1675,-958 < 10
		.' Go to the Terminite Mound Containing Exo-Lab 78 |q Mitey Infestation##5758/1 |goto Deradune -5329,-1703,-968
		.' Enter Exo-Lab 78 |q Mitey Infestation##5758/2 |goto Deradune -5357,-1785,-1002
	step
		'Press _C_ to open your Communicator:
		..accept Caught in a Web##5766
	step
		'As you go through this area:
		.click Trapped Researcher##6619193
		.' Free Trapped Researchers |q Caught in a Web##5766/Free Trapped Researchers##1 |goto Deradune -5461,-2055,-1099
		.kill Deathmite Predator##1662871+
		.kill Deathmite Feeder##1684074+
		.kill Deathmite Crawler##6345674+
		.kill Deathmite Biter##6277225+
		.' Kill Deathmite Spiders |q Mitey Infestation##5758/Kill Deathmite Spiders##3 |goto Deradune -5461,-2055,-1099
	step
		'Press _C_ to open your Communicator:
		..turnin Mitey Infestation##5758
		..turnin Caught in a Web##5766
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat |goto Deradune -4991,-1542,-941 < 100 |c |noway
	step
		'Press _C_ to open your Communicator:
		..accept Crafting for the Dominion in Deradune##6855
	step
		.talk Craftmaster Tullio##287115
		..turnin Crafting for the Dominion in Deradune##6855 |goto Deradune -5042,-1503,-947
	step
		.talk Minion Togor##269908
		..turnin Calling All Testers##5822 |goto 585 -4849,-1202,-941
		..accept Small Modifications##5625 |goto 585 -4849,-1202,-941
	step
		'Press _T_ on Pumera's before fighting them:
		.kill 1 Unmodified Pumera##4370268
		.' Test the Aggression Enhancer on an Unmodified Pumera |q Small Modifications##5625/1 |goto Deradune -4773,-1163,-927
	step
		'Press _T_ on Pumera's before fighting them:
		.kill 1 Unmodified Pumera##4370268
		.' Use the Aggression Enhancer and then kill Enhanced Pumera |q Small Modifications##5625/2 |goto -4751,-1182,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Small Modifications##5625
		..accept The Carnivorizor##5626
	step
		.click Gentle Dawngrazer##1494517
		.' Press _T_ to use the Carnivorizor on Gentle Dawngrazers |q The Carnivorizor##5626/1 |goto Deradune -4814,-1314,-912
	step
		.talk Supervisor Renla##269872
		..turnin The Carnivorizor##5626 |goto Deradune -4751,-1280,-916
		..accept Rogue Razortails##5627 |goto -4751,-1280,-916
		..accept Cause and Defect##5632 |goto -4751,-1280,-916
	step
		.click Razortail Cage##269936
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1 |count 33 |goto Deradune -4780,-1366,-915 < 10
		.click Razortail Cage##269936
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1 |count 66 |goto Deradune -4733,-1388,-910 < 10
		.click Razortail Cage##269938
		.' Open Razortail Cages to release testers |q Rogue Razortails##5627/1 |goto Deradune -4733,-1339,-916
	step
		.click Chua Researcher##269774
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 20 |goto Deradune -4689,-1315,-911
	step
		.click Chua Researcher##269714
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 40 |goto -4686,-1393,-912
	step
		.click Chua Researcher##269714
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 60 |goto Deradune -4809,-1397,-914
	step
		.click Chua Researcher##269716
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |count 80 |goto -4719,-1146,-933
	step
		.click Chua Researcher##269718
		.' Collect test data from Chua Researchers |q Cause and Defect##5632/1 |goto -4568,-1269,-911
	step
		'Press _C_ to open your Communicator:
		..turnin Cause and Defect##5632
	step
		.talk Supervisor Renla##269872
		..turnin Rogue Razortails##5627 |goto Deradune -4751,-1280,-916
		..accept Huge Success!##5628 |goto -4751,-1280,-916
	step
		'Press _C_ to open your Communicator:
		..accept Hearts and Minds and Wings##5509 |goto Deradune -4724,-1531,-912
	step
		.talk Lord Voricus##270653
		'Report to Lord Voricus |q Hearts and Minds and Wings##5509/1 |goto -4712,-1547,-911
	step
		.talk Emissary Autarka##270727
		..turnin Hearts and Minds and Wings##5509 |goto -4719,-1553,-911
		..accept Diplomatic Preparations##5510 |goto -4719,-1553,-911
	step
		.click Transmat Terminal##283551
		.' Click _Yes_ to set _Tall Rock Point_ as your Recall Point |goto Deradune -4703,-1523,-911
		|confirm |q 5628
	step
		.kill Stonetusk Earthshaker##4063692
		.' Collect a Mammodin Horn |q Diplomatic Preparations##5510/3 |goto Deradune -4593,-1532,-922
	step
		'All around this area
		.click Shiny Stone##4103312+
		' Collect Shiny Stones  |q Diplomatic Preparations##5510/1 |goto Deradune -4519,-1419,-941
		.kill Zomclaw Buzzard##3897624+
		.' Collect Tail Feathers |q Diplomatic Preparations##5510/2 |goto Deradune -4419,-1416,-939
	step
		.talk Minion Togor##269880
		.' Find and Speak to Minion Togor |q Huge Success!##5628/1 |goto Deradune -4498,-1309,-928
	step
		.kill 1 Experiment 878##4417395 |q Huge Success!##5628/2 |goto Deradune -4487,-1271,-932
	step
		'Press _C_ to open your Communicator:
		..turnin Huge Success!##5628
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Tall Rock Point - Transmat |goto Deradune -4702,-1522,-911 < 100 |c |noway |q 5510
	step
		.talk Emissary Autarka##270727
		..turnin Diplomatic Preparations##5510 |goto Deradune -4719,-1552,-911
		..accept Hostile Negotiations##5511 |goto -4719,-1552,-911
	step
		.' Carefully follow the edge around this cliff |goto Deradune -4738,-1665,-900 < 10 |tip Stay close to the mountain, and don't fall!
		.click Ceremonial Falkrin Horn##270171
		.' Blow the Ceremonial Falkrin Horn |q Hostile Negotiations##5511/1 |goto Deradune -4797,-1875,-893
	step
		'Watch the Dialogue
		.' Stay within the yellow circle that appears
		.' Help "negotiate" with the Falkrin |q Hostile Negotiations##5511/2 |goto -4811,-1893,-897
	step
		.talk Clanlord Makaza##292410
		..turnin Hostile Negotiations##5511 |goto -4717,-1553,-911
		..accept Rescue the Emissaries##5512 |goto -4717,-1553,-911
		..accept Challenge the Strongest##5513 |goto -4717,-1553,-911
	step
		.talk Mondo Zax##292411
		..accept Innovative Methods##5514 |goto -4710,-1548,-911
	step
		' _Head up_ the moutain path |goto Deradune -4628,-1619,-908 < 10
		.click Emissary Autarka's Head##269934
		..turnin Rescue the Emissaries##5512 |goto Deradune -4638,-1710,-862
		..accept Autarka's Response##5517 |goto -4638,-1710,-862
		..accept Picking up the Pieces##5519 |goto Deradune -4638,-1709,-862
	step
		'Press _C_ to open your Communicator:
		..accept Demoralize Them##5520 |goto -4631,-1708,-864
	step
		.click Bloodtalon Totem##269999
		.' Destroy Bloodtalon Totems |tip These appear as orange cogs on your minimap. |q Demoralize Them##5520/1 |count 20 |goto Deradune -4580,-1739,-855
	step
		.click Falkrin Hut##270096
		.' Press _T_ to call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 16 |goto -4556,-1706,-855
	step
		.click Mechari Arms##4296298
		.' Collect the missing Mechari Arms |q Picking up the Pieces##5519/3 |goto -4486,-1624,-855
	step
		.kill 1 Warmonger Murali##4488000|q Challenge the Strongest##5513/2 |goto -4496,-1605,-855
	step
		'Press _C_ to open your Communicator:
		..accept Primal Air Energies##5521 |goto -4570,-1804,-858
	step
		.click Air Altar##271678
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 25 |goto -4560,-1823,-859
		.click Air Altar##271676
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 50 |goto -4492,-1824,-857
		.click Air Altar##271710
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |count 75 |goto -4433,-1880,-859
		.click Air Altar##271670
		.' Disable Falkrin Air Altars |q Primal Air Energies##5521/1 |goto -4395,-1905,-859
	step
		'Press _C_ to open your Communicator:
		..turnin Primal Air Energies##5521
	step
		.kill 1 Crusher Zhong##4532935 |q Challenge the Strongest##5513/3 |goto -4312,-1724,-872
	step
		.click Mechari Legs##4535359
		.' Collect the missing Mechari Legs |q Picking up the Pieces##5519/2 |goto -4378,-1743,-862
	step
		.kill 1 Keeper Akhin##4551911 |q Challenge the Strongest##5513/1 |goto -4587,-2040,-860
	step
		'Press _C_ to open your Communicator:
		..turnin Challenge the Strongest##5513
	step
		.click Falkrin Hut##270129
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 33 |goto -4588,-2040,-861
	step
		.click Falkrin Hut##270098
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 50 |goto -4675,-1980,-864
	step
		.click Mechari Torso##4360568
		.' Collect the missing Mechari Torso |q Picking up the Pieces##5519/1 |goto -4649,-1919,-863
	step
		.click Falkrin Hut##270114
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 66 |goto -4660,-1893,-864
	step
		.click Falkrin Hut##270028
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |count 83 |goto -4711,-1869,-863
	step
		.click Falkrin Hut##270097
		.' Call Orbital Strikes on the Falkrin Huts |q Innovative Methods##5514/1 |goto -4694,-1852,-862
	step
		.' All around Bloodtalon Perch:
		.kill 1 Bloodtalon Warden##1935227+
		.kill 1 Bloodtalon Horncaller##1932726+
		.kill 1 Bloodtalon Windweaver##1932118+
		.kill 1 Bloodtalon Slicer##1931980+
		.' Kill Bloodtalon Falkrin |q Autarka's Response##5517/1 |goto Deradune -4657,-1928,-864
		.click Bloodtalon Totem##269999
		.' Destroy Bloodtalon Totems |q Demoralize Them##5520/1 |goto Deradune -4657,-1928,-864
	step
		'Press _C_ to open your Communicator:
		..turnin Demoralize Them##5520
		..turnin Innovative Methods##5514
		..turnin Autarka's Response##5517
		..accept Secrets of the Falkrin##5515
	step
		.' _Go up_ the ramp and through the gate |goto -4516,-1894,-849 < 10
		.' Get to Bloodtalon Tower |q Secrets of the Falkrin##5515/1 |goto -4492,-1933,-838
		.' Teleport to Bride Vultura's nest|q Secrets of the Falkrin##5515/2 |goto -4474,-1947,-822
	step
		.kill 1 Bride Vultura##4091463 |q Secrets of the Falkrin##5515/3 |goto Deradune 1371 -4257,-1947,-727
	step
		'_Enter_ the teleporter |goto -4338,-1934,-727 < 10
		.' _Continue_ on the path |goto -4499,-1927,-841 < 10
		.click Emissary Autarka's Head##270162
		..turnin Picking up the Pieces##5519 |goto -4638,-1710,-862
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Tall Rock Point - Transmat |goto Deradune -4702,-1522,-911 < 100 |c |noway |q 5515
	step
		.talk Clanlord Makaza##292410
		..turnin Secrets of the Falkrin##5515 |goto -4717,-1553,-911
	step
		'Press _C_ to open your Communicator:
		..accept Your Service is Required##7015
	step
		'_Cross_ the wooden bridge |goto Deradune -4743,-1486,-911 < 10
		.talk Agent Lex##287016
		..turnin Your Service is Required##7015 |goto Deradune -4616,-1063,-942
		..accept Into the Wild##5633 |goto -4616,-1063,-942
		..accept An Aurin Infestation##3509 |goto Deradune -4619,-1065,-942
	step
		.talk Scientist Primm##292383
		..accept Zamm in a Jam##5688 |goto Deradune -4628,-1087,-942
	step
		.kill Wildwood Protector##4620245+, Wildwood Bladewarden##479985+, Wildwood Whisperer##480384+, Wildwood Weaver##480385+
		.' Collect Aurin Datachrons |q An Aurin Infestation##3509/1 |goto Deradune -4488,-983,-940
	step
		'Press _C_ to open your Communicator:
		..turnin An Aurin Infestation##3509
		..accept The Guardian of the Grove##5650 |goto -4488,-983,-940
	step
		.' Scout Wildwood Grove |q Into the Wild##5633/1 |goto -4429,-943,-936
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Wild##5633
		..accept Wildwood Terraformer##5634
	step
		.click Terraformer Power Basin##269020
		.' Access the Terraformer Power Basin |q Wildwood Terraformer##5634/1 |goto -4443,-953,-938
	step
		.click Aurin Relic Cache##268249
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2 |count 33 |goto -4439,-984,-943
		.click Aurin Relic Cache##266875
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2 |count 66 |goto -4447,-833,-927
		.click Aurin Relic Cache##268680
		.' Recover Eldan Power Crystals from Aurin Relic Caches |q Wildwood Terraformer##5634/2 |goto -4370,-854,-930
	step
		.click Terraformer Power Basin##268988
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3 |count 33 |goto -4430,-918,-936
		.click Terraformer Power Basin##268986
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3 |count 66 |goto -4410,-948,-938
		.click Terraformer Power Basin##269020
		.' Return the Eldan Power Crystals to the Terraformer Power Basins |q Wildwood Terraformer##5634/3 |goto -4443,-953,-938
	step
		.click Eldan Terraformer##268990
		.' Deactivate the Eldan Terraformer |q Wildwood Terraformer##5634/4 |goto -4414,-931,-936
	step
		.kill 1 Yirian##4650812
		.' Kill Yirian, the Grove Guardian |q The Guardian of the Grove##5650/1 |goto -4373,-960,-939
	step
		.click Aurin Portal##268808
		.' Destroy the Aurin Portal |q The Guardian of the Grove##5650/2 |goto -4346,-958,-934
	step
		'Press _C_ to open your Communicator:
		..turnin The Guardian of the Grove##5650
		..accept Conservation in the Basin##9067
	step
		.talk Researcher Zamm##271177
		.' Rescue Researcher Zamm |q Zamm in a Jam##5688/2 |goto -4396,-1021,-932
	step
		.talk Agent Lex##287016
		..turnin Wildwood Terraformer##5634 |goto Deradune -4617,-1064,-942
	step
		.talk Scientist Primm##292383
		..turnin Zamm in a Jam##5688 |goto Deradune -4629,-1086,-942
	step
		.talk Biologist Ari##291391
		..accept A Shocking Solution##5924 |goto Deradune -4682,-435,-970
	step
		.talk Conservationist Caius##291390
		..turnin Conservation in the Basin##9067 |goto -4670,-431,-971
		..accept Conservation Efforts##5881 |goto -4670,-431,-971
	step
		'Press _T_ to shock Prowlers 
		.click Plumclaw Prowler##4810415+
		.' Shock Plumclaw Prowlers |q A Shocking Solution##5924/1 |goto Deradune -4747,-414,-965
		.' Recover Stolen Provisions |q A Shocking Solution##5924/2 |goto -4747,-414,-965
	step
		'Press _T_ to:
		.' Tag Ripjaw Thrashers |q Conservation Efforts##5881/3 |goto Deradune -4543,-558,-970
		.' Tag Goldfang Stalkers |q Conservation Efforts##5881/2 |goto Deradune 1752 -4607,-322,-968
		.' Tag Dusktail Harts and Dusktail Grazers |q Conservation Efforts##5881/1 |goto -4621,-264,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Conservation Efforts##5881
		..accept Lost Mammodin##5911
	step
		.' Locate Subject A43K |q Lost Mammodin##5911/1 |goto Deradune -4816,-381,-960
		.click Subject A43K##291438
		.' Recover Subject A43K's tracking chip |q Lost Mammodin##5911/2 |goto -4816,-381,-960
	step
		'Press _C_ to open your Communicator:
		..turnin Lost Mammodin##5911
		..accept Delivering the Bad News##5914
	step
		.talk Biologist Ari##291391
		..turnin A Shocking Solution##5924 |goto Deradune -4683,-436,-970
	step
		.talk Conservationist Caius##291365
		.' Report to Conservationist Caius |q Delivering the Bad News##5914/1 |goto -4670,-430,-971
		.' Eavesdrop on Conservationist Caius's conversation |q Delivering the Bad News##5914/2 |goto -4670,-430,-971
	step
		.click Goldfang Corpse##291432
		.' Examine a Goldfang Corpse |q Delivering the Bad News##5914/3 |goto Deradune -4568,-337,-969 |tip These are marked as an orange cog on your minimap.
	step
		.click Dusktail Corpse##291430
		.' Examine a Dusktail Corpse |q Delivering the Bad News##5914/4 |goto -4581,-264,-968 |tip These are marked as an orange cog on your minimap.
	step
		.click Rusthoof Corpse##291415
		.' Examine a Rusthoof Corpse |q Delivering the Bad News##5914/5 |goto -4615,-44,-965 |tip These are marked as an orange cog on your minimap.
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
		.click Fuel Drum##4731399
		..accept Up in Flames##6052 |goto -4754,231,-952
	step
		'All around this area:
		.click Fuel Drum##4731399
		.' Ignite Fuel Drums |q Up in Flames##6052/1 |goto -4778,252,-951
	step
		.click Grimvoid Communications Relay##291364
		.' Disable the Grimvoid Communications Relays |q Hunters Become Hunted##5921/1 |count 1 |goto -4825,308,-949
		.click Grimvoid Enforcer##4441631
		.' Disable the Grimvoid Communications Relays |q Hunters Become Hunted##5921/1 |goto -4774,371,-951
	step
		.kill 1 Grimvoid Trigun##4824769+
		.kill 1 Grimvoid Thug##4889335+
		.kill 1 Grimvoid Strongarm##4682818+
		.' Destroy Grimvoid Marauders and Triguns |q Hunters Become Hunted##5921/2 |goto -4756,438,-951
		.' Kill Grimvoid Marauders |q Up in Flames##6052/2 |goto -4754,433,-951
	step
		'Press _C_ to open your Communicator:
		..turnin Hunters Become Hunted##5921
		..accept What Must Be Done##5922
	step
		.kill 1 Lord Venator##4739768
		.' Bring Lord Venator to justice |q What Must Be Done##5922/1 |goto -4787,423,-951
	step
		.talk Conservationist Caius##291390
		..turnin What Must Be Done##5922 |goto Deradune -4669,-430,-971
	step
		.talk Biologist Ari##291391
		..turnin Up in Flames##6052 |goto -4683,-436,-970
	step
		'Press _C_ to open your Communicator:
		..accept A Grave Threat##3622
	step
		'Head through the gates and _up the path_ |goto -4842,-236,-950 < 10
		.click Transmat Terminal##283551
		.' Click _Yes_ to set _Endless Vigil_ as your Recall Point |goto -4946,-137,-934
		|confirm |q 3622
	step
		.talk Agent Vivax##287341
		..accept An Uninviting Situation##5622 |goto -4867,-155,-938
	step
		.click Endless Vigil Taxi Kiosk##286774
		.' Get the _Endless Vigil_ taxi point |goto Deradune -4900,-89,-931
		|confirm |q 5622
	step
		.talk Scientist Gim##287396
		..accept Emergency Support##5916 |goto -4990,-157,-936
	step
		'_Cross_ the bridge |goto Deradune -5036,-174,-935
		.talk Cairnguard Drakuz##291428
		..turnin A Grave Threat##3622 |goto -5129,-152,-934
		..accept Honor the Dead##5883 |goto Deradune -5129,-150,-932
	step
		.click Clanlord Monument##291479
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1 |count 33 |goto -5125,-114,-932
		.click Clanlord Monument##291479
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1 |count 66 |goto -5172,-147,-937
		.click Clanlord Monument##291462
		.' Pay Tribute at the Clanlord Monuments |q Honor the Dead##5883/1 |goto -5122,-178,-935
	step
		.' Find Apprentice Laveka |q Honor the Dead##5883/2 |goto Deradune -5172,-110,-936
	step
		.talk Apprentice Laveka##291493
		..turnin Honor the Dead##5883 |goto -5172,-109,-936
		..accept Emergency Support##5916 |goto -5172,-109,-936
		..accept A Meeting in Darkness##5925 |goto -5172,-109,-936
	step
		.click Stolen Draken Bone##4962199
		..accept Collecting Bones##3655 |goto Deradune -5188,-85,-938
	step
		.' Find Witchwake Cavern |q A Meeting in Darkness##5925/1 |goto Deradune -5327,21,-940
	step
		.click Bonebound Totem##291480
		.' Activate the Bonebound Totem |q A Meeting in Darkness##5925/2 |goto Deradune -5346,19,-940
		.' Kill all the mobs that appear |tip Stay inside the yellow circle that spawns.
		.' Complete holdout |q A Meeting in Darkness##5925/3 |goto -5348,16,-940
	step
		'Press _C_ to open your Communicator:
		..turnin A Meeting in Darkness##5925
		..accept Righteous Fury##5926
	step
		.click Stolen Draken Bone##4922299
		.' Retrieve Stolen Draken Bones |q Collecting Bones##3655/1 |goto Deradune -5221,141,-952
	step
		'Kill Witchwake's until your communicator offeres you this quest
		.kill Witchwake Finder##4975054
		.kill Witchwake Cutter##4968788
		..accept Trespassers Will Be Violated##5940 |goto -5238,142,-950
	step
		.kill Risen Draken Huntress##4838513+
		.kill Vengeful Risen Draken##616911+
		.' Kill Risen Draken |q Righteous Fury##5926/1 |goto Deradune -5132,237,-947
		.kill Witchwake Totem##4672070+
		.' Destroy Witchwake Totems |q Righteous Fury##5926/2 |goto -5132,237,-947
		.kill Witchwake Necromancer##557632+
		.' Kill Witchwake Necromancers |q Righteous Fury##5926/3 |goto -5132,237,-947
		.kill Witchwake Cutter##640335+
		.kill Witchwake Finder##640291+
		.' Kill Witchwake Moodies |q Trespassers Will Be Violated##5940/1 |goto Deradune -5174,195,-951
	step
		'Press _C_ to open your Communicator:
		..turnin Righteous Fury##5926
		..accept A Violent End##5927
		..turnin Trespassers Will Be Violated##5940
	step
		.click Draken Resting Place##291526
		.' Return Bones to Draken Resting Place |q Collecting Bones##3655/2 |goto Deradune -5136,-144,-933
	step
		.talk Cairnguard Drakuz##291428
		..turnin Collecting Bones##3655 |goto -5131,-151,-933
	step
		.' Find the Royal Collegium expedition in Leviathan's Rest |q Emergency Support##5916/1 |goto Deradune -5071,-70,-967
	step
		.talk DRED Tech Farlo##287388
		..turnin Emergency Support##5916 |goto -5071,-70,-967
		..accept Stick It to Them!##3651 |goto -5071,-70,-967
	step
		.talk Kevo##287389
		..accept Getting the Band Back Together##5917 |goto -5098,-43,-976
		..accept Find Lady Zin##5972 |goto -5098,-43,-976
	step
		.talk Supply Officer Alcede##291648
		..accept Swallowed Supplies##5988 |goto -5086,-32,-977
	step
		.talk Artemis Zin##291234
		..turnin Find Lady Zin##5972 |goto -5118,40,-978
		..accept Eldan Decryption##5918 |goto -5118,40,-978
	step
		.click Inactive A37 Augmentor##291194
		.' Activate the A37 Augmentor |q Eldan Decryption##5918/1 |goto Deradune -5120,41,-978
	step
		.' Observe the A37 Augmentor |q Eldan Decryption##5918/2 |goto -5132,57,-978
	step
		.talk Artemis Zin##291218
		..turnin Eldan Decryption##5918 |goto -5118,40,-978
		..accept Hostile Acquisitions##5919 |goto -5118,40,-978
	step
		'Press _T_ to use your Glop Gun on mobs within this area:
		.' Use the Glop Gun on tar pit creatures |q Stick It to Them!##3651/1 |goto -5079,127,-979
		.kill Oozing Sludgeon##593409+
		.kill Viscous Oozing Sludgeon##497987+
		.' Collect Swallowed Supplies from Oozing Sludgeons |q Swallowed Supplies##5988/1 |goto -5079,127,-979
		.click Stuck Scientist##4944585
		.' Rescue members of Artemis Zin's expedition |q Getting the Band Back Together##5917/1 |goto -5079,127,-979
		.kill A37 Augmentor##596707+
		.click Destroyed A37 Augmentor##4730589
		.' Collect Augmentor Data Cores from A37 Augmentors |q Hostile Acquisitions##5919/1 |goto -5079,127,-979
	step
		'Press _C_ to open your Communicator:
		..turnin Stick It to Them!##3651
		..turnin Getting the Band Back Together##5917
		..turnin Hostile Acquisitions##5919
		..turnin Swallowed Supplies##5988
		..accept Unlocking the Gate##5920
	step
		.click Hand##291475
		..accept No Good Deed...##5941 |goto Deradune -5031,56,-980
	step
		'Press _T_ to:
		.' Scan for the first exo-lab access key |q Unlocking the Gate##5920/1 |goto -5081,130,-979
		'Press _T_ to:
		.' Scan for the second exo-lab access key |q Unlocking the Gate##5920/2 |goto -4993,60,-971
		'Press _T_ to:
		.' Scan for the third exo-lab access key |q Unlocking the Gate##5920/3 |goto -4935,197,-968
		.' _Follow_ the energy signature trail |q Unlocking the Gate##5920/4 |goto -4906,316,-993
	step
		.talk Artemis Zin##5278424
		..turnin Unlocking the Gate##5920 |goto -4906,316,-993
		..accept Meet Me Inside##6033 |goto -4906,316,-993
	step
		'_Step into_ the green teleporter |goto -4904,333,-990 < 10
		.talk Artemis Zin##5278424
		..turnin Meet Me Inside##6033 |goto Deradune -5153,415,-1151
		..accept Ticket to Ride##5958 |goto -5153,415,-1151
	step
		.talk Kevo##291343
		..accept Cleaning Up the Lab##5908 |goto -5154,404,-1151
	step
		.talk The Caretaker##291342
		..turnin Ticket to Ride##5958 |goto -5149,410,-1151
		..accept Security Sync##5992 |goto -5149,410,-1151
		..accept Fragmented Memory##5993 |goto -5149,410,-1151
	step
		.' Use the teleporter to travel to the security level |q Security Sync##5992/1 |goto -5038,303,-1143
	step
		.click Security Avatar##291299
		.' Sync the Security Avatar |q Security Sync##5992/2 |goto -4932,389,-1231
	step
		.' Return to Exo-Lab A37's main level |q Security Sync##5992/3 |goto -4975,509,-1228
	step
		.talk The Caretaker##291342
		..turnin Security Sync##5992 |goto -5149,410,-1151
	step
		.kill Skeledroid Stalker##5176491+, Skeledroid Ambusher##603844+, Skeledroid Scrapper##602506+, Skeledroid Terrorizer##604724+
		.' Kill Skeledroids |q Cleaning Up the Lab##5908/1 |goto -5041,410,-1146
	step
		'Press _C_ to open your Communicator:
		..turnin Cleaning Up the Lab##5908
	step
		.' Use the teleporter to travel to the information station |q Fragmented Memory##5993/1 |goto -5038,519,-1142
	step
		.kill 1 External Memory Core##5107194+
		.click Memory Core Fragment##5192783
		.' Gather Memory Core Fragments |q Fragmented Memory##5993/2 |goto -5247,480,-1231
	step
		.click Information Avatar##291230
		.' Synchronize the Information Avatar |q Fragmented Memory##5993/3 |goto -5274,390,-1231
	step
		.' Return to main level of Exo-Lab A37 |q Fragmented Memory##5993/4 |goto -5231,508,-1228
	step
		' _Head back_ toward the front |goto -5039,462,-1143 < 10
		.' _Continue_ through the hallway |goto -5089,439,-1146 < 10
		.talk The Caretaker##291266
		..turnin Fragmented Memory##5993 |goto -5148,410,-1151
		..accept Organic Dismemberment##5905 |goto -5148,410,-1151
	step
		.' Travel to the Augmentation Area via Teleporter |q Organic Dismemberment##5905/1 |goto -4985,409,-1142
	step
		.click Augmentation Defense Terminal##291249
		.' Activate the Augmentation Defense Terminal |q Organic Dismemberment##5905/2 |goto -5102,405,-1221
	step
		.kill A37 Augmentor##555782
		.' Destroy the A37 Augmentor Before Time Runs Out |q Organic Dismemberment##5905/3 |goto -5091,426,-1223
	step
		'Press _C_ to open your Communicator:
		..turnin Organic Dismemberment##5905
		..accept The Icing on the Cake##5907
	step
		.click DATACUBE: Skeletal Catalyst##287188
		.' Access the Eldan Datacube |q The Icing on the Cake##5907/1 |goto -5103,595,-1209
	step
		'_Take the teleporter_ out |goto Deradune -5103,371,-1217
		.' _Go through_ the hallway |goto Deradune -5088,439,-1146
		.talk Artemis Zin##291322
		..turnin The Icing on the Cake##5907 |goto -5153,415,-1151
	step
		'_Teleport out_ to the ground |goto Deradune -5282,410,-1147
		.' Follow the _dirt path up_ |goto -5194,45,-971
		.' Find High Clanlord Zhur the Risen's Tomb |q A Violent End##5927/1 |goto -5062,434,-945
	step
		.kill High Clanlord Zhur the Risen##570026
		.' Defeat High Clanlord Zhur the Risen |q A Violent End##5927/2 |goto -5218,449,-978
	step
		'_Run up_ to exit the cave |goto -5108,490,-974 < 10
		.' _Exit_ the cave |goto -5037,343,-943 < 10
		.talk Cairnguard Drakuz##291368
		..turnin A Violent End##5927 |goto -5129,-151,-932
	step
		'Press _C_ to open your Communicator:
		..accept Firewalker SOS##6037 |goto -4430,-603,-968
	step
		.' Locate Camp Firewalker |q Firewalker SOS##6037/1 |goto -4430,-603,-968
	step
		.click Cage Door##291542
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 14 |goto -4433,-590,-969
		.click Abandoned Coins##291532
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 28 |goto -4417,-589,-968
		.click Ammunition Crate##291541
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 42 |goto -4408,-591,-967
	step
		.click Firewalker Guard##291507
		 .' Investigate the crime scene |q Firewalker SOS##6037/2 |count 57 |goto -4397,-612,-969
		.click Firewalker Guard##291531
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 71 |goto -4421,-622,-968
		.click Councilor Vaelen##291523
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |count 85 |goto -4431,-619,-969
		.click Vaelen's Holoprojector##291544
		.' Investigate the crime scene |q Firewalker SOS##6037/2 |goto -4448,-622,-968
	step
		.talk Agent Lex##291506
		..turnin Firewalker SOS##6037 |goto -4435,-623,-969
		..accept Hunting the Mercenary##6045 |goto -4435,-623,-969
	step
		.click Transmat Terminal##286155
		.' Click _Yes_ to set _Camp Firewalker_ as your Recall point |goto Deradune -4388,-607,-968
		|confirm |q 6045
	step
		.click Dominion Medical Kit##291571
		.' Locate the first clue |q Hunting the Mercenary##6045/1 |goto Deradune -4187,-464,-940
		.talk Wounded Game Huntress##291516
		.' Locate the second clue |q Hunting the Mercenary##6045/2 |goto -4295,-347,-945
	step
		.talk Injured ICI Tracker##291517
		.' Meet with the ICI Tracker |q Hunting the Mercenary##6045/3 |goto -4229,-155,-949
	step
		.click Stolen ICI Speeder##291526
		.' Track the Stolen ICI Speeder |q Hunting the Mercenary##6045/4 |goto Deradune -4424,34,-968
	step
		'Press _C_ to open your Communicator:
		..turnin Hunting the Mercenary##6045 |goto -4428,33,-968
		..accept Leave No Leaf Unturned##6072 |goto -4428,33,-968
	step
		.kill 1 Wildvine Sentry##524198+
		.kill 1 Wildvine Settler##524199+
		.kill 1 Wildvine Watcher##522225+
		.' Kill Wildvine Aurin |q Leave No Leaf Unturned##6072/1 |goto -4329,57,-970
	step
		'Press _C_ to open your Communicator:
		..turnin Leave No Leaf Unturned##6072
		..accept The Root of Treachery##6047
	step
		'_Enter_ the underground tunnel |goto Deradune -4526,413,-960
		.' _Follow the tunnel_ down:
		.' Locate Mercenary Arkos |q The Root of Treachery##6047/1 |goto Deradune -4510,392,-993
	step
		.kill 1 Mercenary Arkos##645359
		.' Defeat Mercenary Arkos |q The Root of Treachery##6047/2 |goto -4504,401,-994
	step
		'Press _C_ to open your Communicator:
		..turnin The Root of Treachery##6047
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Camp Firewalker Point - Transmat |goto Deradune -4388,-607,-968 < 100 |c |noway |q 5622
//Illium and Level 15 Quests
	step
		'_Run up_ the path in the mountain |goto -4383,-654,-962 < 10
		.' _Follow_ the road up to the city |goto Illium -4086,-661,-914 < 10
		'Press _C_ to open your Communicator:
		..accept Runes, Crafting, and You##9100 |goto Illium -3825,-705,-866
		..accept Housing of the Future##9159 |goto -3825,-705,-866
	step
		.talk Protostar Housing Representative##263529
		.' Speak to a Protostar Housing Representative |q Housing of the Future##9159/1 |goto -3776,-688,-866
	step
		.click Protostar Tram##263531
		.' Take the Protostar Tram |q Housing of the Future##9159/2 |goto -3780,-683,-866
	step
		'Press _C_ to open your Communicator:
		..accept Illium Tours##9368 |goto -3755,-695,-854
		..accept Chromatic Magnificence##9102 |goto Illium -3267,-815,-906
	step
		'Enter the Housing Building |goto -3263,-837,-905 < 5
		.click Zen Pond##263505
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 25 |goto -3309,-862,-906
		.click Power Generator##263502
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 50 |goto -3329,-879,-906
		.click Windmill##263503
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 75 |goto -3308,-901,-906
		.click Storage Unit##263499
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |goto -3289,-883,-906
	step
		.click Housing Model##263524
		.' Activate the Housing Model hologram |q Housing of the Future##9159/4 |goto -3268,-823,-905
	step
		'Press _C_ to open your Communicator:
		..turnin Housing of the Future##9159 |goto -3268,-823,-905
	step
		.click Battered Protostar Dye Crate##264393
		.' Find the Battered Protostar Dye Crate |q Chromatic Magnificence##9102/1 |goto Illium -3362,-747,-891
		.' Salvage the Damaged Protostar Dye Collection in your bags |use Damaged Protostar Dye Collection##34057
		'Obtain Plurbinum Dye by salvaging Damaged Protostar Dye Collection |q Chromatic Magnificence##9102/2
	step
		.click Transmat Terminal##265407
		.' Set Illium Transmat Terminal as your Recall |goto -3411,-747,-890
		|confirm
	step
		.click Illium Tour Holoprojector##263596
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 1 |goto -3421,-742,-891
	step
		.click Illium Tour Holoprojector##263605
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 2 |goto -3568,-580,-879
	step
		.talk Protostar Appearance Modificator##264392
		..turnin Chromatic Magnificence##9102 |goto Illium -3193,-613,-910
	step
		.click Illium Tour Holoprojector##263595
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 3 |goto -3196,-713,-913
	step
		.talk Craftmaster Tiberia Marcela##264405
		..turnin Runes, Crafting, and You##9100 |goto -3198,-738,-913
		..accept Crafting Your First Rune##9101 |goto -3198,-738,-913
	step
		 .click Engraving Station##264438
		.' Craft a Rune of Grit for an Earth Runeslot |q Crafting Your First Rune##9101/1 |goto -3234,-764,-908
	step
		.talk Craftmaster Tiberia Marcela##264405
		..turnin Crafting Your First Rune##9101 |goto -3199,-740,-913
		..accept Modification Station##9103 |goto -3199,-740,-913
	step
		.click Engraving Station##264438
		.' Visit the Engraving Station |q Modification Station##9103/1 |goto  -3234,-764,-908
	step
		.talk Craftmaster Tiberia Marcela##264405
		..turnin Modification Station##9103 |goto -3197,-740,-913
	step
		'_Make your way through_ the city |goto Illium -3244,-822,-906
		.' _Follow_ the stairs up |goto -3263,-960,-903
		.click Illium Tour Holoprojector##263598
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 4 |goto -3322,-1029,-901
	step
		.click Illium Tour Holoprojector##263599 |tip It's inside this building's doorway.
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 5 |goto -3263,-1171,-890
	step
		'_Go through_ the passageway |goto -2998,-979,-897
		.talk Agent Pheris##264719
		.' Speak to Agent Pheris in Illium |q An Uninviting Situation##5622/1 |goto  -3000,-901,-906
	step
		.click Illium Tour Holoprojector##263602
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 6 |goto -2895,-870,-906
	step
		' _Go through_ the passageway |goto -2981,-963,-905 < 10
		.click Illium Tour Holoprojector##263602
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 7 |goto -2975,-1135,-897
	step
		.' _Head down_ stairs and up the following staircase |goto Illium -3270,-1038,-900 < 10
		.click Illium Tour Holoprojector##263604
		.' Find Illium Tour Holoprojectors |q Illium Tours##9368/1 |count 8 |goto Illium -3491,-1049,-885
	step
		'Press _C_ to open your Communicator:
		..turnin Illium Tours##9368 |goto -3491,-1049,-885
]])
