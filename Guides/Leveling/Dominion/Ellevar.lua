if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Ellevar (6-15)", 
	{
	faction="Dominion",
	startlevel=6,
	endlevel=15,
	nextguide="Dominion\\Illium (15)",
	image="ZygorUIGuides:Ellevar",
	description="Ellevar is a wild zone in northwest Olyssia, and the area is filled with small scattered villages. Ellevar serves as one of the starting zone for the Dominion, and is controlled mostly by the Vigilant Church.  Ellevar is intended for characters level 6-15."
	},
	[[
	step
		.talk Artemis Zin##276528 |goto Ellevar -2592,-3587,-790
		..turnin A Daring Escape##5866
		..accept First Impressions##6602
	step
		.talk Patiria Adecus##287192 |goto Ellevar -2527,-3552,-790
		..accept The Amenities of Lightreach##9165
	step
		.talk Rental Mount Vendor |q The Amenities of Lightreach##9165/4 |goto Ellevar -2521,-3621,-797
		'You can rent a mount for 24 hour playtime
	step
		.talk Radiant Legion Guard |goto Ellevar -2591,-3595,-790
		.' Find the Radiant Legion Guard |q The Amenities of Lightreach##9165/5
	step
		.' Find the Lightreach Taxi Kiosk |q The Amenities of Lightreach##9165/2 |goto Ellevar -2599,-3595,-790
		'_Taxi_ locations open automatically now
	step
		'Run to the Mailbox here |goto Ellevar -2541,-3525,-785
		.' Find the Lightreach Mailbox |q The Amenities of Lightreach##9165/1
	step
		.click Transmat Terminal |goto Ellevar -2527,-3424,-764
		.' Find the Transmat Terminal |q The Amenities of Lightreach##9165/3
		'Click _Yes_ to bind to Lightreach Mission
	step
		'Press _C_ to open your Communitcator:
		..turnin The Amenities of Lightreach##9165
	step
		.' _Freight Supervisor Lola_ offers a _Shiphand_.  Shiphands are solo instances.  Give good XP, a blue reward, and a random epic drop, and needed to reach level 15.  This one is for level 6 players. |goto Ellevar -2585,-3477,-780
		|confirm |q 6602
	step
		.talk Toric Antevian##276529 |goto Ellevar -2413,-3533,-781
		..turnin First Impressions##6602
		..accept Lightreach Mission##6603
	step
		.talk Guardian Villos##276527 |goto Ellevar -2506,-3639,-800
		..accept Heightened Security##6607
	step
		.talk Artemis Zin##287081 |goto Ellevar -2486,-3659,-803
		..accept Mysteries from the Lake##6609
	step
		.talk Woodworker Lucus##276525 |goto Ellevar -2536,-3687,-803
		..accept Building Up the Mission##6608
	step
		.talk Chieftain Aleli##276526 |goto Ellevar -2629,-3768,-794
		..accept Glitterfur Assistance##6610
	step
		.talk Huntmaster Genki##287121 |goto Ellevar -2648,-3770,-793
		..accept Hunter and Shiny Gatherer##6611
	step
		.click Lightreach Defense Turret##276594 |goto Ellevar -2491,-3771,-795
		.' Activate the Lightreach Defense Turrets |q Heightened Security##6607/1
	step
		.' Head to the Larallen Highlands |q Building Up the Mission##6608/1 |goto Ellevar -2381,-3854,-784
	step
		.' Kill Highland Dagun |q Heightened Security##6607/2 |goto Ellevar -2462,-3853,-781
		.' Collect Larallen Wood |q Building Up the Mission##6608/2
		.' Kill Snoglugs |q Building Up the Mission##6608/3 |goto Ellevar -2314,-3852,-767
		.' Collect Fine Highland Pelts |q Glitterfur Assistance##6610/1 |goto Ellevar -2601,-3906,-771
		.' Collect Glitterfur Trinkets |q Hunter and Shiny Gatherer##6611/1
	step
		.'_Jump down_ from here |goto Ellevar -2423,-3751,-787 < 5 |c |q 6609/1
	step
		.click Eldan Artifact##493012  |goto Ellevar -2426,-3716,-824
		.' Collect an Eldan Artifact |q Mysteries from the Lake##6609/1
	step
		.talk Kevo##287082 |goto Ellevar -2486,-3657,-803
		..turnin Mysteries from the Lake##6609
	step
		.talk Woodworker Lucus##276525 |goto Ellevar -2534,-3687,-803
		..turnin Building Up the Mission##6608
		.' Help Woodworker Lucus |q Lightreach Mission##6603/2
	step
		.talk Guardian Villos##276527 |goto Ellevar -2506,-3639,-800
		..turnin Heightened Security##6607
		.' Help Guardian Villos |q Lightreach Mission##6603/1
	step
		.talk Guardian Villos##276667 |goto Ellevar -2506,-3639,-800
		..turnin Lightreach Mission##6603
		..accept Vigilance##6604
	step
		.' Search around Toric's Command Post |q Vigilance##6604/1 |goto Ellevar -2425,-3528,-781
	step
		' _Small_ bookshelf, book at _right_ |goto Ellevar -2408,-3524,-781
		.' Inspect Toric's schedule |q Vigilance##6604/2
	step
		.' Find and speak with Artemis Zin |q Vigilance##6604/3 |goto Ellevar -2499,-3653,-803
	step
		.' Search The Emperor's Blessing |q Vigilance##6604/4 |goto Ellevar -2365,-3514,-774
	step
		'Fight _Cadet Catian_
		.' Break up the fight |q Vigilance##6604/5
	step
		.talk Defender Velio##287172 |goto Ellevar -2357,-3505,-773
		.' Find information on Toric |q Vigilance##6604/6
	step
		'Press _C_ to open your Communicator:
		..turnin Vigilance##6604
		..accept Against All Odds##6605 |goto Ellevar -2506,-3639,-800
	step
		.talk Toric Antevian##287083 |goto Ellevar -2592,-3995,-754
		..accept Recognition of Faith##6606
	step
		' Click _Provisions_, then defend the area |goto Ellevar -2626,-3997,-757
		.' Collect the Provisions |q Recognition of Faith##6606/1
		.' Fend off enraged wildlife |q Recognition of Faith##6606/2
	step
		.talk Chieftain Aleli##276526 |goto Ellevar -2628,-3769,-794
		..turnin Glitterfur Assistance##6610
	step
		.talk Huntmaster Genki##287121 |goto Ellevar -2647,-3771,-793
		..turnin Hunter and Shiny Gatherer##6611
	step
		.talk Utsah the Curious##286935 |goto Ellevar -2619,-3778,-793
		..accept No Refunds##6779
	step
		.talk Watti Mozz##5768191 |goto Ellevar -2611,-3733,-798
		.' Speak to Watti Mozz |q No Refunds##6779/1
	step
		'Press _T_ while targeting the red glowing area |goto Ellevar -2621,-3723,-799
		.' Use Prototype Veggie Cannon 2.0 on the Target |q No Refunds##6779/2
		.' Use Prototype Veggie Cannon 3.0 on the Target |q No Refunds##6779/3
		.' Use Prototype Veggie Cannon 4.0 on the Target |q No Refunds##6779/4
		.' Use Prototype Veggie Cannon 5.0 on the Target |q No Refunds##6779/5
	step
		.talk Utsah the Curious##286935 |goto Ellevar -2618,-3777,-793
		..turnin No Refunds##6779
		..accept Veggie Launcher##6601
	step
		'Press _T_ while targeting the red glowing target |goto Ellevar -2473,-3896,-774
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/1
	step
		'Press _T_ while targeting the red glowing target |goto Ellevar -2515,-3872,-785
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/2
	step
		'Press _T_ while targeting the red glowing target |goto Ellevar -2552,-3844,-785
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/3
	step
		'Press _T_ while targeting the red glowing target |goto Ellevar -2591,-3819,-786
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/4
	step
		'Press _T_ while targeting the red glowing target |goto Ellevar -2624,-3783,-793
		.' Lure Prized Kurg Bull with cannon-launched veggies |q Veggie Launcher##6601/5
	step
		.talk Utsah the Curious##286935 |goto Ellevar -2618,-3778,-793
		..turnin Veggie Launcher##6601
	step
		.' Meet Toric Antevian |q Recognition of Faith##6606/3 |goto Ellevar -2412,-3531,-781
	step
		.talk Toric Antevian##276529 |goto Ellevar -2412,-3531,-781
		..turnin Recognition of Faith##6606
		..accept Before the Storm##6807
	step
		.talk Guardian Villos##287076 |goto Ellevar -2414,-3527,-781
		..turnin Against All Odds##6605
	step
		.'_Enter_ the buidling |goto Ellevar -2482,-3469,-762 < 10
		.talk Pyrius Octavian##686250 |goto Ellevar -2471,-3437,-762
		..turnin Before the Storm##6807
		..accept All In Good Faith##6587
	step
		'Pick _3_ Dominion Supplies |goto Ellevar -2547,-3757,-801
		.' Pick up Dominion Supplies |q All In Good Faith##6587/1
	step
		.talk Elder Wave-Caller##289092 |goto Ellevar -2995,-3472,-817
		..accept Spirits To Tend##6593
	step
		.talk Elder Mist-Dancer##278833 |goto Ellevar -2954,-3506,-821
		..accept Mouths To Feed##6592
	step
		.talk Elder Spirit-Walker##289093 |goto Ellevar -2893,-3487,-820
		.' Deliver Dominion Supplies to the Elder Spirit-Walker |q All In Good Faith##6587/2
	step
		.talk Elder Brood-Mother##278835 |goto Ellevar -2832,-3535,-816
		..accept Hearts To Grow##6594
	step
		'Aim at _Darkwood Fester_, press _T_ to:
		.' Kick Ball at Darkwood Festers |q Hearts To Grow##6594/1 |goto Ellevar -2810,-3557,-816
	step
		'Press _T_ to:
		.' Kick Ball at Stormseeker Totem |q Hearts To Grow##6594/2 |goto Ellevar -2816,-3549,-816
	step
		'Press _T_ to:
		.' Kick Ball at Primal Water Vessel |q Hearts To Grow##6594/3 |goto Ellevar -2856,-3462,-821 |tip This will spawn a water mob to fight.
	step
		'Press _T_ to:
		.' Kick Ball into Lake Larallen |q Hearts To Grow##6594/4 |goto Ellevar -2803,-3520,-822
	step
		'Press _T_ to:
		.' Kick Ball at the Elder Brood-Mother |q Hearts To Grow##6594/5 |goto Ellevar -2832,-3535,-816
	step
		.talk Elder Brood-Mother##278835 |goto Ellevar -2832,-3535,-816
		..turnin Hearts To Grow##6594
		.' Gain the trust of the Elder Brood-Mother |q All In Good Faith##6587/5
	step
		' Around the town:
		.click Primal Water Vessel##584563 |goto Ellevar -2985,-3474,-819
		.' Summon spirits from Primal Water Vessels |q Spirits To Tend##6593/1
	step
		.talk Guardian Zelcon##276156 |goto Ellevar -3175,-3671,-794
		..accept Dangerous Highlands##6582
	step
		.talk Tani Bril##276154 |goto Ellevar -3163,-3676,-794
		..accept The Tooth that Bites Last##6583
	step
		.talk Priestess Trania Lavus##286779 |goto Ellevar -3174,-3690,-793
		..accept Better Than This##6581
	step
		.' Hunt Highland birds |q Mouths To Feed##6592/1 |goto Ellevar -3031,-3721,-817
		.' Kill the Larallen Highlands Wildlife |q Dangerous Highlands##6582/1
		'Press _T_ to:
		.' Use De-Toothing Beam on Larallen Slanks |q The Tooth that Bites Last##6583/1
	step
		.click Ellevarian Fern##484014 |goto Ellevar -3307,-3739,-790
		.' Collect Herbs and Vegetables |q Better Than This##6581/1
	step
		'Press _C_ to open your Communicator:
		..turnin Better Than This##6581
		..turnin Dangerous Highlands##6582
		..turnin The Tooth that Bites Last##6583
	step
		.talk Elder Mist-Dancer##278833 |goto Ellevar -2954,-3505,-822
		..turnin Mouths To Feed##6592
		.' Gain the trust of the Elder Mist-Dancer |q All In Good Faith##6587/4
	step
		.talk Elder Wave-Caller##289092 |goto Ellevar -2996,-3473,-816
		..turnin Spirits To Tend##6593
		.' Gain the trust of the Elder Wave-Caller |q All In Good Faith##6587/3
	step
		.talk Elder Spirit-Walker##289053 |goto Ellevar -2895,-3487,-820
		..turnin All In Good Faith##6587
		..accept Fair Trade##6588
	step
		.talk Stormseeker Arcanist##288950  |goto Ellevar -2954,-3685,-820 |tip This starts an escort.
		.' Meet the Stormseeker Arcanist and escort Lifter |q Fair Trade##6588/1
	step
		'Press _C_ to open your Communicator:
		..turnin Fair Trade##6588 |goto Ellevar -2543,-3750,-802
		..accept Treacherous Territory##6589
	step
		.talk Poisoned Spirit-Walker##461709 |goto Ellevar -2948,-3662,-819
		.' Defeat the enemies that attack in waves
		.' Find the Poisoned Spirit-Walker |q Treacherous Territory##6589/1
	step
		.talk Poisoned Spirit-Walker##461709 |goto Ellevar -2949,-3663,-819
		..turnin Treacherous Territory##6589
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
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Lightreach Mission |goto Ellevar -2529,-3420,-765 < 10 |c |noway |q 6591
	step
		'Press _C_ to open your Communicator:
		..accept A Salvageable Situation##9047
	step
		.talk Technologist Corvianos##273666 |goto Ellevar -2591,-3503,-786
		..turnin A Salvageable Situation##9047
		..accept Breaking It Down##9049
	step
		'Press _I_ to open your inventory
		.' Drag the _Unstable Crafting Prototype_ over the _Salvage_ icon at the bottom of the inventory window|tip It looks like a recycle symbol.
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking It Down##9049/1
	step
		.talk Weaponsmith Tirexa##284134 |goto Ellevar -2599,-3517,-785
		..turnin Breaking It Down##9049
	step
		.'_Enter_ the large buidling |goto Ellevar -2482,-3471,-762 < 10 |c |q 6591/1
	step
		.click Lightreach Church Cellar Door##278598
		.' Find Pyrius Octavian |q The Face of Justice##6591/1 |goto Ellevar -2460,-3398,-762
	step
		.talk Pyrius Octavian##686250 |goto Ellevar -2463,-3438,-813
		.' Confront Pyrius Octavian |q The Face of Justice##6591/2
		.' Bring Pyrius Octavian to justice |q The Face of Justice##6591/4
	step
		.click Lightreach Church Cellar Door##278597 |goto Ellevar -2483,-3422,-808
		.' Exit the church cellar |q The Face of Justice##6591/5
	step
		.talk Toric Antevian##689788 |goto Ellevar -2471,-3444,-762
		..turnin The Face of Justice##6591
	step
		.' Press _C_ to open your Communicator:
		..accept A Healing Hand##6575
	step
		'_Cross_ the bridge and follow the road west |goto Ellevar -2544,-3761,-801 < 15
		.click Stabby's Map |goto Ellevar -3016,-3958,-815
		..turnin The Weight of Victory##6600
	step
		.click Mistclaw's Fresh Kill##286936 |goto Ellevar -3024,-3803,-816
		..accept Tracking Mistclaw##6584 |tip Item spawn at random around area.  Look map for quest symbol.
	step
		.' Follow the mist trail |q Tracking Mistclaw##6584/1 |goto Ellevar -3301,-3948,-774
		.kill 1 Mistclaw##698239 |q Tracking Mistclaw##6584/2
	step
		'Press _C_ to open your Communicator:
		..turnin Tracking Mistclaw##6584
	step
		.' Approach Guardian Zelcon |q A Healing Hand##6575/1 |goto Ellevar -3175,-3671,-794
	step
		.click Injured Radiant Guard##567969
		.' Heal Injured Radiant Guards  |q A Healing Hand##6575/2 |goto Ellevar -3273,-3730,-794
		.click Terrestrial Aquashroom##538184
	step
		.talk Guardian Zelcon##276156 |goto Ellevar -3176,-3671,-794
		..turnin A Healing Hand##6575
		..accept The Storm's Power##6576
		..accept Unfortunate Force##6577
	step
		.talk Tani Bril##276154 |goto Ellevar -3163,-3676,-793
		..accept More than Clay Jars##6580
	step
		.talk Priestess Trania Lavus##286779 |goto Ellevar -3174,-3690,-793
		..accept Fragments are Better than Nothing##6579
	step
		.talk Shrine of the Masters##276421 |goto Ellevar -3141,-3396,-817
		..accept Shrine of the Masters##6599
	step
		' Around the area:  |goto Ellevar -3240,-3451,-806
		.' Destroy Primal Phylax Jars |q More than Clay Jars##6580/1
		.' Kill Stormseeker Pell |q Unfortunate Force##6577/1
		.' Collect Eldan Tech Fragments from Stormseeker Drones |q Fragments are Better than Nothing##6579/1
	step
		'Press _C_ to open Communicator:
		..turnin More than Clay Jars##6580
		..turnin Unfortunate Force##6577
		..turnin Fragments are Better than Nothing##6579
	step
		.click Primal Storm Emitter##276433 |goto Ellevar -3342,-3299,-786
		.' Disable Primal Storm Emitters |q The Storm's Power##6576/1
	step
		'Press _C_ to open your Communicator:
		..turnin The Storm's Power##6576
		..accept The Wrath of the High Priest##6578
	step
		.'_Go up_ the dirt hill here |goto Ellevar -3609,-3231,-744 < 10 |c |q 6578/1
	step
		.' Kill the Stormseeker High-Priest |q The Wrath of the High Priest##6578/1 |goto Ellevar -3440,-3429,-760
	step
		.' _Recall-Transmat_ to Lightreach Mission |goto Ellevar -2529,-3420,-765 < 10 |c |noway |q 6578
	step
		.talk Toric Antevian##287083 |goto Ellevar -2414,-3532,-779
		..turnin The Wrath of the High Priest##6578
		..accept Priority One Distress Call##7110
	step
		'Press _C_ to open your Communicator:
		..accept [Dungeon] Protogames Preparations##9764 |tip No need to complete dungeon for reward
	step
		.talk Protogames Recruiter |goto Ellevar -2520,-3687,-802
		..turnin [Dungeon] Protogames Preparations##9764
	step
		.' Travel to Mistymurk Camp |tip You can use Taxi |q Priority One Distress Call##7110/1 |goto Ellevar -2597,-2975,-772
	step
		.talk Nerissa Artan##276023 |goto Ellevar -2516,-2931,-765
		..turnin Priority One Distress Call##7110
		..accept Out For Lunch##6887
	step
		.talk Ringo Hax##276022 |goto Ellevar -2513,-2932,-765
		..accept Kill Them All... for Science##6888
		..accept Pincer Business##6892
	step
		.click The Highborn: Eldan Dreams##275922 |goto Ellevar -2426,-2837,-726
		..accept Lost In The Woods##6890
	step
		.click The Highborn: Seduction of Honor##275913 |goto Ellevar -2504,-2795,-735
		.' Find "The Highborn: Seduction of Honor" |q Lost In The Woods##6890/1
	step
		.click The Highborn: Lust for Power##286493 |goto Ellevar -2599,-2729,-735
		.' Find "The Highborn: Lust for Power" |q Lost In The Woods##6890/2
	step
		.'_Climb_ up the side of the hill |goto Ellevar -2737,-2765,-728 < 30 |c |q 6890/3
	step
		.click The Highborn: Sovereignty Unveiled##275911 |goto Ellevar -2752,-2729,-731
		.' Kill the enemies that attack in waves
		.' Find "The Highborn: Sovereignty Unveiled" |q Lost In The Woods##6890/3
	step
		'Around this area:  |goto Ellevar -2536,-2777,-737
		.' Rescue Radiant Soldiers from Webwood Cocoons |q Out For Lunch##6887/1
		.' Collect Webwood Spider Part |q Kill Them All... for Science##6888/1
		.' Withstand the spiders' Pincer Flurry attacks |q Pincer Business##6892/1 |tip Kill counts only if Pincer uses flurry attack.
	step
		'Press _C_ to open your Communicator:
		..turnin Pincer Business##6892
	step
		.talk Nerissa Artan##276023 |goto Ellevar -2516,-2931,-765
		..turnin Out For Lunch##6887
		..turnin Lost In The Woods##6890
	step
		.talk Ringo Hax##276022 |goto Ellevar -2513,-2933,-765
		..turnin Kill Them All... for Science##6888
		..accept Better, Faster, Stronger##6889
	step
		.talk Nerissa Artan##276023 |goto Ellevar -2516,-2931,-765
		..accept Bug Zapper##6891
	step
		.talk Dio##286466 |goto Ellevar -2480,-2939,-764
		..accept Raving Ravenok##6597
	step
		.talk Agent Varac##276010 |goto Ellevar -2514,-2971,-762
		..accept A Bad Snog##6598
	step
		'_IMPORTANT_ Click these in order: _4_, _2_, _5_, _1_, _3_
		.' Recalibrate the E.D.P. Station _number 4_ |goto Ellevar -2571,-2935,-765 < 10
		.' Recalibrate the E.D.P. Station _number 2_ |goto Ellevar -2466,-2924,-764 < 10
		.' Recalibrate the E.D.P. Station _number 5_ |goto Ellevar -2565,-2975,-766 < 10
		.' Recalibrate the E.D.P. Station _number 1_ |goto Ellevar -2475,-2977,-765 < 10
		.' Recalibrate the E.D.P. Station _number 3_ |goto Ellevar -2536,-2901,-768
		.' Recalibrate the E.D.P. Stations |q Bug Zapper##6891/1
	step
		.talk Nerissa Artan##276023 |goto Ellevar -2516,-2931,-765
		..turnin Bug Zapper##6891
	step
		.click Spiderbot Controller##275923 |goto Ellevar -2493,-2933,-765
		.' Choose _Yes_ to take control of a Webswood Spiderbot
		.' Activate the Spiderbot Controller |goto Ellevar -2510,-2648,-697 < 50 |c |noway |q 6889
	step
		.talk Webwood Taskmaster##276021 |goto Ellevar -2510,-2648,-697
		..accept Egg-Septional Coordination##6893
	step
		.'_Head into_ the cave and follow the path left |goto Ellevar -2426,-2470,-697 < 10 |c |q 6893/1
	step
		.' Gather Webwood Larvae |goto Ellevar -2382,-2498,-697 |tip Don't take more than 4 eggs per trip.
		.' Use the controls to not drop the eggs as you _return to the cave entrance_ |goto Ellevar -2512,-2647,-697
		.' Retrieve Webwood Larvae |q Egg-Septional Coordination##6893/1
	step
		.talk Webwood Taskmaster##276021 |goto Ellevar -2509,-2649,-697
		..turnin Egg-Septional Coordination##6893
	step
		.'_Enter_ the cave and turn right |goto Ellevar -2479,-2551,-697 < 10 |c |q 6889/2
	step
		.' Find the Webwood Queen |q Better, Faster, Stronger##6889/2 |goto Ellevar -2522,-2495,-697
	step
		.talk Ringo Hax##276022 |goto Ellevar -2513,-2933,-765
		..turnin Better, Faster, Stronger##6889
	step
		.talk Nerissa Artan##276023 |goto Ellevar -2515,-2931,-765
		..accept Exciting Discoveries##6908
	step
		' In this area:  |goto Ellevar -2498,-3081,-798 < 20
		.' Click _Ravenok, then Press _T_ to Catch.  You need 5.
		.' Catch and return Escaped Ravenok |q Raving Ravenok##6597/1
		.' Collect Ellevarian Eldan Remnant |q A Bad Snog##6598/1
	step
		.talk Agent Varac##276010 |goto Ellevar -2513,-2971,-762
		..turnin A Bad Snog##6598
	step
		.click Bait Rock##275893 |goto Ellevar -2336,-2976,-746
		.' Find and subdue Goldy |q Raving Ravenok##6597/2
	step
		.talk Dio##286466 |goto Ellevar -2480,-2939,-764
		..turnin Raving Ravenok##6597
	step
		.talk Lowland Chick##286277 |goto Ellevar -2913,-3051,-815
		..accept Unnatural Selection##6918
	step
		.' Kill Snoglugs |q Unnatural Selection##6918/1 |goto Ellevar -2910,-3055,-817
		' Click _Spotted Splorg_ on the floor
		.' Collect Spotted Splorg |q Unnatural Selection##6918/2
	step
		.talk Calliope Rose##286230 |goto Ellevar -2954,-2829,-766
		.' Speak with Calliope Rose |q Unnatural Selection##6918/3
	step
		.talk Lead Excavator Radek Villius##286341 |goto Ellevar -2944,-2835,-766
		..turnin Exciting Discoveries##6908
		..accept The Datacube Tells All##6910
	step
		.talk Sariah Lumentis##275764 |goto Ellevar -2938,-2830,-767
		..accept Antiquities Below the Soil##6915
	step
		.talk Scientist Hrezz##286340 |goto Ellevar -2950,-2826,-766
		..accept Security Protocol##6914
	step
		' Click _Lowland Chick_, then press _T_ to:  |goto Ellevar -2910,-3055,-817
		.' Feed Chick Veggie Mash |q Unnatural Selection##6918/4
		.' Feed Chick Snoglugs |q Unnatural Selection##6918/5
		.' Feed Chick Splotted Splorg |q Unnatural Selection##6918/6
	step
		.click Lowland Chick##286265 |goto Ellevar -2912,-3050,-816
		..turnin Unnatural Selection##6918
	step
		.' Find Radek's Datacube |q The Datacube Tells All##6910/1 |goto Ellevar -3115,-2923,-790
	step
		.click Irradiated Bio-Mech Minerals##850418 |tip These are mostly on the ground around this structure.
		.' Collect Irradiated Bio-Mech Minerals |q Antiquities Below the Soil##6915/1 |goto Ellevar -3003,-2893,-770
		.' Collect Inner Hyper-Modular Mechanism from Bio-Mech Constructs |q Security Protocol##6914/1 |goto Ellevar -3025,-2926,-768
		.' Destroy the Bio-Mech Eldan Constructs |q The Datacube Tells All##6910/2 |goto Ellevar -3018,-2923,-768
	step
		.talk Lead Excavator Radek Villius##286341 |goto Ellevar -2945,-2836,-766
		..turnin The Datacube Tells All##6910
		..accept Creepy Origins##6911
	step
		.talk Maxinux##286338 |goto Ellevar -2936,-2834,-767
		..accept Power It Up##6917
	step
		.talk Sariah Lumentis##275764 |goto Ellevar -2937,-2830,-767
		..turnin Antiquities Below the Soil##6915
	step
		.talk Scientist Hrezz##286340 |goto Ellevar -2951,-2825,-766
		..turnin Security Protocol##6914
		..accept Ultrasonic Barriers##6916
	step
		'Around area, do: |goto Ellevar -2993,-2927,-773
		.' Use the Ultrasonic Pulsing Ray on Lowland Canimid |q Ultrasonic Barriers##6916/1 |tip Step over Dirt Piles, click mob that spawn, press T
		.' Activate the Bio-Mech Power Pylons |q Power It Up##6917/1
	step
		'Press _C_ to open your Communicator:
		..turnin Ultrasonic Barriers##6916
	step
		'Press _C_ to open your Communicator:
		..turnin Power It Up##6917
	step
		.' Find where test subjects were held |q Creepy Origins##6911/1 |goto Ellevar -3083,-3168,-797
	step
		.click Bio-Transmute Holodisplay##275877 |goto Ellevar -3098,-3151,-889
		.' Inspect the Genetic Amplification Holodisplay |q Creepy Origins##6911/2
	step
		.kill Biotransmuted Canimid##937811+, Biotransmuted Spider##935569+, Biotransmuted Buzzbing##937715+
		.' Kill the attacking Bio-Transmuted creatures |q Creepy Origins##6911/3
	step
		'Press _C_ to open your Communicator:
		..turnin Creepy Origins##6911
		..accept Lost in Translation##6912
	step
		.click Bio-Mech Infosphere##275876 |goto Ellevar -3097,-3168,-890
		.' Find the first Bio-Mech Infosphere Data |q Lost in Translation##6912/1
	step
		'_Step into_ the green teleporter |goto Ellevar -3097,-3134,-889 < 5
		.click Bio-Mech Infosphere##275875 |goto Ellevar -3140,-3003,-787
		.' Find the second Bio-Mech Infosphere Data |q Lost in Translation##6912/2
	step
		.click Bio-Mech Infosphere##286450 |goto Ellevar -3184,-2996,-771
		.' Find the third Bio-Mech Infosphere Data |q Lost in Translation##6912/3
	step
		.click Bio-Mech Infosphere##275873 |goto Ellevar -3271,-2982,-763
		.' Find the fourth Bio-Mech Infosphere Data |q Lost in Translation##6912/4
	step
		'Press _C_ to open your Communicator:
		..turnin Lost in Translation##6912
		..accept Seeing is Believing##6913
	step
		.click Augmentation Apparatus Component##879973 |tip Around the floor |goto Ellevar -3330,-3005,-760
		.' Collect Augmentation Apparatus Components |q Seeing is Believing##6913/1
	step
		.click Augmentation Apparatus Component##275864 |goto Ellevar -3447,-2951,-743
		.' Activate the Disabled Augmentation Engine |q Seeing is Believing##6913/2
	step
		.'Kill Shattercrag the Broken |q Seeing is Believing##6913/3 |goto Ellevar -3362,-2965,-754
	step
		.talk Lead Excavator Radek Villius##286341 |goto Ellevar -2944,-2834,-766
		..turnin Seeing is Believing##6913
	step
		'Press _C_ to open your Communicator:
		..accept Path to Ascension##7066
	step
		.talk Calidor Antevian##275523 |goto Ellevar -2930,-2601,-746
		..turnin Path to Ascension##7066
		..accept Deciphering the Unknown##6878
	step
		'_Follow_ Calidor and protect him
		.' Escort Calidor as he explores |q Deciphering the Unknown##6878/1 |goto Ellevar -2924,-2488,-750
	step
		.' Enter the Recombination Complex |q Deciphering the Unknown##6878/2 |goto Ellevar -2912,-2484,-749
	step
		.talk Calidor Antevian##275522 |goto Ellevar -2944,-2604,-857
		..turnin Deciphering the Unknown##6878
		..accept Blackout##6879
	step
		.talk Xenoarchaeologist Volios##286021 |goto Ellevar -2960,-2613,-857
		..accept Language of the Gods##6885
	step
		.click Decrepit Console##275676 |goto Ellevar -2962,-2614,-857
		.' Inspect the Decrepit Console |q Language of the Gods##6885/1
	step
		.click Decrepit Console##275674 |goto Ellevar -2898,-2533,-859
		.' Find the second Decrepit Console |q Language of the Gods##6885/2
	step
		.click Power Cell##760555 |goto Ellevar -2912,-2537,-859
		.' Collect Power Cells |q Blackout##6879/1
	step
		.click Power Rod##275752 |goto Ellevar -2900,-2504,-856
		.' Insert Power Cells into Power Rods |q Blackout##6879/2 |count 1
	step
		.click Power Rod##275753 |goto Ellevar -2977,-2504,-856
		.' Insert Power Cells into Power Rods |q Blackout##6879/2
	step
		.click Bio-Mech Complex AH47 Main Control##286283 |goto Ellevar -2938,-2467,-854
		.' Activate the Bio-Mech Complex AH47 Main Control |q Blackout##6879/3
	step
		'Press _C_ to open your Communicator:
		..turnin Blackout##6879
		..accept Fade from Black##6880
		..accept Keep Them Separated##6884
	step
		.talk Xenobiologist Karizi##275505 |goto Ellevar -2951,-2490,-859
		..accept Augmentations for Analysis##7031
	step
		'_Run through_ the small corridor |goto Ellevar -2908,-2460,-859 < 10
		.click Decrepit Console##275673 |goto Ellevar -2891,-2325,-855
		.' Find the third Decrepit Console |q Language of the Gods##6885/3
	step
		'Press _T_ to use your quest ability |tip Kill mobs within the circle.
		.' Kill Augmented Rockside Digclaws within the Augment Analyzer's radius |q Augmentations for Analysis##7031/1 |goto Ellevar -2938,-2366,-855
	step
		'Press _C_ to open your Communicator:
		..turnin Augmentations for Analysis##7031
	step
		.' Find the Augmentation wing of the Recombination Complex |q Fade from Black##6880/1
		.click Holding Cell Monitor##275701 |goto Ellevar -3048,-2381,-852
		.' Inspect augmentation chambers |q Fade from Black##6880/2
	step
		.click Holding Cell Monitor##275701 |goto Ellevar -3048,-2382,-852
		.' Activate a chamber to release pressure |q Fade from Black##6880/3
		.' Kill the Augmented creature |q Fade from Black##6880/4
	step
		.kill AH47 Augmentor##995080+
		.' Destroy AH47 Augmentors |q Keep Them Separated##6884/1
	step
		'Press _C_ to open your Communicator:
		..turnin Keep Them Separated##6884
	step
		.'_Step into_ the green portal |goto Ellevar -2942,-2321,-851 < 10 |c |q 6880
	step
		.talk Xenoanalyst Derenia##275506 |goto Ellevar -3117,-2428,-945
		..accept Mine Control##7047
	step
		.talk Calidor Antevian##275520 |goto Ellevar -3126,-2428,-944
		..turnin Fade from Black##6880
		..accept An Eerie Eldan Glow##6881
	step
		.click Eldan Security Mine##275560 |goto Ellevar -3111,-2433,-945
		.' Disarm Eldan Security Mines |q Mine Control##7047/1
	step
		.talk Xenoanalyst Derenia##275506 |goto Ellevar -3117,-2428,-945
		..turnin Mine Control##7047
	step
		.click Decrepit Console##286184 |goto Ellevar -3111,-2473,-944
		.' Find the fourth Decrepit Console |q Language of the Gods##6885/4
	step
		.'_Go through_ the doorway and down the hall |goto Ellevar -3015,-2437,-943 < 20 |c |q 6881/1 |tip Try to avoid the mines on the ground.
	step
		.' Find the Prototype Recombination Wing |q An Eerie Eldan Glow##6881/1 |goto Ellevar -2909,-2512,-952
	step
		.' Kill an AH47 Augmentor and take its Capturing Device |q An Eerie Eldan Glow##6881/2 |goto Ellevar -2913,-2553,-953
	step
		' Click _Stray Rockside Digger_, press _T_ to:
		.' Use the Capturing Device on Stray Canimid |q An Eerie Eldan Glow##6881/3 |goto Ellevar -2914,-2560,-953
	step
		.click Recombination Prototype Controls##275682 |tip You need to have a Canimid attached to you to activate this.  |goto Ellevar -2932,-2560,-953
		.' Activate the Prototype Recombination Chamber |q An Eerie Eldan Glow##6881/4
	step
		.' Kill the Recombinated Canimid |q An Eerie Eldan Glow##6881/5 |goto Ellevar -2942,-2562,-951
	step
		.click Decrepit Console##286186 |goto Ellevar -2887,-2604,-953
		.' Find the fifth Decrepit Console |q Language of the Gods##6885/5
	step
		.'_Go through_ the doorway and follow the hallway to the left |goto Ellevar -2910,-2503,-952 < 20 |c |q 6885/6
	step
		.' _Keep following_ the hall through this doorway |goto Ellevar -2849,-2439,-961 < 20 |c |q 6885/6
	step
		.' _Enter_ the doorway |goto Ellevar -2810,-2388,-961 < 20 |c |q 6885/6
	step
		.click Decrepit Console##286187 |goto Ellevar -2786,-2343,-962
		.' Find the sixth Decrepit Console |q Language of the Gods##6885/6
	step
		'Press _C_ to open your Communicator:
		..turnin Language of the Gods##6885
	step
		.talk Calidor Antevian##275518 |goto Ellevar -2807,-2365,-961
		..turnin An Eerie Eldan Glow##6881
		..accept Blinding Light##6882
	step
		.' Enter the Recombination Chamber |q Blinding Light##6882/1 |goto Ellevar -2810,-2351,-956
	step
		.'_Go through_ the door and follow the hallway |goto Ellevar -2932,-2452,-1081 < 15 |c |q 6882/2
	step
		.'_Enter_ the large open room |goto Ellevar -2871,-2486,-1090 < 15 |c |q 6882/2
	step
		.' Stop Calidor Antevian |q Blinding Light##6882/2 |goto Ellevar -2911,-2533,-1092
	step
		.'_Go back_ through the doorway into the hallway |goto Ellevar -2871,-2487,-1090 < 15 |c |q 6882/3
	step
		.' _Continue_ into the open room |goto Ellevar -2933,-2452,-1081 < 15 |c |q 6882/3
	step
		.click Exit Teleporter Panel##286185 |goto Ellevar -3004,-2435,-1082
		.' Activate the Exit Teleporter Panel |q Blinding Light##6882/3
	step
		.' Leave the Recombination Chamber |q Blinding Light##6882/4 |goto Ellevar -3018,-2441,-1080
	step
		'Press _C_ to open your Communicator: 
		..turnin Blinding Light##6882
		..accept Shimmer of Hope##6883
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Lightreach Mission |goto Ellevar -2529,-3420,-765 < 10 |c |noway |q 6883
	step
		.talk Toric Antevian##276529 |goto Ellevar -2414,-3532,-779
		..turnin Shimmer of Hope##6883
	step
		'Press _C_ to open your Communicator:
		..accept The Infamous Corrigan Doon##6664 |goto Ellevar -2447,-3576,-786
	step
		.talk Corrigan Doon##290692 |goto Ellevar -2346,-3479,-770
		..turnin The Infamous Corrigan Doon##6664
		..accept Sobering Up##6612
	step
		.'_Enter_ the large building |goto Ellevar -2481,-3467,-762 < 20 |c |q 6612/3
	step
		.click Prayer Wine##1099475 |goto Ellevar -2460,-3441,-762
		.' Acquire a bottle of Prayer Wine |q Sobering Up##6612/3
	step
		.click Nap Nap Juice##1099181 |goto Ellevar -2570,-3489,-781
		.' Collect a bottle of Nap Nap Juice |q Sobering Up##6612/1 | tip Is right next to the shiphand
	step
		.'_Enter_ the small house |goto Ellevar -2564,-3559,-794 < 10 |c |q 6612/2
	step
		.talk Vern Virius##276675 |goto Ellevar -2581,-3557,-792
		.' Buy a bottle of Oxian Oil |q Sobering Up##6612/2 |tip Is sold under the GENERAL tab at the bottom.
	step
		.click Mix-O-Matic##290500 |goto Ellevar -2348,-3483,-770
		.' Mix the ingredients in the Mix-O-Matic |q Sobering Up##6612/4
	step
		.click Boil-O-Matic##280335 |goto Ellevar -2347,-3485,-770
		.' Heat the concoction in the Boil-O-Matic |q Sobering Up##6612/5
	step
		.talk Corrigan Doon##290692 |goto Ellevar -2347,-3479,-770
		..turnin Sobering Up##6612
		..accept Locating the Crash Site##6613
	step
		.talk Adalno##280517 |goto Ellevar -2345,-3482,-770
		..accept Ravenok Menace##6615
	step
		.talk Radiant Warden Vezir##290438 |goto Ellevar -2256,-3241,-745
		..accept A Vigilant Defense##6648
	step
		.talk Radiant Medic Vacuna##280269 |goto Ellevar -2231,-3238,-743
		.' Check on Radiant Medic Vacuna |q A Vigilant Defense##6648/1
	step
		.click Rescue Flare##280045 |goto Ellevar -2192,-3229,-735
		.' Light the Rescue Flare |q A Vigilant Defense##6648/2
	step
		' Fight the waves of enemies |goto Ellevar -2192,-3228,-735
		.' Defend the Vigilant Heart Outpost |q A Vigilant Defense##6648/3
	step
		.talk Radiant Warden Vezir##290438 |goto Ellevar -2255,-3241,-729
		..turnin A Vigilant Defense##6648
		..accept Into the Woods##6649
	step
		'Press _C_ to open your Communicator:
		..accept Quarantine Enforcement##6806
	step
		.talk Radiant Scout Callidan##290165 |goto Ellevar -2202,-3120,-739
		.' Find Radiant Scout Callidan |q Into the Woods##6649/1
	step
		.talk Farmer Horato##290436 |goto Ellevar -2219,-2955,-729
		..accept Baiting the Giant##6656 |tip He walks around this road
	step
		.click Radiant Guard Maxima##290167 |goto Ellevar -2158,-2995,-717
		.' Find Radiant Guard Maxima |q Into the Woods##6649/2
	step
		.click Oxian Holostation##279985 |goto Ellevar -2041,-2905,-663
		.' Activate the Oxian Holostation |q Baiting the Giant##6656/1
		.' Kill Raedon the Ox Snatcher |q Baiting the Giant##6656/2
	step
		'Press _C_ to open your Communicator:
		..turnin Baiting the Giant##6656
	step
		.talk Radiant Scout Bagum##290166 |goto Ellevar -2066,-3071,-718
		.' Find Radiant Scout Bagum |q Into the Woods##6649/3
	step
		.' Find Professor Cornelius |q Into the Woods##6649/4 |goto Ellevar -1932,-3217,-720
		.talk Professor Cornelius##280037 |goto Ellevar -1932,-3217,-720
		..turnin Into the Woods##6649
		..accept Scientific Method##6650
	step
		.click Bloated Darkspire Slank##290150+ |goto Ellevar -1932,-3208,-723
		.' Inspect Bloated Darkspire Slanks |q Scientific Method##6650/1
	step
		.' Gather Branches from Toxic Stumpkins |q Scientific Method##6650/2 |goto Ellevar -2096,-3293,-736
	step
		.click Darkfang Prowler##2030947+, Darkfang Alpha##1745327+, Darkfang Hunter##1992729+
		.' Press _T_ to apply the Toxicity Analyzer to Darkfang Dagun |q Scientific Method##6650/3 |tip If you keep some distance you can reaply on same target without agrro
	step
		.kill Darkfang Prowler##1928144+, Darkfang Hunter##2039646
		.' Kill Darkfang Dagun |q Quarantine Enforcement##6806/1 |goto Ellevar -2096,-3293,-736
	step
		'Press _C_ to open your Communicator:
		..turnin Quarantine Enforcement##6806
		..turnin Scientific Method##6650
		..accept Prisoner to the Mordesh##6778
	step
		.' Find Professor Cornelius |q Prisoner to the Mordesh##6778/1 |goto Ellevar -1711,-3195,-699
		.kill Darkpool Shadowdagger##1893806+, Darkpool Gunslinger##1782761+
		.' Kill Darkpool Mordesh and find the Access Code |q Prisoner to the Mordesh##6778/2 |goto Ellevar -1704,-3202,-698
	step
		' Click _Security Panel_ and enter code _2657_
		.' Deactivate Professor Cornelius' Prison Cage |q Prisoner to the Mordesh##6778/3 |goto Ellevar -1715,-3191,-699
	step
		.talk Professor Cornelius##280275 |goto Ellevar -1717,-3196,-699
		..turnin Prisoner to the Mordesh##6778
		..accept Planned Fallout##6652
	step
		.click Darkpool Poison Tank##280012
		.' Rig Poison Tanks to explode |q Planned Fallout##6652/1 |goto Ellevar -1717,-3232,-697
	step
		'_Walk onto_ the wooden platform |goto Ellevar -1771,-3173,-700 < 10
		.click Darkpool Poison Vent##290123
		.' Sabotage the vents |q Planned Fallout##6652/2 |goto Ellevar -1752,-3159,-693
	step
		'Press _C_ to open your Communicator:
		..turnin Planned Fallout##6652
		..accept The Antidote##6653
	step
		.' Kill Viralist Zarkin |q The Antidote##6653/1 |goto Ellevar -1702,-3132,-692
	step
		.talk Merchant Sani##280271 |goto Ellevar -1682,-3415,-692
		..accept Blown Up with Darkfangs##6654
	step
		.click Darkfang Den##279979 |goto Ellevar -1726,-3407,-704
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1 |count 33
		.click Darkfang Den##290098 |goto Ellevar -1778,-3442,-712
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1 |count 66
		.click Darkfang Den##279980 |goto Ellevar -1723,-3477,-708
		.' Set Charges at Darkfang Dens |q Blown Up with Darkfangs##6654/1
	step
		.talk Merchant Sani##280271
		..turnin Blown Up with Darkfangs##6654
	step
		.talk Professor Cornelius##280263 |goto Ellevar -1925,-3227,-718
		.' Meet Professor Cornelius at his camp |q The Antidote##6653/2
	step
		'_Pick up the potion before you leave tent_
		.click Combustive Potion##1807508 |goto Ellevar -1927,-3231,-718 |c
	step
		.talk Doctor Matrine Flovus##290427 |goto Ellevar -2253,-3256,-744
		.' Give Professor Cornelius' Cure to Doctor Matrine Flovus |q The Antidote##6653/3
	step
		.talk Radiant Warden Vezir##290438 |goto Ellevar -2257,-3241,-745
		..turnin The Antidote##6653
	step
		' If need to sell use the Transmat to town
		.' Locate the first signal |q Locating the Crash Site##6613/1 |goto Ellevar -2178,-3411,-737
		.' Examine the Port Engine Scrap |q Locating the Crash Site##6613/2 |tip Kill Bleakwings as you do this quest.
	step
		.' Locate the second signal |q Locating the Crash Site##6613/3 |goto Ellevar -2151,-3607,-746
		.' Examine the Aft Stabilizer Scrap |q Locating the Crash Site##6613/4 |tip Kill Bleakwings as you do this quest.
	step
		.kill Bleakwing Charger##1776350+, Bleakwing Razorbeak##1903368+
		.' Kill Bleakwing ravenok |q Ravenok Menace##6615/1 |goto Ellevar -2093,-3643,-743
	step
		'Press _C_ to open your Communicator:
		..turnin Ravenok Menace##6615
	step
		.' Locate the third signal |q Locating the Crash Site##6613/5 |goto Ellevar -2054,-3768,-744
		.' Examine the Sensor Array Scrap |q Locating the Crash Site##6613/6 |tip Kill Bleakwings as you do this quest.
	step
		'Press _T_ to call Corrigan Doom
		.talk Corrigan Doom |goto Ellevar -2347,-3479,-770
		..turnin Locating the Crash Site##6613
		..accept Identifying the Deceased##6617
	step
		.click Emergency Supply Kit##280515 |goto Ellevar -2034,-3781,-738
		..accept Scaring the Scavengers##6616
	step
		.' Identify the bodies |q Identifying the Deceased##6617/1 |goto Ellevar -2005,-3817,-734
		' Press _T_ to:
		.' Frighten away Longsnout Scavengers |q Scaring the Scavengers##6616/1 |goto Ellevar -2004,-3817,-734
	step
		'Press _T_ to call Corrigan Doom (need correct coords)
		.talk Corrigan Doom |goto Ellevar -1998,-3826,-733
		..turnin Identifying the Deceased##6617
		..accept Copperworth Village##6644
	step
		'Press _C_ to open your Communicator:
		..turnin Scaring the Scavengers##6616
	step
		'Enter the Copperworth General Store |q Copperworth Village##6644/1 |goto Ellevar -1795,-3820,-735
		.kill Tideborn Shellback##1934617+
	step
		.click Doorbell##290459 |goto Ellevar -1861,-3793,-737
		.' Ring the doorbell at the Western House |q Copperworth Village##6644/2
	step
		.click Doorbell##290460 |goto Ellevar -1842,-3848,-730
		.' Ring the doorbell at the Northern House |q Copperworth Village##6644/3
	step
		'Search the Northern Farm |q Copperworth Village##6644/4
		.talk Ellie the Unhinged##290689 |goto Ellevar -1762,-4031,-707
		.' Speak with Ellie the Unhinged |q Copperworth Village##6644/5
	step
		.' _Go up_ this way |goto Ellevar -1918,-4084,-675 < 15 |c |q 6644/6
	step
		'Press _C_ to open your Communicator:
		..accept An Act of Aggression##6737
	step
		'Investigate the Tower |q Copperworth Village##6644/6 |goto Ellevar -1986,-4166,-651
	step
		.talk Corrigan Doon##290688 |goto Ellevar -1986,-4166,-651
		..turnin Copperworth Village##6644
		..accept Rescue at Tideborn Station##6681
	step
		.click Ikthian Stasis Generator##280313
		.' Disable stasis generators |q Rescue at Tideborn Station##6681/1 |goto Ellevar -2003,-4144,-654
	step
		.talk Corrigan Doon##290688 |goto Ellevar -1986,-4166,-651
		..turnin Rescue at Tideborn Station##6681
		..accept Knock Knock##6734
	step
		' Click _Eldan Door_ and step on green teleporter
		.' Enter the Eldan Tower |q Knock Knock##6734/1 |goto Ellevar -1986,-4168,-651
	step
		.' Kill Cortex Prime Whitewater |q Knock Knock##6734/2 |goto Ellevar -2,-49,0
	step
		.talk Corrigan Doon##262156 |goto ... 0,-41,0
		..turnin Knock Knock##6734
		..accept Tall Tales##6632
	step
		.' Take the _green portal_ out |goto ... 0,-13,2 < 5 |c |q 6632
	step
		.kill Tideborn Researcher##1896880+, Tideborn Wavefin##1896490+, Tideborn Shellback##1898328+
		.' Kill Tideborn forces |q An Act of Aggression##6737/1 |goto Ellevar -1976,-4134,-656
	step
		'Press _C_ to opne your Communicator:
		..turnin An Act of Aggression##6737
	step
		.'_Cross through_ the path towards town |goto Ellevar -1708,-3787,-731 < 30 |c |q 6632
	step
		.talk Agent Cognosa##279829 |goto Ellevar -1538,-3869,-729
		..turnin Tall Tales##6632
		..accept Ikthian Insights##6636
	step
		.click Crashed Ikthian Ship##289927 |goto Ellevar -1440,-3901,-724
		.' Access the Crashed Ship |q Ikthian Insights##6636/1
	step
		' Kill _Slenderskin_ mobs around for drop |goto Ellevar -1379,-3829,-743
		.' Kill Slenderskin Ikthian to obtain Genetic Sample |q Ikthian Insights##6636/2
	step
		.click Crashed Ikthian Ship##289927 |goto Ellevar -1440,-3901,-724
		.' Obtain data from the Crashed Ship |q Ikthian Insights##6636/3
	step
		.talk Agent Cognosa##279829 |goto Ellevar -1538,-3869,-729
		..turnin Ikthian Insights##6636
		..accept Unidentified Flying Object##6634
	step
		.click Ikthian Transport Controls##279817 |goto Ellevar -1420,-3815,-737
		.' Hijack a Transport Disc |q Unidentified Flying Object##6634/1
	step
		.' Infiltrate the Ikthian Base |q Unidentified Flying Object##6634/2 |goto Ellevar -1126,-3776,-748
	step
		'Press _C_ to open your Communicator:
		..turnin Unidentified Flying Object##6634
		..accept Dead End##6635
	step
		.kill Slenderskin Crawler##1794973+, Slenderskin Implementer##1795846+, Slenderskin Shredder##1792035+, Slenderskin Slicer##1874881
		.' Kill Ikthian forces |q Dead End##6635/1 |goto Ellevar -1100,-3747,-746
	step
		.click Ikthian Transport Controls##289931 |goto Ellevar -1124,-3567,-740
		.' Access the Transport Disc Controls |q Dead End##6635/2
	step
		'Press _C_ to open your Communicator:
		..turnin Dead End##6635
		..accept Out of Your Depth##6637
		..accept Know Your Enemy##6638
	step
		' As soon you reach _Level 14_ you will receive a call for _Illium Awaits_.  You will accept it.
		.' Enter the Diluvian Depths |q Out of Your Depth##6637/1 |goto Ellevar -929,-3426,-642
	step
		.click Ikthian Hologram Projector##289891 |goto Ellevar -779,-3476,-641
		.' Activate the Ikthian Hologram Projector |q Out of Your Depth##6637/2
	step
		' _Go Left_ and kill _Slenderskin_ mobs as you go
		.click Ikthian Biological Experiment##289893
		.' Destroy the Ikthian Biological Experiments |q Out of Your Depth##6637/3 |goto Ellevar -838,-3600,-641
	step
		'Press _C_ to use your Communicator:
		..turnin Out of Your Depth##6637
	step
		' _Go Right_ now and kill _Slenderskin_ mobs as you go
		.' Kill Slenderskin Ikthians |q Know Your Enemy##6638/1 |goto Ellevar -761,-3435,-638
	step
		'Press _C_ to open your Communicator:
		..turnin Know Your Enemy##6638
		..accept Advanced Science##6640
	step
		.click Data Center: Biology##289875 |goto Ellevar -780,-3487,-641
		.' Download Biology Data |q Advanced Science##6640/1
	step
		'_Follow_ the cave around the corner |goto Ellevar -723,-3385,-641 < 20
		.click Crate of Eldan Technology##289776 |goto Ellevar -664,-3403,-641
		..accept The Collectors##6639
	step
		'Press _C_ to open your Communicator:
		..accept Restore Default Settings##6647 |goto Ellevar -664,-3403,-641
	step
		.click Data Center: Eldan Tech##279753 |goto Ellevar -617,-3473,-641
		.' Download Eldan Data |q Advanced Science##6640/2
	step
		.click Dismantled Eldan Component##1883840
		.' Collect Dismantled Eldan Technology |q The Collectors##6639/1 |goto Ellevar -621,-3441,-642
	step
		'Press _C_ to open your Communicator:
		..turnin The Collectors##6639
	step
		.'_Continue_ along the cave's path |goto Ellevar -551,-3524,-641 < 10 |c |q 6640/3
	step
		.click Slenderskin Implementer##1734285 |goto Ellevar -507,-3628,-659
		.' Download Ikthian Data |q Advanced Science##6640/3
	step
		' Click _Hijacked Eldan Probe_, press _T_ to:
		.' Reset Hijacked Eldan Probes |q Restore Default Settings##6647/1 |goto Ellevar -616,-3615,-659
	step
		'Pess _C_ to open your Communicator:
		..turnin Restore Default Settings##6647
	step
		.' Defeat Cortex Breachscale |q Advanced Science##6640/5 |goto Ellevar -612,-3633,-654
	step
		' If doing Path missions: _Don't turn_ until you complete your _Path_ mission here
		'Press _C_ to open your Communicator:
		..turnin Advanced Science##6640
		..accept A Narrow Escape##6641
	step
		.'_Follow_ the route in the cave |goto Ellevar -494,-3568,-656 < 10 |c |q 6641/1
	step
		.click Ikthian Transport Controls##289844 |goto Ellevar -564,-3504,-640
		.' Hijack the Ikthian Transport Controls |q A Narrow Escape##6641/2
		.' Exit the cave |q A Narrow Escape##6641/1
	step
		.talk Agent Cognosa##279646 |goto Ellevar -1561,-3609,-724
		..turnin A Narrow Escape##6641
		..accept To the City of Illium##9877
	step
		'Press _C_ to open your Communicator:
		..accept Illium Awaits##9878 |tip You get this when reach level 14
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Lightreach Mission |goto Ellevar -2529,-3420,-765 < 10 |c |noway |q 9877
	step
		.talk Captain Milo
		..accept Shiphand: The Steady Traveler##8989 | goto Ellevar -2374,-3391,-771
	step
		' Click _Transport to Steady Traveler_ ladder, then click _Yes_, _Normal_ and _Enter_
		.' Use the Transport Ship to reach the Steady Traveler |q Shiphand: The Steady Traveler##8989/1 |goto Ellevar -2375,-3385,-770
	step
		' Talk to _Captain Milo_ and follow his instructions
		.' Save Outpost M-13 |q Shiphand: The Steady Traveler##8989/2
	step
		' Leave cave and head to ship
		.talk Captain Milo
		..turnin Shiphand: The Steady Traveler##8989
	step
		.click Mistymurk Camp Taxi| goto Ellevar -2551,-3028,-770
		.' Use the Mistymurk Camp Taxi Kiosk to travel to Illium |q To the City of Illium##9877/1
	step
		.talk Tour Guide Aexa##2193 |goto Illium -3363,-674,-890
		..turnin To the City of Illium##9877
	]]
)