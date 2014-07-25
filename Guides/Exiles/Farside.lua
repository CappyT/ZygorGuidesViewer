ZGV:RegisterGuide("Exiles\\Farside (29-35)",
		{faction="Exiles",
		nextguide="Exiles\\Wilderrun (35-41)",
		image="ZygorUIGuides:Farside", 
		description="Farside is a zone on the Halon moon orbiting Nexus in WildStar. It is a terraformed star, with a large moon base containing two bio-domes, one jungle, the other desert. Farside is the leveling zone for both The Exiles and The Dominion for levels 28-35.",
		startlevel=29,
		endlevel=41,
		},[[
	step
		.click Venture Board##275516
		..accept Venture into Farside!##9462 |goto Thayd 3976,-2348,-789
	step
		.talk Transportation Expert Conner##274532
		.' Talk to Transportation Expert Conner |q Venture into Farside!##9462/1 |goto 3913,-2376,-777
		.' Click _Yes_ to travel to Farside |goto Farside 5924,-4966,-493 <10
	step
		.talk Researcher Dunfield##266298
		..turnin Venture into Farside!##9462 |goto 5898,-4913,-497
		..accept Onward to Alpha Complex##7937 |goto 5898,-4913,-497
	step
		.' Step into the teleporter |goto 5898,-4897,-496 <10
		.talk Dorian Walker##263842
		..turnin Onward to Alpha Complex##7937 |goto Farside 2976,-1054,-716
		..accept The Journey Ahead##8791 |goto 2976,-1054,-716
	step
		.click Alpha Complex Research Terminal##263322
		.' Inspect the Alpha Complex Research Terminal |q The Journey Ahead##8791/1 |goto 2998,-998,-716
		.click Bio-Dome Expedition Gear##263318
		.' Inspect the Bio-Dome Expedition Gear |q The Journey Ahead##8791/2 |goto 2936,-1110,-714
		.talk Researcher Longshaw##263321
		.' Talk to Researcher Longshaw |q The Journey Ahead##8791/3 |goto 3018,-1018,-716
	step
		..turnin The Journey Ahead##8791 |goto 2974,-1055,-716
		..accept The Secrets of Bio-Dome 3##7852 |goto 2974,-1055,-716
	step
		.' Step into the teleporter |goto 2547,-1142,-722 <10
		..turnin The Secrets of Bio-Dome 3##7852 |goto Farside 1901,-1180,-729
		..accept Glimmers of Life##7856 |goto 1901,-1180,-729
	step
		.talk Alchemist Vossak##263464
		..accept Alchemical Potential##7854 |goto 1898,-1175,-729
	step
		.talk The Caretaker##265310
		..accept Touring Bio-Dome 3##8787 |goto 1872,-1120,-728
	step
		.talk Sergeant Zarok##263841
		..accept Elemental Eradication##7923 |goto Farside 1796,-1219,-930
	step
		.click Bio-Dome 3 Expedition Panel##265311
		.' Click _Yes_ to tour Bio-Dome 3
		.' Ride the Bio-Dome 3 Observation Platform |q Touring Bio-Dome 3##8787/1 |goto 1795,-1032,-727
	step
		'Press _C_ to use your communicator:
		..turnin Touring Bio-Dome 3##8787
	step
		.kill Embodiment of Might##2642201
		.kill Embodiment of Strength##2649114
		.kill Embodiment of Vitality##2692962
		.' Destroy elemental Embodiments |q Elemental Eradication##7923/1 |goto Farside 1640,-1151,-930
	step
		'Press _C_ to use your communicator:
		..turnin Elemental Eradication##7923
	step
		.' Around this area:
		.' Use the teleporter |q Glimmers of Life##7856/1 |goto 2019,-1204,-719
		.click Concentrated Primal Life##2618046
		.' Measure energy levels of Concentrated Primal Life |q Glimmers of Life##7856/2 |goto Farside 1942,-1280,-932
		.kill Wildwood Entangler##2631733
		.kill Woodland Wildcat##2633187
		.kill Woodland Saberclaw##2655403
		.kill Timber Raven##2630644
		.' Collect Life Essences from animals |q Alchemical Potential##7854/1 |goto 1938,-1282,-932
	step
		'Press _C_ to use your communicator:
		..turnin Glimmers of Life##7856
		..turnin Alchemical Potential##7854
		..accept Containing Life##7860
		..accept Overgrowth##7858
	step
		.' All around this area:
		.click Marker Flare##263363 |tip These may be markeed as cogs on your minimap.
		.' Install Primal Energy Containment Devices at Marker Flares |q Containing Life##7860/1 |goto 1960,-1483,-913
		.click Primal Ragethorn##2676697
		.' Press _T_ to spray Primal Ragethorn to free Sciencebots |q Overgrowth##7858/1 |goto 2015,-1408,-912
	step
		'Press _C_ to use your communicator:
		..turnin Overgrowth##7858
		..turnin Containing Life##7860
		..accept Primal Vengeance##7864
	step
		.click Hungry Cub##263323
		..accept A New Friend##7862 |goto Farside 1862,-1569,-912
	step
		.' Around this area:
		.kill Timber Raven##2712277
		.' Collect Ravenok Meat from Timber ravenok |q A New Friend##7862/1 |goto 1884,-1593,-919
	step
		.click Hungry Cub##263323
		..turnin A New Friend##7862 |goto 1862,-1570,-915
	step
		.' Follow the path of Fungal Spores to its source |q Primal Vengeance##7864/1 |goto 2010,-1744,-924
		.kill 1 Banespore##2585326
		.' Kill Banespore |q Primal Vengeance##7864/2 |goto 2111,-1781,-930
	step
		.' Step into the teleporter |goto 1990,-1232,-936 <10
		.talk Alchemist Vossak##263464
		..turnin Primal Vengeance##7864 |goto Farside 1897,-1175,-729
	step
		.talk Researcher Goldspring##263463
		..accept Ancient Eldan Experimentation##7917 |goto 1902,-1180,-729
	step
		.' Step into the teleporter |goto 2016,-1203,-720 <10
		.talk Belle Walker##263843
		..turnin Ancient Eldan Experimentation##7917 |goto Farside 1795,-1213,-930
		..accept Geo-Analysis##7918 |goto 1795,-1213,-930
	step
		.talk Rusty##263838
		..accept Security Shutdown##7919 |goto 1792,-1218,-930
	step
		.click Data Core: Geo##264011
		.' Set up a data uplink with Data Core: Geo |q Geo-Analysis##7918/1 |goto Farside 1735,-1091,-926
		.' Jump through the Geo-Analysis Node's core |q Geo-Analysis##7918/2 |goto 1724,-1103,-925
	step
		.click Geo Security Console##263999
		.' Disable the Geo Security Console |q Security Shutdown##7919/1 |goto Farside 1645,-1142,-930
	step
		.click Geo-Analysis Conduit##264008
		.' Sever the Geo-Analysis Conduit |q Geo-Analysis##7918/3 |goto 1645,-1084,-933
	step
		'Press _C_ to use your communicator:
		..turnin Geo-Analysis##7918
		..accept Bio-Analysis##7920
	step
		.click Bio Security Console##263997
		.' Disable the Bio Security Console |q Security Shutdown##7919/2 |goto 1579,-1075,-928
	step
		'Press _C_ to use your communicator:
		..accept Elemental Entrapment##7925 |goto Farside 1556,-1146,-926
	step
		.click Hydro Security Console##263998
		.' Disable the Hydro Security Console |q Security Shutdown##7919/3 |goto Farside 1467,-1144,-932
	step
		'Press _C_ to use your communicator:
		..turnin Security Shutdown##7919
	step
		.click Data Core: Bio##264007
		.' Set up a data uplink with Data Core: Bio |q Bio-Analysis##7920/1 |goto Farside 1548,-1206,-925
		.' Jump through the Bio-Analysis Node's core |q Bio-Analysis##7920/2 |goto 1559,-1195,-922
		.click Bio-Analysis Conduit##264006
		.' Sever the Bio-Analysis Conduit |q Bio-Analysis##7920/3 |goto Farside 1542,-1131,-932
	step
		'Press _C_ to use your communicator:
		..turnin Bio-Analysis##7920
		..accept Hydro-Analysis##7921
	step
		.click Essence of Life##2635704
		.click Essence of Earth##2718634
		.click Essence of Water##2790551
		.' Press _T_ to use the vortex bomb on essences and aspects |q Elemental Entrapment##7925/1 |goto 1516,-1168,-929
	step
		'Press _C_ to use your communicator:
		..turnin Elemental Entrapment##7925
	step
		.click Data Core: Hydro##264003
		.' Set up a data uplink with Data Core: Hydro |q Hydro-Analysis##7921/1 |goto Farside 1395,-1101,-928
		.' Jump through the Hydro-Analysis Node's core |q Hydro-Analysis##7921/2 |goto 1388,-1108,-927
		.click Hydro-Analysis Conduit##264000
		.' Sever the Hydro-Analysis Conduit |q Hydro-Analysis##7921/3 |goto Farside 1442,-1107,-935
	step
		'Press _C_ to use your communicator:
		..turnin Hydro-Analysis##7921
		..accept Defeat the Custodian##7922
	step
		.' Climb up the rocks here |goto 1483,-1057,-926 <10
		.talk Explorer Cliffbreeze##263840
		..accept The Observation Platform##7927 |goto 1509,-1082,-908
	step
		.' Each of the floating green platforms have a small orb floating above it called a "Charge Target". Click these and then press _T_ to launch over to them. |goto 1508,-1093,-902
		.' Continue launching from platform to platform to climb all the way to the stop of the southern wall
		.' Climb the wall using the Charge Retractor |q The Observation Platform##7927/1 |goto 1449,-950,-658
		.click Eldan Cache##263992
		.' Open the Eldan Cache |q The Observation Platform##7927/2 |goto 1430,-989,-658
	step
		'Press _C_ to use your communicator:
		..turnin The Observation Platform##7927
	step
		.' Step into the teleporter |q Defeat the Custodian##7922/1 |goto 1306,-1197,-932
		.kill 1 Bio-Dome 3 Custodian##2781679
		.' Destroy the Bio-Dome 3 Custodian |q Defeat the Custodian##7922/1 |goto Farside 1458,-1516,-1062
		.click Matrix Defense Console E##263941
		.' Deactivate the Matrix Defense Console E |q Defeat the Custodian##7922/2 |goto 1459,-1531,-1062
	step
		'Press _C_ to use your communicator:
		..turnin Defeat the Custodian##7922
		..accept Skeech in Space##7716
	step
		.' Step into the teleporter |goto 1458,-1493,-1060 <10
		.click Destroyed Scanbot##263839
		..accept Field Repairs##7926 |goto Farside 1281,-1134,-916
	step
		.' Around this area:
		.click Damaged Scanbot##2692002 |tip Look for orange cogs on your minimap.
		.' Repair Damaged Scanbots |q Field Repairs##7926/1 |goto 1312,-1120,-930
	step
		'Press _C_ to use your communicator:
		..turnin Field Repairs##7926
	step
		.talk Anthropologist Birchly##262872
		..turnin Skeech in Space##7716 |goto Farside 1097,-1271,-921
		..accept Pet Project##7718 |goto 1097,-1271,-921
	step
		.talk Researcher Shanov##262868
		..accept Power Denied##7728 |goto 1098,-1269,-921
	step
		'Press _C_ to use your communicator:
		..accept Strange Skeech##7720 |goto Farside 1109,-1373,-931
	step
		.' Found around this area:
		.click Skeech Remains##263271
		.' Find the Skeech Remains |q Strange Skeech##7720/1 |goto 1184,-1394,-961
		.click Datacube Fragment##2843643
		.' Collect Experimental Data from Datacube Fragments |q Pet Project##7718/1 |goto 1174,-1400,-965
	step
		'Press _C_ to use your communicator:
		..turnin Pet Project##7718
	step
		.' Attack the Power Crystal and press _V_ to loot the crystals it drops |q Power Denied##7728/2 |goto 1099,-1506,-961
		.' Attack the Focus Crystal and press _V_ to loot the crystals it drops |q Power Denied##7728/1 |goto 1192,-1398,-963
		.' Attack the Life Crystal and press _V_ to loot the crystals it drops |q Power Denied##7728/3 |goto 1015,-1472,-951
	step
		'Press _C_ to use your communicator:
		..turnin Power Denied##7728
	step
		.' Follow the stone path up |goto 1059,-1332,-963 <10
		.' Return to the Cascade Cliffs |q Strange Skeech##7720/2 |goto Farside 1106,-1306,-919
		.click Operating Table##263261
		.' Reassemble the Skeech Remains |q Strange Skeech##7720/4 |goto 1102,-1264,-921
		.talk Lucent##262870
		.' Speak with Lucent |q Strange Skeech##7720/5 |goto 1105,-1265,-920
	step
		.talk Professor Papovich##263259
		..turnin Strange Skeech##7720 |goto 1099,-1265,-921
	step
		.talk Researcher Shanov##262868
		..accept The Skeech Code##7730 |goto 1097,-1270,-921
	step
		.talk Lucent##262870
		..accept Tanglevine Redemption##7722 |goto 1105,-1265,-920
	step
		.click Tanglevine Cage Door##263218
		..accept Explorer Extraction##7732 |goto 1089,-1397,-966
	step
		.' All around this area:
		.' Play Lucent's message next to groups of Skeech |q Tanglevine Redemption##7722/1 |goto 1098,-1401,-966
		.kill Tanglevine Pummeler##2876331
		.kill Tanglevine Shaman##2883012
		.kill Tanglevine Matriarch##2902369
		.kill Tanglevine Bruiser##2776328
		.' Collect Primal Imprint Samples from Tanglevine Skeech |q The Skeech Code##7730/1 |goto 1099,-1403,-966
	step
		'Press _C_ to use your communicator:
		..turnin Tanglevine Redemption##7722
		..turnin The Skeech Code##7730
		..accept It's Not Too Late##7724
	step
		.click Tanglevine Cage Door##263218
		.' Open Tanglevine Cage Doors to free Exile Explorers |q Explorer Extraction##7732/1 |goto 1050,-1595,-957
	step
		'Press _C_ to use your communicator:
		..turnin Explorer Extraction##7732
	step
		.click Adolescent Tanglevine##2900050
		.' Wake up Adolescent Tanglevines |q It's Not Too Late##7724/1 |goto 1123,-1462,-963
		.click Adolescent Tanglevine##2876987
		.' Wake up Adolescent Tanglevines |q It's Not Too Late##7724/1 |goto 1171,-1412,-966
	step
		'Press _C_ to use your communicator:
		..turnin It's Not Too Late##7724
		..accept He's Lost It##7726
	step
		.' Follow the winding stone path around |goto 1167,-1685,-962 <10
		.' Cross the stone bridge |goto 1184,-1642,-921 <10
		.' Find the path to Progenitor's Hideaway |q He's Lost It##7726/1 |goto 1248,-1557,-907
		.' Meet Lucent |q He's Lost It##7726/2 |goto Farside 1504,-1540,-893
		.kill 1 Lucent##2751124
		.' Kill Lucent |q He's Lost It##7726/3 |goto 1553,-1540,-893
		.' Find a spot to bury Lucent |q He's Lost It##7726/4 |goto 1801,-1527,-867
		.click Burial Plot##263227
		.' Bury Lucent |q He's Lost It##7726/5 |goto 1800,-1527,-868
	step
		'Press _C_ to use your communicator:
		..turnin He's Lost It##7726
		..accept Bio-Dome 4##7736
	step
		.' Step into the teleporter |goto Farside 1930,-1138,-722
		.talk Dorian Walker##263842
		.' Speak with Dorian Walker |q Bio-Dome 4##7736/1 |goto Farside 2975,-1055,-716
		.' Step into the teleporter |goto 3421,-1157,-722
	step
		.talk Explorer Tanoga##262866
		..turnin Bio-Dome 4##7736 |goto Farside 4076,-1187,-725
		..accept Extreme Adaptations##7738 |goto 4076,-1187,-725
		..accept Water from Sand##7740 |goto 4076,-1187,-725
	step
		.talk Surveyor Oakhill##262864
		..accept Beastly Threats##7746 |goto 4081,-1184,-725
	step
		.talk The Caretaker##265302
		..accept Touring Bio-Dome 4##8789 |goto 4081,-1113,-725
	step
		.click Bio-Dome 4 Expedition Panel##265305
		.' Click _Yes_ to ride the Bio-Dome 4 Observation Platform |q Touring Bio-Dome 4##8789/1 |goto 4187,-1035,-724
	step
		'Press _C_ to use your communicator:
		..turnin Touring Bio-Dome 4##8789
	step
		.click Blackrock Pelter##2984662
		.' Press _T_ to scan a Blackrock Pummeler or Pelter |q Extreme Adaptations##7738/1 |goto Farside 4095,-1305,-929
		.click Sandhoof Bull##2934003
		.' Press _T_ to scan a Sandhoof Bull or Calf |q Extreme Adaptations##7738/2 |goto 4075,-1360,-934
		.click Desert Pincer##2991001
		.' Press _T_ to scan a Desert scrab |q Extreme Adaptations##7738/3 |goto 4135,-1367,-934
		.click Desert Scavenger##2717929
		.' Scan a Desert vulcarrion |q Extreme Adaptations##7738/4 |goto 4216,-1401,-920
	step
		'Press _C_ to use your communicator:
		..turnin Extreme Adaptations##7738
	step
		.' Around this area:
		.kill Blackrock Pelter##2720576
		.kill Desert Pincer##2917813
		.kill Blackrock Pummeler##2922547
		.' Kill Blackrock spikehordes and Desert scrab |q Beastly Threats##7746/1 |goto 4027,-1426,-935
		.click Dried Mud##2951692
		.' Collect Fresh Water from piles of Dried Mud |q Water from Sand##7740/1 |goto 4074,-1346,-932
	step
		'Press _C_ to use your communicator:
		..turnin Beastly Threats##7746
		..turnin Water from Sand##7740
		..accept Native Foodstuffs##7742
	step
		.kill Valo Alera##2979598 |tip These are attackable plants around the area. They may be marked as orange cogs on your minimap.
		.' Press _V_ to collect Valo Berries from Valo Alera plants |q Native Foodstuffs##7742/2 |goto 4178,-1396,-927
		.kill Prickly Cactus##2988284 |tip These are attackable plants around the area. They may be marked as orange cogs on your minimap.
		.' Press _V_ to collect Prickly Plums from Prickly Cacti |q Native Foodstuffs##7742/1 |goto Farside 4165,-1316,-929
	step
		'Press _C_ to use your communicator:
		..turnin Native Foodstuffs##7742
		..accept Staying Hydrated##7744
	step
		.talk Climatologist Skyleaf##263612
		..accept Baseline Measurements##7868 |goto Farside 4163,-1254,-940
	step
		.talk Researcher Starland##263611
		..accept Elemental Core Collection##7870 |goto 4164,-1260,-940
	step
		'Press _C_ to use your communicator:
		..accept Against the Elements##7872 |goto Farside 4225,-1201,-940
	step
		.' All around the area:
		.click Climate Beacon##263595
		.' Take readings from Climate Beacons |q Baseline Measurements##7868/1 |goto Farside 4251,-1195,-939
		.kill Scorched Stoneguard##2998799
		.kill Scorched Rockgolem##2991466
		.kill Arid Airthrasher##2950793
		.' Collect Elemental Cores from elementals |q Elemental Core Collection##7870/1 |goto Farside 4269,-1213,-942
		.' Destroy elementals |q Against the Elements##7872/1 |goto 4269,-1213,-942
	step
		'Press _C_ to use your communicator:
		..turnin Against the Elements##7872
		..turnin Baseline Measurements##7868
		..turnin Elemental Core Collection##7870
		..accept Breaking the Surface##7874
		..accept Shocking Resistance##7876
	step
		.' Around this area:
		.click Primal Vent##265074
		.' Place Grounding Rods at Primal Vents |q Shocking Resistance##7876/1 |goto Farside 4455,-1242,-942
		.click Fresh Crystal##263485
		.' Collect Crystal Sample from Fresh Crystals |q Breaking the Surface##7874/1 |goto Farside 4463,-1203,-936
	step
		'Press _C_ to use your communicator:
		..turnin Shocking Resistance##7876
		..turnin Breaking the Surface##7874
		..accept Primal Overlord##7884
	step
		.' You may have looted a quest item while doing the previous quests
		.' Press _I_ to open your inventory and right click the _Emergency Jetpacks_
		..accept Rocket Rescue##7880
	step
		.click Trapped Researcher##521047
		.' Press _T_ to rescue Trapped Researchers |q Rocket Rescue##7880/1 |goto Farside 4299,-1254,-941
	step
		'Press _C_ to use your communicator:
		..turnin Rocket Rescue##7880
	step
		.' Jump into the big _tornado_ while _unmounted_ |goto 4322,-1044,-927 <10
		.' Jump into the big _tornado_ while _unmounted_ |goto 4409,-1128,-851 <10
		.' Jump into the big _tornado_ while _unmounted_ |goto 4418,-1196,-834 <10
		.kill 1 Stormfury##542108
		.' Destroy Stormfury |q Primal Overlord##7884/1 |goto 4340,-1192,-804
	step
		'Press _C_ to use your communicator:
		..turnin Primal Overlord##7884
		..accept Hotter Than Pell##7938
	step
		.click Exile Pioneer##262974
		.' Deliver supplies to the third pioneer group |q Staying Hydrated##7744/3 |goto 4278,-1379,-909
		.talk Exile Pioneer##262888
		.' Deliver supplies to the second pioneer group |q Staying Hydrated##7744/2 |goto Farside 4083,-1534,-941
		.talk Exile Pioneer##262889
		.' Deliver supplies to the first pioneer group |q Staying Hydrated##7744/1 |goto 4067,-1681,-946
	step
		'Press _C_ to use your communicator:
		..turnin Staying Hydrated##7744
		..accept Going to Extremes##7866
	step
		.talk Climatologist Skyleaf##263525
		..turnin Going to Extremes##7866 |goto Farside 4163,-1254,-940
	step
		.click Relic Crate##263523
		..accept Lost Relics##7878 |goto Farside 4614,-1157,-950
	step
		.talk The Caretaker##263737
		..accept Fighting the System##7939 |goto Farside 4680,-1187,-958
	step
		.talk Sergeant Dominik##263738
		..turnin Hotter Than Pell##7938 |goto 4669,-1202,-959
		..accept Stop the Flamewalkers##7944 |goto Farside 4669,-1202,-959
		..accept Pesky Probes##7945 |goto 4669,-1202,-959
	step
		.click Lost Relic##586041
		.' Collect Lost Relics for Researcher Starland |q Lost Relics##7878/1 |goto Farside 4501,-1235,-944
	step
		'Press _C_ to use your communicator:
		..turnin Lost Relics##7878
	step
		.' All around this area:
		.click Rogue Caretaker Node##263693
		.' Deactivate Rogue Caretaker Nodes |q Fighting the System##7939/1 |goto Farside 4722,-1295,-975
		.kill Flamewalker Inciter##591953
		.kill Flamewalker Cinder##580126
		.kill Flamewalker Pyro##581252
		.kill Flamewalker Arcanist##588396
		.' Kill Flamewalker Pell |q Stop the Flamewalkers##7944/1 |goto 4722,-1317,-979
		.click Charging Flamewalker Servitor##587271
		.' Press _T_ to destroy Charging Flamewalker Servitors |q Pesky Probes##7945/1 |goto 4713,-1308,-975
	step
		'Press _C_ to use your communicator:
		..accept No More Pellementals##7940 |goto 4786,-1334,-985
	step
		'Press _C_ to use your communicator:
		..turnin Pesky Probes##7945
		..turnin Fighting the System##7939
		..turnin Stop the Flamewalkers##7944
	step
		.kill Flamewalker Ritualist##609077
		.click Flamewalker Console##263680
		.' Kill the enemies that attack in waves
		.' Disrupt the Flamewalkers' summoning ritual |q No More Pellementals##7940/1 |goto 5059,-1289,-989
	step
		'Press _C_ to use your communicator:
		..turnin No More Pellementals##7940
		..accept Fiery Distractions##7942
	step
		.kill 1 Acolyte Ember-Walker##625514
		.' Kill Acolyte Ember-Walker |q Fiery Distractions##7942/3 |goto 4869,-1522,-984
		.kill 1 Flamewalker Cinder##618104
		.' Collect a Volatile Cinder from a Flamewalker Cinder |q Fiery Distractions##7942/1 |goto 4849,-1564,-985
		.click Pell Barrel##263593
		.' Use the Volatile Cinder on Pell Barrels |q Fiery Distractions##7942/2 |goto 4769,-1478,-985
		.kill 1 Acolyte Flame-Binder##622400
		.' Kill Acolyte Flame-Binder |q Fiery Distractions##7942/4 |goto 4569,-1541,-1000
	step
		'Press _C_ to use your communicator:
		..turnin Fiery Distractions##7942
		..accept Viral Countermeasures##7941
	step
		.' Follow the dirt path and stairs up |goto 4637,-1386,-932 <10
		.' Press _C_ to use your communicator
		..accept Fall of the High Priest##7943 |goto 4523,-1522,-832
		.click Pell Control Point##263673 |tip These can be found around this big central structure.
		.' Upload the virus into the Pell Control Points |q Viral Countermeasures##7941/1 |goto 4443,-1572,-815
	step
		'Press _C_ to use your communicator:
		..turnin Viral Countermeasures##7941
	step
		.' Continue up the stone path |goto 4398,-1589,-806 <10
		.kill 1 High Priest Flame-Guardian##558846
		.' Kill High Priest Flame-Guardian |q Fall of the High Priest##7943/1 |goto Farside 4331,-1551,-684
		.click Flamewalker Console##263569
		.' Shut down the Flamewalker Console |q Fall of the High Priest##7943/2 |goto 4382,-1550,-687
	step
		'Press _C_ to use your communicator:
		..turnin Fall of the High Priest##7943
		..accept Touchdown Site Bravo##7946
	step
		.' Step into the teleporter |goto Farside 4047,-1161,-720 <10
		.' Step through the second teleporter |goto Farside 3003,-1045,-712 <10
		.click Ship to Touchdown Site Bravo##269375
		.' Click _Yes_ to travel to Site Bravo |q Touchdown Site Bravo##7946/3 |goto 5895,-4948,-496
	step
		.talk Corporal Garen##633045
		..turnin Touchdown Site Bravo##7946 |goto Farside 4315,-5645,-708
	step
		.talk Spigo##269150
		..accept Into the Void##6178 |goto 4319,-5688,-715
	step
		.click Transmat Terminal##270552 |goto 4349,-5619,-709
		.' Click _Yes_ to set your Recall to Touchdown Site Bravo
		|confirm
	step
		.' Look for Spigo's ship |q Into the Void##6178/1 |goto Farside 4036,-5520,-727
	step
		.kill 1 Cobalt Titan##652475
		..accept Aggressive Aliens##6183
	step
		.' All around this area:
		.click Dustrunner Debris##658517
		.' Search Dustrunner Debris for clues |q Into the Void##6178/2 |goto 3962,-5549,-720
		.kill 1 Banded Rootbrute##663809
		.kill 1 Cobalt Titan##632793
		.' Kill space critters |q Aggressive Aliens##6183/1 |goto 3985,-5549,-722
	step
		'Press _C_ to use your communicator:
		..turnin Into the Void##6178
		..accept Element of Surprise##6179
		..turnin Aggressive Aliens##6183
		..accept Scattered##6428
	step
		.' Find Spigo's crashed ship |q Element of Surprise##6179/1 |goto Farside 3499,-5778,-737
		.click Dustrunner Hull Door##269265
		.' Click _Yes_ to enter Spigo's crashed ship |q Element of Surprise##6179/2 |goto 3460,-5795,-757
		.click SHIPMENT: 018J##269269
		.' Enter Spigo's code, 60191 |q Element of Surprise##6179/3 |goto Farside 3527,-5937,-845
		.' Defend against the Darkspur Cartel's ambush |q Element of Surprise##6179/4 |goto 3527,-5937,-845
	step
		'Press _C_ to use your communicator:
		..turnin Element of Surprise##6179
		..accept On the Run##6180
	step
		.click Dustrunner Hull Door##269268
		.' Click _Yes_ to exit to Fatalis Fields |goto 3565,-5914,-845
		.' Locate the Dustrunner's aft compartment |q Scattered##6428/1 |goto Farside 3363,-5728,-714
		.click Ship Log##269167
		.' Read the Ship Log |q Scattered##6428/2 |goto 3295,-5724,-740
	step
		'Press _C_ to use your communicator:
		..turnin Scattered##6428
		..accept Stuffed##6430
	step
		.click Holding Pen##269166
		..accept Scrambled##6429 |goto 3311,-5725,-738
	step
		.click Lunar Scrambler##585665 |tip Look for orange cogs on your minimap.
		.' Recover Lunar Scramblers |q Scrambled##6429/1 |goto 3305,-5706,-740
	step
		.click Holding Pen##269166
		.' Return the Lunar Scramblers to the Holding Pen |q Scrambled##6429/2 |goto 3311,-5724,-738
	step
		'Press _C_ to use your communicator:
		..turnin Scrambled##6429
	step
		.kill Craterclaw Slasher##736788
		.kill Craterclaw Ripper##739049
		.' Kill Craterclaw hookfoots |q Stuffed##6430/1 |goto Farside 3918,-5433,-741
	step
		'Press _C_ to use your communicator:
		..turnin Stuffed##6430
		..accept Overnight Delivery##6431
	step
		.' Look for signs of Vicious Vlogg |q On the Run##6180/1 |goto 3411,-5895,-736
		.kill 1 Vicious Vlogg##752548
		.' Defeat Vicious Vlogg |q On the Run##6180/2 |goto 3400,-5904,-735
		.' Chase Vicious Vlogg |q On the Run##6180/3 |goto 3589,-6039,-735
	step
		.click Farside Starship##724986
		..turnin On the Run##6180 |goto 3594,-6036,-736
		..accept Light the Sky##6181 |goto 3594,-6036,-736
	step
		.' As you fly:
		.click Vicious Vlogg's Ship##754554
		.' Press _1_ to shoot _Rocket Missles_ at Vlogg's ship |q Light the Sky##6181/1
		.' Locate Vicious Vlogg's crashed ship |q Light the Sky##6181/2 |goto 3976,-6097,-747
	step
		.click Vicious Vlogg##269149
		..turnin Light the Sky##6181 |goto 3968,-6093,-748
		..accept Bringing Back the Bounty##6182 |goto 3968,-6093,-748
	step
		.' Follow Vlogg as he walks. Use the temporary skill to _Smack_ him when he stops.
		.kill 1 Darkspur Destroyerbot##762674
		.' Defeat the Darkspur Destroyerbot |q Bringing Back the Bounty##6182/2 |goto Farside 4226,-5957,-736
		.' Turn Vicious Vlogg over to Spigo |q Bringing Back the Bounty##6182/3 |goto 4254,-5963,-736
	step
		.talk Spigo##269147
		..turnin Bringing Back the Bounty##6182 |goto 4255,-5963,-736
	step
		'Press _C_ to use your communicator:
		..accept Meet the Team##6149
	step
		.' Deliver the package |q Overnight Delivery##6431/1 |goto Farside 3691,-6193,-729
		.' Press _T_ to set off a signal flare |q Overnight Delivery##6431/2 |goto 3677,-6209,-729
	step
		'Press _C_ to use your communicator:
		..turnin Overnight Delivery##6431
	step
		.' Follow the stone pathway up and around |goto Farside 4051,-6336,-720 <10
		.talk Corporal Harlock##828625
		.' Speak with Corporal Harlock |q Meet the Team##6149/3 |goto 4007,-6407,-660
		.talk Specialist Smallgrove##828563
		.' Speak with Specialist Smallgrove |q Meet the Team##6149/1 |goto 4007,-6402,-660
		.talk Specialist Millburn##828597
		.' Speak with Specialist Millburn |q Meet the Team##6149/2 |goto 4002,-6402,-660
	step
		.talk Sergeant Redfall##269135
		..turnin Meet the Team##6149 |goto 4003,-6409,-660
		..accept Generating Clues##6150 |goto 4003,-6409,-660
		..accept Securing Base Camp##6158 |goto 4003,-6409,-660
	step
		.' At Arcanus Base:
		.click Expedition Turret##822432
		.' Reactivate Expedition Turrets |q Securing Base Camp##6158/1 |goto 4013,-6402,-660
		.click Expedition Generator##269128
		.' Reactivate the Expedition Generators |q Generating Clues##6150/1 |goto 3942,-6426,-660
		.kill Ravenous Frizlet##415692
		.' Kill Ravenous aliens |q Securing Base Camp##6158/2 |goto Farside 4189,-6549,-669
	step
		'Press _C_ to use your communicator:
		..turnin Generating Clues##6150
		..turnin Securing Base Camp##6158
	step
		.' Standing next to you in Arcanus Base:
		.talk Specialist Millburn##840817
		..accept Life Signs Detected##6151
	step
		.talk Corporal Harlock##650775
		..accept A Preemptive Strike##6154 |goto 4195,-6514,-687
	step
		.click Expedition Supplies##269029
		..accept Picking Up the Pieces##6155 |goto 4246,-6495,-687
	step
		.' Press _T_ and follow the holographic life sign detector |q Life Signs Detected##6151/1 |goto 4243,-6509,-687
		.' When it disappears at each spot press _T_ again and continue following it
		.' Follow the holographic life sign to this spot |q Life Signs Detected##6151/4 |goto 4483,-7207,-601
	step
		.' Standing next to you in Ravenous Ravine:
		.talk Specialist Millburn##840817
		..turnin Life Signs Detected##6151
		.talk Specialist Smallgrove##840732
		..accept Secondhand Research##6152
	step
		.click Expedition Supplies##832943
		.' Collect Expedition Supplies |q Picking Up the Pieces##6155/1 |goto 4596,-7213,-601
		.kill Moonfell Walker##842561
		.kill Ravenous Frizlet##837147
		.kill Lunarfin Stalker##816521
		.' Kill alien creatures |q A Preemptive Strike##6154/1 |goto 4596,-7213,-601
	step
		'Press _C_ to use your communicator:
		..turnin A Preemptive Strike##6154
	step
		.' Step into the teleporter |goto 4456,-7207,-596 <10
		.kill 1 Derelict Squirg##875722
		..accept Decontamination Protocol: Sterilize##6157 |goto Farside 5592,-11964,-460
	step
		.' Squash Derelict Eggs |q Decontamination Protocol: Sterilize##6157/1 |goto 5557,-11962,-460
	step
		'Press _C_ to use your communicator:
		..turnin Decontamination Protocol: Sterilize##6157
	step
		'Press _C_ to use your communicator:
		..accept Decontamination Protocol: Exterminate##6156 |goto 5733,-11980,-460
	step
		.kill Derelict Squirg##815313
		.' Kill Derelict Squirg |q Decontamination Protocol: Exterminate##6156/1 |goto 5746,-11980,-460
	step
		'Press _C_ to use your communicator:
		..turnin Decontamination Protocol: Exterminate##6156
	step
		.click Expedition Datapad##268978 |tip Found around this area. They are marked with orange cogs on your minimap.
		.' Find Expedition Datapads |q Secondhand Research##6152/1 |goto 5612,-11966,-460
	step
		.' Use the elevator |goto 5611,-11923,-460 <10
		.kill Derelict Augmentor DS-01##531710
		.kill Derelict Maintenance Construct##698641
		.kill Derelict Command Construct##808269
		.' Destroy Derelict constructs |q Secondhand Research##6152/3 |goto 5591,-11827,-432
		.click Eldan Research Samples##269031
		.' Collect Eldan Research Samples |q Secondhand Research##6152/2 |goto 5676,-11594,-415
		.click Eldan Research Samples##269032
		.' Collect Eldan Research Samples |q Secondhand Research##6152/2 |goto 5676,-11465,-415
		.click Eldan Research Samples##269030
		.' Collect Eldan Research Samples |q Secondhand Research##6152/2 |goto 5478,-11464,-415
		.click Eldan Research Samples##269033
		.' Collect Eldan Research Samples |q Secondhand Research##6152/2 |goto 5476,-11594,-415
	step
		.' Standing next to you:
		.talk Specialist Smallgrove##840732
		..turnin Secondhand Research##6152
	step
		'Press _C_ to use your communicator:
		..accept Trouble at Base Camp##6153
	step
		.' Use your Recall ability to quickly leave the cave.
		|confirm
	step
		.talk Sergeant Redfall##269135
		..turnin Trouble at Base Camp##6153 |goto Farside 4003,-6408,-660
		..turnin Picking Up the Pieces##6155 |goto 4003,-6408,-660
		..accept Showdown With Harlock##6159 |goto 4003,-6408,-660
	step
		.click Flamethrower##268077
		.kill 1 Corporal Harlock##910027
		.' Subdue Corporal Harlock |q Showdown With Harlock##6159/2 |goto 3963,-6528,-667
	step
		.talk Sergeant Redfall##269135
		..turnin Showdown With Harlock##6159 |goto 4003,-6408,-660
	step
		'Press _C_ to use your communicator:
		..accept Stemming the Darktide##6536
	step
		.talk Commander Durek##268068
		..turnin Stemming the Darktide##6536 |goto Farside 3489,-5502,-740
		..accept Against the Current##6160 |goto 3489,-5502,-740
	step
		.talk Meloll Goldglade##268057
		..accept Best Safecracker This Side of Nearside##6167 |goto 3460,-5521,-740
		..accept Clearing the Airwaves##6479 |goto 3460,-5521,-740
	step
		.click High Security Eldan Chest##268021
		.' Solve three colors |q Best Safecracker This Side of Nearside##6167/1 |goto 3459,-5523,-740
		.click High Security Eldan Chest##268056
		.' Solve six colors |q Best Safecracker This Side of Nearside##6167/2 |goto 3459,-5523,-740
		.click High Security Eldan Chest##268055
		.' Solve nine colors |q Best Safecracker This Side of Nearside##6167/3 |goto 3459,-5523,-740
		.click High Security Eldan Chest##268054
		.' Solve twelve colors |q Best Safecracker This Side of Nearside##6167/4 |goto 3459,-5523,-740
	step
		.talk Meloll Goldglade##268057
		..turnin Best Safecracker This Side of Nearside##6167 |goto 3460,-5521,-740
	step
		.click Repellent Emitter##268053 |tip These are spread throughout this area. They're marked with an orange cog on your minimap. Most can be found north of this spot.
		.' Activate Repellent Emitters |q Clearing the Airwaves##6479/1 |goto Farside 3412,-5456,-727
	step
		'Press _C_ to use your communicator:
		..turnin Clearing the Airwaves##6479
	step
		.' Jump through one of the floating blue crystals
		.' Press _C_ to use your communicator
		..accept Denser than Diamonds##6184 |goto Farside 3465,-5770,-735
	step
		.' Jump through and collect spilled Loftite Crystals |q Denser than Diamonds##6184/1 |goto 3437,-5771,-724
	step
		.kill Darktide Enforcer##869847
		.kill Darktide Obstructer##872258
		.kill Darktide Engulfer##854614
		.' Kill Darktide Ikthians |q Against the Current##6160/1 |goto Farside 3383,-5291,-731
	step
		.' You may have looted a quest item while doing the previous quest
		.' Press _I_ to open your inventory and right click the _Ikthian Weapon Charging Cell_
		..accept Batteries Found Near Me##6166
	step
		.kill Darktide Enforcer##869847
		.kill Darktide Obstructer##872258
		.kill Darktide Engulfer##854614
		.' Collect Charging Cells from Darktide Ikthians |q Batteries Found Near Me##6166/1 |goto 3374,-5222,-731
	step
		'Press _C_ to use your communicator:
		..turnin Batteries Found Near Me##6166
	step
		.' Go to Checkpoint Alpha |q Against the Current##6160/2 |goto Farside 3139,-5392,-682
	step
		'Press _C_ to use your communicator:
		..turnin Against the Current##6160
		..accept Suits Me Just Fine##6161
		..accept Observe and Report##6168
	step
		.click Exile Battle Suit##954516
		.' Pilot the Exile Battle Suit |q Suits Me Just Fine##6161/1 |goto 3129,-5396,-681
	step
		.kill Darktide Razorfin##935313
		.kill Darktide Sicklegill##933034
		.kill Darktide Piercer##934842
		.' Kill Darktide forces with the Exile Battle Suit |q Suits Me Just Fine##6161/2 |goto 3051,-5487,-683
	step
		.' Go to Checkpoint Bravo |q Suits Me Just Fine##6161/3 |goto 2976,-5637,-682
	step
		'Press _C_ to use your communicator:
		..turnin Suits Me Just Fine##6161
		..accept Word from the Inside##6162
	step
		.kill Equalizer Security Probe##963860
		.kill Equalizer Protector##964291 |tip Look for yellow dots on your minimap.
		.' Destroy Equalizer constructs |q Observe and Report##6168/1 |goto Farside 2990,-5789,-684
	step
		'Press _C_ to use your communicator:
		..turnin Observe and Report##6168
	step
		.talk Granok Prisoner##961885
		.' Free the Exile prisoners |q Word from the Inside##6162/1 |goto 2912,-5856,-681
	step
		'Press _C_ to use your communicator:
		..turnin Word from the Inside##6162
		..accept Tell Us Everything##6163
	step
		.' Go up the elevator |goto Farside 2977,-5875,-685 <10
		.click Darktide Satellite Uplink##268065
		.' Hack the 1st Darktide Satellite Uplink |q Tell Us Everything##6163/1 |goto 2986,-5940,-662
		.click Darktide Satellite Uplink##268064
		.' Hack the 2nd Darktide Satellite Uplink |q Tell Us Everything##6163/2 |goto 2979,-6047,-662
		.click Darktide Satellite Uplink##268063
		.' Hack the 3rd Darktide Satellite Uplink |q Tell Us Everything##6163/3 |goto 3010,-6128,-661
		.' Go up the elevator |goto 3079,-6200,-661 <10
		.' Find Commander Durek |q Tell Us Everything##6163/4 |goto Farside 3073,-6258,-583
	step
		.talk Commander Durek##267987
		..turnin Tell Us Everything##6163 |goto 3065,-6260,-583
		..accept The Anti-Gravity of the Situation##8668 |goto 3065,-6260,-583
	step
		.kill Darktide Finripper##2018838
		.kill Darktide Dorsalcutter##2029052
		.kill Darktide Needlefin##1908501
		.' Kill Darktide Finrippers, Dorsalecutters, and Needlefins |q The Anti-Gravity of the Situation##8668/2 |goto 3202,-6267,-583
		.kill Darktide Dragoon##2019661
		.' Kill Darktide warbots |q The Anti-Gravity of the Situation##8668/1 |goto 3202,-6267,-583
		.' Regroup at the rally point |q The Anti-Gravity of the Situation##8668/3 |goto 2918,-6413,-575
	step
		.talk Commander Durek##268062
		..turnin The Anti-Gravity of the Situation##8668 |goto 2916,-6414,-575
		..accept To the Dishonor##6164 |goto 2916,-6414,-575
	step
		.' Fight off waves of Darktide Ikthians |q To the Dishonor##6164/1 |goto 2902,-6479,-577
	step
		.talk Commander Durek##268060
		..turnin To the Dishonor##6164 |goto 2908,-6510,-577
		..accept Fight Fire with Fire##6165 |goto 2908,-6510,-577
	step
		'Press _C_ to use your communicator:
		..accept Off the Scales##6481
	step
		.' Find Admiral Gelic Ironscale |q Fight Fire with Fire##6165/1 |goto 3149,-6738,-538
		.kill 1 Darktide Champion##1996460
		.' Defeat the Darktide Champion |q Fight Fire with Fire##6165/2 |goto 3210,-6801,-531
		.click Plasmic Equalizer##268059
		.' Destroy the Ikthian armada with the Plasmic Equalizer |q Fight Fire with Fire##6165/3 |goto 3271,-6835,-532
	step
		'Press _C_ to use your communicator:
		..turnin Fight Fire with Fire##6165
		..accept Thayd Into You##6537
	step
		.click Plasmic Power Cell##268043 |tip These are found all around the outside ring of this structure.
		.' Calibrate the Plasmic Power Cells |q Off the Scales##6481/1 |goto 3183,-6831,-531
	step
		'Press _C_ to use your communicator:
		..turnin Off the Scales##6481
	step
		.talk Spigo##269147
		..turnin Denser than Diamonds##6184 |goto Farside 4256,-5963,-736
	step
		.' If you are atleast level 35 a new quest is available
		.' Press _C_ to use your communicator
		..accept Opening Doors##8869
	step
		.click Ship to Walker's Landing##270550
		.' Click _Yes_ to travel via Flight Master Amos |q Thayd Into You##6537/2 |goto 4435,-5663,-713
]])
