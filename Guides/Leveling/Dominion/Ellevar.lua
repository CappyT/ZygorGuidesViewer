ZGV:RegisterGuide("Dominion\\Ellevar (6-15)", 
	{
	faction="Dominion",
	startlevel=6,
	endlevel=15,
	nextguide="Dominion\\Auroria (15-23)",
	},
[[
	step
		.talk Patiria Adecus##287192
		..accept The Amenities of Lightreach##9165 |goto Ellevar -2527,-3552,-790
	step
		'Run to the Mailbox here
		.' Find the Lightreach Mailbox |q The Amenities of Lightreach##9165/1 |goto Ellevar -2541,-3525,-785
	step
		.talk Artemis Zin##276528
		..turnin A Daring Escape##5866 |goto -2587,-3590,-789
		..accept First Impressions##6602 |goto -2587,-3590,-789
	step
		.' Find the Lightreach Taxi Kiosk |q The Amenities of Lightreach##9165/2 |goto Ellevar -2599,-3595,-790
		.' Find the Transmat Terminal |q The Amenities of Lightreach##9165/3 |goto Ellevar -2530,-3421,-765
	step
		.click Transmat Terminal##287176
		.' Click _Yes_ to set _Lightreach Mission_ as your Recall point |goto Ellevar -2529,-3420,-765
		|confirm |q 9165
	step
		'_Enter_ the buidling |goto Ellevar -2482,-3469,-762 < 10
		.talk Pyrius Octavian##278837
		..accept All In Good Faith##6587 |goto -2471,-3438,-762
	step
		.talk Toric Antevian##276529
		..turnin First Impressions##6602 |goto Ellevar -2413,-3533,-781
		..accept Lightreach Mission##6603 |goto Ellevar -2413,-3533,-781
	step
		.talk Patiria Adecus##287192
		..turnin The Amenities of Lightreach##9165 |goto Ellevar -2526,-3552,-790
	step
		.talk Guardian Villos##276527
		..accept Heightened Security##6607 |goto -2506,-3639,-800
	step
		.talk Artemis Zin##287081
		..accept Mysteries from the Lake##6609 |goto Ellevar -2486,-3659,-803
	step
		.talk Woodworker Lucus##276525
		..accept Building Up the Mission##6608 |goto Ellevar -2536,-3687,-803
	step
		.click Eldan Artifact##493012 |tip It is in the water.
		.' Collect an Eldan Artifact |q Mysteries from the Lake##6609/1 |goto Ellevar -2426,-3716,-824
	step
		.click Dominion Supplies##486496
		.' Pick up Dominion Supplies |q All In Good Faith##6587/1 |goto Ellevar -2547,-3757,-801
	step
		.click Lightreach Defense Turret##276594
		.' Activate the Lightreach Defense Turrets |q Heightened Security##6607/1 |goto Ellevar -2491,-3771,-795
	step
		.kill Highland Howler##513041+
		.' Kill Highland Dagun |q Heightened Security##6607/2 |goto -2462,-3853,-781
	step
		.' Head to the Larallen Highlands |q Building Up the Mission##6608/1 |goto Ellevar -2381,-3854,-784
	step
		.click Pile of Larallen Wood##425911
		.' Collect Larallen Wood |q Building Up the Mission##6608/2 |goto Ellevar -2314,-3852,-767
		.kill Marshgrass Snoglug##502241+
		.' Kill Snoglugs |q Building Up the Mission##6608/3 |goto Ellevar -2314,-3852,-767
	step
		.talk Woodworker Lucus##276525
		..turnin Building Up the Mission##6608 |goto Ellevar -2534,-3687,-803
		.' Help Woodworker Lucus |q Lightreach Mission##6603/2 |goto -2534,-3687,-803
	step
		.talk Guardian Villos##276527
		..turnin Heightened Security##6607 |goto Ellevar -2506,-3639,-800
		.' Help Guardian Villos |q Lightreach Mission##6603/1 |goto -2506,-3639,-800
	step
		.talk Kevo##287082
		..turnin Mysteries from the Lake##6609 |goto Ellevar -2486,-3657,-803
	step
		.talk Guardian Villos##276667
		..turnin Lightreach Mission##6603 |goto Ellevar -2506,-3639,-800
		..accept Vigilance##6604 |goto Ellevar -2506,-3639,-800
	step
		.' Search around Toric's Command Post |q Vigilance##6604/1 |goto Ellevar -2408,-3524,-781
		.click Toric's Schedule##287177
		.' Inspect Toric's schedule |q Vigilance##6604/2 |goto Ellevar -2408,-3524,-781
	step
		.' Find and speak with Artemis Zin |q Vigilance##6604/3 |goto Ellevar -2499,-3653,-803
	step
		.' Search The Emperor's Blessing |q Vigilance##6604/4 |goto Ellevar -2365,-3514,-774
	step
		.kill 1 Cadet Catian##431290
		.' Break up the fight |q Vigilance##6604/5 |goto -2357,-3505,-773
		.talk Defender Velio##287172
		.' Find information on Toric |q Vigilance##6604/6 |goto -2357,-3505,-773
	step
		.talk Guardian Villos##276527
		..turnin Vigilance##6604 |goto Ellevar -2506,-3639,-800
		..accept Against All Odds##6605 |goto -2506,-3639,-800
	step
		.talk Chieftain Aleli##276526
		..accept Glitterfur Assistance##6610 |goto Ellevar -2629,-3768,-794
	step
		.talk Huntmaster Genki##287121
		..accept Hunter and Shiny Gatherer##6611 |goto -2648,-3770,-793
	step
		.talk Toric Antevian##287083
		..accept Recognition of Faith##6606 |goto Ellevar -2594,-3998,-755
	step
		.click Provisions##276612
		.' Collect the Provisions |q Recognition of Faith##6606/1 |goto Ellevar -2627,-3998,-758
		.kill Tunnelweb Weaver##572450+
		.' Fend off enraged wildlife |q Recognition of Faith##6606/2 |goto Ellevar -2629,-3995,-758
	step
		.click Pile of Glitterfur Trinkets##488801
		.' Collect Glitterfur Trinkets |q Hunter and Shiny Gatherer##6611/1 |goto -2601,-3906,-771
		.click Highland Howler##491705
		.' Collect Fine Highland Pelts |q Glitterfur Assistance##6610/1 |goto -2601,-3906,-771
	step
		.talk Chieftain Aleli##276526
		..turnin Glitterfur Assistance##6610 |goto Ellevar -2628,-3769,-794
	step
		.talk Huntmaster Genki##287121
		..turnin Hunter and Shiny Gatherer##6611 |goto -2647,-3771,-793
	step
		.talk Utsah the Curious##286935
		..accept No Refunds##6779 |goto Ellevar -2619,-3778,-793
	step
		.talk Watti Mozz##576819
		.' Speak to Watti Mozz |q No Refunds##6779/1 |goto -2611,-3733,-798
	step
		'Press _T_ while targeting the red glowing target
		.' Use Prototype Veggie Cannon 2.0 on the Target |q No Refunds##6779/2 |goto Ellevar -2621,-3723,-799
		.' Use Prototype Veggie Cannon 3.0 on the Target |q No Refunds##6779/3 |goto Ellevar -2621,-3723,-799
		.' Use Prototype Veggie Cannon 4.0 on the Target |q No Refunds##6779/4 |goto Ellevar -2621,-3723,-799
		.' Use Prototype Veggie Cannon 5.0 on the Target |q No Refunds##6779/5 |goto Ellevar -2621,-3723,-799
	step
		.talk Utsah the Curious##286935
		..turnin No Refunds##6779 |goto -2618,-3777,-793
		..accept Veggie Launcher##6601 |goto -2618,-3777,-793
	step
		'Press _C_ to open your Communicator:
		..accept A Salvageable Situation##9047 |goto -2486,-3888,-777
	step
		'Press _T_ while targeting the red glowing target
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/1 |goto -2473,-3896,-774
	step
		'Press _T_ while targeting the red glowing target
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/2 |goto Ellevar -2515,-3872,-785
	step
		'Press _T_ while targeting the red glowing target
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/3 |goto -2552,-3844,-785
	step
		'Press _T_ while targeting the red glowing target
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/4 |goto -2591,-3819,-786
	step
		'Press _T_ while targeting the red glowing target
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/5 |goto -2624,-3783,-793
	step
		.talk Utsah the Curious##286935
		..turnin Veggie Launcher##6601 |goto Ellevar -2618,-3778,-793
	step
		.talk Technologist Corvianos##273666
		..turnin A Salvageable Situation##9047 |goto Ellevar -2591,-3503,-786
		..accept Breaking It Down##9049 |goto -2591,-3503,-786
	step
		'Press _I_ to open your inventory
		.' Click the Salvage button at the bottom of your inventory |tip It looks like 2 arrows in a circle.
		.' Click _Next_ until you see _Unusable Crafting Prototype_ then click _Salvage_
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking It Down##9049/1 |goto -2591,-3503,-786
	step
		.talk Weaponsmith Tirexa##284134
		..turnin Breaking It Down##9049 |goto Ellevar -2599,-3517,-785
	step
		.' Meet Toric Antevian |q Recognition of Faith##6606/3 |goto -2412,-3531,-781
		.talk Toric Antevian##276529
		..turnin Recognition of Faith##6606 |goto -2412,-3531,-781
	step
		.talk Guardian Villos##287076
		..turnin Against All Odds##6605 |goto Ellevar -2414,-3527,-781
	step
		.talk Elder Brood-Mother##278835
		..accept Hearts To Grow##6594 |goto -2832,-3535,-816
	step
		.click Darkwood Fester##598590
		'Press _T_ to:
		.' Kick Ball at Darkwood Festers |q Hearts To Grow##6594/1 |goto -2810,-3557,-816
	step
		.click Stormseeker Totem##278693
		.' Kick Ball at Stormseeker Totem |q Hearts To Grow##6594/2 |goto Ellevar -2816,-3549,-816
	step
		.click Primal Water Vessel##599390
		'Press _T_ to:
		.' Kick Ball at Primal Water Vessel |q Hearts To Grow##6594/3 |goto Ellevar -2856,-3462,-821 |tip This will spawn a water mob to fight.
	step
		'Press _T_ to:
		.' Kick Ball into Lake Larallen |q Hearts To Grow##6594/4 |goto Ellevar -2834,-3481,-824
	step
		.click Elder Brood-Mother##278835
		'Press _T_ to:
		.' Kick Ball at the Elder Brood-Mother |q Hearts To Grow##6594/5 |goto Ellevar -2832,-3535,-816
	step
		.talk Elder Brood-Mother##278835
		..turnin Hearts To Grow##6594 |goto Ellevar -2832,-3535,-816
	step
		.talk Elder Spirit-Walker##289093
		.' Deliver Dominion Supplies to the Elder Spirit-Walker |q All In Good Faith##6587/2 |goto -2893,-3487,-820
		.' Gain the trust of the Elder Brood-Mother |q All In Good Faith##6587/5
	step
		.talk Elder Mist-Dancer##278833
		..accept Mouths To Feed##6592 |goto Ellevar -2954,-3506,-821
	step
		.talk Elder Wave-Caller##289092
		..accept Spirits To Tend##6593 |goto -2995,-3472,-817
	step
		.click Primal Water Vessel##584563 |tip You can find these all over the town.
		.' Summon spirits from Primal Water Vessels |q Spirits To Tend##6593/1 |goto Ellevar -2985,-3474,-819
	step
		.talk Elder Wave-Caller##289092
		..turnin Spirits To Tend##6593 |goto -2996,-3473,-816
	step
		.kill Highland Broadwing##606929+
		.kill Highland Gribbon##607380+
		.' Hunt Highland birds |q Mouths To Feed##6592/1 |goto Ellevar -3011,-3731,-817
	step
		.talk Elder Mist-Dancer##278833
		..turnin Mouths To Feed##6592 |goto -2954,-3505,-822
		.' Gain the trust of the Elder Mist-Dancer |q All In Good Faith##6587/4 |goto -2954,-3505,-822
	step
		.talk Elder Spirit-Walker##289053
		..turnin All In Good Faith##6587 |goto Ellevar -2895,-3487,-820
		..accept Fair Trade##6588 |goto -2895,-3487,-820
	step
		.talk Stormseeker Arcanist##288950 |tip After you talk to him, follow the Lifter and protect it.
		.' Meet the Stormseeker Arcanist and escort Lifter |q Fair Trade##6588/1 |goto Ellevar -2954,-3685,-820
	step
		'Press _C_ to open your Communicator:
		..turnin Fair Trade##6588 |goto -2543,-3750,-802
		..accept Treacherous Territory##6589 |goto -2543,-3750,-802
	step
		.talk Poisoned Spirit-Walker##461709
		.' Defeat the enemies that attack in waves
		.' Find the Poisoned Spirit-Walker |q Treacherous Territory##6589/1 |goto Ellevar -2948,-3662,-819
	step
		.talk Poisoned Spirit-Walker##461709
		..turnin Treacherous Territory##6589 |goto Ellevar -2949,-3663,-819
		..accept The Cruel and the Credulous##6590
	step
		.click Poisoned Stormseeker##668155
		.click Poisoned Supplies##288987
		.' Examine Poisoned Stormseekers and Supplies |q The Cruel and the Credulous##6590/1 |goto Ellevar -2908,-3506,-821
	step
		'Press _C_ to open your Communicator:
		..turnin The Cruel and the Credulous##6590
		..accept The Face of Justice##6591
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat to _Lightreach Mission_ |goto Ellevar -2529,-3420,-765 < 100 |c |noway |q 6591
	step
		'_Enter_ the large buidling |goto Ellevar -2482,-3471,-762 < 10
		.click Lightreach Church Cellar Door##278598
		.' Find Pyrius Octavian |q The Face of Justice##6591/1 |goto -2460,-3398,-762
	step
		.talk Pyrius Octavian##686250
		.' Confront Pyrius Octavian |q The Face of Justice##6591/2 |goto Ellevar -2462,-3437,-813
		.kill Pyrius Octavian##686250
		.' Bring Pyrius Octavian to justice |q The Face of Justice##6591/4 |goto -2463,-3438,-813
	step
		.click Lightreach Church Cellar Door##278597
		.' Exit the church cellar |q The Face of Justice##6591/5 |goto Ellevar -2483,-3422,-808
	step
		.talk Toric Antevian##689788
		..turnin The Face of Justice##6591 |goto Ellevar -2471,-3444,-762
	step
		.' Press _C_ to open your Communicator:
		..accept A Healing Hand##6575 |goto -2471,-3444,-762
	step
		'_Cross_ the bridge and follow the road west |goto Ellevar -2544,-3761,-801 < 15
		.' Approach Guardian Zelcon |q A Healing Hand##6575/1 |goto Ellevar -3175,-3671,-794
	step
		.talk Guardian Zelcon##276156
		..accept Dangerous Highlands##6582 |goto -3175,-3671,-794
	step
		.talk Tani Bril##276154
		..accept The Tooth that Bites Last##6583 |goto Ellevar -3163,-3676,-794
	step
		.talk Priestess Trania Lavus##286779
		..accept Better Than This##6581 |goto -3174,-3690,-793
	step
		.click Mistclaw's Fresh Kill##286936
		..accept Tracking Mistclaw##6584 |goto Ellevar -3299,-3785,-788
	step
		.' Follow the mist trail |q Tracking Mistclaw##6584/1 |goto -3301,-3948,-774
		.kill 1 Mistclaw##698239 |q Tracking Mistclaw##6584/2 |goto -3301,-3948,-774
	step
		'Press _C_ to open your Communicator:
		..turnin Tracking Mistclaw##6584
	step
		.click Larallen Slank##487805
		'Press _T_ to:
		.' Use De-Toothing Beam on Larallen Slanks |q The Tooth that Bites Last##6583/1 |goto Ellevar -3283,-3761,-791
		.click Injured Radiant Guard##567969
		.' Heal Injured Radiant Guards  |q A Healing Hand##6575/2 |goto Ellevar -3273,-3730,-794
		.click Terrestrial Aquashroom##538184
		.click Ellevarian Fern##484014
		.' Collect Herbs and Vegetables |q Better Than This##6581/1 |goto Ellevar -3307,-3739,-790
	step
		'Press _C_ to open your Communicator:
		..turnin Better Than This##6581
	step
		.kill Highland Oxian##703279+
		.kill Highland Calf##703163+
		.' Kill the Larallen Highlands Wildlife |q Dangerous Highlands##6582/1 |goto Ellevar -3272,-3758,-793
	step
		'Press _C_ to open your Communicator:
		..turnin Dangerous Highlands##6582
	step
		.talk Tani Bril##276154
		..turnin The Tooth that Bites Last##6583 |goto Ellevar -3162,-3676,-794
	step
		.talk Guardian Zelcon##276156
		..turnin A Healing Hand##6575 |goto -3176,-3671,-794
		..accept The Storm's Power##6576 |goto -3176,-3671,-794
		..accept Unfortunate Force##6577 |goto -3176,-3671,-794
	step
		.talk Tani Bril##276154
		..accept More than Clay Jars##6580 |goto Ellevar -3163,-3676,-793
	step
		.talk Priestess Trania Lavus##286779
		..accept Fragments are Better than Nothing##6579 |goto -3174,-3690,-793
	step
		.talk Shrine of the Masters##276421
		..accept Shrine of the Masters##6599 |goto Ellevar -3141,-3396,-817
	step
		.click Primal Phylax Jar##683894
		.' Destroy Primal Phylax Jars |q More than Clay Jars##6580/1 |goto Ellevar -3361,-3653,-793
		.kill 1 Stormseeker Drone##724672
		.' Collect Eldan Tech Fragments from Stormseeker Drones |q Fragments are Better than Nothing##6579/1 |goto Ellevar -3240,-3451,-806
		.kill Stormseeker Tome-Binder##682698+
		.' Kill Stormseeker Pell |q Unfortunate Force##6577/1 |goto Ellevar -3240,-3451,-806
	step
		'Press _C_ to open Communicator:
		..turnin More than Clay Jars##6580
		..turnin Unfortunate Force##6577
		..turnin Fragments are Better than Nothing##6579
	step
		.click Primal Storm Emitter##276433
		.' Disable Primal Storm Emitters |q The Storm's Power##6576/1 |goto Ellevar -3342,-3299,-786
	step
		'Press _C_ to open your Communicator:
		..turnin The Storm's Power##6576
		..accept The Wrath of the High Priest##6578
	step
		'_Go up_ the dirt hill here |goto Ellevar -3609,-3231,-744 < 10
		.kill 1 Stormseeker High-Priest##694198
		.' Kill the Stormseeker High-Priest |q The Wrath of the High Priest##6578/1 |goto Ellevar -3440,-3429,-760
	step
		'Press _C_ to open your Communicator:
		..turnin The Wrath of the High Priest##6578
		..accept Priority One Distress Call##7110
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat to _Lightreach Mission_ |goto Ellevar -2529,-3420,-765 < 100 |c |noway |q 7110
	step
		.' Travel to Mistymurk Camp |q Priority One Distress Call##7110/1 |goto Ellevar -2597,-2975,-772
	step
		.talk Nerissa Artan##276023
		..turnin Priority One Distress Call##7110 |goto -2516,-2931,-765
		..accept Out For Lunch##6887 |goto -2516,-2931,-765
	step
		.talk Ringo Hax##276022
		..accept Kill Them All... for Science##6888 |goto Ellevar -2513,-2932,-765
		..accept Pincer Business##6892 |goto -2513,-2932,-765
	step
		.click The Highborn: Eldan Dreams##275922
		..accept Lost In The Woods##6890 |goto Ellevar -2426,-2837,-726
	step
		.click The Highborn: Seduction of Honor##275913
		.' Find "The Highborn: Seduction of Honor" |q Lost In The Woods##6890/1 |goto Ellevar -2504,-2795,-735
	step
		.click The Highborn: Lust for Power##286493
		.' Find "The Highborn: Lust for Power" |q Lost In The Woods##6890/2 |goto Ellevar -2599,-2729,-735
	step
		'_Climb_ up the side of the hill |goto Ellevar -2737,-2765,-728 < 30
		.click The Highborn: Sovereignty Unveiled##275911
		.' Find "The Highborn: Sovereignty Unveiled" |q Lost In The Woods##6890/3 |goto -2752,-2729,-731
		.' Stay close to the _Yellow Circle_ and fight the spiders that spawn
		.kill Webwood Spitter##828096+, Webwood Pincher##692916+, Webwood Skitter##828737+
	step
		.kill Webwood Cocoon##630029+
		.' Rescue Radiant Soldiers from Webwood Cocoons |q Out For Lunch##6887/1 |goto Ellevar -2536,-2777,-737
		.kill Webwood Pincher##713078+ |tip When fighting Pincher's, make sure to let them hit you with their flurry attacks.
		.' Withstand the spiders' Pincer Flurry attacks |q Pincer Business##6892/1 |goto -2536,-2777,-737
		.kill Webwood Widow##455240+, Webwood Spitter##713045+
		.' Collect Webwood Spider Part |q Kill Them All... for Science##6888/1 |goto -2536,-2777,-737
	step
		'Press _C_ to open your Communicator:
		..turnin Pincer Business##6892
	step
		.talk Nerissa Artan##276023
		..turnin Out For Lunch##6887 |goto Ellevar -2516,-2931,-765
		..turnin Lost In The Woods##6890 |goto -2516,-2931,-765
	step
		.talk Ringo Hax##276022
		..turnin Kill Them All... for Science##6888 |goto -2513,-2933,-765
		..accept Better, Faster, Stronger##6889 |goto -2513,-2933,-765
	step
		.talk Nerissa Artan##276023
		..accept Bug Zapper##6891 |goto -2516,-2931,-765
	step
		.talk Dio##286466
		..accept Raving Ravenok##6597 |goto -2480,-2939,-764
	step
		.talk Agent Varac##276010
		..accept A Bad Snog##6598 |goto Ellevar -2514,-2971,-762
	step
		'_IMPORTANT_ Click these in order: _4_, _2_, _5_, _1_, then _3_
		.click EDP Station 4##286609
		.' Recalibrate the E.D.P. Station _number 4_ |goto Ellevar -2571,-2935,-765 < 10
		.click EDP Station 2##276008
		.' Recalibrate the E.D.P. Station _number 2_ |goto Ellevar -2466,-2924,-764 < 10
		.click EDP Station 5##276005
		.' Recalibrate the E.D.P. Station _number 5_ |goto Ellevar -2565,-2975,-766 < 10
		.click EDP Station 1##276006
		.' Recalibrate the E.D.P. Station _number 1_ |goto Ellevar -2475,-2977,-765 < 10
		.click EDP Station 3##276007
		.' Recalibrate the E.D.P. Station _number 3_ |q Bug Zapper##6891/1 |goto -2536,-2901,-768
	step
		.talk Nerissa Artan##276023
		..turnin Bug Zapper##6891 |goto Ellevar -2516,-2931,-765
	step
		.click Spiderbot Controller##275923
		.' Choose _Yes_ to take control of a Webswood Spiderbot |goto Ellevar -2493,-2933,-765
		.' Activate the Spiderbot Controller |goto Ellevar -2510,-2648,-697 < 50 |c |noway |q 6889
	step
		.talk Webwood Taskmaster##276021
		..accept Egg-Septional Coordination##6893 |goto Ellevar -2510,-2648,-697
	step
		'_Head into_ the cave and follow the path left |goto Ellevar -2426,-2470,-697 < 10
		.click Webwood Larva##762767
		.' Retrieve Webwood Larvae |q Egg-Septional Coordination##6893/1 |goto -2382,-2498,-697 |tip Watch the buff above your health bar until you have 2-3 eggs. The more you have the harder it is to balance.
		.' Use the controls to not drop the eggs as you _return to this spot_ |goto Ellevar -2512,-2647,-697
	step
		.talk Webwood Taskmaster##276021
		..turnin Egg-Septional Coordination##6893 |goto -2509,-2649,-697
	step
		'_Enter_ the cave and turn right |goto Ellevar -2479,-2551,-697 < 10
		.' Find the Webwood Queen |q Better, Faster, Stronger##6889/2 |goto -2522,-2495,-697
	step
		.talk Ringo Hax##276022
		..turnin Better, Faster, Stronger##6889 |goto -2513,-2933,-765
	step
		.talk Nerissa Artan##276023
		..accept Exciting Discoveries##6908 |goto Ellevar -2515,-2931,-765
	step
		.click Escaped Ravenok##838457
		.' Press _T_ to Catch 5 Ravenok |goto Ellevar -2498,-3081,-798 < 20 |tip Watch the buff above your health bar until you have 5 Ravenok Wrangled.
		.' Catch and return Escaped Ravenok |q Raving Ravenok##6597/1 |goto Ellevar -2482,-2948,-764
	step
		.click Bait Rock##275893 |goto Ellevar -2336,-2976,-746
		.kill Goldy##889230
		.' Find and subdue Goldy |q Raving Ravenok##6597/2
	step
		.talk Dio##286466
		..turnin Raving Ravenok##6597 |goto -2480,-2939,-764
	step
		.talk Lowland Chick##286277
		..accept Unnatural Selection##6575 |goto -2913,-3051,-815
	step
		.' Kill Snoglugs |q Unnatural Selection##6918/1 |goto Ellevar -2910,-3055,-817
		.' Collect Spotted Splorg |q Unnatural Selection##6918/2 |goto -2746,-2992,-789
		.' Speak with Calliope Rose |q Unnatural Selection##6918/3 |goto -2954,-2829,-766
		.' Press _T_ to:
		.' Feed Chick Veggie Mash |q Unnatural Selection##6918/4 |goto -2910,-3055,-817
		.' Feed Chick Snoglugs |q Unnatural Selection##6918/5 |goto -2910,-3055,-817
		.' Feed Chick Splotted Splorg |q Unnatural Selection##6918/6 |goto -2910,-3055,-817
	step
		..turnin Unnatural Selection##6918 |goto Ellevar -2912,-3050,-816
	step
		.kill Mistymurk Slimer##772281+
		.kill Murkshore Snoglug##771419+
		.' Collect Ellevarian Eldan Remnant |q A Bad Snog##6598/1 |goto Ellevar -2716,-3022,-798
	step
		.talk Agent Varac##276010
		..turnin A Bad Snog##6598 |goto Ellevar -2513,-2971,-762
	step
		.talk Lead Excavator Radek Villius##286341
		..turnin Exciting Discoveries##6908 |goto Ellevar -2944,-2835,-766
		..accept The Datacube Tells All##6910 |goto -2944,-2835,-766
	step
		.talk Sariah Lumentis##275764
		..accept Antiquities Below the Soil##6915 |goto Ellevar -2938,-2830,-767
	step
		.talk Scientist Hrezz##286340
		..accept Security Protocol##6914 |goto -2950,-2826,-766
	step
		'Run to the Data Cube
		.' Find Radek's Datacube |q The Datacube Tells All##6910/1 |goto Ellevar -3115,-2923,-790
	step
		.click Irradiated Bio-Mech Minerals##850418 |tip These are mostly on the ground around this structure.
		.' Collect Irradiated Bio-Mech Minerals |q Antiquities Below the Soil##6915/1 |goto -3003,-2893,-770
		.kill Biomech Sentry##850551+
		.kill Biomech Enhancer##850282+
		.kill Biomech Guardian##884354+
		.' Collect Inner Hyper-Modular Mechanism from Bio-Mech Constructs |q Security Protocol##6914/1 |goto Ellevar -3025,-2926,-768
		.' Destroy the Bio-Mech Eldan Constructs |q The Datacube Tells All##6910/2 |goto Ellevar -3018,-2923,-768
	step
		.talk Scientist Hrezz##286340
		..turnin Security Protocol##6914 |goto Ellevar -2951,-2825,-766
	step
		.talk Sariah Lumentis##275764
		..turnin Antiquities Below the Soil##6915 |goto -2937,-2830,-767
	step
		.talk Lead Excavator Radek Villius##286341
		..turnin The Datacube Tells All##6910 |goto -2945,-2836,-766
		..accept Creepy Origins##6911 |goto -2945,-2836,-766
	step
		.talk Scientist Hrezz##286340
		..accept Ultrasonic Barriers##6916 |goto Ellevar -2951,-2825,-766
	step
		.click Territorial Lowland Burrower##918801 |tip You can find them burrowed in the dirt piles around this area.
		'Press _T_ to:
		.' Use the Ultrasonic Pulsing Ray on Lowland Canimid |q Ultrasonic Barriers##6916/1 |goto Ellevar -2993,-2927,-773
		.' Click here for another location to find _Burrowers_ |goto Ellevar -3185,-2926,-766
	step
		'Press _C_ to open your Communicator:
		..turnin Ultrasonic Barriers##6916
	step
		.' Find where test subjects were held |q Creepy Origins##6911/1 |goto Ellevar -3083,-3168,-797
		.click Bio-Transmute Holodisplay##275877
		.' Inspect the Genetic Amplification Holodisplay |q Creepy Origins##6911/2 |goto Ellevar -3098,-3151,-889
		.kill Biotransmuted Canimid##937811+, Biotransmuted Spider##935569+, Biotransmuted Buzzbing##937715+
		.' Kill the attacking Bio-Transmuted creatures |q Creepy Origins##6911/3
	step
		..turnin Creepy Origins##6911
		..accept Lost in Translation##6912
	step
		.click Bio-Mech Infosphere##275876
		.' Find the first Bio-Mech Infosphere Data |q Lost in Translation##6912/1 |goto Ellevar -3097,-3168,-890
	step
		'_Step into_ the green teleporter |goto Ellevar -3097,-3134,-889 < 5
		.click Bio-Mech Infosphere##275875
		.' Find the second Bio-Mech Infosphere Data |q Lost in Translation##6912/2 |goto Ellevar -3140,-3003,-787
	step
		.click Bio-Mech Infosphere##286450
		.' Find the third Bio-Mech Infosphere Data |q Lost in Translation##6912/3 |goto Ellevar -3184,-2996,-771
	step
		.click Bio-Mech Infosphere##275873
		.' Find the fourth Bio-Mech Infosphere Data |q Lost in Translation##6912/4 |goto Ellevar -3271,-2982,-763
	step
		'Press _C_ to open your Communicator:
		..turnin Lost in Translation##6912 |goto Ellevar -3263,-2984,-763
		..accept Seeing is Believing##6913 |goto -3263,-2984,-763
	step
		.click Augmentation Apparatus Component##879973
		.' Collect Augmentation Apparatus Components |q Seeing is Believing##6913/1 |goto Ellevar -3330,-3005,-760
	step
		.click Augmentation Apparatus Component##275864
		.' Activate the Disabled Augmentation Engine |q Seeing is Believing##6913/2 |goto Ellevar -3447,-2951,-743
	step
		.kill 1 Shattercrag the Broken##948901 |q Seeing is Believing##6913/3 |goto Ellevar -3362,-2965,-754
	step
		.talk Lead Excavator Radek Villius##286341
		..turnin Seeing is Believing##6913 |goto Ellevar -2944,-2834,-766
	step
		'Press _C_ to open your Communicator:
		..accept Path to Ascension##7066
	step
		.talk Maxinux##286338
		..accept Power It Up##6917 |goto Ellevar -2936,-2834,-767
	step
		.click Bio-Mech Power Pylon##275817+ |tip You can find more on the ground all around this area.
		.' Activate the Bio-Mech Power Pylons |q Power It Up##6917/1 |goto Ellevar -2990,-2918,-771
	step
		'Press _C_ to open your Communicator:
		..turnin Power It Up##6917
	step
		.talk Calidor Antevian##275523
		..turnin Path to Ascension##7066 |goto Ellevar -2930,-2601,-746
		..accept Deciphering the Unknown##6878 |goto -2930,-2601,-746
	step
		'_Follow_ Calidor and protect him |goto -2897,-2570,-751 < 10
		.' Escort Calidor as he explores |q Deciphering the Unknown##6878/1 |goto Ellevar -2924,-2488,-750
	step
		.' Escort Calidor as he explores |q Deciphering the Unknown##6878/1 |goto Ellevar -2912,-2484,-749
	step
		.talk Calidor Antevian##275522
		..turnin Deciphering the Unknown##6878 |goto Ellevar -2944,-2604,-857
		..accept Blackout##6879 |goto -2944,-2604,-857
	step
		.talk Xenoarchaeologist Volios##286021
		..accept Language of the Gods##6885 |goto Ellevar -2960,-2613,-857
	step
		.click Decrepit Console##275676
		.' Inspect the Decrepit Console |q Language of the Gods##6885/1 |goto Ellevar -2962,-2614,-857
	step
		.click Decrepit Console##275674
		.' Find the second Decrepit Console |q Language of the Gods##6885/2 |goto Ellevar -2898,-2533,-859
	step
		.click Power Cell##760555
		.' Collect Power Cells |q Blackout##6879/1 |goto Ellevar -2912,-2537,-859
	step
		.click Power Rod##275752
		.' Insert Power Cells into Power Rods |q Blackout##6879/2 |count 1 |goto Ellevar -2900,-2504,-856
	step
		.click Power Rod##275753
		.' Insert Power Cells into Power Rods |q Blackout##6879/2 |goto -2977,-2504,-856
	step
		.click Bio-Mech Complex AH47 Main Control##286283
		.' Activate the Bio-Mech Complex AH47 Main Control |q Blackout##6879/3 |goto Ellevar -2938,-2467,-854
	step
		'Press _C_ to open your Communicator:
		..turnin Blackout##6879
		..accept Fade from Black##6880
		..accept Keep Them Separated##6884
	step
		.talk Xenobiologist Karizi##275505
		..accept Augmentations for Analysis##7031 |goto Ellevar -2951,-2490,-859
	step
		'_Run through_ the small corridor |goto Ellevar -2908,-2460,-859 < 10
		.click Decrepit Console##275673
		.' Find the third Decrepit Console |q Language of the Gods##6885/3 |goto Ellevar -2891,-2325,-855
	step
		'Press _T_ to use your quest ability |tip Make sure to kill the mobs within a short range of this.
		.kill Augmented Rockside Tunnelclaw##996169+, Augmented Rockside Digclaw##993705+
		.' Kill Augmented Rockside Digclaws within the Augment Analyzer's radius |q Augmentations for Analysis##7031/1 |goto -2938,-2366,-855
	step
		'Press _C_ to open your Communicator:
		..turnin Augmentations for Analysis##7031
	step
		.' Find the Augmentation wing of the Recombination Complex |q Fade from Black##6880/1
		.click Holding Cell Monitor##275701
		.' Inspect augmentation chambers |q Fade from Black##6880/2 |goto Ellevar -3048,-2381,-852
	step
		.click Holding Cell Monitor##275701
		.' Activate a chamber to release pressure |q Fade from Black##6880/3 |goto -3048,-2382,-852
		.kill AH47 Augmentor##274724+, Augmented Spider##896486+
		.' Kill the Augmented creature |q Fade from Black##6880/4 |goto -3048,-2382,-852
	step
		'Press _C_ to open your Communicator:
		..turnin Keep Them Separated##6884
	step
		.kill AH47 Augmentor##995080+
		.' Destroy AH47 Augmentors |q Keep Them Separated##6884/1
	step
		'_Step into_ the green portal |goto Ellevar -2942,-2321,-851
		.talk Xenoanalyst Derenia##275506
		..accept Mine Control##7047 |goto -3117,-2428,-945
	step
		.talk Calidor Antevian##275520
		..turnin Fade from Black##6880 |goto -3126,-2428,-944
		..accept An Eerie Eldan Glow##6881 |goto -3126,-2428,-944
	step
		.click Eldan Security Mine##275560
		.' Disarm Eldan Security Mines |q Mine Control##7047/1 |goto Ellevar -3111,-2433,-945
	step
		.talk Xenoanalyst Derenia##275506
		..turnin Mine Control##7047 |goto Ellevar -3117,-2428,-945
	step
		.click Decrepit Console##286184
		.' Find the fourth Decrepit Console |q Language of the Gods##6885/4 |goto Ellevar -3111,-2473,-944
	step
		'_Go through_ the doorway and down the hall |goto Ellevar -3015,-2437,-943 < 20 |tip Try to avoid the mines on the ground.
		.' Find the Prototype Recombination Wing |q An Eerie Eldan Glow##6881/1 |goto -2909,-2512,-952
	step
		.kill 1 AH47 Augmentor##1026215
		.' Kill an AH47 Augmentor and take its Capturing Device |q An Eerie Eldan Glow##6881/2 |goto Ellevar -2913,-2553,-953
	step
		.click Stray Rockside Digger##1023941
		.' Press _T_ to:
		.' Use the Capturing Device on Stray Canimid |q An Eerie Eldan Glow##6881/3 |goto Ellevar -2914,-2560,-953
		.click Recombination Prototype Controls##275682 |tip You need to have a Canimid attached to you to activate this.
		.' Activate the Prototype Recombination Chamber |q An Eerie Eldan Glow##6881/4 |goto Ellevar -2932,-2560,-953
	step
		.kill 1 Recombinated Canimid##1086838 |q An Eerie Eldan Glow##6881/5 |goto Ellevar -2942,-2562,-951
	step
		.click Decrepit Console##286186
		.' Find the fifth Decrepit Console |q Language of the Gods##6885/5 |goto Ellevar -2887,-2604,-953
	step
		'_Go through_ the doorway and follow the hallway to the left |goto Ellevar -2910,-2503,-952 < 20
		.' _Keep following_ the hall through this doorway |goto -2849,-2439,-961 < 20
		.' _Enter_ the doorway |goto Ellevar -2810,-2388,-961 < 20
		.click Decrepit Console##286187
		.talk Calidor Antevian##275518
		..turnin An Eerie Eldan Glow##6881 |goto -2807,-2362,-961
		..accept Blinding Light##6882 |goto -2807,-2365,-961
	step
		.' Find the sixth Decrepit Console |q Language of the Gods##6885/6 |goto Ellevar -2786,-2343,-962
	step
		'Press _C_ to open your Communicator:
		..turnin Language of the Gods##6885
	step
		.' Enter the Recombination Chamber |q Blinding Light##6882/1 |goto Ellevar -2810,-2351,-956
	step
		'_Go through_ the door and follow the hallway |goto Ellevar -2932,-2452,-1081 < 15
		'_Enter_ the large open room |goto -2871,-2486,-1090 < 15
		.kill 1 Calidor Antevian##1029429
		.' Stop Calidor Antevian |q Blinding Light##6882/2 |goto -2911,-2533,-1092
	step
		'_Go back_ through the doorway into the hallway |goto Ellevar -2871,-2487,-1090 < 15
		.' _Continue_ into the open room |goto -2933,-2452,-1081 < 15
		.click Exit Teleporter Panel##286185
		.' Activate the Exit Teleporter Panel |q Blinding Light##6882/3 |goto Ellevar -3004,-2435,-1082
	step
		'Enter the portal
		.' Leave the Recombination Chamber |q Blinding Light##6882/4 |goto Ellevar -3018,-2441,-1080
	step
		'Press _C_ to open your Communicator: 
		..turnin Blinding Light##6882
		..accept Shimmer of Hope##6883
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall - Transmat to _Lightreach Mission_ |goto Ellevar -2529,-3420,-765 < 100 |c |noway |q 6883
	step
		.talk Toric Antevian##276529
		..turnin Shimmer of Hope##6883 |goto Ellevar -2414,-3532,-779
	step
		.talk Lord Horacos##290691
		..accept The Infamous Corrigan Doon##6664 |goto Ellevar -2447,-3576,-786
	step
		.talk Corrigan Doon##290692 |tip He's inside this small bar.
		..turnin The Infamous Corrigan Doon##6664 |goto Ellevar -2346,-3479,-770
		..accept Sobering Up##6612 |goto -2346,-3479,-770
	step
		'_Enter_ the large building |goto Ellevar -2481,-3467,-762 < 20
		.click Prayer Wine##1099475
		.' Acquire a bottle of Prayer Wine |q Sobering Up##6612/3 |goto -2460,-3441,-762
	step
		.click Nap Nap Juice##1099181
		.' Collect a bottle of Nap Nap Juice |q Sobering Up##6612/1 |goto Ellevar -2570,-3489,-781
	step
		'_Enter_ the small house |goto Ellevar -2564,-3559,-794 < 10
		.talk Vern Virius##276675
		.' Buy a bottle of Oxian Oil |q Sobering Up##6612/2 |goto Ellevar -2581,-3557,-792 |tip He sells this under the GENERAL tab at the bottom of his list.
	step
		.click Mix-O-Matic##290500
		.' Mix the ingredients in the Mix-O-Matic |q Sobering Up##6612/4 |goto Ellevar -2348,-3483,-770
	step
		.click Boil-O-Matic##280335
		.' Heat the concoction in the Boil-O-Matic |q Sobering Up##6612/5 |goto Ellevar -2347,-3485,-770
	step
		.talk Corrigan Doon##290692
		..turnin Sobering Up##6612 |goto Ellevar -2347,-3479,-770
		..accept Locating the Crash Site##6613 |goto -2347,-3479,-770
	step
		.talk Adalno##280517
		..accept Ravenok Menace##6615 |goto Ellevar -2345,-3482,-770
	step
		.' Locate the first signal |q Locating the Crash Site##6613/1 |goto Ellevar -2178,-3411,-737
		.click Port Engine Scrap##280334
		.' Examine the Port Engine Scrap |q Locating the Crash Site##6613/2 |goto Ellevar -2178,-3411,-737 |tip Kill Bleakwings as you do this quest.
	step
		.' Locate the second signal |q Locating the Crash Site##6613/3 |goto -2151,-3607,-746
		.click Aft Stabilizer##280333
		.' Examine the Aft Stabilizer Scrap |q Locating the Crash Site##6613/4 |goto -2151,-3607,-746 |tip Kill Bleakwings as you do this quest.
	step
		.kill Bleakwing Charger##1776350+, Bleakwing Razorbeak##1903368+
		.' Kill Bleakwing ravenok |q Ravenok Menace##6615/1 |goto -2093,-3643,-743
	step
		'Press _C_ to open your Communicator:
		..turnin Ravenok Menace##6615
	step
		.' Locate the third signal |q Locating the Crash Site##6613/5 |goto Ellevar -2054,-3768,-744
		.click Sensor Array##290492
		.' Examine the Sensor Array Scrap |q Locating the Crash Site##6613/6 |goto -2054,-3768,-744 |tip Kill Bleakwings as you do this quest.
	step
		'Press _T_ to call Corrigan Doom
		.talk Corrigan Doom
		..turnin Locating the Crash Site##6613
		..accept Identifying the Deceased##6617
		.' If you cannot call him, click here to locate him |goto -2347,-3479,-770
	step
		.click Emergency Supply Kit##280515
		..accept Scaring the Scavengers##6616 |goto Ellevar -2034,-3781,-738
	step
		'Follow the path into the wooded area
		.click Corpse##290471
		.' Identify the bodies |q Identifying the Deceased##6617/1 |goto Ellevar -2005,-3817,-734
		.click Longsnout Scavenger##1714229
		'Press _T_ to:
		.' Frighten away Longsnout Scavengers |q Scaring the Scavengers##6616/1 |goto -2004,-3817,-734
	step
		'Press _T_ to call Corrigan Doom
		.talk Corrigan Doom
		..turnin Identifying the Deceased##6617 |goto Ellevar -1998,-3826,-733
		..accept Copperworth Village##6644 |goto Ellevar -2009,-3829,-728
		.' If you cannot call Corrigan, click here to locate him |goto -2347,-3479,-770
	step
		'Press _C_ to open your Communicator:
		..turnin Scaring the Scavengers##6616 |goto Ellevar -1998,-3826,-733
	step
		'Enter the Copperworth General Store |q Copperworth Village##6644/1 |goto Ellevar -1795,-3820,-735
		.kill Tideborn Shellback##1934617+
	step
		.click Doorbell##290459
		.' Ring the doorbell at the Western House |q Copperworth Village##6644/2 |goto Ellevar -1861,-3793,-737
	step
		.click Doorbell##290460
		.' Ring the doorbell at the Northern House |q Copperworth Village##6644/3 |goto Ellevar -1842,-3848,-730
	step
		'Search the Northern Farm |q Copperworth Village##6644/4 |goto Ellevar -1762,-4031,-707
		.talk Ellie the Unhinged##290689
		.' Speak with Ellie the Unhinged |q Copperworth Village##6644/5 |goto -1762,-4031,-707
	step
		.' Kill a mob in this area
		'Press _C_ to open your Communicator:
		..accept An Act of Aggression##6737 |goto Ellevar -1876,-4080,-686
	step
		'Investigate the Tower |q Copperworth Village##6644/6 |goto Ellevar -1986,-4166,-651
		.talk Corrigan Doon##290688
		..turnin Copperworth Village##6644 |goto -1986,-4166,-651
		..accept Rescue at Tideborn Station##6681 |goto Ellevar -1986,-4166,-651
	step
		.click Ikthian Stasis Generator##280313
		.' Disable stasis generators |q Rescue at Tideborn Station##6681/1 |goto -2003,-4144,-654
	step
		.talk Corrigan Doon##290688
		..turnin Rescue at Tideborn Station##6681 |goto Ellevar -1986,-4166,-651
		..accept Knock Knock##6734 |goto -1986,-4166,-651
	step
		.click Eldan Door##280297
		.' Enter the Eldan Tower |q Knock Knock##6734/1 |goto Ellevar -1986,-4168,-651 |tip Enter the door and use the green portal.
	step
		.kill 1 Cortex Prime Whitewater##262155 |q Knock Knock##6734/2 |goto Ellevar -2,-49,0
	step
		.talk Corrigan Doon##262156
		..turnin Knock Knock##6734 |goto ... 0,-41,0
		..accept Tall Tales##6632  |goto ... 0,-41,0
	step
		'Take the _green portal_ out |goto ... 0,-13,2 < 5
		.kill Tideborn Researcher##1896880+, Tideborn Wavefin##1896490+, Tideborn Shellback##1898328+
		.' Kill Tideborn forces |q An Act of Aggression##6737/1 |goto Ellevar -1976,-4134,-656
	step
		'Press _C_ to opne your Communicator:
		..turnin An Act of Aggression##6737
	step
		'_Cross through_ the path towards town |goto Ellevar -1708,-3787,-731 < 30
		.talk Agent Cognosa##279829
		..turnin Tall Tales##6632 |goto Ellevar -1538,-3869,-729
		..accept Ikthian Insights##6636 |goto -1538,-3869,-729
	step
		.click Crashed Ikthian Ship##289927
		.' Access the Crashed Ship |q Ikthian Insights##6636/1 |goto Ellevar -1440,-3901,-724
	step
		.kill Slenderskin Abductor##1819828+
		.' Kill Slenderskin Ikthian to obtain Genetic Sample |q Ikthian Insights##6636/2 |goto Ellevar -1379,-3829,-743
	step
		.click Crashed Ikthian Ship##289927
		.' Obtain data from the Crashed Ship |q Ikthian Insights##6636/3 |goto Ellevar -1440,-3901,-724
	step
		.talk Agent Cognosa##279829
		..turnin Ikthian Insights##6636 |goto Ellevar -1538,-3869,-729
		..accept Unidentified Flying Object##6634 |goto -1538,-3869,-729
	step
		.click Ikthian Transport Controls##279817
		.' Hijack a Transport Disc |q Unidentified Flying Object##6634/1 |goto Ellevar -1420,-3815,-737
	step
		.' Infiltrate the Ikthian Base |q Unidentified Flying Object##6634/2 |goto Ellevar -1126,-3776,-748
	step
		'Press _C_ to open your Communicator:
		..turnin Unidentified Flying Object##6634
		..accept Dead End##6635 |goto -1121,-3783,-749 |goto -1121,-3783,-749
	step
		.kill Slenderskin Crawler##1794973+, Slenderskin Implementer##1795846+, Slenderskin Shredder##1792035+, Slenderskin Slicer##1874881
		.' Kill Ikthian forces |q Dead End##6635/1 |goto Ellevar -1100,-3747,-746
	step
		.click Ikthian Transport Controls##289931
		.' Access the Transport Disc Controls |q Dead End##6635/2 |goto Ellevar -1124,-3567,-740
	step
		'Press _C_ to open your Communicator:
		..turnin Dead End##6635
		..accept Out of Your Depth##6637|goto Ellevar -1017,-3427,-635
		..accept Know Your Enemy##6638 |goto Ellevar -1017,-3427,-635
	step
		.' Enter the Diluvian Depths |q Out of Your Depth##6637/1 |goto -929,-3426,-642
		.click Ikthian Hologram Projector##289891
		.' Activate the Ikthian Hologram Projector |q Out of Your Depth##6637/2 |goto -775,-3479,-640
	step
		.click Ikthian Biological Experiment##289893
		.' Destroy the Ikthian Biological Experiments |q Out of Your Depth##6637/3 |goto Ellevar -838,-3600,-641
	step
		.kill Slenderskin Slicer##1661221+, Slenderskin Sentinel##1791980+, Shaleshell Spineclaw##1797072+
		.' Kill Slenderskin Ikthians |q Know Your Enemy##6638/1 |goto -813,-3535,-638
	step
		'Press _C_ to open your Communicator:
		..turnin Know Your Enemy##6638
	step
		'Press _C_ to open your Communicator:
		..accept Advanced Science##6640
		..accept Out of Your Depth##6637
	step
		.click Data Center: Biology##289875
		.' Download Biology Data |q Advanced Science##6640/1 |goto Ellevar -780,-3487,-641
	step
		'_Follow_ the cave around the corner |goto Ellevar -723,-3385,-641 < 20
		.click Crate of Eldan Technology##289776
		..accept The Collectors##6639 |goto -664,-3403,-641
	step
		'Press _C_ to open your Communicator:
		..turnin The Collectors##6639
	step
		'Press _C_ to open your Communicator:
		..accept Restore Default Settings##6647 |goto -664,-3403,-641
	step
		.click Data Center: Eldan Tech##279753
		.' Download Eldan Data |q Advanced Science##6640/2 |goto Ellevar -617,-3473,-641
	step
		.click Dismantled Eldan Component##1883840
		.' Collect Dismantled Eldan Technology |q The Collectors##6639/1 |goto Ellevar -621,-3441,-642
	step
		'_Continue_ along the caves path |goto Ellevar -551,-3524,-641 < 10
		.click Slenderskin Implementer##1734285
		.' Download Ikthian Data |q Advanced Science##6640/3 |goto -507,-3628,-659
	step
		.click Hijacked Eldan Probe##1805419
		'Press _T_ to:
		.' Reset Hijacked Eldan Probes |q Restore Default Settings##6647/1 |goto Ellevar -616,-3615,-659
	step
		'Pess _C_ to open your Communicator:
		..turnin Restore Default Settings##6647
	step
		.kill 1 Cortex Breachscale##1888420
		.' Defeat Cortex Breachscale |q Advanced Science##6640/5 |goto Ellevar -612,-3633,-654
	step
		'Press _C_ to open your Communicator:
		..turnin Advanced Science##6640
		..accept A Narrow Escape##6641 |goto Ellevar -610,-3629,-656
	step
		'_Follow_ the route in the cave |goto -494,-3568,-656 < 10
		.click Ikthian Transport Controls##289844
		.' Hijack the Ikthian Transport Controls |q A Narrow Escape##6641/2 |goto -564,-3504,-640
		.' Exit the cave |q A Narrow Escape##6641/1 |goto Ellevar -974,-3428,-624
	step
		.talk Agent Cognosa##279646
		..turnin A Narrow Escape##6641 |goto Ellevar -1561,-3609,-724
		..accept A Repugnant Position##7597 |goto -1561,-3609,-724
	step
		.talk Merchant Sani##280271
		..accept Blown Up with Darkfangs##6654 |goto -1682,-3415,-692
	step
		.click Darkfang Den##279979
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1 |count 33 |goto Ellevar -1726,-3407,-704
	step
		.click Darkfang Den##290098
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1 |count 66 |goto -1778,-3442,-712
	step
		.click Darkfang Den##279980
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1 |goto Ellevar -1723,-3477,-708
	step
		.talk Merchant Sani##280271
		..turnin Blown Up with Darkfangs##6654 |goto Ellevar -1683,-3414,-692
		..accept Delayed Delivery##6814 |goto -1683,-3414,-692
	step
		.click Stormseeker Tech-Tome##287836
		..accept Stormseeker Tech-Tome##9092 |goto Ellevar -2024,-3274,-726
	step
		.talk Science Officer Wingo##280270
		..turnin Delayed Delivery##6814 |goto Ellevar -2264,-3236,-745
	step
		.talk Radiant Warden Vezir##290438
		..accept A Vigilant Defense##6648 |goto Ellevar -2256,-3241,-745
	step
		.talk Radiant Medic Vacuna##280269
		.' Check on Radiant Medic Vacuna |q A Vigilant Defense##6648/1 |goto Ellevar -2231,-3238,-743
	step
		.click Rescue Flare##280045
		.' Light the Rescue Flare |q A Vigilant Defense##6648/2 |goto Ellevar -2192,-3229,-735
	step
		.kill Injured Radiant Defender##1975068+
		.' Stay close to the _Yellow Circle_
		.' Defend the Vigilant Heart Outpost |q A Vigilant Defense##6648/3 |goto -2192,-3228,-735
	step
		.talk Radiant Warden Vezir##290438
		..turnin A Vigilant Defense##6648 |goto Ellevar -2255,-3241,-745
		..accept Into the Woods##6649 |goto -2255,-3241,-745
	step
		'Press _C_ to open your Communicator:
		..accept Quarantine Enforcement##6806 |goto -2255,-3241,-745
	step
		.talk Radiant Scout Callidan##290165
		.' Find Radiant Scout Callidan |q Into the Woods##6649/1 |goto Ellevar -2202,-3120,-739
	step
		.click Radiant Guard Maxima##290167
		.' Find Radiant Guard Maxima |q Into the Woods##6649/2 |goto Ellevar -2158,-2995,-717
	step
		.talk Radiant Scout Bagum##290166
		.' Find Radiant Scout Bagum |q Into the Woods##6649/3 |goto Ellevar -2066,-3071,-718
	step
		.' Find Professor Cornelius |q Into the Woods##6649/4 |goto Ellevar -1932,-3217,-720
		.talk Professor Cornelius##280037
		..turnin Into the Woods##6649 |goto -1932,-3217,-720
		..accept Scientific Method##6650 |goto -1932,-3217,-720
	step
		.click Bloated Darkspire Slank##290150+
		.' Inspect Bloated Darkspire Slanks |q Scientific Method##6650/1 |goto Ellevar -1932,-3208,-723
	step
		.kill Toxic Stumpkin##1602956+
		.' Gather Branches from Toxic Stumpkins |q Scientific Method##6650/2 |goto Ellevar -2096,-3293,-736
	step
		.click Darkfang Prowler##2030947+, Darkfang Alpha##1745327+, Darkfang Hunter##1992729+
		.' Apply the Toxicity Analyzer to Darkfang Dagun |q Scientific Method##6650/3
		.kill Darkfang Prowler##1928144+, Darkfang Hunter##2039646
		.' Kill Darkfang Dagun |q Quarantine Enforcement##6806/1 |goto Ellevar -2096,-3293,-736
	step
		'Press _C_ to open your Communicator:
		..turnin Quarantine Enforcement##6806
		..turnin Scientific Method##6650
		..accept Prisoner to the Mordesh##6778 |goto Ellevar -2079,-3278,-733
	step
		.' Find Professor Cornelius |q Prisoner to the Mordesh##6778/1 |goto Ellevar -1711,-3195,-699
		.kill Darkpool Shadowdagger##1893806+, Darkpool Gunslinger##1782761+
		.' Kill Darkpool Mordesh and find the Access Code |q Prisoner to the Mordesh##6778/2 |goto -1704,-3202,-698
	step
		.click Security Panel##279948 |tip Use code 2657. If this does not work, look in your inventory under quest items for help.
		.' Deactivate Professor Cornelius' Prison Cage |q Prisoner to the Mordesh##6778/3 |goto -1715,-3191,-699
	step
		.talk Professor Cornelius##280275
		..turnin Prisoner to the Mordesh##6778 |goto Ellevar -1717,-3196,-699
		..accept Planned Fallout##6652 |goto -1717,-3196,-699
	step
		.click Darkpool Poison Tank##280012
		.' Rig Poison Tanks to explode |q Planned Fallout##6652/1 |goto Ellevar -1717,-3232,-697
	step
		'_Walk onto_ the wooden platform |goto -1771,-3173,-700 < 10
		.click Darkpool Poison Vent##290123
		.' Sabotage the vents |q Planned Fallout##6652/2 |goto -1752,-3159,-693
	step
		'Press _C_ to open your Communicator:
		..turnin Planned Fallout##6652
		..accept The Antidote##6653
	step
		.kill 1 Viralist Zarkin##1962681 |q The Antidote##6653/1 |goto Ellevar -1702,-3132,-692
	step
		.talk Professor Cornelius##280263
		.' Meet Professor Cornelius at his camp |q The Antidote##6653/2 |goto Ellevar -1925,-3227,-718
	step	
		'_Make sure to pick up the potion before you leave the tent_
		.click Combustive Potion##1807508 |goto Ellevar -1927,-3231,-718 |c
		.talk Doctor Matrine Flovus##290427
		.' Give Professor Cornelius' Cure to Doctor Matrine Flovus |q The Antidote##6653/3 |goto -2253,-3256,-744
	step
		.talk Radiant Warden Vezir##290438
		..turnin The Antidote##6653 |goto Ellevar -2257,-3241,-745
	step
		'_Run along_ the road going out of town |goto Ellevar -2317,-3167,-752 < 30
		.talk Farmer Horato##290436
		..accept Baiting the Giant##6656 |goto -2227,-2960,-731
	step
		'_Run up_ the grove in the hill |goto Ellevar -2117,-2869,-683 < 20
		.click Oxian Holostation##279985
		.' Activate the Oxian Holostation |q Baiting the Giant##6656/1 |goto -2041,-2905,-663
		.kill 1 Raedon the Ox Snatcher##2206031 |q Baiting the Giant##6656/2 |goto -2041,-2905,-663
	step
		'Press _C_ to open your Communicator:
		..turnin Baiting the Giant##6656 |goto Ellevar -2048,-2908,-667
	step
		'_Follow_ the dirt road |goto Ellevar -2180,-2845,-707 < 20
		.' _Go through_ the doorway and follow the road |goto -2083,-2691,-716 < 20
		.' _Cross_ the bridge and head down the path |goto Auroria -2018,-2435,-788 < 20
		.' _Enter_ the city |goto -2300,-1988,-869 < 20
		.talk Agent Marcus##281167
		.' Speak with Agent Marcus |q A Repugnant Position##7597/1 |goto -2440,-1934,-879
	step
		.talk Governor Aluviel##286706
		.' Speak with Governor Aluviel |q A Repugnant Position##7597/2 |goto Auroria -2598,-1924,-864
	step
		'Press _C_ to open your Communicator:
		..turnin A Repugnant Position##7597
		..accept Citizen Concerns##3751
	step
		'_Exit_ the gates |goto Auroria -2559,-1865,-874 < 10
		.talk Farmer Titus##286629
		..accept From the Shadows##5665 |goto Auroria -2548,-1557,-931
		..accept Keeping an Eye Out##5666 |goto -2548,-1557,-931
]])