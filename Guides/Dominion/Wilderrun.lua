ZGV:RegisterGuide("Dominion\\Wilderrun (35-41)",
	{
	faction="Dominion",
	startlevel=35,
	endlevel=41,
	nextguide="Dominion\\Malgrave (41-46)",
	image="ZygorUIGuides:Wilderrun", 
	description="Wilderrun is a dense jungle zone infused with primal life energy, and home to the legendary Everpool. It is best suited for characters level 35-41. "
	},
	[[
	step
		.click Fort Vigilance Taxi Kiosk##271171
		.' Get the _Fort Vigilance_ taxi point |goto Wilderrun 1120,-2010,-713
		|confirm |q 8852
	step
		.talk Toric Antevian##272962
		..turnin Journey to Wilderrun##8852 |goto Wilderrun 1269,-2027,-718
		..accept Trials of the Radiant Legion##6400 |goto 1269,-2027,-718
		..accept Relay Race##6268 |goto 1269,-2027,-718
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Fort Vigilance_ as your Recall point |goto Wilderrun 1262,-2067,-722
		|confirm |q 6400
	step
		.talk Vigilant Priest Aelius##272866
		..accept Trial of Devotion##6342 |goto Wilderrun 1265,-1916,-722
	step
		.click Statue of Korol the Devout##283094
		.' Meditate at the Statue of Korol the Devout |q Trial of Devotion##6342/1 |goto 1260,-1912,-722
		.' Listen to the Litany of Korol |q Trial of Devotion##6342/2 |goto Wilderrun 1264,-1910,-724
	step
		.talk Vigilant Priest Aelius##272866
		..turnin Trial of Devotion##6342 |goto Wilderrun 1265,-1916,-722
		.' Complete the Trial of Devotion |q Trials of the Radiant Legion##6400/4 |goto 1294,-1892,-724
	step
		.talk Vigilant Priest Gallus##272861
		..accept Trial of Justice##6343 |goto Wilderrun 1326,-1852,-721
	step
		.talk Engineer Wewt##283063
		.' Interrogate Engineer Wewt |q Trial of Justice##6343/1 |goto 1332,-1859,-721
	step
		.click Judgment Panel##272854
		.' Choose _Yes_, you deem this appropriate for his crime.
		.' Use the Judgment Panel |q Trial of Justice##6343/2 |goto Wilderrun 1335,-1855,-721
	step
		.talk Acolyte Renish##283066
		.' Interrogate Acolyte Renish |q Trial of Justice##6343/3 |goto Wilderrun 1329,-1857,-721
	step
		.click Judgment Panel##283059
		.' Choose _Yes_, this sounds reasonable.
		.' Use the Judgment Panel |q Trial of Justice##6343/4 |goto 1333,-1853,-721
	step
		.talk Doctor Salios##283065
		.' Interrogate Doctor Salios |q Trial of Justice##6343/5 |goto Wilderrun 1327,-1855,-721
	step
		.click Judgment Panel##272852
		.' Choose _No_, do not arrange her public execution.
		.' Use the Judgment Panel |q Trial of Justice##6343/6 |goto 1332,-1851,-721
	step
		.talk Vigilant Priest Gallus##272861
		..turnin Trial of Justice##6343 |goto 1328,-1851,-721
	step
		.talk Vigilant Priest Vicina##272871
		..accept Trial of Strength##6340 |goto 1301,-1832,-725
	step
		.click Radiant Ceremonial Sword##283116
		.' Stand inside the _yellow circle_ and fight the mobs that spawn
		.' Survive the Trial of Strength |q Trial of Strength##6340/1 |goto 1288,-1812,-724
	step
		.talk Vigilant Priest Vicina##272871
		..turnin Trial of Strength##6340 |goto Wilderrun 1301,-1832,-725
	step
		.talk Vigilant Priest Decimus##272879
		..accept Trial of Courage##6339 |goto Wilderrun 1333,-1943,-725
	step
		.click Dominion Holotable##272880
		.' Activate the Dominion Holotable |q Trial of Courage##6339/1 |goto 1330,-1942,-725
		.' Listen to Varonia Cazalon |q Trial of Courage##6339/2 |goto 1333,-1941,-725
	step
		'Drink the potions in the order below:
		.click Brew of Apathy##272876
		.click Mixture of Darkness##272875
		.click Potion of Bewilderment##272891
		.' Drink the right poison to prove your courage |q Trial of Courage##6339/3 |goto Wilderrun 1329,-1941,-725
	step
		.talk Vigilant Priest Decimus##272879
		..turnin Trial of Courage##6339 |goto 1333,-1943,-725
	step
		.talk Vigilant Priest Vatha##272868
		..accept Trial of Purity##6341 |goto 1416,-2031,-724
	step
		.click Communications Relay Radiant##272958
		.' Repair Communications Relay Radiant |q Relay Race##6268/1 |goto Wilderrun 1397,-1948,-725
	step
		.kill 1 Warpwood Rootgrabber##2510660+
		.kill 1 Warpwood Strangleroot##271228+
		.' Collect Living Warpwood from Warpwood stumpkins |q Trial of Purity##6341/1 |goto 1383,-2041,-724
	step
		.click Flames of the Righteous##272867
		.' Ignite the Flames of the Righteous |q Trial of Purity##6341/2 |goto Wilderrun 1411,-2035,-723
		.' Stand in the Flames of the Righteous |q Trial of Purity##6341/3 |goto Wilderrun 1411,-2035,-723 |tip Let your health drop all the way, you won't actually die.
	step
		.talk Vigilant Priest Vatha##272868
		..turnin Trial of Purity##6341 |goto Wilderrun 1415,-2031,-724
	step
		.talk Field Medic Lutton##272860
		..accept Makeshift Medic##8841 |goto Wilderrun 1349,-2099,-723
	step
		.click Medical Station##272898
		.' Pick up a Medical Kit from the Medical Station |q Makeshift Medic##8841/1 |goto 1348,-2107,-723
	step
		.click Wounded Researcher##2495448
		.' Heal Wounded Researchers with the Medical Kit |q Makeshift Medic##8841/2 |goto 1345,-2101,-723
	step
		.click Pixpox Antibodies##283225
		.' Pick up the bottle of Pixpox Antibodies |q Makeshift Medic##8841/3 |goto Wilderrun 1350,-2096,-723
	step
		.click Plagued Researcher##2400299
		.' Inject Plagued Researchers with Pixpox Antibodies |q Makeshift Medic##8841/4 |goto 1345,-2093,-723
	step
		.talk Chief Researcher Hawthorne##272886
		..turnin Makeshift Medic##8841 |goto Wilderrun 1291,-2168,-718
	step
		.talk Vigilant Priest Sabina##272851
		..accept Trial of Knowledge##6344 |goto 1223,-2115,-717
	step
		.click 1 Vigilant Scribe Pomponius##272850+
		.' Complete the Trial of Knowledge |q Trial of Knowledge##6344/1 |goto 1217,-2118,-717
	step
		.talk Vigilant Scribe Genucio##272848
		..turnin Trial of Knowledge##6344 |goto Wilderrun 1222,-2116,-717
	step
		'Press _C_ to open your Communicator:
		..turnin Trials of the Radiant Legion##6400
	step
		.click Communications Relay Courage##272957
		.' Repair Communications Relay Courage |q Relay Race##6268/2 |goto Wilderrun 1334,-2149,-722
	step
		.talk Kevo##283355
		..accept Lost Lady Zin##6270 |goto Wilderrun 1330,-2177,-724
	step
		.click Communications Relay Righteous##272960
		.' Repair Communications Relay Righteous |q Relay Race##6268/3 |goto 1442,-2330,-733
	step
		.click Turned Dirtpile##272955
		.' Search for clues left by Artemis Zin |q Lost Lady Zin##6270/1 |goto Wilderrun 1336,-2373,-744
	step
		.click Airshroom##273395
		..accept Gotta Bounce##8027 |goto Wilderrun 1237,-2441,-760
	step
		.click Mysterious Stone Head##272907
		..accept Wildbranch Shrine##8029 |goto Wilderrun 1215,-2406,-754
	step
		'Stand in the _yellow circle_ and fight the mobs that spawn
		.kill 1 Wildbranch Rageclaw##2803003
		.' Defend against Wildbranch razortails |q Wildbranch Shrine##8029/1 |goto 1224,-2404,-754
	step
		.' Press _C_ to open your Communicator:
		..turnin Wildbranch Shrine##8029
	step
		'_Jump up_ this angled rock |goto Wilderrun 1244,-2337,-738 < 10
		.' Make your way _up the sloped rocks_ |goto 1216,-2320,-719 < 10
		.click Communications Relay Wisdom##272959
		.' Repair Communications Relay Wisdom |q Relay Race##6268/4 |goto 1262,-2314,-705
	step
		'Press _C_ to open your Communicator:
		..turnin Relay Race##6268
		..accept Cracking the Code##6269
	step
		.' Locate the Communications Relay |q Cracking the Code##6269/1 |goto 1224,-2437,-757
	step
		'_Jump on_ the Mushroom |q Gotta Bounce##8027/1 |goto 1240,-2441,-761
		.' Use the Mushroom to _jump up_ the cliff |goto 1240,-2441,-761 < 5
		.click Communications Relay##272956
		.' Hack the Communications Relay |q Cracking the Code##6269/2 |goto 1203,-2457,-731
	step
		'Press _C_ to open your Communicator:
		..turnin Gotta Bounce##8027
		..turnin Cracking the Code##6269
		..accept Connect the Dots##8112
	step
		'Use the Mushroom to _jump up_ the cliff |goto Wilderrun 1304,-2543,-779 < 5
		.click Artemis Zin's Explorer Beacon##2737378
		.' Access Artemis Zin's Explorer Beacon |q Lost Lady Zin##6270/2 |goto Wilderrun 1280,-2493,-753
	step
		.' Find Artemis Zin |q Lost Lady Zin##6270/3 |goto Wilderrun 1371,-2606,-785
	step
		.talk Artemis Zin##2704427
		..turnin Lost Lady Zin##6270 |goto 1378,-2629,-775
		..accept Artemis Pinned##6271 |goto 1378,-2629,-775
	step
		.click Artemis Zin's Datachron##272947
		.' Stay in the _Yellow Circle_ and fight the mobs that spawn
		.' Recover Artemis Zin's Datachron |q Artemis Pinned##6271/1 |goto Wilderrun 1364,-2633,-786
	step
		.click Comm Relay Alpha##272914
		.' Hack Comm Relay Alpha |q Connect the Dots##8112/1 |goto 1339,-2601,-783
	step
		.talk Artemis Zin##283343
		..turnin Artemis Pinned##6271 |goto Wilderrun 1342,-2501,-777
		..accept Everpool Escapade##6372 |goto Wilderrun 1342,-2501,-777
		..accept Pumera Tamers##6374 |goto Wilderrun 1342,-2501,-777
	step
		.click Torine Pumera Relic##273426
		.' Locate and inspect the Torine Pumera Relic |q Pumera Tamers##6374/1 |goto 1464,-2518,-784
	step
		.click Comm Relay Beta##283327
		.' Hack Comm Relay Beta |q Connect the Dots##8112/2 |goto Wilderrun 1519,-2653,-800
	step
		'Follow the grenn _path up_ to this large rock |goto 1504,-2578,-789 < 10
		.click Artemis Zin##495027
		'Press _T_ to:
		.' Take Artemis Zin's photograph |q Everpool Escapade##6372/1 |goto 1576,-2620,-768
	step
		'Keep along the _dirt path_ |goto Wilderrun 1570,-2538,-773
		'Press _C_ to open your Communicator:
		..accept Artifacts of the Sisterhood##6395 |goto Wilderrun 1642,-2386,-780
	step
		.talk Artemis Zin##505672
		.' Meet Artemis Zin in Giant's Wall |q Everpool Escapade##6372/2 |goto Wilderrun 1653,-2445,-780
	step
		.kill 1 Torine Deathbringer##2813424
		.kill 1 Torine Lifesealer##2805178
		.kill 1 Torine Swordmaiden##2623521
		.' Gather Torine Artifacts from Torine sisters |q Artifacts of the Sisterhood##6395/1 |goto 1685,-2419,-780
		.' Kill Torine sisters and Torine pumera |q Pumera Tamers##6374/2 |goto 1519,-2433,-780
	step
		'Press _C_ to open your Communicator:
		..turnin Pumera Tamers##6374
		..turnin Artifacts of the Sisterhood##6395
	step
		'_Leave_ the hostile area through this gate |goto Wilderrun 1973,-2401,-784 < 20
		.click Comm Relay Gamma##272952
		.' Hack Comm Relay Gamma |q Connect the Dots##8112/3 |goto 1861,-2663,-813
	step
		'_Leave_ the hostile area in this direction |goto 1628,-2382,-780 < 20
		.' _Jump up_ and over this green root |goto 1608,-2511,-765 < 10
		.talk Artemis Zin##505672
		|tip She is far up the light green tree branch.
		.' Press _T_ to:
		.' Take Artemis Zin's photograph |q Everpool Escapade##6372/3 |goto 1746,-2548,-728
	step
		.click Comm Relay Delta##272951
		.' Hack Comm Relay Delta |q Connect the Dots##8112/4 |goto Wilderrun 2224,-2425,-783
	step
		.click Fallen Plank##270955
		..accept Hidden Heights##6555 |goto Wilderrun 2314,-2440,-774
	step
		'_Jump up_ the orange mushroom towards the large tree |goto 2311,-2481,-752 < 15
		.' _Jump over_ to the mushroom halfway up the tree |goto 2285,-2482,-738 < 20
		.' Find a way up to Hunter's Hideaway |q Hidden Heights##6555/1 |goto 2262,-2471,-692
	step
		'Take the _Elevator_ further up the tree |goto Wilderrun 2244,-2468,-693 < 10
		.talk Maggs the Maimer##280099
		..turnin Hidden Heights##6555 |goto 2241,-2496,-659
		..accept The Untamed Wilds##6356 |goto Wilderrun 2241,-2495,-659
	step
		.' Carefully _jump down_ the tree and go to this spot
		'Press _C_ to open your Communicator:
		..accept Prowler Pelts##6358 |goto Wilderrun 2191,-2489,-801
	step
		.kill 1 Grizzlepaw Feralstalker##888980
		'Press _C_ to open your Communicator:
		..accept Grizzled Giants##6359 |goto Wilderrun 2163,-2390,-779
	step
		.' _Proceed_ here through the forest |goto Wilderrun 2134,-2305,-770 < 10
		.kill 1 Torine Fastpaw##634821+
		.kill 1 Torine Longclaw##679878+
		.kill 1 Untamed Pouncer##652087+
		.' Collect Pelts from Feralclaw and Torine pumera |q Prowler Pelts##6358/1 |goto Wilderrun 1990,-2232,-779
	step
		'Press _C_ to open your Communicator:
		..turnin Prowler Pelts##6358
	step
		'Press _C_ to open your Communicator:
		..accept Snoglugs on Logs##6357 |goto Wilderrun 2182,-2490,-802
	step
		.kill 1 Grizzlepaw Feralstalker##923566+
		.kill 1 Grizzlepaw Forager##763334+ |tip These are scattered all around the area, some searching may be required.
		.' Collect Girrok Carcasses |q Grizzled Giants##6359/1 |goto Wilderrun 1801,-2789,-800
		.kill 1 Warpwood Splintertooth##872174+
		.kill 1 Wildstrike Talonripper##935762+
		.' Kill Aggressive Animals |q The Untamed Wilds##6356/1 |goto Wilderrun 2182,-2490,-802
	step
		'Press _C_ to open your Communicator:
		..turnin Grizzled Giants##6359
		..turnin The Untamed Wilds##6356
	step
		.click Comm Relay Epsilon##272950
		.' Hack Comm Relay Epsilon |q Connect the Dots##8112/5 |goto 2363,-2538,-782
	step
		'Press _C_ to open your Communicator:
		..turnin Connect the Dots##8112
		..accept Ancient Crash Site##6233
		..accept Feathers of Fury##6360 |goto 2368,-2526,-781
	step
		.click Cassian Commonwealth Emblem##272955
		.' Search for clues around the Crash Site |q Ancient Crash Site##6233/1 |count 33 |goto Wilderrun 2587,-2646,-771
		.click Tattered Banner##272956
		.' Search for clues around the Crash Site |q Ancient Crash Site##6233/1 |count 66 |goto Wilderrun 2608,-2689,-766
	step
		.click Wildfall Corpse##271070
		..accept Finishing the Job##6408 |goto Wilderrun 2583,-2685,-768
	step
		.click Intact Data Cache##283335
		.' Search for clues around the Crash Site |q Ancient Crash Site##6233/1 |goto 2533,-2642,-765
	step
		'Press _C_ to open your Communicator:
		..turnin Ancient Crash Site##6233
		..accept Uncovering the Past##6234
	step
		.kill 1 Tanglecrash Clipclaw##1958707
		'Press _C_ to open your Communicator:
		..accept Raucous Razortail##6361 |goto 2533,-2642,-765
	step
		.kill 1 Wildfall Warrior##1898718+
		.kill 1 Wildfall Swordsman##1974234+
		.kill 1 Wildfall Cleric##1974123+
		.' Collect Encryption Key Bits from Wildfall Pell |q Uncovering the Past##6234/1 |goto Wilderrun 2500,-2767,-765
		.kill 1 Wildfall Data Construct##1928220+
		.' Kill Wildfall Bots |q Uncovering the Past##6234/2 |goto 2500,-2767,-765
	step
		'Press _C_ to open your Communicator:
		..turnin Uncovering the Past##6234
		..accept Those Left Behind##6235
	step
		.click Holo Terminal##283343
		.' Access the crew's Holo Terminal |q Those Left Behind##6235/3 |goto Wilderrun 2501,-2815,-761
		.click Holo Terminal##283343
		.' Access the captain's Holo Terminal |q Those Left Behind##6235/1 |goto 2449,-2871,-765
		.click Holo Terminal##283343
		.' Access the swordmaiden's Holo Terminal |q Those Left Behind##6235/2 |goto 2371,-2823,-761
	step
		'Press _C_ to open your Communicator:
		..turnin Those Left Behind##6235
		..accept Servants of the Torine##6236
	step
		.click Primal Life Essence##848391
		.' Collect Primal Life Essence |q Servants of the Torine##6236/1 |goto Wilderrun 2370,-2786,-762
	step
		'_Go through_ the wooden tunnel |goto Wilderrun 2558,-2870,-758 < 10
		.click Ritual Statue##273369
		.' Summon High Priest Life-Bearer |q Servants of the Torine##6236/2 |goto 2622,-2910,-762
	step
		.talk High Priest Life-Bearer##273438
		..turnin Servants of the Torine##6236 |goto Wilderrun 2648,-2919,-762
		..accept The Sisters of Toria##6237 |goto Wilderrun 2648,-2919,-762
	step
		.kill 1 Tanglecrash Curltail##834911+
		.kill 1 Tanglecrash Fastclaw##771950+
		.' Collect Razortail Heads from Wildbranch and Tanglecrash razortails |q Raucous Razortail##6361/1 |goto 2479,-2544,-775
	step
		'Press _C_ to open your Communicator:
		..turnin Raucous Razortail##6361
	step
		.click Torine Swordforge##270990
		..accept Sacred Swordforge##6542 |goto 2203,-2892,-741
	step
		.click Torine Forgeblade##875069
		.' Collect Torine Forgeblades |q Sacred Swordforge##6542/1 |goto 2204,-2891,-741
	step
		.click Torine Swordforge##270990
		..turnin Sacred Swordforge##6542 |goto Wilderrun 2203,-2892,-741
	step
		.kill 1 Tentacular Aberration##908200+
		.collect 1 Primal Energy Residue##22025
		.' Use the Primal Energy Residue in your inventory |use Primal Energy Residue##22025
		..accept A Strange Sign of Life##6553 |goto Wilderrun 2139,-2592,-800
	step
		.' Meet Artemis Zin in Wilderrun Chase |q Everpool Escapade##6372/4 |goto Wilderrun 2034,-2800,-828
		.click Artemis Zin##763005
		.' Press _T_ to:
		.' Take Artemis Zin's photograph |q Everpool Escapade##6372/5 |goto 2034,-2800,-828
	step
		'Press _C_ to open your Communicator:
		..turnin Everpool Escapade##6372
		..accept Enemy at the Gates##6373
	step
		.click Everglow Mushroom##271037
		..accept Everglow Mushrooms##6573 |goto 2030,-2847,-809
	step
		.kill 1 Mosswood Rotspewer##903142+
		.kill 1 Mosswood Slimer##808928+
		.kill 1 Mosswood Lurker##1695688+
		.' Kill Mosswood Snoglugs |q Snoglugs on Logs##6357/1 |goto Wilderrun 2091,-2696,-821
		.click Everglow Mushroom##901662
		.' Collect Everglow Mushrooms |q Everglow Mushrooms##6573/1 |goto Wilderrun 1991,-2681,-817 |tip You can find these along the river here.
	step
		'Press _C_ to open your Communicator:
		..turnin Snoglugs on Logs##6357
		..turnin Everglow Mushrooms##6573
	step
		.kill 1 Wildstrike Talonripper##909727+
		.kill 1 Wildstrike Raptor##1775941+
		.' Collect Wildstrike Raptor Feathers from Wildstrike ravenok |q Feathers of Fury##6360/1 |goto Wilderrun 2066,-2661,-812
	step
		'Press _C_ to open your Communicator:
		..turnin Feathers of Fury##6360
		..accept The Big Game##6362
	step
		.kill 1 Eviscerator##975570 |q The Big Game##6362/2 |goto Wilderrun 2294,-2586,-794
		.collect 1 Eviscerator's Skull##15999
		.' Use Eviscerator's Skull in your inventory |use Eviscerator's Skull##15999
		..accept Skull of the Eviscerator##6366 |goto 4023,-5248,-722
	step
		.kill 1 Barhun##973527 |q The Big Game##6362/1 |goto Wilderrun 2221,-2368,-774
		.collect 1 Barhun's Head##15998
		.' Use Barhun's Head in your inventory |use Barhun's Head##15998
		..accept Barhun's Head##6364 |goto Wilderrun 2220,-2385,-777
	step
		'_Jump up_ the orange mushroom towards the large tree |goto Wilderrun 2311,-2481,-752 < 15
		.' _Jump over_ to the mushroom halfway up the tree |goto 2285,-2482,-738 < 20
		'Take the _Elevator_ further up the tree |goto Wilderrun 2244,-2468,-693 < 10
		.talk Maggs the Maimer##280099
		..turnin The Big Game##6362 |goto Wilderrun 2241,-2496,-659
		..turnin Barhun's Head##6364 |goto Wilderrun 2241,-2496,-659
		..turnin Skull of the Eviscerator##6366 |goto Wilderrun 2241,-2496,-659
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to _Fort Vigilance_ - Transmat |goto Wilderrun 1262,-2067,-722 < 100 |c |noway |q 6553
	step
		.talk Bozango Grazz##272946
		..turnin A Strange Sign of Life##6553 |goto Wilderrun 1327,-2075,-723
	step
		.talk Radiant Archivist Vestus##271059
		..accept Wildfall Surveys##6393 |goto 1278,-2035,-718
	step
		'Press _C_ to open your Communicator: |tip You will need to be level 37 in order to accept this quest.
		..accept Straining to be Heard##8873 |goto 1278,-2035,-718
	step
		'Leave the Fort |goto 1366,-2194,-723 < 20
		.' Follow the stream through Everpool Approach |q Enemy at the Gates##6373/1 |goto 2045,-2989,-782
	step
		.' Make your way to the Everpool Sanctum |q Enemy at the Gates##6373/2 |goto 2089,-3234,-725
	step
		.talk Artemis Zin##272976
		.' Speak to Artemis Zin |q Enemy at the Gates##6373/3 |goto 2179,-3466,-717
	step
		.click Banner of Trials##283897
		.' Challenge and Defeat Deathbringer Kala |q Enemy at the Gates##6373/4 |goto Wilderrun 2361,-3178,-725
	step
		.kill 1 Deathbringer Kala##979972
		.' Listen to Deathbringer Kala |q Enemy at the Gates##6373/5 |goto 2353,-3173,-725
	step
		.click Deathbringer's Sword##270991
		..accept The Deathbringer's Sword##6424 |goto 2353,-3173,-725
	step
		.click Eldan Focal Monitor##280045
		..accept The Focus of Life##6176 |goto Wilderrun 2325,-3208,-725
	step
		.click Eldan Holostation##271057
		.' Activate the Eldan Holostation |q The Focus of Life##6176/1 |goto 2328,-3197,-725
	step
		.click Eldan Focal Monitor##280045
		..turnin The Focus of Life##6176 |goto 2325,-3205,-725
	step
		.click Artemis Zin##272975
		..turnin Enemy at the Gates##6373 |goto 2183,-3414,-717
	step
		.talk Vesta the Tamer##271145
		..turnin The Deathbringer's Sword##6424 |goto 2425,-3358,-730
		..accept Taming the Wilds##6368 |goto 2425,-3358,-730
	step
		.talk Ceris the Lifecaller##280170
		..accept Lifecaller Initiation##6369 |goto 2444,-3360,-730
	step
		.' Locate Bladesworn Caverns |q Lifecaller Initiation##6369/1 |goto 1900,-3294,-726
	step
		.click Bladesworn Forge##279953
		..accept Forging the Lifecaller Staff##6523 |goto 1752,-3391,-760
	step
		.click Lifecaller Headpiece##1091908
		.' Retrieve the Lifecaller Headpiece |q Forging the Lifecaller Staff##6523/1 |goto 1806,-3471,-774
	step
		'Follow the path _further down_ |goto 1805,-3440,-780 < 10
		.click Lifecaller Haft##1101839
		.' Retrieve the Lifecaller Haft |q Forging the Lifecaller Staff##6523/2 |goto 1678,-3522,-815
	step
		'_Go back up_ the cave path |goto Wilderrun 1695,-3416,-802 < 10
		.click Bladesworn Forge##279894
		..turnin Forging the Lifecaller Staff##6523 |goto 1751,-3390,-760
	step
		'Head toward the _cave exit_ |goto Wilderrun 1757,-3318,-760 < 10
		.' _Exit_ the cave |goto 1902,-3295,-726 < 10
		'_Go through_ the large walls |goto Wilderrun 2495,-3279,-742 < 20
		.click Geomapping Unit##4687104
		.' Gather Wildfall Geomapping Data from Geomapping Units |q Wildfall Surveys##6393/1 |goto 2447,-2854,-766
	step
		'Press _C_ to open your Communicator:
		..turnin Wildfall Surveys##6393
	step
		'_Jump_ on the mushroom to get to the ship wreckage |goto Wilderrun 2592,-2685,-768 < 10
		.' _Jump_ to the mushroom on the engine part |goto 2628,-2711,-728 < 10
		.' _Continue jumping_ to the mushroom on the green tree branch |goto 2694,-2732,-722 < 20
		.' _Jump up_ and climb into the main part of the ship |goto 2728,-2776,-677 < 10
		.' Use Airshrooms to reach the Ship Wreckage |q Finishing the Job##6408/1 |goto 2705,-2806,-665
		.click Surveillance Terminal##271025
		.' Gain access to the Surveillance Terminal |q Finishing the Job##6408/2 |goto 2705,-2806,-665
	step
		'Press _C_ to open your Communicator:
		..turnin Finishing the Job##6408
	step
		.' Seek out Freya the Handmaiden |q The Sisters of Toria##6237/1 |goto Wilderrun 2823,-2816,-759
		.kill 1 Freya the Handmaiden##272934
		.' Defeat Freya the Handmaiden |q The Sisters of Toria##6237/2 |goto Wilderrun 2804,-2808,-764
	step
		'Press _C_ to open your Communicator:
		..turnin The Sisters of Toria##6237
	step
		'_Take the road_ and go left here |goto Wilderrun 2708,-3097,-780 < 20
		.click Feralclaw Cub##2011751
		.' Feed and acquire Feralclaw Cubs |q Taming the Wilds##6368/1 |goto Wilderrun 2576,-3080,-785
	step
		.' Continue following the road _up the cliffs_ |goto 2436,-3099,-780 < 20
		.' _Go up the stairs_ into the Sanctum |goto 2490,-3294,-734 < 20
		.talk Ceris the Lifecaller##280109
		..turnin Lifecaller Initiation##6369 |goto 2443,-3358,-730
	step
		.' Return to Vesta the Tamer |q Taming the Wilds##6368/2 |goto 2425,-3359,-730
	step
		.talk Vesta the Tamer##271108
		..turnin Taming the Wilds##6368 |goto 2425,-3359,-730
	step
		.talk Hella the Deathbringer##280103
		..accept Blademother's Refuge##6371 |goto Wilderrun 2384,-3394,-730
	step
		'_Go through_ the walls of the Sanctum |goto 2305,-3303,-725 < 20
		.' _Go down_ the stairs and follow the road |goto 2089,-3235,-725 < 20
		.' _Continue_ along the path |goto 1769,-2927,-801 < 20
		.' _Enter_ the Maidens Pool area |goto 1555,-2934,-794 < 20
		.' Follow the green _passage up_ |goto 1380,-2893,-785 < 20
		.talk Deathbringer Sybil##270913
		.' Speak with Deathbringer Sybil |q Blademother's Refuge##6371/1 |goto 1123,-3159,-748
	step
		.click Torine Trialstone##279791
		.' Defend the yellow circle from the mobs
		.' Defeat Tresayne's best Torine warriors |q Blademother's Refuge##6371/2 |goto Wilderrun 1257,-3156,-754
	step
		'_Exit_ the Blademother's Refuge |goto 1424,-3075,-749 < 20
		.' _Carefully jump down_ the cliffs and continue on the path |goto 1598,-2874,-809 < 20
		.' _Follow the road_ up to Everpool Sanctum |goto 1849,-2896,-797 < 20
		.' _Go up the stairs_ and into the city walls |goto Wilderrun 2091,-3251,-725 < 20
		.talk Tresayne Toria##270916
		..turnin Blademother's Refuge##6371 |goto 2188,-3442,-709
	step
		.talk Artemis Zin##272921
		..accept Well That Can't Be Good##9444 |goto Wilderrun 2185,-3418,-717
	step
		'_Head out_ the Sanctum's stairs |goto Wilderrun 2310,-3308,-726 < 20
		.talk Far-Trader Voshana##270917
		..accept Helping the Haven##7977 |goto Wilderrun 2427,-3327,-730
	step
		.' _Continue through_ the Sanctum's gates |goto Wilderrun 2541,-3427,-734 < 20
		.' _Follow the road_ |goto 2740,-3569,-772 < 10
		.click Marshal's Haven Taxi Kiosk##266771
		.' Get the _taxi_ flight point |goto Wilderrun 2708,-3913,-787
		|confirm |q 9444
	step
		.talk Adventurer Kiyai##266317
		..turnin Helping the Haven##7977 |goto 2682,-3870,-747
		..accept The High Price of Freedom##7900 |goto 2682,-3870,-747
		..accept Noise Pollution##7901 |goto 2682,-3870,-747
	step
		.kill 1 Ulgar Soulslave##5057794+
		.kill 1 Ulgar Slavebreaker##2057803+
		.' Kill Ulgar Soulslaves |q The High Price of Freedom##7900/1 |goto Wilderrun 2864,-4065,-803
		.kill 1 Kel Ulgar War Drum##4807150+
		.' Destroy Kel Ulgar War Drums |q Noise Pollution##7901/1 |goto 2864,-4065,-803
	step
		'Press _C_ to open your Communicator:
		..turnin Noise Pollution##7901
		..turnin The High Price of Freedom##7900
		..accept Destruction of Massive Weapons##7902
		..accept Is That All You've Got?##7903
	step
		.talk Shinequester Andro##266302
		..accept Firebomb the Forges##7911 |goto Wilderrun 3125,-4259,-803
		.talk Shinequester Meechi##266309
		..accept Free Range Pumera##7910 |goto 3126,-4257,-803
	step
		.click Osun Chain##269464 |tip These are found chained up against the walls.
		.' Destroy Osun Chains to free captive pumera |q Free Range Pumera##7910/1 |goto 3139,-4232,-803
	step
		'Press _C_ to open your Communicator:
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
		'Press _C_ to open your Communicator:
		..turnin Blunt the Weapon Maker##7904
	step
		.kill 1 Ulgar Bruiser##4553420+
		.kill 1 Ulgar Skullcrusher##4512841+
		.' Kill Ulgar Skullcrushers and Ulgar Bruisers |q Is That All You've Got?##7903/1 |goto Wilderrun 3090,-4162,-803
	step
		'Press _C_ to open your Communicator:
		..turnin Is That All You've Got?##7903
	step
		.' Go up the huge staircase |goto 3125,-4163,-803 < 10
		.' Follow this platform around |goto 3415,-4195,-656 < 10
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
		.kill Ulgar Slavemaker##416754
		.kill Ulgar Overlord##421094
		.' Kill Ulgar Slavemakers and Ulgar Overlords |q Punch 'em in the Slavemaker##7906/1 |goto 3348,-4234,-661
		.click Kel Ulgar Cage##270214
		.' Free Captives from Kel Ulgar Cages |q Unchained##7905/2 |goto 3316,-4241,-661
	step
		.' Jump off here to the platform below |goto 3256,-4183,-656 < 10
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
		.' Kill Drognar the Pulverizer |q The Pulverizer ##7909/1 |goto 3521,-4161,-563
	step
		'Press _C_ to use your communicator:
		..accept Sample the Brew##7913 |goto 3516,-4204,-566
	step
		.click Explorer Journal##269333
		..accept The Last Chapter##7915 |goto Wilderrun 3524,-4222,-573
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
		.click Darkwitch Totem##276086
		..accept Darkwitch Totem##9146 |goto Wilderrun 3558,-4162,-564
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
		.' Follow this path _atop the wall_ as you kill Tower Guards |goto 3447,-3971,-721
		.kill Ulgar Tower Guard##353491
		.kill Ulgar Tower Slavekeeper##353492
		.kill Ulgar Watchslave##353493
		.' Kill the Tower Guards |q All Along the Watchtowers##7912/1 |goto 3449,-3893,-726
	step
		'Press _C_ to use your communicator:
		..turnin All Along the Watchtowers##7912
	step
		.' _Go up_ the wooden ramp |goto Wilderrun 2723,-3905,-788
		.talk Adventurer Kiyai##266417
		..turnin The Pulverizer##7909 |goto 2683,-3869,-747
	step
		.talk Mondo Zax##266313
		..turnin Well That Can't Be Good##9444 |goto 2578,-4276,-776
		..accept Tainted Samples##7751 |goto 2578,-4276,-776
	step
		.talk Agent Osilor##266312
		..accept Down with Disease##7756 |goto Wilderrun 2584,-4304,-777
	step
		.talk Containment Specialist##293341
		.' Give flamethrowers to Containment Specialists |q Down with Disease##7756/1 |count 33 |goto 2476,-4321,-776
		.talk Containment Specialist##293333
		.' Give flamethrowers to Containment Specialists |q Down with Disease##7756/1 |count 66 |goto Wilderrun 2477,-4318,-776
		.talk Containment Specialist##293380
		.' Give flamethrowers to Containment Specialists |q Down with Disease##7756/1 |goto 2467,-4317,-776
	step
		.click Turret Location##269306
		.' Place turrets |q Down with Disease##7756/2 |goto Wilderrun 2460,-4363,-774
	step
		.click Corrupted Flora##4525668+
		.' Collect Corrupted Flora |q Tainted Samples##7751/2 |goto 2444,-4377,-775
		.kill 1 Corrupted Crusher##4962151+
		.kill 1 Corrupted Pouncer ##2158561+
		.kill 1 Corrupted Prowler##2151034+
		.kill 1 Corrupted Stalker##2155397+
		.' Collect Corrupted Flesh from corrupted creatures |q Tainted Samples##7751/1 |goto 2427,-4396,-775
		.' Kill Spore Pods |q Down with Disease##7756/3 |goto Wilderrun 2375,-4405,-779
		-- Spore Pod##4939374
	step
		'Press _C_ to open your Communicator:
		..turnin Down with Disease##7756
		..accept Recommended Doses##7757
		..turnin Tainted Samples##7751
		..accept Infection ##7750
	step
		.click Strain Infected Corpse##269979
		.' Release test Chompacabras near Strain Infected Corpses |q Infection ##7750/1 |goto Wilderrun 2280,-4370,-784
		.click Corrupted Prowler##6585168
		.click Corrupted Stalker##6065452
		.click Corrupted Buck##6303225
		.click Corrupted Crusher##6102238
		.' Press _T_ to use The Inquisitor against Strain-corrupted creatures |q Recommended Doses##7757/1 |goto Wilderrun 2280,-4370,-784
	step
		'Press _C_ to open your Communicator:
		..turnin Infection##7750
		..turnin Recommended Doses##7757
		..accept Field Study##7753
	step
		.click Genetic Analysis Probe##278494
		.' Activate and defend the Genetic Analysis Probe |q Field Study##7753/1 |goto Wilderrun 2176,-4441,-777
	step
		'Press _C_ to open your Communicator:
		..turnin Field Study##7753
		..accept Side Effects##7752
	step
		.click Field Journal Page##278476 |tip These are found on the ground around Anton's camp.
		.' Collect Researcher Anton's Field Journal Notes  |q Side Effects##7752/4 |goto Wilderrun 2091,-4319,-763
	step
		.kill 1 Researcher Anton##6544919
		.' Subdue Researcher Anton |q Side Effects##7752/1 |goto Wilderrun 2083,-4320,-763
		.' Hand over Researcher Anton to the containment specialist |q Side Effects##7752/2 |goto Wilderrun 2085,-4318,-763
	step
		.talk Mondo Zax##278469
		..turnin Side Effects##7752 |goto 2600,-4289,-777
		..accept Symptoms May Include##7754 |goto 2600,-4289,-777
	step
		.talk Researcher Greta##270015
		.' Speak with Researcher Greta |q Symptoms May Include##7754/1 |goto 2600,-4281,-777
		.click Molecular Reconstructor##270017
		.' Start the Molecular Reconstructor |q Symptoms May Include##7754/2 |goto 2602,-4286,-777
		.' Observe the Test |q Symptoms May Include##7754/3 |goto 2601,-4286,-777
		.click Mutagenic Deconstructor##278472
		.' Power the Mutagenic Deconstructor |q Symptoms May Include##7754/4 |goto Wilderrun 2605,-4291,-776
	step
		.talk Mondo Zax##278469
		..turnin Symptoms May Include##7754 |goto 2600,-4289,-777
	step
		.talk Agent Osilor##266312
		..accept Forest Dwellings##7978 |goto 2584,-4304,-777
	step
		.talk Deathbringer Ehel##266310
		..turnin Forest Dwellings##7978 |goto 2110,-4657,-742
		..accept Damage Assessment##7780 |goto 2110,-4657,-742
		..accept Encroaching Corruption##7782 |goto 2110,-4657,-742
	step
		.' Investigate the Great Forge |q Damage Assessment##7780/1 |goto 1884,-4407,-765
	step
		.kill 1 Corrupted Sister##6473420
		'Press _C_ to open your Communicator:
		..accept Beyond Redemption##7781 |goto 1884,-4407,-765
	step
		.click Cleansing Torch##269916
		.' Take the Cleansing Torch |q Encroaching Corruption##7782/1 |goto 1887,-4416,-765
	step
		.' Investigate the Western Residences |q Damage Assessment##7780/2 |goto Wilderrun 1931,-4296,-761
	step
		.click Surface Corruption##269901
		.' Press _T_ to use the Cleansing Torch on the Surface Corruption |q Encroaching Corruption##7782/2 |tip These are purple and orange piles of ooze laying on the ground in Sister's Watch and in the field to the west. |goto 1943,-4265,-761
	step
		'Press _C_ to open your Communicator:
		..turnin Encroaching Corruption##7782
	step
		.kill 1 Corrupted Sister##6663150+
		.kill 1 Corrupted Warblade##6402296+
		.kill 1 Corrupted Tamer##6670009+
		.kill 1 Corrupted Lifecaller##6790180+
		.' Kill Corrupted Torine |q Beyond Redemption##7781/1 |goto Wilderrun 1673,-4180,-757
	step
		'Press _C_ to use your communicator:
		..turnin Beyond Redemption##7781
	step
		.kill 1 Corrupted Slasher##512068
		.kill 1 Corrupted Padfoot##6940009
		..accept Corrupted Companions##7785 |goto Wilderrun 1821,-4170,-766
	step
		.kill Corrupted Padfoot##622189+
		.kill Corrupted Slasher##574528+
		.' Kill Corrupted Pumera |q Corrupted Companions##7785/1 |goto 1818,-4129,-766
	step
		'Press _C_ to use your communicator:
		..turnin Corrupted Companions##7785
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
		..turnin Temple Under Strain##7783
		..accept The Corrupting Influence##7784
	step
		.kill 1 Lifecaller Celes##674412
		.' Kill Lifecaller Celes |q The Corrupting Influence##7784/1 |goto 1611,-4152,-757
		.kill 1 Strain Corruptor##673974
		.' Kill the Strain Corruptor |q The Corrupting Influence##7784/2 |goto 1614,-4153,-757
		.collect 1 Deathbringer Ehel's Lost Amulet##41816
		.use Deathbringer Ehel's Lost Amulet##41816
		..accept Ehel's Lost Amulet##7786
	step
		.talk Deathbringer Ehel##269677
		..turnin The Corrupting Influence##7784 |goto 1948,-4206,-761
		..turnin Ehel's Lost Amulet##7786 |goto 1948,-4207,-761
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
		.' Visit the Shrine of Vengeance  |q In Her Footsteps##7789/2 |goto 1369,-4296,-704
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
		.' Go _up the stairs_ |goto 1283,-4216,-703 < 10
		.' Found all around this upper section of Vitara's Refuge:
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
		.' _Follow the stairs_ up |goto 959,-4220,-579 < 15
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
		.kill Duskfang Stalker##756083+, Duskfang Stalker##756244+, Duskfang Hunter##697967+, Duskfang Widow##765415+, Duskfang Recluse##776173+
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
		.' Jump through Eldan Energy Shards |q Tresayne's Late Arrival##7759/2 |tip These are small green orbs floating above the water here. |goto 1427,-3459,-686
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
		.' Seize the Cerebral Core from the Hybridization Complex Gatekeeper |q The Gatekeeper##7760/1 |goto 1650,-3608,-658
	step
		.click Secondary Complex Charger##269672
		.' Insert the Cerebral Core into the Secondary Complex Charger |q The Gatekeeper##7760/2 |goto 1677,-3660,-657
	step
		.click Hybridization Complex Access Node##269675
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 25 |goto Wilderrun 1543,-3616,-673
		.click Hybridization Complex Access Node##277472
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 50 |goto 1462,-3640,-675
		.click Hybridization Complex Access Node##269676
		.' Repair the Hybridization Complex Access Nodes |q The Gatekeeper##7760/3 |count 75 |goto 1477,-3698,-674
		.click Hybridization Complex Access Node##269674
		.' Repair the Hybridization Complex Access Nodes |q aThe Gatekeeper##7760/3 |goto 1549,-3687,-675
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
		.' _Go through_ the doorway |goto Wilderrun 1669,-3731,-994
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
		.' _Step into_ the teleporter to leave the Luminai Hybridization Complex |goto 1639,-3632,-990
		.talk Bellona the Swordsister##266329
		..accept Deep in the Jungle##7764 |goto Wilderrun 1146,-3766,-703
	step
		.' Search Sanctuary Hill |q Deep in the Jungle##7764/1 |goto Wilderrun 660,-3787,-560
		.' Search the Silent Clearing |q Deep in the Jungle##7764/2 |goto 924,-3676,-647
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
		.click Freebot Miner##565082
		.' Run into Freebot Miners to free them
		.' Rescue cycloned Freebot Miners |q Calming the Storm##7771/2 |goto Wilderrun 2401,-4855,-772
	step
		.' _Go across_ the first bridge |goto 2509,-5022,-764 < 10
		.' _Cross the bridges_ to the Deepfall Spires |q The Path of Destruction##7767/2 |goto Wilderrun 2580,-5113,-767
		.' _Head across_ the second bridge |goto 2595,-5100,-767 < 10
		.' _Walk across_ this bridge |goto 2685,-4979,-774 < 10
		.' _Go down_ the path and across the bridge |goto 2712,-4816,-774 < 10
		.' _Walk up_ the pile of bones and jump into the Primal Air Anomaly
		.' Collect a Heart of Air from the Primal Air Anomaly |q Heartbreaker##7770/3 |goto 2793,-4992,-791
	step
		.' Around this area and along the previous bridges:
		.kill Restless Echo##608711+
		.kill Restless Tempest##3446634+
		.' Kill Air Elementals |q Calming the Storm##7771/1 |goto 2730,-4887,-794
	step
		'Press _C_ to use your communicator:
		..turnin Calming the Storm##7771
	step
		.' Cross the _last bridge_ |goto 2861,-4948,-799 < 10
		.' Press _C_ to use your communicator
		..accept A Firm Foundation##7772 |goto Wilderrun 2985,-4851,-803
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
		.kill Spirevale Inferno##608944+
		.kill Spirevale Scorcher##609421+
		.kill Spirevale Firenova##608047+
		.' Defeat Fire Elementals |q Firestorm##7774/1 |goto 2986,-4621,-801
	step
		'Press _C_ to use your communicator:
		..turnin Firestorm##7774
	step
		.' _Follow_ the path back around |goto Wilderrun 2971,-4835,-803 < 10
		.' _Enter_ the cave |goto 3168,-5018,-803 < 10
		.' Press _C_ to use your communicator
		..accept Clamoring for Crimson Ore##7769 |goto 3199,-4975,-809
	step
		.kill 1 Stonelord Sklor##633417
		.' Collect a Heart of Earth from Stonelord Sklor |q Heartbreaker##7770/2 |goto Wilderrun 3457,-4702,-875
		.' Destroy Stonelord Sklor |q Clamoring for Crimson Ore##7769/2 |goto 3459,-4700,-875
	step
		.' All around this cave:
		.kill Crushstone Titan##616595
		.kill Crushstone Behemoth##605348
		.' Kill Rock Elementals |q A Firm Foundation##7772/1 |goto Wilderrun 3263,-4880,-849
		.click Crimson Ore##641415
		.' Collect Crimson Ore from Crushstone Titans |q Clamoring for Crimson Ore##7769/1 |goto 3265,-4864,-852
	step
		'Press _C_ to use your communicator:
		..turnin A Firm Foundation##7772
		..turnin Clamoring for Crimson Ore##7769
	step
		.' _Cross_ the first bridge |goto 2958,-4842,-803 < 10
		.' _Go across_ the second bridge |goto 2807,-4967,-799 < 10
		.' _Cross_ the last bridge |goto 2666,-4797,-768 < 10
		.talk Depot Agent Sakiro##266335
		..turnin Heartbreaker##7770 |goto Wilderrun 2463,-4797,-774
		..accept The Megadroids##7768 |goto 2463,-4797,-774
	step
		.' _Enter_ the cave |goto Wilderrun 2372,-5101,-749 < 10
		.' _Step into_ the teleporter |goto Wilderrun 2358,-5160,-767 < 10
		.' Enter Primal Kinesis Lab 9 |q The Megadroids##7768/1 |goto 3395,-5073,-1008
		.' _Go through_ the door way |goto Wilderrun 3348,-4977,-1008
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
		.' _Step into_ the teleporter to leave the Primal Kinesis Lab |goto Wilderrun 3395,-5090,-1007 < 10
		.talk Depot Agent Sakiro##266335
		..turnin The Megadroids##7768 |goto Wilderrun 2463,-4796,-774
		..accept Crimson Ore Shipment##9467 |goto 2463,-4796,-774
]])
