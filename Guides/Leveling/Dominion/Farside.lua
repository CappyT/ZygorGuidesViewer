ZGV:RegisterGuide("Dominion\\Farside (29-35)",
	{
	faction="Dominion",
	startlevel=29,
	endlevel=35,
	nextguide="Dominion\\Wilderrun (35-41)",
	--image="ZygorUIGuides:Farside", 
	description="Farside is a zone located on the moon, Halon, orbiting Nexus. It is suited for characters level 29-35. "
	},
	[[
	step
		.click Venture Board##263605
		..accept Venture into Farside!##9457 |goto Illium -3417,-659,-891
	step
		.talk Captain Petronia##266426
		..turnin Venture into Farside!##9457 |goto Illium -3615,-773,-879
	step
		.talk Captain Petronia##266426
		.' Choose _Yes_, Travel to Virtue's Landing on Farside |goto Illium -3615,-773,-879 < 10
		|confirm
	step
		.talk Researcher Vibius##266215
		..accept Onward to Alpha Complex##8107 |goto Farside 5362,-4521,-497
	step
		.' _Step into_ the teleporter |goto Farside 5361,-4510,-497 < 10
		.talk Researcher Ahnaris##263741
		..turnin Onward to Alpha Complex##8107 |goto Farside 2961,-2058,-716
		..accept The Journey Ahead##8792 |goto 2961,-2058,-716
	step
		.click Alpha Complex Research Terminal##263231
		.' Inspect the Alpha Complex Research Terminal |q The Journey Ahead##8792/1 |goto 2983,-2023,-716
	step
		.talk Researcher Gracos##263230
		.' Talk to Researcher Gracos |q The Journey Ahead##8792/3 |goto 3015,-2023,-716
	step
		.click Bio-Dome Expedition Gear##263228+
		.' Inspect the Bio-Dome Expedition Gear |q The Journey Ahead##8792/2 |goto 2896,-2056,-715
	step
		.talk Researcher Ahnaris##263741
		..turnin The Journey Ahead##8792 |goto Farside 2961,-2057,-716
		..accept Discovering Bio-Dome 3##7853 |goto 2961,-2057,-716
	step
		.' _Step into_ the teleporter |goto 2546,-1932,-721 < 10
		.talk Biologist Memydra##263743
		..turnin Discovering Bio-Dome 3##7853 |goto 1902,-1897,-722
		..accept Measuring Life##7857 |goto 1902,-1897,-722
	step
		.talk Engineer Gezani##263742
		..accept Destructive Potential##7855 |goto 1896,-1903,-722
	step
		.talk The Caretaker##265222
		..accept Touring Bio-Dome 3##8788 |goto 1869,-1962,-721
	step
		.click Bio-Dome 3 Expedition Panel##265225
		.' Choose _Yes_, you would like to take a tour of Bio-Dome 3
		.' Ride the Bio-Dome 3 Observation Platform |q Touring Bio-Dome 3##8788/1 |goto 1799,-2044,-720
	step
		'Press _C_ to open your Communicator:
		..turnin Touring Bio-Dome 3##8788 |goto Farside 2021,-1831,-721
	step
		.' Use the teleporter |q Measuring Life##7857/1 |goto Farside 2027,-1859,-714
		.' All around this area:
		.click Concentrated Primal Life##336275
		.' Measure energy levels of Concentrated Primal Life |q Measuring Life##7857/2 |goto 1957,-1790,-928
		.kill Timber Rook##338807+
		.kill Timber Raven##4109274+
		.kill Savage Bloodtail##4268487+
		.' Collect Life Essences from animals |q Destructive Potential##7855/1 |goto Farside 1968,-1801,-927
	step
		'Press _C_ to open your Communicator:
		..turnin Destructive Potential##7855
		..turnin Measuring Life##7857
		..accept Taming The Forest##7859
		..accept Harvesting Life##7861
	step
		'All around this area:
		.click Marker Flare##263266 |tip They look like pink smoke flares. They appear as orange cogs on your minimap.
		.' Install Primal Energy Containment Devices at Marker Flares |q Harvesting Life##7861/1 |goto Farside 1855,-1774,-925
		.click Primal Ragethorn##1356134 |tip They look like green thorn bushes with a small robot stuck in them.
		.' Press _T_ to spray Primal Ragethorn to free Sciencebots |q Taming The Forest##7859/1 |goto 1866,-1778,-926
	step
		'Press _C_ to open your Communicator:
		..turnin Harvesting Life##7861
		..turnin Taming The Forest##7859
		..accept Primal Aggression##7865
	step
		.talk Hungry Cub##263237
		..accept A Hungry Cub##7863 |goto 1863,-1566,-912
	step
		.kill 1 Timber Rook##1258940+
		.kill 1 Timber Raven##5070848+
		.' Collect Ravenok Meat from Timber ravenok |q A Hungry Cub##7863/1 |goto 1977,-1621,-919
	step
		.talk Hungry Cub##263237
		..turnin A Hungry Cub##7863 |goto 1860,-1569,-912
	step
		'Run in _between the large rocks_ in this area |goto 1981,-1736,-925 < 10
		.' Follow the path of Fungal Spores to their source |q Primal Aggression##7865/1 |goto 2121,-1784,-929
		.kill 1 Banespore##1360861 |q Primal Aggression##7865/2 |goto 2121,-1784,-929
	step
		.' _Use the green portal_ to teleport up |goto Farside 1985,-1833,-930 < 10
		.talk Engineer Gezani##263742
		..turnin Primal Aggression##7865 |goto 1898,-1903,-722
	step
		.talk Biologist Memydra##263743
		..accept Eldan Methodology##7990 |goto 1902,-1898,-722
	step
		.' _Use the green portal_ to teleport down |goto 2025,-1864,-714 < 10
		.talk Artemis Zin##263748
		..turnin Eldan Methodology##7990 |goto 1760,-1843,-931
		..accept Terra-Injection##7993 |goto 1760,-1843,-931
	step
		.talk Captain Makaas##263746
		..accept Elemental Elimination##7998 |goto 1765,-1851,-931
	step
		.talk Kevo##263747
		..accept Defense Deactivation##7994 |goto 1755,-1850,-930
	step
		.click Primal Matrix Stabilizer##262422
		..accept Primal Matrix Stabilizer##9144 |goto Farside 1687,-2000,-926
	step
		.click Essence of Earth##1336034
		.' Disable the Terra Security Console |q Defense Deactivation##7994/1 |goto 1652,-1885,-930
	step
		.click Data Core: Terra##263854
		.' Set up a data uplink with Data Core: Terra |q Terra-Injection##7993/1 |goto 1706,-1965,-926
	step
		.' Jump through the Terra-Injection Node's core |q Terra-Injection##7993/2 |goto 1700,-1954,-925
	step
		.click Terra-Injection Conduit##263849
		.' Sever the Terra-Injection Conduit |q Terra-Injection##7993/3 |goto 1644,-1964,-927
	step
		'Press _C_ to open your communicator:
		..turnin Terra-Injection##7993
		..accept Vita-Injection##7995
	step
		.click Vita Security Console##263817
		.' Disable the Vita Security Console |q Defense Deactivation##7994/2 |goto 1541,-1980,-926
	step
		'Press _C_ to open your Communicator:
		..accept Elemental Lure##8000 |goto 1567,-1841,-925
	step
		.click Data Core: Vita##263852
		.' Set up a data uplink with Data Core: Vita |q Vita-Injection##7995/1 |goto Farside 1567,-1841,-925
	step
		.' Jump through the Vita-Injection Node's core |q Vita-Injection##7995/2 |goto Farside 1560,-1849,-923
	step
		.click Vita-Injection Conduit##263842
		.' Sever the Vita-Injection Conduit |q Vita-Injection##7995/3 |goto Farside 1575,-1926,-932
	step
		'Press _C_ to open your Communicator:
		..turnin Vita-Injection##7995
		..accept Aqua-Injection##7996
	step
		.click Aqua Security Console##263813
		.' Disable the Aqua Security Console |q Defense Deactivation##7994/3 |goto Farside 1464,-1863,-941
	step
		'Press _C_ to open your Communicator:
		..turnin Defense Deactivation##7994
	step
		.click Essence of Water##1470534
		.click Essence of Life##903256
		.click Aspect of Earth##5161520
		'Press _T_ to:
		.' Use the vortex bomb to trap essences and aspects |q Elemental Lure##8000/1 |goto 1485,-1894,-936
	step
		'Press _C_ to open your communicator:
		..turnin Elemental Lure##8000
	step
		.click Data Core: Aqua##263853
		.' Set up a data uplink with Data Core: Aqua |q Aqua-Injection##7996/1 |goto 1384,-1968,-934
	step
		.' Jump through the Aqua-Injection Node's core |q Aqua-Injection##7996/2 |goto 1394,-1958,-933
	step
		.click Aqua-Injection Conduit##263845
		.' Sever the Aqua-Injection Conduit |q Aqua-Injection##7996/3 |goto 1447,-1985,-940
	step
		'Press _C_ to open your Communicator:
		..turnin Aqua-Injection##7996
		..accept Face the Custodian##7997
	step
		'_Enter the green portal_ and teleport up |goto 1441,-1794,-938 < 5
		.kill Warped Exo-Plating##1006085+
		.' Destroy the Bio-Dome 3 Custodian |q Face the Custodian##7997/1 |goto 1539,-1531,-1062
		.' Deactivate Matrix Defense Console D |q Face the Custodian##7997/2 |goto 1539,-1531,-1062
	step
		'Press _C_ to open your Communicator:
		..turnin Face the Custodian##7997
		..accept A Familiar Menace##7717
	step
		'_Enter the portal_ and teleport down |goto 1539,-1494,-1060 < 5
		.kill Embodiment of Strength##1419453+
		.kill Embodiment of Might##1446518+
		.kill Embodiment of Growth##1452439+
		.kill Embodiment of Tranquility##5163337+
		.' Destroy elemental Embodiments |q Elemental Elimination##7998/1 |goto 1423,-1861,-939
	step
		'Press _C_ to use your Communicator:
		..turnin Elemental Elimination##7998
	step
		'_Run up_ this green ramp |goto 1310,-2003,-930 < 20
		.click Destroyed Scanbot##263744
		..accept Scuttled Scanbots##8001 |goto Farside 1393,-2031,-888
	step
		.click Damaged Scanbot##1487111+ |tip These are marked as an orange cog on your minimap.
		.' Repair Damaged Scanbots |q Scuttled Scanbots##8001/1 |goto 1258,-1989,-932
	step
		'Press _C_ to open your communicator
		..turnin Scuttled Scanbots##8001
	step
		'_Jump up_ the pipes here |goto Farside 1565,-1962,-934 < 10
		.' _Run up_ the rock formation |goto 1530,-2007,-928 < 10
		.talk Explorer Infiton##263740
		..accept The Observer's Terrace##8002 |goto 1475,-1981,-901
	step
		.click Charge Target##263775 |tip They look like little probes above the green platforms.
		.' Press _T_ while targeting the Charge Targets to swing to each platform
		.' _Jump on each green platform_ and follow the path up |goto Farside 1467,-1973,-898 < 5 |c |q 8002
	step
		.click Charge Target##263775 |tip They look like little probes above the green platforms.
		.' Press _T_ while targeting the Charge Targets to swing to each platform
		.' Climb the wall using the Charge Retractor |q The Observer's Terrace##8002/1 |goto 1371,-2110,-658
	step
		.click Eldan Cache##263786
		.' Open the Eldan Cache |q The Observer's Terrace##8002/2 |goto 1400,-2078,-658
	step
		'Press _C_ to open your Communicator:
		..turnin The Observer's Terrace##8002
	step
		'Jump off the platform while you have the _Uplifting Energy_ buff |goto 1335,-2012,-915 < 30
		.talk Researcher Neres##262785
		..turnin A Familiar Menace##7717 |goto 1076,-1823,-919
		..accept The Secret Project##7719 |goto 1076,-1823,-919
	step
		.talk Biologist Dekari##262781
		..accept Cut Off the Source##7729 |goto 1076,-1820,-919
	step
		'Press _C_ to open your Communicator:
		..accept The Prime Skeech##7721 |goto 1177,-1728,-966
	step
		.click Datacube Fragment##1535789
		.' Collect Experimental Data from Datacube Fragments |q The Secret Project##7719/1 |goto 1134,-1650,-962
		.click Skeech Remains##263181
		.' Find the Skeech Remains |q The Prime Skeech##7721/1 |goto 1134,-1650,-962
	step
		'Press _C_ to open your Communicator:
		..turnin The Secret Project##7719
	step
		.kill 1 Embodiment of Tranquility##5163337
		.' Attack the Focus Crystal to break off the fragments
		.' Harvest Focus Crystal Fragments from Focus Crystals |q Cut Off the Source##7729/1 |goto Farside 1201,-1675,-966
	step
		.kill 1 Power Crystal##5274847
		.' Attack the Focus Crystal to break off the fragments
		.' Harvest Power Crystal Fragments from Power Crystals |q Cut Off the Source##7729/2 |goto Farside 1096,-1587,-959
	step
		.kill 1 Life Crystal##5267459
		.' Attack the Focus Crystal to break off the fragments
		.' Harvest Life Crystal Fragments from Life Crystals |q Cut Off the Source##7729/3 |goto Farside 1028,-1623,-949
	step
		'Press _C_ to open your Communicator:
		..turnin Cut Off the Source##7729
	step
		'_Go up_ this spiral stone pillar |goto 1166,-1684,-962 < 5
		.' Return to Bogwatch Post |q The Prime Skeech##7721/2 |goto 1075,-1826,-919
		.click Operating Table##263174
		.' Reassemble the Skeech Remains on the Operating Table |q The Prime Skeech##7721/4 |goto Farside 1075,-1826,-919
	step
		.talk Lucent##262783
		.' Speak with Lucent |q The Prime Skeech##7721/5 |goto 1075,-1830,-919
	step
		.talk Researcher Neres##262785
		..turnin The Prime Skeech##7721 |goto Farside 1075,-1823,-919
	step
		.talk Biologist Dekari##262781
		..accept In Their Blood##7731 |goto 1076,-1821,-919
	step
		.talk Lucent##262783
		..accept Chance for Redemption##7723 |goto 1074,-1830,-919
	step
		'Press _T_ to:
		.' Play Lucent's message near Tanglevine mobs |q Chance for Redemption##7723/1 |goto 1132,-1681,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Chance for Redemption##7723
		..accept For Future Generations##7725
	step
		.click Adolescent Tanglevine##1668019
		.' Wake up Adolescent Tanglevines |q For Future Generations##7725/1 |goto 1150,-1620,-964
	step
		'Press _C_ to open your Communicator:
		..turnin For Future Generations##7725
		..accept Truth to Light##7727
	step
		.click Tanglevine Cage Door##263129
		..accept Blown Cover##7733 |goto 1156,-1630,-963
	step
		.click Tanglevine Cage Door##263130
		.' Open Tanglevine Cage Doors to free Dominion Explorers |q Blown Cover##7733/1 |goto Farside 1084,-1600,-957
	step
		.kill Tanglevine Slasher##1616051
		.kill Tanglevine Shaman##1616464
		.kill Tanglevine Pummeler##1401666
		.' Collect Primal Imprint Samples from Tanglevine Skeech |q In Their Blood##7731/1 |goto 1106,-1606,-960
	step
		'Press _C_ to open your Communicator:
		..turnin In Their Blood##7731
		..turnin Blown Cover##7733
	step
		'_Go up_ the spiral rock pillar |goto 1169,-1686,-961 < 5
		.' Find the path to Progenitor's Hideaway |q Truth to Light##7727/1 |goto 1234,-1565,-915
		.kill 1 Lucent##5303633 |q Truth to Light##7727/3 |goto 1548,-1532,-893
	step
		.' Find a spot to bury Lucent |q Truth to Light##7727/4 |goto 1799,-1528,-868
		.click Burial Plot##263137
		.' Bury Lucent |q Truth to Light##7727/5 |goto Farside 1801,-1527,-867
	step
		'Press _C_ to open your Communicator:
		..turnin Truth to Light##7727
		..accept Bio-Dome 4##7737
	step
		'_Take the portal_ and teleport up |goto 1982,-1830,-931 < 5
		.' _Take the large portal_ and teleport up |goto 1933,-1933,-716 < 5
		.click Researcher Ahnaris##263741
		.' Speak with Researcher Ahnaris |q Bio-Dome 4##7737/1 |goto 2960,-2058,-716
	step
		'_Take the portal_ and teleport up |goto 3432,-1939,-722 < 5
		.talk Explorer Bozim##262779
		..turnin Bio-Dome 4##7737 |goto 4088,-1900,-727
		..accept Survival Secrets##7739 |goto 4088,-1900,-727
		..accept Hidden Waters##7741 |goto 4088,-1900,-727
	step
		.talk Surveyor Adellas##262777
		..accept Removing Impediments##7747 |goto 4092,-1904,-727
	step
		.talk The Caretaker##265214
		..accept Touring Bio-Dome 4##8790 |goto 4111,-1964,-727
	step
		.click Bio-Dome 4 Expedition Panel##265217
		.' Click _Yes_, you would like to take a tour of Bio-Dome 4
		.' Ride the Bio-Dome 4 Observation Platform |q Touring Bio-Dome 4##8790/1 |goto 4188,-2038,-726
	step
		'Press _C_ to open your Communicator:
		..turnin Touring Bio-Dome 4##8790
	step
		'_Take the portal_ and teleport down |goto 3959,-1871,-720 < 10
		.click Dried Mud##1733821
		.' Collect Fresh Water from piles of Dried Mud |q Hidden Waters##7741/1 |goto 4096,-1789,-931 |tip Don't mount before you loot the water or you won't get credit.
	step
		'Press _C_ to open your Communicator:
		..turnin Hidden Waters##7741
		..accept Foods of the Desert##7743
	step
		.kill Valo Alera##1635710 |tip They look like green spiked plant near rocks.
		.kill 1 Prickly Cactus##1742929 |tip These look like small green round cacti around rocks.
		.' Harvest Valo Berries from Valo Aleras plants |q Foods of the Desert##7743/2 |goto 4096,-1791,-932
		.' Harvest Prickly Plums from Prickly Cacti |q Foods of the Desert##7743/1 |goto 4096,-1791,-932
	step
		'Press _C_ to open your Communicator
		..turnin Foods of the Desert##7743
		..accept Surveyor Support##7745
	step
		.click Sandhoof Calf##1777633
		.' Press _T_ to:
		.' Scan a Sandhoof Bull or Calf |q Survival Secrets##7739/2 |goto 4069,-1720,-930
	step
		.click Blackrock Pelter##1762921
		.' Press _T_ to:
		.' Scan a Blackrock Pummeler or Pelter |q Survival Secrets##7739/1 |goto 4069,-1720,-930
	step
		.click Desert Pincer##1764318
		.' Press _T_ to:
		.' Scan a Desert Pincer or Snapper |q Survival Secrets##7739/3 |goto Farside 4226,-1678,-916
	step
		.click Desert Scavenger##1767509
		.' Press _T_ to:
		.' Scan a Desert vulcarrion |q Survival Secrets##7739/4 |goto 4145,-1630,-929
	step
		'Press _C_ to open your Communicator:
		..turnin Survival Secrets##7739
	step
		.kill 1 Blackrock Pelter##2605182+
		.kill 1 Blackrock Pummeler##5231602+
		.kill 1 Desert Snapper##2751500+
		.' Kill Blackrock spikehordes and Desert scrab |q Removing Impediments##7747/1 |goto 4143,-1754,-932
	step
		'Press _C_ to use your Communicator:
		..turnin Removing Impediments##7747
	step
		.talk Dominion Settler##262886
		.' Deliver supplies to the second settler group |q Surveyor Support##7745/2 |goto 4066,-1681,-946
	step
		.talk Dominion Settler##262885
		.' Deliver supplies to the first settler group |q Surveyor Support##7745/1 |goto 4083,-1532,-940
	step
		.click Sinkhole##262811
		.' Enter the Sinkhole |goto 4005,-1566,-951 < 10
		.click Fallen Surveyor##262808
		..accept Fortuitous Discovery##7749 |goto 4540,-1432,-1383
	step
		'_Go through_ the hallway |goto 4570,-1509,-1384 < 5
		.' Continue through the doorway |goto 4540,-1656,-1385 < 5
		.click Gamma Observer##2895022
		.' Access the Biometrics Facility Gamma Records |q Fortuitous Discovery##7749/2 |goto 4542,-1711,-1386
	step
		.kill Gamma Observer##2870887+
		.kill Gamma Protector##2919510+
		.' Kill Biometrics Facility defenders |q Fortuitous Discovery##7749/1 |goto Farside 4538,-1601,-1389
	step
		'Press _C_ to use your Communicator:
		..turnin Fortuitous Discovery##7749
	step
		'_Proceed through_ the hallway |goto 4571,-1554,-1388 < 5
		.' _Take the portal_ and teleport out |goto 4541,-1406,-1376 < 5
		.talk Dominion Settler##262887
		.' Stay in the Yellow Circle and fight the mobs that attack
		.' Deliver supplies to the third settler group |q Surveyor Support##7745/3 |goto 4261,-1713,-899
	step
		'Press _C_ to open your Communicator:
		..turnin Surveyor Support##7745
		..accept Over Terraformed##7867
	step
		.talk Geologist Lochron##263522
		..turnin Over Terraformed##7867 |goto 4167,-1843,-933
		..accept Surveying Hotspots##7869 |goto 4168,-1842,-933
	step
		.talk Researcher Prollos##263523
		..accept Gathering the Cores##7871 |goto 4169,-1840,-933
	step
		'Press _C_ to use your communicator
		..accept Hostile Denizens##7873 |goto Farside 4282,-1902,-931
	step
		.click Climate Beacon##263491+ |tip These are found all around the Scorched Expanse.
		.' Take readings from Climate Beacons |q Surveying Hotspots##7869/1 |goto Farside 4488,-1815,-946
	step
		'Press _C_ to open your Communicator:
		..turnin Surveying Hotspots##7869
		..accept Drilling Down##7875
	step
		.click Fire Crystal##263465
		.' Press _T_ to:
		.' Collect Fire Crystal Sample from Fire Crystals |q Drilling Down##7875/1 |goto Farside 4319,-1947,-955
		.' Keep an eye on the _Heat Exposure_ bar in the top left part of your screen. If it gets too high you'll need to run out of this burning area to let it go back down.
	step
		'Press _C_ to open your Communicator:
		..turnin Drilling Down##7875
		..accept Extinguish the Flame##7885
	step
		.kill Elemental Flamescorcher##2739718+
		.kill Charred Monstrosity##2740508+
		.kill Charred Abomination##5295013+
		.' Collect Elemental Cores from elementals |q Gathering the Cores##7871/1 |goto 4313,-1930,-954
		.' Destroy elementals |q Hostile Denizens##7873/1 |goto 4314,-1933,-954
	step
		'Press _C_ to open your Communicator:
		..turnin Gathering the Cores##7871
		..turnin Hostile Denizens##7873
		..accept Cooling Stations##7877
	step
		.kill Firebreather##2800327
		.' Destroy Firebreather |q Extinguish the Flame##7885/1 |goto 4379,-1966,-966
	step
		'Press _C_ to open your Communicator:
		..turnin Extinguish the Flame##7885
		..accept Common Cause##8004
	step
		.click Primal Vent##265049 |tip Standing near the cooling vents will also reset your Heat Exposure.
		.' Place Remote Cooling Units at Primal Vents |q Cooling Stations##7877/1 |goto 4448,-1935,-958
	step
		'Press _C_ to open your communicator:
		..turnin Cooling Stations##7877
	step
		.click Relic Crate##263521
		..accept Traces of the Eldan##7879 |goto 4398,-1833,-931
	step
		.click Lost Relic##2768254 |tip These are found in and around the large crater.
		.' Collect Lost Relics for Researcher Prollos |q Traces of the Eldan##7879/1 |goto Farside 4511,-1930,-942
	step
		'Press _C_ to open your Communicator:
		..turnin Traces of the Eldan##7879
	step
		.talk The Caretaker##263734
		..turnin Common Cause##8004 |goto 4695,-1959,-975
		..accept Down with the Flamewalkers##8010 |goto 4695,-1959,-975
		..accept Take Out the Probes##8011 |goto 4695,-1959,-975
	step
		.talk The Caretaker##263734
		..accept Seeing Red##8005 |goto 4689,-1943,-974
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 14 |goto Farside 4720,-1895,-976
	step
		'Press _C_ to open your communicator:
		..accept Summoning Shutdown##8006 |goto 4810,-1790,-989
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 28 |goto Farside 4726,-1782,-979
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 42 |goto 4764,-1728,-982
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 57 |goto 4770,-1639,-984
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 71 |goto 4959,-1661,-990
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 85 |goto 4931,-1721,-985
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |goto 4882,-1803,-987
	step
		'Press _C_ to open your Communicator:
		..turnin Seeing Red##8005
	step
		.kill 1 Flamewalker Ritualist##5315912
		.click Flamewalker Summoning Pit##263680
		.' Kill the enemies that attack in waves
		.' Disrupt the Flamewalkers' summoning ritual |q Summoning Shutdown##8006/1 |goto 5076,-1818,-989
	step
		'Press _C_ to open your Communicator:
		..turnin Summoning Shutdown##8006
		..accept Burning for Time##8008
	step
		.click Charging Flamewalker Servitor##2865910 |tip These are marked with an orange cog on your minimap.
		'Press _T_ to:
		.' Destroy Charging Flamewalker Servitors |q Take Out the Probes##8011/1 |goto 4902,-1779,-990
		.kill 1 Flamewalker Cinder##5397305+
		.click Pell Barrel##263587
		.' Use the Volatile Cinder on Pell Barrels |q Burning for Time##8008/2 |goto 4808,-1637,-991
	step
		'Press _C_ to open your Communicator:
		..turnin Take Out the Probes##8011
	step
		.kill Flamewalker Inciter##2943367+
		.kill Flamewalker Purger##2946254+
		.kill Flamewalker Fire-Brand##2970323+
		.kill Flamewalker Cinder##2967567+
		.' Kill Flamewalker Pell |q Down with the Flamewalkers##8010/1 |goto 4808,-1637,-991
	step
		'Press _C_ to open your Communicator:
		..turnin Down with the Flamewalkers##8010
	step
		.kill 1 Acolyte Ember-Walker##3067794 |q Burning for Time##8008/3 |goto 4877,-1526,-983
		.kill 1 Acolyte Flame-Binder##5424318 |q Burning for Time##8008/4 |goto Farside 4565,-1548,-1000
	step
		'Press _C_ to open your Communicator:
		..turnin Burning for Time##8008
		..accept Spreading the Virus##8007
	step
		.talk Fallen Flamewalker##263736
		..accept Gifts of the Makers##8013 |goto 4724,-1573,-951
	step
		.click Flamewalker Relic##2858439 |tip You can find a lot of them up this hill.
		.' Collect Flamewalker Relics |q Gifts of the Makers##8013/1 |goto 4768,-1579,-935
	step
		'Press _C_ to open your Communicator:
		..turnin Gifts of the Makers##8013
	step
		'_Head up the dirt path_ going up this mountain |goto Farside 4690,-1713,-978 < 20
		.' _Go up_ the wooden stairway |goto 4548,-1679,-886 < 10
		..accept Eliminate the High Priest##8009 |goto 4443,-1573,-815
		.' _Continue up_ the mountain and as you go:
		.click Pell Control Point##263679
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 20 |goto 4443,-1573,-815
	step
		.click Pell Control Point##263670
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 40 |goto 4445,-1532,-787
		.click Pell Control Point##263658
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 60 |goto 4468,-1518,-768
		.click Pell Control Point##263665
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 80 |goto 4447,-1505,-769
		.click Pell Control Point##263664
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |goto 4411,-1477,-778
	step
		'Press _C_ to open your Communicator:
		..turnin Spreading the Virus##8007
	step
		.' _Follow the stone_ path up and around |goto Farside 4384,-1546,-791 < 10
		.kill 1 High Priest Flame-Guardian##3104127 |q Eliminate the High Priest##8009/1 |goto 4314,-1560,-685 |tip He is at the very top of the mountain.
	step
		.click Flamewalker Console##263570
		.' Shut down the Flamewalker Console |q Eliminate the High Priest##8009/2 |goto 4382,-1549,-687
	step
		'Press _C_ to open your Communicator:
		..turnin Eliminate the High Priest##8009
		..accept Sovereign's Landing##8012
	step
		'_Follow the trail_ back down the mountain |goto 4511,-1583,-693 < 5
		.' _Use the portal_ and teleport up |goto 3981,-1833,-938 < 5
		.' _Use the portal_ and teleport up the next level |goto 4051,-1934,-721 < 5
		.' Go to Virtue's Landing |q Sovereign's Landing##8012/2 |goto Farside 2988,-2041,-711
		.click Ship to Sovereign's Landing##266246
		.' Click _Yes_ to go to Sovereign's Landing |q Sovereign's Landing##8012/3 |goto 5358,-4555,-496
	step
		.talk Private Tafu##3068909
		..turnin Sovereign's Landing##8012 |goto 4049,-5200,-723
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Sovereign's Landing_ as your Recall point |goto Farside 4027,-5273,-722
		|confirm
	step
		.talk Spigo##269149
		..accept Into the Void##6516 |goto 4048,-5277,-723
	step
		.' Look for signs of Spigo's ship |q Into the Void##6516/1 |goto 3992,-5425,-738
	step
		.kill Craterclaw Ripper##3126974+
		..accept Aggressive Aliens##6546 |goto Farside 3930,-5428,-739
	step
		.click Dustrunner Debris##3121640+
		.' Search Dustrunner Debris for clues |q Into the Void##6516/2 |goto 3977,-5431,-738
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Void##6516
		..accept Element of Surprise##6471
	step
		'Press _C_ to open your Communicator:
		..accept Scattered##6428 |goto 3649,-5469,-736
	step
		.' Find Spigo's crashed ship |q Element of Surprise##6471/1 |goto 3496,-5806,-726
	step
		.click Dustrunner Hull Door##269269
		.' Choose _Yes_, enter the Dustrunner's hull
		.' Enter Spigo's crashed ship |q Element of Surprise##6471/2 |goto 3460,-5795,-757
	step
		.click SHIPMENT: 018J##269270
		.' Enter Spigo's code, _60191_ |q Element of Surprise##6471/3 |goto 3345,-5666,-845
		.' Fight the enemies within the yellow circle
		.' Defend against the Darkspur Cartel's ambush |q Element of Surprise##6471/4 |goto Farside 3343,-5667,-845
	step
		'Press _C_ to open your Communicator:
		..turnin Element of Surprise##6471
		..accept On the Run##6517
	step
		.click Dustrunner Hull Door##269271
		.' Exit the Hull |goto 3391,-5638,-845 < 5
		.' Locate the Dustrunner's aft compartment |q Scattered##6428/1 |goto 3372,-5719,-717
	step
		.click Ship Log##269170
		.' Read the Ship Log |q Scattered##6428/2 |goto 3296,-5725,-740
	step
		'Press _C_ to open your Communicator:
		..turnin Scattered##6428
		..accept Stuffed##6430
	step
		.click Holding Pen##269169
		..accept Scrambled##6429 |goto 3312,-5725,-738
	step
		.click Lunar Scrambler##2909672
		.' Recover Lunar Scramblers |q Scrambled##6429/1 |goto 3328,-5758,-740
	step
		.click Holding Pen##269169
		.' Return the Lunar Scramblers to the Holding Pen |q Scrambled##6429/2 |goto 3310,-5726,-738
	step
		'Press _C_ to open your Communicator:
		..turnin Scrambled##6429
	step
		.' Look for signs of Vicious Vlogg |q On the Run##6517/1 |goto 3396,-5910,-735
		.kill 1 Vicious Vlogg##2959041
		.' Defeat Vicious Vlogg |q On the Run##6517/2 |goto 3396,-5910,-735
	step
		.' Chase Vicious Vlogg |q On the Run##6517/3 |goto Farside 3594,-6008,-736
	step
		.click Farside Starship##462009
		..turnin On the Run##6517 |goto 3597,-6028,-735
		..accept Light the Sky##6518 |goto 3500,-6038,-679
	step
		.click Vicious Vlogg's Ship##5426611
		.' Press _1_ to shoot at Vlogg's ship
		.' Shoot down Vicious Vlogg's ship |q Light the Sky##6518/1
	step
		.kill 1 Craterclaw Slasher##435653+
		.kill 1 Craterclaw Ripper##5259566+
		.' Kill Craterclaw hookfoots |q Stuffed##6430/1 |goto 3842,-6097,-730
		.kill 1 Lumos Hydraphore##5061859+
		.kill 1 Ferrite Titan##5282035+
		.kill 1 Moonstone Goliath##3587786+
		.' Kill space critters |q Aggressive Aliens##6546/1 |goto 3842,-6097,-730
	step
		'Press _C_ to open your Communicator:
		..turnin Stuffed##6430
		..turnin Aggressive Aliens##6546
		..accept Overnight Delivery##6431
	step
		.' Locate Vicious Vlogg's crashed ship |q Light the Sky##6518/2 |goto 3969,-6092,-748
	step
		.talk Vicious Vlogg##269149
		..turnin Light the Sky##6518 |goto 3969,-6092,-748
		..accept Bringing Back the Bounty##6472 |goto 3969,-6092,-748
	step
		.click Vicious Vlogg##482250
		.' Use the temporary skill, _Smack_, to slap him when he stops |tip You will need to fight the enemies and avoid traps as you go.
		.' Escort Vicious Vlogg to Spigo |q Bringing Back the Bounty##6472/1 |goto Farside 4121,-6113,-739
	step
		.kill 1 Darkspur Destroyerbot##484949
		.' Defeat the Darkspur Destroyerbot |q Bringing Back the Bounty##6472/2 |goto 4132,-6136,-738
	step
		.click Vicious Vlogg##482250
		.' Turn Vicious Vlogg over to Spigo |q Bringing Back the Bounty##6472/3 |goto Farside 4192,-6156,-734
	step
		.talk Spigo##269145
		..turnin Bringing Back the Bounty##6472 |goto 4209,-6161,-734
	step
		'Press _C_ to open your Communicator:
		..accept Meet the Team##6453 |goto 4209,-6161,-734
	step
		.' Deliver the package |q Overnight Delivery##6431/1 |goto 3670,-6211,-729
	step
		'Press _T_ to:
		.' Set off a signal flare |q Overnight Delivery##6431/2 |goto 3676,-6210,-729
	step
		'Press _C_ to open your Communicator:
		..turnin Overnight Delivery##6431
	step
		'_Go up_ this pathway between the cliffs |goto Farside 3812,-6401,-710 < 20
		.talk Specialist Fifield##502798
		.' Speak with Specialist Fifield |q Meet the Team##6453/2 |goto 3874,-6443,-660
		.talk Specialist Vita##502797
		.' Speak with Specialist Vita |q Meet the Team##6453/1 |goto 3874,-6443,-660
		.talk 1 Private Paxton##502799
		.' Speak with Private Paxton |q Meet the Team##6453/3 |goto 3876,-6440,-660
	step
		.talk Major Bracken##269134
		..turnin Meet the Team##6453 |goto Farside 3877,-6445,-659
		..accept Generating Clues##6454 |goto Farside 3877,-6445,-659
		..accept Securing Base Camp##6462 |goto Farside 3877,-6445,-659
	step
		.click Expedition Generator##269127
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 1 |goto Farside 3869,-6447,-659
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 2 |goto 3936,-6427,-658
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 3 |goto 4000,-6462,-660
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 4 |goto 4045,-6439,-660
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |goto 3843,-6595,-665
	step
		'Press _C_ to open your Communicator:
		..turnin Generating Clues##6454
	step
		.' Around Arcanus Base:
		.click Expedition Turret##445663
		.' Reactivate Expedition Turrets |q Securing Base Camp##6462/1 |goto 3855,-6465,-660
	step
		.kill 1 Ravenous Fraz##5501136+
		.' Kill Ravenous aliens |q Securing Base Camp##6462/2 |goto Farside 4269,-6527,-687
	step
		'Press _C_ to open your Communicator:
		..turnin Securing Base Camp##6462
	step
		'If you are within this area, he will be next to you:
		.talk Specialist Fifield##510178
		..accept Life Signs Detected##6455 |goto 4126,-6505,-667
	step
		'If you are within this area, he will be next to you:
		.talk Private Paxton##510179
		..accept A Preemptive Strike##6458 |goto 4122,-6506,-667
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/1 |goto 4126,-6505,-667
	step
		.click Expedition Supplies##269029
		..accept Picking Up the Pieces##6459 |goto 4249,-6497,-687
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/2 |goto 4369,-6544,-683
		.' As you go make sure to:
		.click Expedition Supplies##522082
		.' Kill alien creatures
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/3 |goto Farside 4582,-6646,-645
		.' As you go make sure to:
		.click Expedition Supplies##522082
		.' Kill alien creatures
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/4 |goto Farside 4572,-7221,-601
		.' As you go make sure to:
		.click Expedition Supplies##522082
		.' Kill alien creatures
	step
		.' Standing next to you:
		.talk Specialist Fifield##510178
		..turnin Life Signs Detected##6455 |goto 4481,-7200,-601
	step
		.' Standing next to you:
		.talk Specialist Vita##510177
		..accept Secondhand Research##6456 |goto 4481,-7200,-601
	step
		.' _Take the portal_ and teleport up |goto Farside 4456,-7208,-597 < 5
		.' Run over the eggs here to prompt this quest |goto Farside 5606,-11980,-460
		'Press _C_ to open your Communicator:
		..accept Decontamination Protocol: Sterilize##6461
	step
		.kill Derelict Squirg##513417+
		'Press _C_ to open your Communicator:
		..accept Decontamination Protocol: Exterminate##6460 |goto Farside 5581,-11981,-460
	step
		'All around this area:
		.click Expedition Datapad##268970 |tip These appear as orange cogs on your minimap.
		.' Find Expedition Datapads |q Secondhand Research##6456/1 |goto 5611,-11967,-460
		.' Squash Derelict Eggs |q Decontamination Protocol: Sterilize##6461/1 |goto 5611,-11970,-460
		.kill Derelict Squirg##513417+
		.' Kill the Derelict Squirg |q Decontamination Protocol: Exterminate##6460/1 |goto 5680,-11910,-458
	step
		'Press _C_ to open your Communicator:
		..turnin Decontamination Protocol: Exterminate##6460
		..turnin Decontamination Protocol: Sterilize##6461
	step
		'_Go up_ the green elevator |goto 5612,-11924,-434 < 5
		.click Eldan Research Samples##269033
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 1 |goto Farside 5677,-11595,-415
		.click Derelict Augmentor DS-X5##567988
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 2 |goto 5676,-11465,-415
	step
		.click Eldan Research Samples##269031
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 3 |goto 5477,-11462,-415
		.click Eldan Research Samples##269030
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 4 |goto 5475,-11595,-415
	step
		.kill Derelict Augmentor DS-01##468958+
		.kill Derelict Maintenance Construct##470592+
		.' Destroy Derelict constructs |q Secondhand Research##6456/3 |goto 5557,-11573,-404
	step
		'If you are within this area, she will be next to you:
		.talk Specialist Vita##576217
		..turnin Secondhand Research##6456
	step
		'Press _C_ to open your Communicator:
		..accept Trouble at Base Camp##6457
	step
		'_Use the portal_ to teleport down |goto 5579,-12064,-455 < 5
		.click Expedition Supplies##522082
		.' Collect Expedition Supplies |q Picking Up the Pieces##6459/1 |goto 4698,-6753,-624
		.kill 1 Ravenous Frizlet##487370+
		.kill 1 Moonfell Roamer##271428+
		.kill 1 Lunarfin Stalker##270967+
		.' Kill alien creatures |q A Preemptive Strike##6458/1 |goto 4698,-6753,-624
	step
		'Press _C_ to open your Communicator:
		..turnin A Preemptive Strike##6458
	step
		.talk Major Bracken##269134
		..turnin Trouble at Base Camp##6457 |goto 3876,-6444,-660
		..turnin Picking Up the Pieces##6459 |goto 3876,-6444,-660
		..accept Showdown With Paxton##6463 |goto 3876,-6444,-660
	step
		.click Flamethrower##268076
		.' Find Private Paxton |q Showdown With Paxton##6463/1 |goto 3934,-6528,-667
		.kill 1 Private Paxton##596477
		.' Subdue Private Paxton |q Showdown With Paxton##6463/2 |goto 3934,-6529,-667
	step
		.talk Major Bracken##269134
		..turnin Showdown With Paxton##6463 |goto 3876,-6444,-660
	step
		'Press _C_ to open your Communicator:
		..accept Stemming the Darktide##6538 |goto 3878,-6447,-660
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to _Sovereign's Landing_ - Transmat |goto 4028,-5272,-722 < 100 |c |noway |q 6538
	step
		.talk Kezrek Warbringer##267994
		..turnin Stemming the Darktide##6538 |goto Farside 3570,-5404,-738
		..accept Against the Current##6492 |goto 3570,-5404,-738
	step
		.talk Scientist Rizz##267999
		..accept Best Safecracker This Side of Nearside##6499 |goto 3585,-5374,-738
		..accept Clearing the Airwaves##6503 |goto 3585,-5374,-738
	step
		.click High Security Eldan Chest##267995
		.' Click the color patterns in order
		.' Solve three colors |q Best Safecracker This Side of Nearside##6499/1 |goto 3577,-5370,-738
		.' Solve six colors |q Best Safecracker This Side of Nearside##6499/2 |goto 3577,-5370,-738
		.' Solve nine colors |q Best Safecracker This Side of Nearside##6499/3 |goto 3577,-5370,-738
		.' Solve twelve colors |q Best Safecracker This Side of Nearside##6499/4 |goto 3577,-5370,-738 |tip If you are having trouble, try typing or writing down the color rotation then using that to remember the order.
	step
		.talk Scientist Rizz##267999
		..turnin Best Safecracker This Side of Nearside##6499 |goto Farside 3585,-5374,-738
	step
		.click Repellent Emitter##268050
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 1 |goto 3489,-5688,-729
		.click Repellent Emitter##268047
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 2 |goto 3661,-5615,-728
		.click Repellent Emitter##268051
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 3 |goto 3619,-5775,-722
		.click Repellent Emitter##268052
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 4 |goto 3614,-5895,-727
		.click Repellent Emitter##268049
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |goto 3535,-5985,-723
	step
		'Press _C_ to open your Communicator:
		..turnin Clearing the Airwaves##6503
	step
		.kill Darktide Destructor##638084+
		.kill Darktide Engulfer##638181+
		.collect 1 Ikthian Weapon Charging Cell##16227
		.' Use the Ikthian Weapon Charging Cell in your inventory |use Ikthian Weapon Charging Cell##16227
		..accept Batteries Found Near Me##6498 |goto 3434,-5260,-729
	step
		.kill Darktide Destructor##638084+
		.kill Darktide Engulfer##638181+
		.' Kill Darktide Ikthians |q Against the Current##6492/1 |goto 3434,-5260,-729
		.' Collect Charging Cells from Darktide Ikthians |q Batteries Found Near Me##6498/1 |goto 3434,-5260,-729
	step
		'Press _C_ to open your Communicator:
		..turnin Batteries Found Near Me##6498
	step
		.' Go to Checkpoint Alpha |q Against the Current##6492/2 |goto Farside 3153,-5409,-682
	step
		'Press _C_ to open your Communicator:
		..turnin Against the Current##6492
		..accept Suits Me Just Fine##6493
	step
		.click Dominion Battle Suit##644765
		.' Pilot the Dominion Battle Suit |q Suits Me Just Fine##6493/1 |goto 3154,-5414,-680
	step
		.kill 1 Darktide Razorfin##646976
		.kill 1 Darktide Rifler##643896
		.' Kill Darktide forces with the Dominion Battle Suit |q Suits Me Just Fine##6493/2 |goto 3057,-5531,-683
	step
		'Press _C_ to open your Communicator:
		..accept Observe and Report##6500
	step
		.' Go to Checkpoint Beta |q Suits Me Just Fine##6493/3 |goto 3037,-5638,-683
	step
		'Press _C_ to open your Communicator:
		..turnin Suits Me Just Fine##6493
		..accept Word from the Inside##6494
	step
		.click Draken Prisoner##677282
		.' Free the Dominion prisoners |q Word from the Inside##6494/1 |goto 3057,-5881,-683
	step
		'Press _C_ to open your Communicator:
		..turnin Word from the Inside##6494
		..accept Tell Us Everything##6495
	step
		.kill Equalizer Protector##740061+
		.kill Equalizer Security Probe##813910+
		.' Destroy Equalizer constructs |q Observe and Report##6500/1 |goto Farside 2997,-5797,-684
	step
		'Press _C_ to open your Communicator:
		..turnin Observe and Report##6500
	step
		'_Go up_ one of the green elevators |goto 2986,-5876,-686 < 10
		.click Darktide Satellite Uplink##268065
		.' Hack the 1st Darktide Satellite Uplink |q Tell Us Everything##6495/1 |goto 2987,-5940,-662
	step
		.click Darktide Satellite Uplink##268064
		.' Hack the 2nd Darktide Satellite Uplink |q Tell Us Everything##6495/2 |goto Farside 2980,-6047,-662
	step
		'Press _C_ to open your Communicator:
		..accept Wield the Lightning##6501 |goto 3005,-6106,-662 |tip You may have to kill a mob or two if this doesn't trigger.
	step
		.click Darktide Satellite Uplink##268063
		.' Hack the 3rd Darktide Satellite Uplink |q Tell Us Everything##6495/3 |goto 3010,-6130,-661
	step
		.click Power Drill##268022
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 16  |goto Farside 2961,-6106,-657
		.click Power Drill##268021
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 33 |goto 2962,-6127,-656
		.click Power Drill##268019
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 50 |goto 2967,-6151,-656
	step
		.click Power Drill##268023
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 66 |goto 3030,-6070,-656
		.click Power Drill##268022
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 83 |goto 3053,-6084,-656
		.click Power Drill##268018
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |goto 3064,-6110,-65
	step
		'Press _T_ to:
		.' Detonate lit-bombs on Power Drills |q Wield the Lightning##6501/2 |goto Farside 3079,-6098,-661
	step
		'Press _C_ to open your Communicator:
		..turnin Wield the Lightning##6501
	step
		'_Go up_ the green elevator |goto 3025,-6230,-649 < 5
		.' Find Kezrek Warbringer |q Tell Us Everything##6495/4 |goto 3042,-6262,-583
	step
		.talk Kezrek Warbringer##267986
		..turnin Tell Us Everything##6495 |goto Farside 3106,-6278,-583
		..accept The Anti-Gravity of the Situation##8729 |goto Farside 3106,-6278,-583
	step
		'Prestt _T_ to use your quest ability |tip This will stun them, so use in the middle of combat.
		.kill Darktide Dragoon##857950+
		.' Kill Darktide warbots |q The Anti-Gravity of the Situation##8729/1 |goto 3125,-6357,-583
		.kill Darktide Finripper##856844+
		.kill Darktide Dorsalcutter##409130+
		.' Kill Darktide Finrippers, Dorsalecutters, and Needlefins |q The Anti-Gravity of the Situation##8729/2 |goto 3125,-6357,-583
	step
		.' Regroup at the rally point |q The Anti-Gravity of the Situation##8729/3 |goto Farside 2968,-6464,-575
	step
		.talk Kezrek Warbringer##267991
		..turnin The Anti-Gravity of the Situation##8729 |goto Farside 2968,-6464,-575
		..accept To the Dishonor##6496 |goto Farside 2968,-6464,-575
	step
		'Stand in this yellow circle
		.' Fight waves of Darktide Ikthians |q To the Dishonor##6496/1 |goto 2900,-6480,-577
	step
		.talk Kezrek Warbringer##267990
		..turnin To the Dishonor##6496 |goto 2908,-6511,-577
		..accept Fight Fire with Fire##6497 |goto 2908,-6511,-577
	step
		'Press _C_ to open your Communicator:
		..accept Off the Scales##6504
	step
		.' Chase Admiral Gelic Ironscale |q Fight Fire with Fire##6497/1 |goto 3143,-6736,-538
	step
		.kill 1 Darktide Champion##862789
		.' Defeat the Darktide Champion |q Fight Fire with Fire##6497/2 |goto 3227,-6818,-532
	step
		.click Plasmic Equalizer##268059
		.' Destroy the Ikthian armada with the Plasmic Equalizer |q Fight Fire with Fire##6497/3 |goto Farside 3272,-6836,-532
	step
		'Press _C_ to open your Communicator:
		..turnin Fight Fire with Fire##6497
		..accept Welcome Home (Illium)##6539
	step
		.click Plasmic Power Cell##268042+ |tip They are all around the edge of this platform.
		.' Calibrate the Plasmic Power Cells |q Off the Scales##6504/1 |goto 3180,-6830,-531
	step
		'Press _C_ to open your Communicator:
		..turnin Off the Scales##6504
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to _Sovereign's Landing_ - Transmat |goto 4028,-5272,-722 < 100
		.click Ship to Virtue's Landing##270550
		.' Choose _Yes_, travel back to Illium |goto Farside 4129,-5231,-706
		.' Return to Illium |q Welcome Home (Illium)##6539/1 |goto Illium -3638,-806,-863
	step
		.talk Ringo Hax##265426
		..turnin Welcome Home (Illium)##6539 |goto -3452,-741,-891
		..accept Journey to Wilderrun##8852 |goto -3452,-741,-891
		..accept Opening Doors##8870 |goto -3452,-741,-891 |tip This quest will open when you have reached level 35.
	step
		.click To the New Imperial Museum of Illium##263610
		.' _Enter the Museum_ |goto Illium -3485,-842,-885 < 5
		.click Primal Matrix Stabilizer Display##263635
		.' Take the Primal Matrix Stabilizer to the museum in Illium |q Primal Matrix Stabilizer##9144/1 |goto Illium -3382,-1656,-1032
	step
		.talk Artemis Zin##263644
		..turnin Primal Matrix Stabilizer##9144 |goto -3382,-1721,-1034
	step
		.click To Spaceport Alpha##263635
		.' _Leave_ the Museum |goto -3387,-1874,-1034 < 5
		.' _Go through_ the large gate |goto Illium -3563,-794,-881 < 20
		.' Travel to the Mysterious Portal in Illium |q Opening Doors##8870/1 |goto -3679,-1044,-852
	step
		.click To Spaceport Alpha##263640
		.' Enter the Mysterious Portal in Illium |goto Illium -3679,-1044,-852
		|confirm |q 8870/3
	step
		.talk Drusera##285151 |goto DruseraWorldStoryInstance1 1,-229,-151 < 5
		.click Core Systems Control##284359 |goto -1,-169,-152 < 5
		.' _Fight the mobs_ that spawn |goto -2,-192,-153 < 5
		.click Security Fail-Safe Control##395507 |goto -29,-187,-153 < 5
		.click Personnel Index Panel##395512 |goto 28,-188,-153 < 5
		.kill 1 Security Command Construct##405713 |goto 2,-191,-153 < 5
		.click DATACUBE: Mysterious Agreement##406590 |goto -1,-154,-147 < 5
		.talk Drusera##395921 |goto -9,-174,-153 < 5
		|confirm |q 8870/3
	step
		.' _Run through_ the small hallway |goto DruseraWorldStoryInstance1 -31,-138,-152 < 5
		.click Genesis Mainframe##395508 |goto -2,-96,-148 < 5
		.click Earth and Fire Transfer Control##268441 |goto DruseraWorldStoryInstance1 -115,-58,-145 < 5
		.kill 1 Primal Earth Entity##293853+
		.click Primal Earth Decanter##268434 |goto -115,-69,-145 < 5
		.kill 1 Primal Fire Decanter##282209+
		.' Collect _7 Earth's and Fire cores_ before you continue
		|confirm |q 8870/3
	step
		.click Water and Air Transfer Control##268445 |goto DruseraWorldStoryInstance1 113,-57,-145 < 5
		.' _Fight the mobs_ that spawn |goto 96,-57,-145 < 10
		.click Primal Life Transfer Control##268442 |goto 33,-75,-148 < 5
		.kill 1 Pure Life Elemental##295010
		.click Primal Logic Transfer Control##268443 |goto -34,-76,-148 < 5
		.kill 1 Pure Logic Elemental##296986
		.click DATACUBE: Protoplasmic Resonator##297295 |goto -1,-110,-145 < 5
		'Use the portal and _teleport out_ |goto -1,-3,-144 < 5
		|confirm |q 8870/3
	step
		.talk Drusera##300475 |goto DruseraWorldStoryInstance1 -1,244,-767 < 5
		.click DATACUBE: Project Success##268425 |goto 0,269,-768 < 5
		'Use the portal to _teleport back_ |goto 0,-1,-750 < 5
		.' _Enter_ the doorway to the next room |goto 0,-1,-750 < 5
		.' Keep running straight to the fire |tip This will cause you to exit.
		.' Discover the secrets of Exo-Lab Prime |q Opening Doors##8870/3 |goto DruseraWorldStoryInstance1 -1,-154,-147
	step
		'_Go through_ the large gates |goto Illium -3562,-792,-881 < 20
		.click Enigma Chamber Door##263162
		.' _Enter_ the Enigma Chamer |goto -3461,-1054,-881 < 3
		.click Elevator Control##263158
		.' Take the _Elevator down_ |goto -3157,-1781,-1037 < 5
		.talk Chancellor Juro Takigurian##263152
		..turnin Opening Doors##8870 |goto -3252,-1825,-1027
	step
		.click Chancellor Juro Takigurian##263152
		.' Take the _Elevator up_ |goto Illium -3252,-1793,-1029 < 3
		.click Enigma Chamber Door##263157
		.' _Exit_ the Enigma Chamber |goto -3156,-1762,-1037 < 3
		.' _Go through_ the large gates |goto -3564,-609,-880 < 20
		.click Ship to Wilderrun##265402		
		.' Travel to Fort Vigilance |q Journey to Wilderrun##8852/1 |goto -3577,-524,-858
]])