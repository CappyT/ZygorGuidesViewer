ZGV:RegisterGuide("Exiles\\Wilderrun (35-41)",
		{faction="Exiles",
		nextguide="Exiles\\Malgrave (41-46)",
		image="ZygorUIGuides:Wilderrun", 
		startlevel=35,
		endlevel=41,
		description="Wilderrun is a zone in eastern Olyssia in WildStar. It is a a dense jungle that is has been infused with primal life energy. The players will follow Artemis Zin and Dorian Walker as they race to the Everpool, which will grant eternal life. Wilderrun is a contested zone, and is intended for players level 35-42."	
		},[[
	step
		'Press _C_ to use your communicator:
		..accept Journey to Wilderrun##8843
	step
		.talk Lulu Blackbush##274835
		..turnin Thayd Into You##6537 |goto Thayd 4033,-2379,-800
	step
		.' Follow the road northwest out of Thayd |goto Thayd 4200,-2425,-815 < 10
		.' Travel to the Mysterious Portal |q Opening Doors##8869/1 |goto Thayd 3966,-2639,-818
		.click Mysterious Portal##273042
		.' Enter the Mysterious Portal |q Opening Doors##8869/2 |goto 3958,-2657,-818
	step
		.talk Drusera##280182
		.' Speak with Drusera |goto DruseraWorldStoryInstance1 2,-233,-151
		|confirm |q 8869
	step
		.click Core Systems Control##279636
		.' Reinitialize Core Systems Control |goto -1,-169,-152
		|confirm |q 8869
	step
		.kill Prime Destroyer Probe##286898
		.kill Auxiliary Probe##286899
		.kill Prime Facility Sentinel##287188
		.' Kill enemies and collect the dropped nano modules |goto 0,-178,-153
		|confirm |q 8869
	step
		.click Security Fail-Safe Control##279633
		.' Access the Security Fail-Safe Control |goto -29,-188,-153
		|confirm |q 8869
	step
		.click Personnel Index Panel##279637
		.' Access the Personnal Indez Panel |goto 27,-187,-153
		|confirm |q 8869
	step
		.kill 1 Security Command Construct##290732
		.' Kill the Security Command Construct |goto 15,-199,-153
		|confirm |q 8869
	step
		.click DATACUBE: Mysterious Agreement##291450
		.' Access the Exo-Lab Prime Datacube |goto 0,-155,-147
		|confirm |q 8869
	step
		.talk Drusera##280182
		.' Speak with Drusera |goto -9,-169,-152
		|confirm |q 8869
	step
		.' Go through the doorway |goto -31,-142,-152
		.click Genesis Mainframe##279634
		.' Activate the Genesis Mainframe |goto DruseraWorldStoryInstance1 -1,-95,-148
		|confirm |q 8869
	step
		.click Earth and Fire Transfer Control##279624
		.' Access the Earth and Fire Transfer Control Terminal |goto DruseraWorldStoryInstance1 -114,-58,-145
		|confirm |q 8869
	step
		.' In this small side room:
		.click Primal Fire Decanter##279608
		.kill Primal Fire Entity##302649
		.kill Primal Blaze##302650
		.click Primal Earth Decanter##279612
		.kill Primal Earth Entity##303491
		.kill Primal Geode##303492
		.' Gather 7 Primal Earth Cores and 7 Primal Fire Cores
		|confirm |q 8869
	step
		.click Water and Air Transfer Control##279628
		.' Access the Water and Air Transfer Control Terminal |goto DruseraWorldStoryInstance1 108,-58,-145
		|confirm |q 8869
	step
		.' In this small side room:
		.' Survive the waves of enemies until the Elemental Core Transfer is complete
		|confirm |q 8869
	step
		.click Primal Life Transfer Control##279625
		.' Activate the Primal Life Transfer Control |goto DruseraWorldStoryInstance1 32,-75,-148
		|confirm |q 8869
	step
		.kill 1 Pure Life Elemental##314180
		.' Defeat the Pure Life Elemental |goto 26,-74,-148
		|confirm |q 8869
	step
		.click Primal Logic Transfer Control##279626
		.' Access the Primal Logic Transfer Control |goto -33,-75,-148
		|confirm |q 8869
	step
		.kill 1 Pure Logic Elemental##317969
		.' Defeat the Pure Logic Elemental |goto -31,-83,-148
		|confirm |q 8869
	step
		.click DATACUBE: Protoplasmic Resonator##318994
		.' Access the Primal Lab Datacube |goto -1,-110,-145
		|confirm |q 8869
	step
		.' Step into the teleporter to enter the Genesis Chamber |goto -1,-8,-145
		|confirm |q 8869
	step
		.talk Drusera##326375
		.' Speak with Drusera to learn the secret of Exo-Lab Prime |goto -1,238,-767
		|confirm |q 8869
	step
		.click DATACUBE: Project Success##279567
		.' Access the Genesis Chamber Datacube |goto 0,268,-768
		|confirm |q 8869
	step
		.' Step into the teleporter to return to Exo-Lab Prime |goto -1,-2,-750
		|confirm |q 8869
	step
		.' Avoid the red circles as you escape from Exo-Lab Prime |goto DruseraWorldStoryInstance1 -30,-106,-148
		.' Avoid the red circles as you escape from Exo-Lab Prime |goto DruseraWorldStoryInstance1 -1,-243,-149
		.' Discover the secrets of Exo-Lab Prime |q Opening Doors##8869/3 |goto Thayd 3955,-2664,-818
		 |q 8869
	step
		.' Go up the ramp and follow the path in Pilgrim's Promenade |goto Thayd 4031,-2647,-801
		.click Lever##271429
		.' Click the Lever and press _Yes_ to enter the Secret Ops Center |goto Thayd 3874,-3066,-893
		 |confirm |q 8869
	step
		.talk Professor Rhoda Wellspring##271432
		..turnin Opening Doors##8869 |goto Thayd 3757,-1253,-1109
	step
		.click Lever##271426
		.' Click the Lever and press _Yes_ to leave the Secret Ops Center |goto Thayd 3768,-1346,-1104
		.' Follow the path through Pilgrim's Promenade back to Thayd |goto Thayd 3986,-2981,-890
		.click Ship to Wilderrun##274903 |goto Thayd 4011,-2311,-804
		.' Click _Yes_ to travel to Fool's Hope |q Journey to Wilderrun##8843/1
	step
		'Press _C_ to use your communicator:
		..accept The Master Mixologist##6384
	step
		.talk Lucy Lazarin##273362
		..turnin The Master Mixologist##6384 |goto Wilderrun 2168,-1788,-851
		..turnin Journey to Wilderrun##8843 |goto 2168,-1788,-851
		..accept Contextual Considerations##8894 |goto 2168,-1788,-851
	step
		.click Acclimation Station##273375
		.' Use the Acclimation Station |q Contextual Considerations##8894/1 |goto 2167,-1789,-851
		.click Acclimation Station##273375
		.' Use the Acclimation Station |q Contextual Considerations##8894/2 |goto 2167,-1789,-851
		.click Acclimation Station##273375
		.' Use the Acclimation Station |q Contextual Considerations##8894/3 |goto 2167,-1789,-851
	step
		.talk Victor Lazarin##273557
		..accept Tear 'em Out by the Roots##6190 |goto 2150,-1778,-849
	step
		.click Transmat Terminal##271214
		.' Click _Yes_ to set your Recall to Fool's Hope |goto 2227,-1776,-846
		|confirm |q 6190
	step
		.click Fool's Hope Taxi Kiosk##271246
		.' Get the _Fool's Hope_ taxi point |goto Wilderrun 2077,-1612,-845
		|confirm |q 6190
	step
		.kill Warpwood Strangleroot##2976885+
		.kill Warpwood Rootgrabber##2965419+ |tip More of both of these can be found around Fool's Hope; look for yellow circles on your minimap.
		.' Collect Warpwood Roots |q Tear 'em Out by the Roots##6190/1 |goto 2208,-1747,-851
	step
		.talk Victor Lazarin##273557
		..turnin Tear 'em Out by the Roots##6190 |goto 2151,-1778,-850
		..accept Waters of Life##6195 |goto 2151,-1778,-850
	step
		.talk Avra Darkos##283780
		..turnin Contextual Considerations##8894 |goto 2247,-1842,-839
		..accept Bomb Threat##8896 |goto 2247,-1842,-839
	step
		.talk Field Medic Gaxag##273404
		..accept Help Out a Friend?##6412 |goto 2297,-1892,-835
	step
		.click Medical Station##273401
		.' Pick up a Medical Kit from the Medical Station |q Help Out a Friend? ##6412/1 |goto 2298,-1929,-836
		.click Wounded Alchemist##3214217
		.' Heal Wounded Alchemists with the Medical Kit |q Help Out a Friend? ##6412/2 |goto 2297,-1927,-836
		.click Pixpox Antibodies##273402
		.' Pick up the bottle of Pixpox Antibodies |q Help Out a Friend? ##6412/3 |goto 2298,-1918,-836
		.click Plagued Alchemist##2941974
		.' Inject Plagued Alchemists with Pixpox Antibodies |q Help Out a Friend? ##6412/4 |goto 2294,-1918,-836
	step
		.talk Field Medic Gaxag##273404
		..turnin Help Out a Friend?##6412 |goto 2297,-1893,-836
	step
		.' Run around Fool's Hope, keeping an eye on the _Explosive Particulate Concentration_ bar in the top left portion of your screen
		.' As you get within range of an explosive the bar will go up, increasing up to 100 when you are on top of the hidden bomb
		.' Press _T_ to remove the hidden explosive
		.' Find Hidden Explosives |q Bomb Threat##8896/1 |goto 2236,-1754,-852
	step
		.talk Avra Darkos##283780
		..turnin Bomb Threat##8896 |goto 2247,-1842,-839
		..accept Crafty Critter##8910 |goto 2247,-1842,-839
	step
		.' Speak to Lucy Lazarin |q Crafty Critter##8910/1 |goto 2170,-1784,-851
		.click Bubbling Polymorph Potion##273372
		.' Drink Lucy Lazarin's Bubbling Polymorph Potion |q Crafty Critter##8910/2 |goto 2169,-1790,-851
		.click Explosives##283776
		.' Trigger Explosives near ICI operatives |q Crafty Critter##8910/3 |goto 2041,-1657,-851
	step
		.' Return to Lucy Lazarin |q Crafty Critter##8910/4 |goto 2171,-1783,-851
	step
		.click Viscous Polymorph Potion##273371
		.' Drink Lucy Lazarin's Viscous Polymorph Potion |q Crafty Critter##8910/5 |goto 2169,-1790,-851
		.click Explosives##273366 |tip It is underneath the landing pad.
		.' Trigger Explosives near ICI operatives |q Crafty Critter##8910/6 |goto 2365,-1789,-839
	step
		.talk Lucy Lazarin##273362
		..turnin Crafty Critter##8910 |goto 2168,-1788,-851
		..accept Experiment Extermination##8914 |goto 2168,-1788,-851
	step
		.click Animal Carcass##273363
		.kill Failed Experiment##3309367
		.' Kill Lucy Lazarin's escaped experiments |q Experiment Extermination##8914/1 |goto 2251,-1644,-864
	step
		.talk Lucy Lazarin##273362
		..turnin Experiment Extermination##8914 |goto 2168,-1788,-851
	step
		.talk Galby Greenfield##271038
		..accept Misplaced Manuscripts##6531 |goto 2309,-1874,-835
	step
		.click To Serve Snoglug##3507207
		.' Find To Serve Snoglug |q Misplaced Manuscripts##6531/3 |goto 2244,-1831,-839
		.click The Exalted Wilderrun: Myth and Legend##3583948
		.' Find The Exalted Wilderrun: Myth and Legend |q Misplaced Manuscripts##6531/2 |goto 2314,-1734,-841
		.click An Explorer's Guide to Pumera Bites##3485958
		.' Find An Explorer's Guide to Pumera Bites |q Misplaced Manuscripts##6531/1 |goto 2063,-1731,-849
	step
		.talk Galby Greenfield##271038
		..turnin Misplaced Manuscripts##6531 |goto 2309,-1875,-835
	step
		.' _Cross_ the big wooden bridge |goto 2367,-1910,-821 < 10
		.' _Go up_ the ramp |goto 2297,-2035,-797 < 10
		.talk Matthias Black##271030
		..accept Connect the Dots##6436 |goto 2278,-1966,-770
	step
		.' Venture into the jungles of Wilderrun |q Waters of Life##6195/1 |goto Wilderrun 2238,-2086,-774
		.click Wildebloom Waterfrond##3309142
		.' Extract Wildebloom Water Samples |q Waters of Life##6195/2 |goto 2215,-2124,-764
	step
		'Press _C_ to use your communicator:
		..turnin Waters of Life##6195
		..accept Off the Beaten Pathfinder##6225
	step
		.click Comm Relay 140A##271034
		.' Hack Comm Relay 140A |q Connect the Dots##6436/1 |goto 2156,-2246,-752
		.click Comm Relay 125B##279969
		.' Hack Comm Relay 125B |q Connect the Dots##6436/2 |goto 2207,-2336,-739
	step
		.click Photograph of Belle##283884
		.' Search for traces of Dorian Walker |q Off the Beaten Pathfinder##6225/1 |goto 2243,-2348,-747
	step
		.click Mysterious Stone Head##273500
		..accept Wildbranch Shrine##6441 |goto 2299,-2241,-751
	step
		.' Defend against Wildbranch Razortails |q Wildbranch Shrine##6441/1 |goto 2296,-2240,-751
	step
		'Press _C_ to use your communicator:
		..turnin Wildbranch Shrine##6441
	step
		.click Airshroom##273423
		..accept Gotta Bounce##6385 |goto 2368,-2387,-763
	step
		.' Jump on the Airshroom |q Gotta Bounce##6385/1 |goto 2369,-2383,-761
	step
		'Press _C_ to use your communicator:
		..turnin Gotta Bounce##6385
	step
		.click Dorian's Explorer Beacon##1370537
		.' Locate and access Dorian's Explorer Beacon |q Off the Beaten Pathfinder##6225/2 |goto 2375,-2381,-744
	step
		.click Comm Relay 110C##271032
		.' Hack Comm Relay 110C |q Connect the Dots##6436/3 |goto 2338,-2428,-773
	step
		.click Fallen Plank##270976
		..accept Hidden Heights##6555 |goto 2317,-2442,-774
	step
		.' _Climb up_ the big tree trunk |goto 2304,-2456,-767 < 10
		.' _Jump onto_ the Airshroom |goto 2310,-2479,-743 < 10
		.' Jump onto the _second Airshroom_ |goto 2286,-2480,-723 < 10
		.' Jump onto the _final Airshroom_ |goto 2276,-2472,-691 < 10
		.' Find a way up to Hunter's Hideaway |q Hidden Heights##6555/1 |goto 2262,-2476,-688
		.' Go _up the elevator_ here |goto 2245,-2468,-696
		.talk Maggs the Maimer##271074
		..turnin Hidden Heights##6555 |goto 2241,-2494,-659
		..accept The Untamed Wilds##6356 |goto 2241,-2494,-659
	step
		'Press _C_ to use your communicator:
		..accept Prowler Pelts##6358 |goto Wilderrun 2217,-2545,-804
	step
		.kill 1 Wildstrike Raptor##3315950
		.' Press _C_ to use your communicator
		..accept Feathers of Fury##6360 |goto 2054,-2610,-800
	step
		.kill Wildstrike Talonripper##3319506+
		.kill Warpwood Splintertooth##3196728+
		.kill Mosswood Rotspewer##3356122+
		.' Kill aggressive Animals |q The Untamed Wilds##6356/1 |goto 2078,-2622,-803
		.kill Wildstrike Talonripper##3319506+
		.kill Wildstrike Raptor##3306994+
		.' Collect Wildstrike Raptor Feathers from Wildstrike ravenok |q Feathers of Fury##6360/1 |goto 2067,-2575,-802
	step
		'Press _C_ to use your communicator:
		..turnin The Untamed Wilds##6356
		..turnin Feathers of Fury##6360
	step
		.kill Untamed Pouncer##3299329+
		.kill Torine Fastpaw##3177136+
		.' Collect Pelts from Feralclaw and Torine pumera |q Prowler Pelts##6358/1 |goto 1992,-2339,-778
	step
		'Press _C_ to use your communicator:
		..turnin Prowler Pelts##6358
	step
		'Press _C_ to use your communicator:
		..accept Snoglugs on Logs##6357 |goto Wilderrun 2121,-2470,-806
	step
		.click Everglow Mushroom##271087
		..accept Everglow Mushrooms##6221 |goto Wilderrun 2029,-2847,-809
	step
		.kill Mosswood Lurker##3281955+
		.kill Mosswood Slimer##3190684+
		.kill Mosswood Rotspewer##3442393 |tip Look for yellow dots on your minimap. More can usually be found to the west.
		.' Kill Mosswood Snoglugs |q Snoglugs on Logs##6357/1 |goto 1991,-2689,-818
		.click Everglow Mushroom##271076 |tip Scattered around this area. More can usually be found to the west.
		.' Collect Everglow Mushrooms |q Everglow Mushrooms##6221/1 |goto 1991,-2689,-818
	step
		'Press _C_ to use your communicator:
		..turnin Snoglugs on Logs##6357
		..turnin Everglow Mushrooms##6221
	step
		'Press _C_ to use your communicator:
		.kill 1 Tanglecrash Clipclaw##3268240
		..accept Raucous Razortail##6361 |goto 2480,-2525,-775
	step
		.click Comm Relay 95D##271031
		.' Hack Comm Relay 95D |q Connect the Dots##6436/4 |goto Wilderrun 2485,-2540,-775
	step
		'Press _C_ to use your communicator:
		..turnin Connect the Dots##6436
		..accept Dominion History Lesson##6238
	step
		.kill Tanglecrash Clipclaw##3268240+
		.kill Tanglecrash Slashtail##3405388+
		.kill Wildbranch Rageclaw##3207104+
		.' Collect Razortail Heads from Wildbranch and Tanglecrash razortails |q Raucous Razortail##6361/1 |goto Wilderrun 2488,-2564,-773
	step
		'Press _C_ to use your communicator:
		..turnin Raucous Razortail##6361
	step
		.talk Dorian Walker##3063369
		..turnin Off the Beaten Pathfinder##6225 |goto 2498,-2455,-771
		..accept Walking into a Trap##6227 |goto 2498,-2455,-771
	step
		.click Dorian Walker's Datachron##283877
		.' Defeat the enemies that attack in waves
		.' Recover Dorian Walker's Datachron |q Walking into a Trap##6227/1 |goto 2495,-2465,-774
	step
		.click Cassian Commonwealth Emblem##272955
		.' Search for clues around the Crash Site |q Dominion History Lesson##6238/1 |count 33 |goto Wilderrun 2587,-2646,-771
		.click Tattered Banner##272956
		.' Search for clues around the Crash Site |q Dominion History Lesson##6238/1 |count 66 |goto Wilderrun 2608,-2689,-766
	step
		.click Wildfall Corpse##271070
		..accept Finishing the Job##6407 |goto Wilderrun 2583,-2685,-768
	step
		.click Intact Data Cache##283335
		.' Search for clues around the Crash Site |q Dominion History Lesson##6238/1 |goto 2533,-2642,-765
	step
		'Press _C_ to use your communicator:
		..turnin Dominion History Lesson##6238
		..accept Defragmenting Data##6239
	step
		.' _Jump onto_ the first Airshroom |goto 2596,-2687,-766
		.' Jump onto the _second Airshroom_ |goto 2625,-2714,-722
		.' Use Airshrooms to reach the Ship Wreckage |q Finishing the Job##6407/1 |goto 2692,-2724,-724
		.' Jump onto the _last Airshroom_ |goto 2695,-2731,-719
		.' _Jump up_ the metal ledges |goto Wilderrun 2728,-2773,-685
		.click Surveillance Terminal##271041
		.' Gain access to the Surveillance Terminal |q Finishing the Job##6407/2 |goto 2706,-2806,-664
	step
		'Press _C_ to use your communicator:
		..turnin Finishing the Job##6407
	step
		.click Salvaged Data Terminal##273429
		.' Download data from Salvaged Data Terminals around this area  |q Defragmenting Data##6239/1 |goto Wilderrun 2456,-2745,-768
	step
		'Press _C_ to use your communicator:
		..accept Wildfall Surveys##6389 |goto Wilderrun 2467,-2721,-755
	step
		.click Master Terminal##273434
		..turnin Defragmenting Data##6239 |goto 2432,-2866,-767
		..accept Pieces of the Puzzle##6240 |goto 2432,-2866,-767
	step
		.kill Wildfall Data Construct##3317197
		.' Collect Cassian Power Cells from Wildfall Data Constructs |q Pieces of the Puzzle##6240/1 |goto 2486,-2817,-763
		.kill Wildfall Warrior##3580943+
		.kill Wildfall Berserker##3373154+
		.kill Wildfall Cleric##3508956+
		.kill Wildfall Scavenger##3345719+
		.' Kill Wildfall Pell |q Pieces of the Puzzle##6240/2 |goto 2484,-2835,-763
	step
		.click Geomapping Unit##3506753
		.' Gather Wildfall Geomapping Data from Geomapping Units |q Wildfall Surveys##6389/1 |goto Wilderrun 2383,-2751,-764
	step
		'Press _C_ to use your communicator:
		..turnin Wildfall Surveys##6389
	step
		.click Master Terminal##273434
		..turnin Pieces of the Puzzle##6240 |goto 2432,-2865,-767
	step
		'Press _C_ to use your communicator:
		..accept Ask the Pell##6241
	step
		.click Primal Life Essence##3452058
		.' Collect Primal Life Essence |q Ask the Pell##6241/1 |goto Wilderrun 2516,-2820,-761
		.click Ritual Statue##273352 |tip Click both Ritual Statues.
		.' Summon High Priest Life-Bearer |q Ask the Pell##6241/2 |goto 2621,-2910,-762
	step
		.talk High Priest Life-Bearer##283829
		..turnin Ask the Pell##6241 |goto 2644,-2917,-761
		..accept Wild Women of the Jungle##6242 |goto 2644,-2917,-761
	step
		.' Rendezvous with Dorian Walker |q Walking into a Trap##6227/2 |goto Wilderrun 2207,-2242,-751
		.click Dorian's Speeder##273473
		.' Start Dorian's Speeder |q Walking into a Trap##6227/3 |goto 2216,-2249,-751
		.' Escape the trap |q Walking into a Trap##6227/4 |goto 2209,-2237,-752
	step
		.talk Dorian Walker##273466
		..turnin Walking into a Trap##6227 |goto 2203,-2253,-749
		..accept Race for the Everpool##6174 |goto 2203,-2253,-749
		..accept Pumera Tamers##6173 |goto 2203,-2253,-749
	step
		.click Torine Pumera Relic##273443
		.' Locate and inspect the Torine Pumera Relic |q Pumera Tamers##6173/1 |goto Wilderrun 2082,-2256,-769
	step
		'Press _C_ to use your communicator:
		..accept Artifacts of the Sisterhood##6387 |goto Wilderrun 1941,-2368,-780
	step
		.kill Torine Fastpaw##3371428+
		.kill Torine Longclaw##3587728+
		.' Kill Torine sisters and Torine Pumera |q Pumera Tamers##6173/2 |goto 2012,-2282,-780
		.kill Torine Lifebringer##3570083+
		.kill Torine Purger##3605995+
		.kill Torine Lifesealer##3414622+
		.kill Torine Lifecaller##3472355+
		.' Gather Torine Artifacts from Torine sisters |q Artifacts of the Sisterhood##6387/1 |goto Wilderrun 1900,-2394,-780
	step
		'Press _C_ to use your communicator:
		..turnin Pumera Tamers##6173
		..turnin Artifacts of the Sisterhood##6387
	step
		.' _Jump up_ the stone head to get to the top |goto 1937,-2503,-789
		.' Inspect the Skullstone of the Osun |q Race for the Everpool##6174/2 |goto Wilderrun 1931,-2528,-765
		.' Press _T_ to shout to Dorian Walker |q Race for the Everpool##6174/3 |goto 1928,-2534,-765
		.' Scout Wilderrun Chase |q Race for the Everpool##6174/4 |goto Wilderrun 2120,-2719,-819
		.click Dorian Walker##273465 |tip He is up in a large tree.
		.' Press _T_ to shout to Dorian Walker |q Race for the Everpool##6174/5 |goto 2122,-2721,-818
	step
		.' _Jump up the leaves_ to climb the tree |goto Wilderrun 2162,-2752,-804
		.' Jump _across to the second tree_ and continue up the leaves |goto 2186,-2743,-776
		.' Scout the Fallen Stone Ruins  |q Race for the Everpool##6174/6 |goto Wilderrun 2231,-2800,-745
	step
		.talk Dorian Walker##273441
		..turnin Race for the Everpool##6174 |goto 2289,-2961,-742
		..accept Enemy at the Gates##6175 |goto 2289,-2961,-742
	step
		.click Torine Swordforge##270965
		..accept Sacred Swordforge##6542 |goto 2203,-2892,-741
	step
		.click Torine Forgeblade##3711806
		.' Collect Torine Forgeblades |q Sacred Swordforge##6542/1 |goto 2188,-2901,-737
	step
		.click Torine Swordforge##270965
		..turnin Sacred Swordforge##6542 |goto 2203,-2892,-741
	step
		.' Make your way to the Everpool Sanctum |q Enemy at the Gates##6175/1 |goto Wilderrun 2089,-3249,-725
		.talk Dorian Walker##273437
		.' Speak to Dorian Walker |q Enemy at the Gates##6175/2 |goto 2204,-3463,-717
		.click Banner of Trials##273439
		.kill 1 Deathbringer Kala##3189477
		.' Challenge and Defeat Deathbringer Kala |q Enemy at the Gates##6175/3 |goto 2360,-3178,-725
		.' Listen to Deathbringer Kala |q Enemy at the Gates##6175/4 |goto 2354,-3175,-725
	step
		.click Deathbringer's Sword##270966
		..accept The Deathbringer's Sword##6424 |goto Wilderrun 2351,-3174,-725
	step
		.click Eldan Focal Monitor##271036
		..accept The Focus of Life##6176 |goto Wilderrun 2325,-3204,-725
	step
		.click Eldan Holostation##279975
		.' Activate the Eldan Holostation |q The Focus of Life##6176/1 |goto 2327,-3198,-725
	step
		.click Eldan Focal Monitor##271036
		..turnin The Focus of Life##6176 |goto 2324,-3205,-725
	step
		.talk Vesta the Tamer##280045
		..turnin The Deathbringer's Sword##6424 |goto Wilderrun 2423,-3359,-730
		..accept Taming the Wilds##6368 |goto Wilderrun 2423,-3359,-730
	step
		.talk Ceris the Lifecaller##271105
		..accept Lifecaller Initiation##6369 |goto 2444,-3360,-730
	step
		.talk Dorian Walker##273435
		..turnin Enemy at the Gates##6175 |goto Wilderrun 2192,-3413,-717
	step
		.' Locate Bladesworn Caverns |q Lifecaller Initiation##6369/1 |goto Wilderrun 1911,-3295,-728
	step
		.click Bladesworn Forge##270982
		..accept Forging the Lifecaller Staff##6523 |goto Wilderrun 1754,-3389,-760
	step
		.click Lifecaller Headpiece##5559787
		.' Retrieve the Lifecaller Headpiece |q Forging the Lifecaller Staff##6523/1 |goto 1809,-3471,-774
		.' _Jump down_ the hole |goto 1712,-3412,-760
		.click Lifecaller Haft##5525072
		.' Retrieve the Lifecaller Haft |q Forging the Lifecaller Staff##6523/2 |goto Wilderrun 1678,-3523,-814
	step
		.click Bladesworn Forge##270982
		..turnin Forging the Lifecaller Staff##6523 |goto 1752,-3389,-760
	step
		.talk Ceris the Lifecaller##271105
		..turnin Lifecaller Initiation##6369 |goto Wilderrun 2445,-3360,-730
	step
		.click Feralclaw Cub##5369042
		.' Feed and acquire Feralclaw Cubs |q Taming the Wilds##6368/1 |count 33 |goto Wilderrun 2591,-3072,-783
		.click Feralclaw Cub##5331112
		.' Feed and acquire Feralclaw Cubs |q Taming the Wilds##6368/1 |count 66 |goto 2606,-3105,-782
		.click Feralclaw Cub##5456242
		.' Feed and acquire Feralclaw Cubs |q Taming the Wilds##6368/1 |goto 2633,-3092,-782
	step
		.' Return to Vesta the Tamer |q Taming the Wilds##6368/2 |goto Wilderrun 2428,-3355,-730
		.talk Vesta the Tamer##271125
		..turnin Taming the Wilds##6368 |goto Wilderrun 2426,-3358,-730
	step
		.talk Hella the Deathbringer##271101
		..accept Blademother's Refuge##6371 |goto 2385,-3394,-730
	step
		.' Seek out Freya the Handmaiden |q Wild Women of the Jungle##6242/1 |goto Wilderrun 2815,-2810,-762
		.' Defeat Freya the Handmaiden |q Wild Women of the Jungle##6242/2 |goto 2811,-2833,-764
	step
		'Press _C_ to use your communicator:
		..turnin Wild Women of the Jungle##6242
	step
		.click Torine Vitara Relic##270947
		..accept Torine Lifewater##6557 |goto 1633,-2926,-810
	step
		.kill Torine Swordmaiden##5473920+
		.kill Torine Sister##5377238+
		.kill Torine Lifebringer##5695930+
		.kill Torine Purger##5390577+
		.' Collect Torine Lifewater from Torine |q Torine Lifewater##6557/1 |goto 1659,-2966,-812
	step
		.click Torine Vitara Relic##270947
		..turnin Torine Lifewater##6557 |goto 1633,-2926,-810
	step
		.talk Deathbringer Sybil##279783
		.' Speak with Deathbringer Sybil |q Blademother's Refuge##6371/1 |goto Wilderrun 1123,-3160,-748
		.click Torine Trialstone##270938
		.' Defeat Tresayne's best Torine warriors |q Blademother's Refuge##6371/2 |goto 1258,-3154,-754
	step
		.' _Climb up_ the huge tree trunk |goto Wilderrun 2305,-2455,-767 < 10
		.' _Jump onto_ the Airshroom |goto 2311,-2479,-750 < 10
		.' Jump onto the _second Airshroom_ |goto 2282,-2480,-730 < 10
		.' Jump onto the _final Airshroom_ |goto 2276,-2473,-693 < 10
		.talk Maggs the Maimer##271074
		..accept Grizzled Giants##6359 |goto 2241,-2496,-659
	step
		.kill Barhun##306438
		.kill Grizzlepaw Forager##306855+
		.kill Grizzlepaw Feralstalker##306777+
		.' Collect Girrok Carcasses |q Grizzled Giants##6359/1 |goto Wilderrun 2294,-2343,-759
	step
		'Press _C_ to use your communicator:
		..turnin Grizzled Giants##6359
		..accept The Big Game##6362
	step
		.kill 1 Barhun##306438 |q The Big Game##6362/1 |goto Wilderrun 2229,-2380,-776
		.kill 1 Eviscerator##301882 |q The Big Game##6362/2 |goto 2298,-2583,-793
	step
		.' Press _I_ to open your inventory and right click the _Barhun's Head_ and _Eviscerator's Skull_
		..accept Barhun's Head##6364 |goto 2227,-2522,-721
		..accept Skull of the Eviscerator##6366 |goto 2227,-2522,-721
	step
		.' _Climb up_ the huge tree trunk |goto Wilderrun 2305,-2455,-767 < 10
		.' _Jump onto_ the Airshroom |goto 2311,-2479,-750 < 10
		.' Jump onto the _second Airshroom_ |goto 2282,-2480,-730 < 10
		.' Jump onto the _final Airshroom_ |goto 2276,-2473,-693 < 10
		.talk Maggs the Maimer##271074
		..turnin The Big Game##6362 |goto 2241,-2496,-659
		..turnin Barhun's Head##6364 |goto 2241,-2496,-659
		..turnin Skull of the Eviscerator##6366 |goto 2241,-2496,-659
	step
		.talk Tresayne Toria##271015
		..turnin Blademother's Refuge##6371 |goto Wilderrun 2188,-3441,-709
	step
		.talk Dorian Walker##273527
		..accept Well That Can't Be Good##9434 |goto 2192,-3414,-717
	step
		.talk Far-Trader Voshana##270940
		..accept Helping the Haven##7977 |goto 2428,-3328,-730
	step
		.' _Go up_ the wooden ramp |goto Wilderrun 2724,-3904,-789
		.talk Adventurer Kiyai##266417
		..turnin Helping the Haven##7977 |goto 2683,-3869,-747
		..accept The High Price of Freedom##7900 |goto 2683,-3869,-747
		..accept Noise Pollution##7901 |goto 2683,-3869,-747
	step
		.click Marshal's Haven Taxi Kiosk##266868
		.' Get the _Marshal's Haven_ taxi point |goto Wilderrun 2716,-3889,-786
		|confirm |q 7900
	step
		.kill Ulgar Soulslave##337654+
		.kill Kel Ulgar War Drum##332169+
		.' Destroy Kel Ulgar War Drums |q Noise Pollution##7901/1 |goto Wilderrun 2889,-4141,-803
		.' Kill Ulgar Soulslaves |q The High Price of Freedom##7900/1 |goto 2890,-4142,-803
	step
		'Press _C_ to use your communicator:
		..turnin Noise Pollution##7901
		..turnin The High Price of Freedom##7900
		..accept Destruction of Massive Weapons##7902
		..accept Is That All You've Got?##7903
	step
		.talk Shinequester Meechi##266406
		..accept Free Range Pumera##7910 |goto 3126,-4259,-802
		.talk Shinequester Andro##266399
		..accept Firebomb the Forges##7911 |goto 3126,-4259,-802
	step
		.' All around this area of Kel Ulgar:
		.kill Ulgar Bruiser##267849+
		.kill Ulgar Skullcrusher##267855+
		.' Kill Ulgar Skullcrushers and Ulgar Bruisers |q Is That All You've Got?##7903/1 |goto Wilderrun 3107,-4264,-803
		.click Osun Chain##269464
		.' Destroy Osun Chains to free captive pumera |q Free Range Pumera##7910/1 |goto 3139,-4232,-803
	step
		'Press _C_ to use your communicator:
		..turnin Is That All You've Got?##7903
		..turnin Free Range Pumera##7910
	step
		.click Kel Ulgar Weapon Rack##270222
		.' Destroy Kel Ulgar Weapon Racks |q Destruction of Massive Weapons##7902/1 |goto 3263,-4383,-807
		.click Plant Timed Explosive##276684
		.' Plant Timed Explosives on Kel Ulgar Forges |q Firebomb the Forges##7911/1 |goto 3265,-4369,-800
	step
		'Press _C_ to use your Communicator:
		..turnin Firebomb the Forges##7911
		..accept Unchained##7905
		..turnin Destruction of Massive Weapons##7902
		..accept Blunt the Weapon Maker##7904
	step
		.kill 1 Forgemaster Kraagor##4955020 |q Blunt the Weapon Maker##7904/1 |goto Wilderrun 3037,-4484,-777
	step
		'Press _C_ to use your communicator:
		..turnin Blunt the Weapon Maker##7904
	step
		.' _Go up_ the huge staircase |goto 3125,-4163,-803 < 10
		.' _Follow this platform_ around |goto 3415,-4195,-656 < 10
		.click Andro's Cage##270201
		.' Free Shinequester Andro from his Cage |q Unchained##7905/1 |goto 3381,-4255,-661
	step
		'Press _C_ to use your communicator:
		..accept Soulrot Survivor##7907
	step
		.talk Shinequester Andro##270185
		..accept Punch 'em in the Slavemaker##7906 |goto Wilderrun 3378,-4258,-661
	step
		.' All around this platform and the platform to the south
		.click Soulrot Canister##278656
		.' Press _T_ to destroy Soulrot Canisters |q Soulrot Survivor##7907/1 |goto 3355,-4247,-659
		.kill Ulgar Slavemaker##416754+
		.kill Ulgar Overlord##421094+
		.' Kill Ulgar Slavemakers and Ulgar Overlords |q Punch 'em in the Slavemaker##7906/1 |goto 3348,-4234,-661
		.click Kel Ulgar Cage##270214
		.' Free Captives from Kel Ulgar Cages |q Unchained##7905/2 |goto 3316,-4241,-661
	step
		.' _Jump off here_ to the platform below |goto 3256,-4183,-656 < 10
		.talk Adventurer Kiyai##266407
		..turnin Soulrot Survivor##7907 |goto 3256,-4161,-707
		..accept Strange Brew##7908 |goto 3256,-4161,-707
		..accept The Pulverizer##7909 |goto 3256,-4161,-707
	step
		.talk Shinequester Andro##266408
		..turnin Unchained##7905 |goto 3257,-4156,-707
		..turnin Punch 'em in the Slavemaker##7906 |goto 3257,-4156,-707
	step
		.' _Go up_ the stairs to the highest level |goto Wilderrun 3644,-4162,-574 < 20
		.kill 1 Drognar the Pulverizer##431826 |q The Pulverizer ##7909/1 |goto 3521,-4161,-563
	step
		'Press _C_ to use your communicator:
		..accept Sample the Brew##7913 |goto 3516,-4204,-566
	step
		.click Explorer Underwood's Journal##269438
		..accept The Last Chapter##7914 |goto 3513,-4222,-573
	step
		.click Leaking Soulrot Canister##269293
		.' Kill the enemies that attack in waves
		.' Secure a Leaking Soulrot Canister |q Sample the Brew##7913/1 |goto 3519,-4224,-573
		.click Leaking Soulrot Canister##293917
		.' Secure Leaking Soulrot Canisters  |q Sample the Brew##7913/2 |goto 3479,-4235,-573
		.' Wait for Adventurer Kiyai to receive the shipment |q Sample the Brew##7913/3 |goto 3472,-4228,-573
	step
		'Press _C_ to use your communicator:
		..turnin Sample the Brew##7913
	step
		.kill 1 Brewsister Elja##437348
		.kill 1 Brewsister Meloth##437349
		.kill 1 Brewsister Raken##437347
		.' Kill the Ulgar Brewsisters |q Strange Brew##7908/1 |goto 3733,-4162,-575
	step
		'Press _C_ to use your communicator:
		..turnin Strange Brew##7908
	step
		.' Follow the _stairs down_ to this spot |goto Wilderrun 3449,-4164,-661 < 10
		.' _Follow this platform_ around |goto Wilderrun 3423,-4138,-656 < 10
		.' _Jump down_ here to the platform below |goto 3402,-4020,-663 < 10
		..accept All Along the Watchtowers##7912 |goto 3433,-3995,-719
	step
		.' Follow this _path atop the wall_ as you kill Tower Guards |goto 3447,-3971,-721
		.kill Ulgar Tower Guard##353491+
		.kill Ulgar Tower Slavekeeper##353492+
		.kill Ulgar Watchslave##353493+
		.' Kill the Tower Guards |q All Along the Watchtowers##7912/1 |goto 3449,-3893,-726
	step
		'Press _C_ to use your communicator:
		..turnin All Along the Watchtowers##7912
	step
		.' _Go up_ the wooden ramp |goto Wilderrun 2723,-3905,-788 < 10
		.talk Adventurer Kiyai##266417
		..turnin The Pulverizer##7909 |goto 2683,-3869,-747
	step
		.talk Victor Lazarin##266415
		..turnin Well That Can't Be Good##9434 |goto Wilderrun 2365,-4018,-790
		..turnin The Last Chapter##7914 |goto 2365,-4018,-790
		..accept Tainted Samples##8073 |goto 2365,-4018,-790
	step
		.talk Security Chief Drantor##269707
		..accept Down with Disease##8061 |goto 2370,-4009,-791
	step
		.click Containment Specialist##293657
		.' Give flamethrowers to Containment Specialists |q Down with Disease##8061/1 |goto Wilderrun 2331,-4065,-790
		.click Turret Location##269434
		.' Place turrets |q Down with Disease##8061/2 |goto 2295,-4162,-791
	step
		.' All around the Twilight Grove:
		.kill Spore Pod##466571+
		.' Kill Spore Pods |q Down with Disease##8061/3 |goto 2251,-4210,-787
		.kill Corrupted Stalker##468390+
		.kill Corrupted Buck##468389+
		.kill Corrupted Scrambler##503464+
		.' Collect Corrupted Flesh from corrupted creatures |q Tainted Samples##8073/1 |goto 2266,-4217,-789
		.click Corrupted Flora##465758
		.' Collect Corrupted Flora |q Tainted Samples##8073/2 |goto 2266,-4218,-789
	step
		'Press _C_ to use your communicator:
		..turnin Down with Disease##8061
		..accept Recommended Doses##8062
		..turnin Tainted Samples##8073
		..accept Infection##8064
	step
		.click Strain Infected Corpse##278537
		.' Release test Chompacabras near Strain Infected Corpses |q Infection##8064/1 |goto 2310,-4322,-787
		.kill Corrupted Scrambler##557435+
		.kill Corrupted Buck##556769+
		.kill Corrupted Stalker##556771+
		.kill Corrupted Test Chompacabra##556593+
		.' Press _T_ to use Vera against Strain corrupted creatures |q Recommended Doses##8062/1 |goto 2343,-4292,-788
	step
		'Press _C_ to use your communicator:
		..turnin Infection##8064
		..accept Field Study##8075
		..turnin Recommended Doses##8062
	step
		.click Genetic Analysis Probe##278587
		.' Defeat the enemies that attack in waves
		.' Activate the Genetic Analysis Probe |q Field Study##8075/1 |goto 2176,-4440,-777
	step
		'Press _C_ to use your communicator:
		..turnin Field Study##8075
		..accept Side Effects##8076
	step
		.click Field Journal Page##278476 |tip These are found on the ground around Anton's camp.
		.' Collect Researcher Anton's Field Journal Notes  |q Side Effects##8076/4 |goto Wilderrun 2091,-4319,-763
	step
		.kill 1 Researcher Anton##517455
		.' Subdue Researcher Anton |q Side Effects##8076/1 |goto Wilderrun 2081,-4317,-763
		.' Hand over Researcher Anton to the containment specialist |q Side Effects##8076/2 |goto Wilderrun 2085,-4318,-763
	step
		.talk Victor Lazarin##278610
		..turnin Side Effects##8076 |goto Wilderrun 2381,-4000,-791
		..accept Reckless Research##8077 |goto 2381,-4000,-791
	step
		.talk Lucy Lazarin##270110
		.' Speak with Lucy Lazarin |q Reckless Research##8077/1 |goto 2381,-3993,-791
		.click Molecular Reconstructor##270085
		.' Start the Molecular Reconstructor |q Reckless Research##8077/2 |goto 2381,-3996,-791
		.' Observe the Test |q Reckless Research##8077/3 |goto 2380,-3996,-791
		.click Mutagenic Deconstructor##270084
		.' Power the Mutagenic Deconstructor |q Reckless Research##8077/4 |goto 2381,-3991,-791
	step
		.talk Victor Lazarin##278610
		..turnin Reckless Research##8077 |goto 2381,-3999,-791
	step
		.talk Security Chief Drantor##269707
		..accept Forest Dwellings##8060 |goto 2370,-4009,-791
	step
		.talk Deathbringer Ehel##269693
		..turnin Forest Dwellings##8060 |goto Wilderrun 2110,-4660,-742
		..accept Damage Assessment##7780 |goto 2110,-4660,-742
		..accept Encroaching Corruption##7782 |goto 2110,-4660,-742
	step
		.' Investigate the Great Forge |q Damage Assessment##7780/1 |goto Wilderrun 1888,-4402,-766
		.click Cleansing Torch##270019
		.' Take the Cleansing Torch |q Encroaching Corruption##7782/1 |goto 1888,-4415,-766
	step
		.kill 1 Corrupted Tamer##571678
		.' Press _C_ to use your communicator
		..accept Beyond Redemption##7781 |goto 1929,-4405,-763
		.kill 1 Corrupted Slasher##512068
		..accept Corrupted Companions##7785 |goto 1929,-4405,-763
	step
		.' Investigate the Western Residences |q Damage Assessment##7780/2 |goto 1936,-4299,-762
	step
		.click Surface Corruption##269989 |tip These are purple and orange piles of ooze laying on the ground in Sister's Watch and in the field to the west.
		.' Press _T_ to use the Cleansing Torch on the Surface Corruption |q Encroaching Corruption##7782/2 |goto 1925,-4216,-764
	step
		'Press _C_ to use your communicator:
		..turnin Encroaching Corruption##7782
	step
		.kill Corrupted Padfoot##622189+
		.kill Corrupted Slasher##574528+
		.' Kill Corrupted Pumera |q Corrupted Companions##7785/1 |goto 1818,-4129,-766
	step
		'Press _C_ to use your communicator:
		..turnin Corrupted Companions##7785
	step
		.kill Corrupted Lifecaller##542464+
		.kill Corrupted Sister##609125+
		.kill Corrupted Warblade##595770+
		.' Kill Corrupted Torine |q Beyond Redemption##7781/1 |goto 1659,-4164,-758
	step
		'Press _C_ to use your communicator:
		..turnin Beyond Redemption##7781
	step
		.' Investigate the Northern Residence |q Damage Assessment##7780/3 |goto 1705,-4300,-756
		.' Investigate the Pumera Pens |q Damage Assessment##7780/4 |goto 1814,-4112,-766
	step
		'Press _C_ to use your communicator:
		..turnin Damage Assessment##7780
		..accept Temple Under Strain##7783
	step
		.' Investigate the Temple |q Temple Under Strain##7783/1 |goto 1657,-4177,-758
	step
		'Press _C_ to use your Communicator:
		..turnin Temple Under Strain##7783
		..accept The Corrupting Influence##7784
	step
		.kill 1 Lifecaller Celes##674412
		.' Kill Lifecaller Celes |q The Corrupting Influence##7784/1 |goto 1611,-4152,-757
		.kill 1 Strain Corruptor##673974
		.' Kill the Strain Corruptor |q The Corrupting Influence##7784/2 |goto 1614,-4153,-757
	step
		.' Press _I_ to open your inventory and right click the _Deathbringer Ehel's Lost Amulet_ you looted from Celes
		..accept Ehel's Lost Amulet##7786
	step
		.talk Deathbringer Ehel##269677
		..turnin Ehel's Lost Amulet##7786 |goto 1948,-4207,-761
		..turnin The Corrupting Influence##7784 |goto 1948,-4206,-761
	step
		.talk Lifecaller Aethena##266402
		..accept In Her Footsteps##7789 |goto 1949,-4209,-761
		..accept Culling Weeds##7788 |goto 1949,-4209,-761
		..accept Those Who Fell##7793 |goto 1949,-4209,-761
	step
		.kill Corrupted Doomroot##679284+
		.kill Corrupted Taproot##683783+
		.kill Corrupted Sporeling##714676+
		.' Kill corrupted rootbrutes and stumpkins  |q Culling Weeds##7788/2 |goto 1817,-4236,-764
	step
		.click Lost Torine Sword##269758
		..accept A Sister's Legacy##7787 |goto Wilderrun 1463,-4312,-704
	step
		.click Shrine of the Huntress##269809
		.' Visit the Shrine of the Huntress |q In Her Footsteps##7789/1 |goto 1442,-4138,-703
		.click Shrine of Vengeance##269807
		.' Visit the Shrine of Vengeance |q In Her Footsteps##7789/2 |goto 1369,-4296,-704
	step
		.' Inside Vitara's Refuge:
		.click Lost Torine Sword##664868
		.' Collect Lost Torine Swords |q A Sister's Legacy##7787/1 |goto 1424,-4166,-703
		.click Fallen Defender##700233
		.' Burn Fallen Defenders |q Those Who Fell##7793/1 |goto 1422,-4163,-703
		.kill Corrupted Bloom##721261+
		.' Kill corrupted stemdragons  |q Culling Weeds##7788/1 |goto 1387,-4117,-703
	step
		'Press _C_ to use your communicator:
		..turnin A Sister's Legacy##7787
		..turnin Culling Weeds##7788
		..turnin Those Who Fell##7793
	step
		.kill 1 Strainpod##721242
		.' Press _C_ to use your communicator
		..accept Clearing the Air##7790 |goto 1503,-4174,-695
	step
		.kill 1 Strain Peeper##743440
		.' Press _C_ to use your communicator
		..accept The Corruptors##7791 |goto 1510,-4139,-694
	step
		.' Go _up the stairs_ |goto 1283,-4216,-703
		.kill Strainpod##727496+ |tip More of these can be found up the stairs to the north.
		.' Destroy Strainpods |q Clearing the Air##7790/1 |goto 1139,-4171,-652
		.kill Strain Peeper##733513+ |tip More of these can be found up the stairs to the north.
		.' Kill Strain Peepers and Strain Watchers |q The Corruptors##7791/1 |goto 1136,-4172,-651
		.kill Greater Strain Corruptor##768838+
		.kill Strain Corruptor##751995+
		.' Kill Strain Corruptors |q The Corruptors##7791/2 |goto 1077,-4250,-631
	step
		'Press _C_ to use your communicator:
		..turnin Clearing the Air##7790
		..turnin The Corruptors##7791
		..accept Darkness and Life##7792
	step
		.click Shrine of the Sacred Sword##269801
		.' Visit the Shrine of the Sacred Sword |q In Her Footsteps##7789/3 |goto 1098,-4410,-630
		.' Follow the stairs up |goto 959,-4220,-579
		.click Shrine of the Accord##269800
		.' Visit the Shrine of the Accord  |q In Her Footsteps##7789/4 |goto 972,-4068,-587
	step
		'Press _C_ to use your communicator:
		..turnin In Her Footsteps##7789
	step
		.kill 1 Puslek the Corruptor##720176 |q Darkness and Life##7792/1 |goto 1048,-3970,-578
		.kill 1 Corrupted Life##720031 |q Darkness and Life##7792/2 |goto 1048,-3971,-578
	step
		.talk Wounded Lifecaller##277547
		..accept Seed of Hope##7795 |goto 1000,-4119,-588
	step
		.talk Lifecaller Aethena##266402
		..turnin Darkness and Life##7792 |goto Wilderrun 1949,-4210,-761
		..turnin Seed of Hope##7795 |goto 1949,-4210,-761
		..accept The Sacred Ruins##7794 |goto 1949,-4210,-761
	step
		.talk Drollo##266400 |tip He is inside a cave.
		..accept Eight-Legged Freaks##7773 |goto Wilderrun 1561,-3885,-748
	step
		.' All around this area:
		.kill Duskfang Stalker##756083+
		.kill Duskfang Stalker##756244+
		.kill Duskfang Hunter##697967+
		.kill Duskfang Widow##765415+
		.kill Duskfang Recluse ##776173+
		.' Kill Duskfang spiders |q Eight-Legged Freaks##7773/1 |goto 1572,-3826,-742
	step
		'Press _C_ to use your communicator:
		..turnin Eight-Legged Freaks##7773
	step
		.talk The Caretaker##266416
		..turnin The Sacred Ruins##7794 |goto 1327,-3758,-733
		..accept Tresayne's Late Arrival##7759 |goto 1327,-3758,-733
	step
		.click Spider Webbing##269702
		..accept Echoes of the Past##7758 |goto 1341,-3677,-715
	step
		.click Spider Webbing##277518
		.' Release the Ethereal Resonator from Spider Webbing |q Echoes of the Past##7758/1 |goto 1249,-3553,-703
	step
		.click Primary Complex Charger##269717
		.' Restore power to the Primary Complex Charger |q Tresayne's Late Arrival##7759/1 |goto 1429,-3468,-684
		.' Jump through Eldan Energy Shards |tip These are small green orbs floating above the water here. |q Tresayne's Late Arrival##7759/2 |goto 1427,-3459,-686
	step
		.click Spider Webbing##269700
		.' Release the Ethereal Resonator from Spider Webbing |q Echoes of the Past##7758/2 |goto 1495,-3564,-672
	step
		'Press _C_ to use your communicator:
		..turnin Echoes of the Past##7758
	step
		.talk The Caretaker##269635
		..turnin Tresayne's Late Arrival##7759 |goto 1518,-3609,-673
		..accept The Gatekeeper##7760 |goto 1518,-3609,-673
	step
		.kill 1 Hybridization Complex Gatekeeper##779707
		.' Seize the Cerebral Core from the Hybridization Complex Gatekeeper |q The Gatekeeper##7760/1 |goto Wilderrun 1660,-3621,-658
		.click Secondary Complex Charger##269672
		.' Insert the Cerebral Core into the Secondary Complex Charger |q The Gatekeeper##7760/2 |goto 1677,-3660,-657
	step
		.click Hybridization Complex Access Node##269675
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 25 |goto 1537,-3619,-674
		.click Hybridization Complex Access Node##277472
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 50 |goto 1462,-3640,-675
		.click Hybridization Complex Access Node##269676
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 75 |goto 1477,-3698,-674
		.click Hybridization Complex Access Node##269674
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |goto 1549,-3687,-675
	step
		.' _Step through the teleporter_ to enter the Luminai Hybridization Complex |goto Wilderrun 1503,-3657,-672 < 7
		.' Enter the Luminai Hybridization Complex |q The Gatekeeper##7760/4 |goto Wilderrun 1644,-3718,-994
	step
		.talk The Caretaker##269634
		..turnin The Gatekeeper##7760 |goto Wilderrun 1639,-3734,-991
		..accept An Ideal Specimen##7761 |goto 1639,-3734,-991
		..accept Insecurity State##7762 |goto 1639,-3734,-991
	step
		.click Enhancement Monitoring System##266403
		..accept Enhancement Offline##7765 |goto 1639,-3720,-994
	step
		.click Extraction Room Archive##277352
		.' Access the Extraction Room Archive |q An Ideal Specimen##7761/2 |goto Wilderrun 1529,-3684,-991
		.click Contaminated Corpse##492729
		.' Press _T_ to burn Contaminated Corpses |q An Ideal Specimen##7761/1 |goto 1545,-3687,-991
	step
		.kill Hybridization Drone##531239+
		.kill Hybridization Sentry##499575+
		.' Destroy hostile constructs |q Insecurity State##7762/1 |goto Wilderrun 1636,-3680,-994
		.' Collect Eldan Power Sources from Eldan constructs |q Enhancement Offline##7765/1 |goto 1635,-3680,-994
	step
		'Press _C_ to use your communicator:
		..turnin Insecurity State##7762
	step
		.click Enhancement Monitoring System##266328
		..turnin Enhancement Offline##7765 |goto Wilderrun 1639,-3721,-994
		..accept Better Living Through Science##7766 |goto 1639,-3721,-994
	step
		.click Pattern Archival System##269582
		.' Use the Pattern Archival System |q An Ideal Specimen##7761/3 |goto Wilderrun 1740,-3683,-991
	step
		'Press _C_ to use your communicator:
		..turnin An Ideal Specimen##7761
		..accept The Hybrid Synthesis##7763
	step
		.' Go _through the doorway_ |goto Wilderrun 1669,-3731,-994
		.click Enhancement Station: Resistance##269196
		.' Activate the Enhancement Station: Resistance |q Better Living Through Science##7766/1 |goto Wilderrun 1678,-3813,-996
		.click Enhancement Station: Power##269195
		.' Activate the Enhancement Station: Power |q Better Living Through Science##7766/2 |goto 1599,-3813,-996
	step
		.click Hybridization Console##269552
		.' Kill the enemies that attack in waves
		.' Use the Hybridization Console |q The Hybrid Synthesis##7763/1 |goto Wilderrun 1639,-3919,-996
	step
		'Press _C_ to use your communicator:
		..turnin The Hybrid Synthesis##7763
		..accept Devastation Ridge##9447
	step
		.' _Go back through_ the doorway |goto Wilderrun 1610,-3770,-998
		.click Enhancement Monitoring System##266328
		..turnin Better Living Through Science##7766 |goto Wilderrun 1639,-3720,-994
	step
		.' _Step into the teleporter_ to leave the Luminai Hybridization Complex |goto 1639,-3632,-990
		.talk Bellona the Swordsister##266329
		..accept Deep in the Jungle##7764 |goto Wilderrun 1146,-3766,-703
	step
		.' Search Sanctuary Hill |q Deep in the Jungle##7764/1 |goto Wilderrun 660,-3787,-560
		.' Search the Silent Clearing |q Deep in the Jungle##7764/2 |goto  927,-3651,-650
		.' Search Stranger's Hollow |q Deep in the Jungle##7764/3 |goto Wilderrun 1747,-3582,-661
		.click The Stranger's Web##269198
		.' Free Huntress Drava from the Stranger's Web |q Deep in the Jungle##7764/4 |goto 1763,-3574,-660
	step
		'Press _C_ to use your communicator:
		..turnin Deep in the Jungle##7764
	step
		.talk Depot Agent Sakiro##266335
		..turnin Devastation Ridge##9447 |goto Wilderrun 2463,-4796,-774
		..accept The Path of Destruction##7767 |goto 2463,-4796,-774
		..accept Heartbreaker##7770 |goto 2463,-4796,-774
	step
		.talk Freebot Socket##269575
		..accept Calming the Storm##7771 |goto 2451,-4788,-774
	step
		.' Run into Freebot Miners to free them
		.' Rescue cycloned Freebot Miners |q Calming the Storm##7771/2 |goto Wilderrun 2401,-4855,-772
	step
		.' _Go across_ the first bridge |goto Wilderrun 2509,-5022,-764
		.' _Cross the bridges_ to the Deepfall Spires |q The Path of Destruction##7767/2 |goto Wilderrun 2580,-5113,-767
		.' Head across the _second bridge_ |goto 2595,-5100,-767
		.' Walk _across this bridge_ |goto 2685,-4979,-774
		.' _Go down the path_ and across the bridge |goto 2712,-4816,-774
		.' _Walk up the pile of bones_ and jump into the Primal Air Anomaly |goto 2802,-4997,-798
		.' Collect a Heart of Air from the Primal Air Anomaly |q Heartbreaker##7770/3 |goto 2793,-4992,-791
	step
		.' Around this area and along the previous bridges:
		.kill Restless Echo##608711+
		.' Kill Air Elementals |q Calming the Storm##7771/1 |goto 2730,-4887,-794
	step
		'Press _C_ to use your communicator:
		..turnin Calming the Storm##7771
	step
		.' Cross the _last bridge_ |goto 2861,-4948,-799
		.' Press _C_ to use your communicator
		..accept A Firm Foundation##7772 |goto 2961,-4840,-803
	step
		.' Scout the perimeter of Spirevale Landing |q The Path of Destruction##7767/1 |goto Wilderrun 2946,-4697,-796
	step
		'Press _C_ to use your communicator:
		..turnin The Path of Destruction##7767
		..accept Firestorm##7774
	step
		.kill 1 Pyrolos the Inferno##620314
		.' Collect a Heart of Fire from Pyrolos the Inferno |q Heartbreaker##7770/1 |goto 3055,-4644,-797
	step
		.kill Spirevale Inferno ##608944+
		.kill Spirevale Scorcher##609421+
		.kill Spirevale Firenova##608047+
		.' Defeat Fire Elementals |q Firestorm##7774/1 |goto 2986,-4621,-801
	step
		'Press _C_ to use your communicator:
		..turnin Firestorm##7774
	step
		.' _Follow the path_ back around |goto Wilderrun 2971,-4835,-803 < 10
		.' _Enter the cave_ |goto 3168,-5018,-803 < 10
		.' Press _C_ to use your communicator
		..accept Clamoring for Crimson Ore##7769
	step
		.kill 1 Stonelord Sklor##633417
		.' Collect a Heart of Earth from Stonelord Sklor |q Heartbreaker##7770/2 |goto Wilderrun 3457,-4702,-875
		.' Destroy Stonelord Sklor |q Clamoring for Crimson Ore##7769/2 |goto 3459,-4700,-875
	step
		.' All around this cave:
		.kill Crushstone Titan##616595+
		.kill Crushstone Behemoth##605348+
		.' Kill Rock Elementals |q A Firm Foundation##7772/1 |goto Wilderrun 3263,-4880,-849
		.click Crimson Ore##641415
		.' Collect Crimson Ore from Crushstone Titans |q Clamoring for Crimson Ore##7769/1 |goto 3265,-4864,-852
	step
		'Press _C_ to use your communicator:
		..turnin A Firm Foundation##7772
		..turnin Clamoring for Crimson Ore##7769
	step
		.' Cross the _first bridge_ |goto 2958,-4842,-803 < 10
		.' Go across the _second bridge_ |goto 2807,-4967,-799 < 10
		.' _Cross the last bridge_ |goto 2666,-4797,-768 < 10
		.talk Depot Agent Sakiro##266335
		..turnin Heartbreaker##7770 |goto Wilderrun 2463,-4797,-774
		..accept The Megadroids##7768 |goto 2463,-4797,-774
	step
		.' _Enter the cave_ |goto Wilderrun 2372,-5101,-749 < 10
		.' _Step into_ the teleporter |goto Wilderrun 2357,-5160,-767 < 10
		.' Enter Primal Kinesis Lab 9 |q The Megadroids##7768/1 |goto Wilderrun 3395,-5070,-1008
	step
		.' Go _through the door way_ |goto Wilderrun 3348,-4977,-1008 < 10
		.click Aerokinetic Regulator##276975
		.' Activate the Aerokinetic Regulator |q The Megadroids##7768/4 |goto Wilderrun 3256,-4991,-1017
		.click Pryokinetic Regulator##269475
		.' Activate the Pryokinetic Regulator |q The Megadroids##7768/3 |goto 3231,-4994,-1017
		.click Geokinetic Regulator##269473
		.' Activate the Geokinetic Regulator |q The Megadroids##7768/2 |goto 3231,-4962,-1017
	step
		.click Power Monitoring Station##267053
		.' Reactivate the Power Monitoring Station |q The Megadroids##7768/5 |goto 3181,-4960,-1017
		.click Megadroid Interface##271225
		.' Deactivate the Megadroid Interface |q The Megadroids##7768/6 |goto Wilderrun 3324,-4857,-1023
	step
		.' _Head back_ through the doorway |goto Wilderrun 3226,-4875,-1024 < 10
		.' _Step into the teleporter_ to leave the Primal Kinesis Lab |goto Wilderrun 3394,-5087,-1007
		.talk Depot Agent Sakiro##266335
		..turnin The Megadroids##7768 |goto Wilderrun 2463,-4796,-774
		..accept Crimson Ore Shipment##9468 |goto 2463,-4796,-774
]])