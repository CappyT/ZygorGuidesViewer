if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Farside (29-35)",
	{
	faction="Dominion",
	startlevel=29,
	endlevel=35,
	nextguide="Dominion\\Wilderrun (35-41)",
	image="ZygorUIGuides:Farside",
	description="Farside is a zone located on the moon, Halon, orbiting Nexus. It is suited for characters level 29-35. "
	},
	[[
	step
		.click Venture Board##263605 |goto Illium -3417,-659,-891
		..accept Venture into Farside!##9457
	step
		.talk Captain Petronia##266426 |goto Illium -3615,-773,-879
		..turnin Venture into Farside!##9457
	step
		.click Ship to Farside##266426
		.' Choose _Yes_, Travel to Virtue's Landing on Farside |goto Illium -3615,-773,-879 < 10
		|confirm
	step
		.talk Researcher Vibius##266215 |goto Farside 5362,-4521,-497
		..accept Onward to Alpha Complex##8107
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Virtue's Landing_ as your Recall point |goto Farside 5353,-4453,-495
		|confirm |q 8107
	step
		.' _Step into_ the teleporter |goto Farside 5361,-4510,-497 < 10 |c |q 8107
	step
		.talk Researcher Ahnaris##263741 |goto Farside 2961,-2058,-716
		..turnin Onward to Alpha Complex##8107
		..accept The Journey Ahead##8792
	step
		.click Alpha Complex Research Terminal##263231 |goto Farside 2983,-2023,-716
		.' Inspect the Alpha Complex Research Terminal |q The Journey Ahead##8792/1
	step
		.talk Researcher Gracos##263230 |goto Farside 3015,-2023,-716
		.' Talk to Researcher Gracos |q The Journey Ahead##8792/3
	step
		.click Bio-Dome Expedition Gear##263228+
		.' Inspect the Bio-Dome Expedition Gear |q The Journey Ahead##8792/2 |goto Farside 2896,-2056,-715
	step
		.talk Researcher Ahnaris##263741 |goto Farside 2961,-2057,-716
		..turnin The Journey Ahead##8792
		..accept Discovering Bio-Dome 3##7853
	step
		.' _Step into_ the teleporter |goto Farside 2546,-1932,-721 < 10 |c |q 7853
	step
		.talk Biologist Memydra##263743 |goto Farside 1902,-1897,-722
		..turnin Discovering Bio-Dome 3##7853
		..accept Measuring Life##7857
	step
		.talk Engineer Gezani##263742 |goto Farside 1896,-1903,-722
		..accept Destructive Potential##7855
	step
		.talk The Caretaker##265222 |goto Farside 1869,-1962,-721
		..accept Touring Bio-Dome 3##8788
	step
		.click Bio-Dome 3 Expedition Panel##265225
		.' Choose _Yes_, you would like to take a tour of Bio-Dome 3
		.' Ride the Bio-Dome 3 Observation Platform |q Touring Bio-Dome 3##8788/1 |goto Farside 1799,-2044,-720
	step
		'Press _C_ to open your Communicator:
		..turnin Touring Bio-Dome 3##8788 |goto Farside 2021,-1831,-721
	step
		.' Use the teleporter |q Measuring Life##7857/1 |goto Farside 2027,-1859,-714
	step
		.' All around this area:
		.click Concentrated Primal Life##336275
		.' Measure energy levels of Concentrated Primal Life |q Measuring Life##7857/2 |goto Farside 1957,-1790,-928
		.' Collect Life Essences from animals |q Destructive Potential##7855/1 |goto Farside 1968,-1801,-927
	step
		'Press _C_ to open your Communicator:
		..turnin Destructive Potential##7855
		..turnin Measuring Life##7857
		..accept Taming The Forest##7859
		..accept Harvesting Life##7861
	step
		.talk Hungry Cub##263237 |goto Farside 1863,-1566,-912
		..accept A Hungry Cub##7863
	step
		'All around this area:
		.click Marker Flare##263266 |tip The pink smoke flares. Also visible in minimap.
		.' Install Primal Energy Containment Devices at Marker Flares |q Harvesting Life##7861/1 |goto Farside 1855,-1774,-925
		.click Primal Ragethorn##1356134 |tip Green thorn bushes with small robot stuck in them.
		.' Press _T_ to spray Primal Ragethorn to free Sciencebots |q Taming The Forest##7859/1 |goto Farside 1866,-1778,-926
		'Kill Timber Rook and Raven
		.' Collect Ravenok Meat from Timber ravenok |q A Hungry Cub##7863/1 |goto Farside 1977,-1621,-919
	step
		'Press _C_ to open your Communicator:
		..turnin Harvesting Life##7861
		..turnin Taming The Forest##7859
		..accept Primal Aggression##7865
	step
		.talk Hungry Cub##263237 |goto Farside 1860,-1569,-912
		..turnin A Hungry Cub##7863
	step
		.'Run in _between the large rocks_ in this area |goto Farside 1981,-1736,-925 < 10 |c |q 7865/1
	step
		.' Follow the path of Fungal Spores to their source |q Primal Aggression##7865/1 |goto Farside 2121,-1784,-929
		.kill 1 Banespore##1360861 |q Primal Aggression##7865/2 |goto Farside 2121,-1784,-929
	step
		.' _Use the green portal_ to teleport up |goto Farside 1985,-1833,-930 < 10 |c |q 7865
		.talk Engineer Gezani##263742 |goto Farside 1898,-1903,-722
		..turnin Primal Aggression##7865
	step
		.talk Biologist Memydra##263743 |goto Farside 1902,-1898,-722
		..accept Eldan Methodology##7990
	step
		.' _Use the green portal_ to teleport down |goto Farside 2025,-1864,-714 < 10 |c |q 7990
	step
		.talk Artemis Zin##263748 |goto Farside 1760,-1843,-931
		..turnin Eldan Methodology##7990
		..accept Terra-Injection##7993
	step
		.talk Captain Makaas##263746 |goto Farside 1765,-1851,-931
		..accept Elemental Elimination##7998
	step
		.talk Kevo##263747 |goto Farside 1755,-1850,-930
		..accept Defense Deactivation##7994
	step
		.click Essence of Earth##1336034 |goto Farside 1652,-1885,-930
		.' Disable the Terra Security Console |q Defense Deactivation##7994/1
	step
		.click Data Core: Terra##263854 |goto Farside 1706,-1965,-926
		.' Set up a data uplink with Data Core: Terra |q Terra-Injection##7993/1
	step
		.' Jump through the Terra-Injection Node's core |q Terra-Injection##7993/2 |goto Farside 1700,-1954,-925
	step
		.click Terra-Injection Conduit##263849 |goto Farside 1644,-1964,-927
		.' Sever the Terra-Injection Conduit |q Terra-Injection##7993/3
	step
		'Press _C_ to open your communicator:
		..turnin Terra-Injection##7993
		..accept Vita-Injection##7995
	step
		.click Vita Security Console##263817 |goto Farside 1541,-1980,-926
		.' Disable the Vita Security Console |q Defense Deactivation##7994/2
	step
		'Press _C_ to open your Communicator:
		..accept Elemental Lure##8000 |goto Farside 1567,-1841,-925
	step
		.click Data Core: Vita##263852
		.' Set up a data uplink with Data Core: Vita |q Vita-Injection##7995/1 |goto Farside 1567,-1841,-925
	step
		.' Jump through the Vita-Injection Node's core |q Vita-Injection##7995/2 |goto Farside 1560,-1849,-923
	step
		.click Vita-Injection Conduit##263842 |goto Farside 1575,-1926,-932
		.' Sever the Vita-Injection Conduit |q Vita-Injection##7995/3
	step
		'Press _C_ to open your Communicator:
		..turnin Vita-Injection##7995
		..accept Aqua-Injection##7996
	step
		.click Aqua Security Console##263813 |goto Farside 1464,-1863,-941
		.' Disable the Aqua Security Console |q Defense Deactivation##7994/3
	step
		'Press _C_ to open your Communicator:
		..turnin Defense Deactivation##7994
	step
		' Click _Essence of Water_, _Essence of Life_, or _Aspect of Earth_, then press _T_ to:
		.' Use the vortex bomb to trap essences and aspects |q Elemental Lure##8000/1 |goto Farside 1485,-1894,-936
	step
		'Press _C_ to open your communicator:
		..turnin Elemental Lure##8000
	step
		.click Data Core: Aqua##263853 |goto Farside 1384,-1968,-934
		.' Set up a data uplink with Data Core: Aqua |q Aqua-Injection##7996/1
	step
		.' Jump through the Aqua-Injection Node's core |q Aqua-Injection##7996/2 |goto Farside 1394,-1958,-933
	step
		.click Aqua-Injection Conduit##263845 |goto Farside 1447,-1985,-940
		.' Sever the Aqua-Injection Conduit |q Aqua-Injection##7996/3
	step
		'Press _C_ to open your Communicator:
		..turnin Aqua-Injection##7996
		..accept Face the Custodian##7997
	step
		.'_Enter the green portal_ and teleport up |goto Farside 1441,-1794,-938 < 5 |c |q 7997/1
	step
		.kill Warped Exo-Plating##1006085+
		.' Destroy the Bio-Dome 3 Custodian |q Face the Custodian##7997/1 |goto Farside 1539,-1531,-1062
		.' Deactivate Matrix Defense Console D |q Face the Custodian##7997/2 |goto Farside 1539,-1531,-1062
	step
		'Press _C_ to open your Communicator:
		..turnin Face the Custodian##7997
		..accept A Familiar Menace##7717
	step
		'_Enter the portal_ and teleport down |goto Farside 1539,-1494,-1060 < 5
		.' Destroy elemental Embodiments |q Elemental Elimination##7998/1 |goto Farside 1423,-1861,-939
	step
		'Press _C_ to use your Communicator:
		..turnin Elemental Elimination##7998
	step
		'_Run up_ this green ramp |goto Farside 1310,-2003,-930 < 20
		.click Destroyed Scanbot##263744 |goto Farside 1393,-2031,-888
		..accept Scuttled Scanbots##8001
	step
		.click Damaged Scanbot##1487111+ |tip These are marked as an orange cog on your minimap.
		.' Repair Damaged Scanbots |q Scuttled Scanbots##8001/1 |goto Farside 1258,-1989,-932
	step
		'Press _C_ to open your communicator
		..turnin Scuttled Scanbots##8001
	step
		.'_Jump up_ the pipes here |goto Farside 1565,-1962,-934 < 10 |c |q 7717
	step
		.' _Run up_ the rock formation |goto Farside 1530,-2007,-928 < 10 |c |q 7717
	step
		.talk Explorer Infiton##263740 |goto Farside 1475,-1981,-901
		..accept The Observer's Terrace##8002
		'Reward not that great, may skip it
	step
		.click Charge Target##263775 |tip They look like little probes above the green platforms.
		.' Press _T_ while targeting the Charge Targets to swing to each platform
		.' _Jump on each green platform_ and follow the path up |goto Farside 1467,-1973,-898 < 5 |c |q 8002
	step
		.click Charge Target##263775 |tip They look like little probes above the green platforms.
		.' Press _T_ while targeting the Charge Targets to swing to each platform
		.' Climb the wall using the Charge Retractor |q The Observer's Terrace##8002/1 |goto Farside 1371,-2110,-658
	step
		.click Eldan Cache##263786
		.' Open the Eldan Cache |q The Observer's Terrace##8002/2 |goto Farside 1400,-2078,-658
	step
		'Press _C_ to open your Communicator:
		..turnin The Observer's Terrace##8002
	step
		'Jump off the platform while you have the _Uplifting Energy_ buff
		.click Experimental Console|goto Farside 1284.1,-2119.5,-933.9 < 10
		..accept Primal Empowerment##7999
	step
		.click Experimental Console
		.'Activate the Experimental Console |q Primal Empowerment##7999/1
	step
		'Press _C_ to open your communicator
		..turnin Primal Empowerment##7999
	step
		.talk Researcher Neres##262785 |goto Farside 1076,-1823,-919
		..turnin A Familiar Menace##7717
		..accept The Secret Project##7719
	step
		.talk Biologist Dekari##262781 |goto Farside 1076,-1820,-919
		..accept Cut Off the Source##7729
	step
		'Press _C_ to open your Communicator:
		..accept The Prime Skeech##7721 |goto Farside 1177,-1728,-966
	step
		.click Datacube Fragment##1535789
		.' Collect Experimental Data from Datacube Fragments |q The Secret Project##7719/1 |goto Farside 1134,-1650,-962
		.click Skeech Remains##263181
		.' Find the Skeech Remains |q The Prime Skeech##7721/1 |goto Farside 1134,-1650,-962
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
		.'_Go up_ this spiral stone pillar |goto Farside 1166,-1684,-962 < 5 |c |q 7721/2
	step
		.' Return to Bogwatch Post |q The Prime Skeech##7721/2 |goto Farside 1075,-1826,-919
		.click Operating Table##263174 |goto Farside 1075,-1826,-919
		.' Reassemble the Skeech Remains on the Operating Table |q The Prime Skeech##7721/4
	step
		.talk Lucent##262783 |goto Farside 1075,-1830,-919
		.' Speak with Lucent |q The Prime Skeech##7721/5
	step
		.talk Researcher Neres##262785 |goto Farside 1075,-1823,-919
		..turnin The Prime Skeech##7721
	step
		.talk Biologist Dekari##262781 |goto Farside 1076,-1821,-919
		..accept In Their Blood##7731
	step
		.talk Lucent##262783 |goto Farside 1074,-1830,-919
		..accept Chance for Redemption##7723
	step
		'Press _T_ to:
		.' Play Lucent's message near Tanglevine mobs |q Chance for Redemption##7723/1 |goto Farside 1132,-1681,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Chance for Redemption##7723
		..accept For Future Generations##7725
	step
		.click Adolescent Tanglevine##1668019 |goto Farside 1150,-1620,-964
		.' Wake up Adolescent Tanglevines |q For Future Generations##7725/1
	step
		'Press _C_ to open your Communicator:
		..turnin For Future Generations##7725
		..accept Truth to Light##7727
	step
		.click Tanglevine Cage Door##263129
		..accept Blown Cover##7733 |goto Farside 1156,-1630,-963
	step
		.click Tanglevine Cage Door##263130
		.' Open Tanglevine Cage Doors to free Dominion Explorers |q Blown Cover##7733/1 |goto Farside 1084,-1600,-957
	step
		.kill Tanglevine Slasher##1616051
		.kill Tanglevine Shaman##1616464
		.kill Tanglevine Pummeler##1401666
		.' Collect Primal Imprint Samples from Tanglevine Skeech |q In Their Blood##7731/1 |goto Farside 1106,-1606,-960
	step
		'Press _C_ to open your Communicator:
		..turnin In Their Blood##7731
		..turnin Blown Cover##7733
	step
		.'_Go up_ the spiral rock pillar |goto Farside 1169,-1686,-961 < 5 |c |q 7727/1
	step
		.' Find the path to Progenitor's Hideaway |q Truth to Light##7727/1 |goto Farside 1234,-1565,-915
		.'Meet _Lucent_ |q Truth to Light##7727/2 |goto Farside 1548,-1532,-893
		.kill 1 Lucent##5303633 |q Truth to Light##7727/3 |goto Farside 1548,-1532,-893
	step
		.' Find a spot to bury Lucent |q Truth to Light##7727/4 |goto Farside 1799,-1528,-868
		.click Burial Plot##263137
		.' Bury Lucent |q Truth to Light##7727/5 |goto Farside 1801,-1527,-867
	step
		'Press _C_ to open your Communicator:
		..turnin Truth to Light##7727
		..accept Bio-Dome 4##7737
	step
		.'_Take the portal_ and teleport up |goto Farside 1982,-1830,-931 < 5 |c |q 7737/1
	step
		.' _Take the large portal_ and teleport up |goto Farside 1933,-1933,-716 < 5 |c |q 7737/1
	step
		.click Researcher Ahnaris##263741
		.' Speak with Researcher Ahnaris |q Bio-Dome 4##7737/1 |goto Farside 2960,-2058,-716
	step
		.'_Take the portal_ and teleport up |goto Farside 3432,-1939,-722 < 5 |c |q 7737
	step
		.talk Explorer Bozim##262779 |goto Farside 4088,-1900,-727
		..turnin Bio-Dome 4##7737
		..accept Survival Secrets##7739
		..accept Hidden Waters##7741
	step
		.talk Surveyor Adellas##262777 |goto Farside 4092,-1904,-727
		..accept Removing Impediments##7747
	step
		.talk The Caretaker##265214 |goto Farside 4111,-1964,-727
		..accept Touring Bio-Dome 4##8790
	step
		.click Bio-Dome 4 Expedition Panel##265217
		.' Click _Yes_, you would like to take a tour of Bio-Dome 4
		.' Ride the Bio-Dome 4 Observation Platform |q Touring Bio-Dome 4##8790/1 |goto Farside 4188,-2038,-726
	step
		'Press _C_ to open your Communicator:
		..turnin Touring Bio-Dome 4##8790
	step
		.'_Take the portal_ and teleport down |goto Farside 3959,-1871,-720 < 10 |c |q 7741/1
	step
		.click Dried Mud##1733821
		.' Collect Fresh Water from piles of Dried Mud |q Hidden Waters##7741/1 |goto Farside 4096,-1789,-931 |tip Don't mount before you loot the water or you won't get credit.
	step
		'Press _C_ to open your Communicator:
		..turnin Hidden Waters##7741
		..accept Foods of the Desert##7743
	step
		.kill Valo Alera##1635710 |tip Green spiked plant near rocks.
		.kill 1 Prickly Cactus##1742929 |tip Green round cacti around rocks.
		.' Harvest Valo Berries from Valo Aleras plants |q Foods of the Desert##7743/2 |goto Farside 4096,-1791,-932
		.' Harvest Prickly Plums from Prickly Cacti |q Foods of the Desert##7743/1 |goto Farside 4096,-1791,-932
	step
		'Press _C_ to open your Communicator
		..turnin Foods of the Desert##7743
		..accept Surveyor Support##7745
	step
		' Click _Sandhoof Calf_, press _T_ to:
		.' Scan a Sandhoof Bull or Calf |q Survival Secrets##7739/2 |goto Farside 4069,-1720,-930
	step
		' Click _Blackrock Pelter_, press _T_ to:
		.' Scan a Blackrock Pummeler or Pelter |q Survival Secrets##7739/1 |goto Farside 4069,-1720,-930
	step
		' Click _Desert Pincer_, press _T_ to:
		.' Scan a Desert Pincer or Snapper |q Survival Secrets##7739/3 |goto Farside 4226,-1678,-916
	step
		' Click _Desert Scavenger_, press _T_ to:
		.' Scan a Desert vulcarrion |q Survival Secrets##7739/4 |goto Farside 4145,-1630,-929
	step
		'Press _C_ to open your Communicator:
		..turnin Survival Secrets##7739
	step
		.kill 1 Blackrock Pelter##2605182+
		.kill 1 Blackrock Pummeler##5231602+
		.kill 1 Desert Snapper##2751500+
		.' Kill Blackrock spikehordes and Desert scrab |q Removing Impediments##7747/1 |goto Farside 4143,-1754,-932
	step
		'Press _C_ to use your Communicator:
		..turnin Removing Impediments##7747
	step
		.talk Dominion Settler##262886
		.' Deliver supplies to the second settler group |q Surveyor Support##7745/2 |goto Farside 4066,-1681,-946
	step
		.talk Dominion Settler##262885
		.' Deliver supplies to the first settler group |q Surveyor Support##7745/1 |goto Farside 4083,-1532,-940
	step
		.click Sinkhole##262811
		.' Enter the Sinkhole |goto Farside 4005,-1566,-951 < 10 |c |q 7745/3
	step
		.click Fallen Surveyor##262808
		..accept Fortuitous Discovery##7749 |goto Farside 4540,-1432,-1383
	step
		.'_Go through_ the hallway |goto Farside 4570,-1509,-1384 < 5 |c |q 7749/2
	step
		.' Continue through the doorway |goto Farside 4540,-1656,-1385 < 5 |c |q 7749/2
	step
		.click Gamma Observer##2895022
		.' Access the Biometrics Facility Gamma Records |q Fortuitous Discovery##7749/2 |goto Farside 4542,-1711,-1386
	step
		.kill Gamma Observer##2870887+
		.kill Gamma Protector##2919510+
		.' Kill Biometrics Facility defenders |q Fortuitous Discovery##7749/1 |goto Farside 4538,-1601,-1389
	step
		'Press _C_ to use your Communicator:
		..turnin Fortuitous Discovery##7749
	step
		.'_Proceed through_ the hallway |goto Farside 4571,-1554,-1388 < 5 |c |q 7745/3
	step
		.' _Take the portal_ and teleport out |goto Farside 4541,-1406,-1376 < 5 |c |q 7745/3
	step
		.talk Dominion Settler##262887 |goto Farside 4261,-1713,-899
		.' Stay in the Yellow Circle and fight the mobs that attack
		.' Deliver supplies to the third settler group |q Surveyor Support##7745/3
	step
		'Press _C_ to open your Communicator:
		..turnin Surveyor Support##7745
		..accept Over Terraformed##7867
	step
		.talk Geologist Lochron##263522 |goto Farside 4167,-1843,-933
		..turnin Over Terraformed##7867
		..accept Surveying Hotspots##7869
	step
		.talk Researcher Prollos##263523 |goto Farside 4169,-1840,-933
		..accept Gathering the Cores##7871
	step
		'Press _C_ to use your communicator
		..accept Hostile Denizens##7873 |goto Farside 4282,-1902,-931
	step
		.click Climate Beacon##263491+ |tip These are found all around the Scorched Expanse.
		.' Take readings from Climate Beacons |q Surveying Hotspots##7869/1 |goto Farside 4488,-1815,-946
	step
		.' Collect Elemental Cores from elementals |q Gathering the Cores##7871/1 |goto Farside 4313,-1930,-954
		.' Destroy elementals |q Hostile Denizens##7873/1 |goto Farside 4314,-1933,-954
	step
		'Press _C_ to open your Communicator:
		..turnin Surveying Hotspots##7869
		..accept Drilling Down##7875
	step
		'Press _C_ to open your Communicator:
		..turnin Gathering the Cores##7871
		..turnin Hostile Denizens##7873
		..accept Cooling Stations##7877
	step
		' Click _Fire Crystal_, press _T_ to:
		.' Collect Fire Crystal Sample from Fire Crystals |q Drilling Down##7875/1 |goto Farside 4319,-1947,-955
		.' Watch the _Heat Exposure_ bar. To cooldown leave area or plant cool unit.
		.' Place Remote Cooling Units at Primal Vents |q Cooling Stations##7877/1 |goto Farside 4448,-1935,-958
	step
		'Press _C_ to open your Communicator:
		..turnin Cooling Stations##7877
		..turnin Drilling Down##7875
		..accept Extinguish the Flame##7885
	step
		.kill Firebreather##2800327 |goto Farside 4379,-1966,-966
		.' Destroy Firebreather |q Extinguish the Flame##7885/1
	step
		'Press _C_ to open your Communicator:
		..turnin Extinguish the Flame##7885
		..accept Common Cause##8004
	step
		.click Relic Crate##263521 |goto Farside 4398,-1833,-931
		..accept Traces of the Eldan##7879
	step
		.click Lost Relic##2768254 |tip These are found in and around the large crater.
		.' Collect Lost Relics for Researcher Prollos |q Traces of the Eldan##7879/1 |goto Farside 4511,-1930,-942
	step
		'Press _C_ to open your Communicator:
		..turnin Traces of the Eldan##7879
	step
		.talk Captain Rinti##263734 |goto Farside 4695,-1959,-975
		..turnin Common Cause##8004
		..accept Down with the Flamewalkers##8010
		..accept Take Out the Probes##8011
	step
		.talk The Caretaker##263734 |goto Farside 4689,-1943,-974
		..accept Seeing Red##8005
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 14 |goto Farside 4720,-1895,-976
	step
		'Press _C_ to open your communicator:
		..accept Summoning Shutdown##8006 |goto Farside 4810,-1790,-989
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 28 |goto Farside 4726,-1782,-979
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 42 |goto Farside 4764,-1728,-982
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 57 |goto Farside 4770,-1639,-984
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 71 |goto Farside 4959,-1661,-990
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |count 85 |goto Farside 4931,-1721,-985
	step
		.click Rogue Caretaker Node##263700
		.' Deactivate Rogue Caretaker Nodes |q Seeing Red##8005/1 |goto Farside 4882,-1803,-987
	step
		'Press _C_ to open your Communicator:
		..turnin Seeing Red##8005
	step
		.kill 1 Flamewalker Ritualist##5315912
		.click Flamewalker Summoning Pit##263680
		.' Kill the enemies that attack in waves
		.' Disrupt the Flamewalkers' summoning ritual |q Summoning Shutdown##8006/1 |goto Farside 5076,-1818,-989
	step
		'Press _C_ to open your Communicator:
		..turnin Summoning Shutdown##8006
		..accept Burning for Time##8008
	step
		' Click _Charging Flamewalker Servitor_, press _T_ to:
		.' Destroy Charging Flamewalker Servitors |q Take Out the Probes##8011/1 tip These are marked with an orange cog on your minimap. |goto Farside 4902,-1779,-990
	step
		.kill 1 Flamewalker Cinder##5397305+
		.click Pell Barrel##263587
		.' Use the Volatile Cinder on Pell Barrels |q Burning for Time##8008/2 |goto Farside 4808,-1637,-991
	step
		'Press _C_ to open your Communicator:
		..turnin Take Out the Probes##8011
	step
		' Kill _Flamewalker Cinder_, _Fire-Brand_, _Inciter_, _Purger_
		.' Kill Flamewalker Pell |q Down with the Flamewalkers##8010/1 |goto Farside 4808,-1637,-991
	step
		'Press _C_ to open your Communicator:
		..turnin Down with the Flamewalkers##8010
	step
		.kill 1 Acolyte Ember-Walker##3067794 |q Burning for Time##8008/3 |goto Farside 4877,-1526,-983
		.kill 1 Acolyte Flame-Binder##5424318 |q Burning for Time##8008/4 |goto Farside 4565,-1548,-1000
	step
		'Press _C_ to open your Communicator:
		..turnin Burning for Time##8008
		..accept Spreading the Virus##8007
	step
		.talk Fallen Flamewalker##263736 |goto Farside 4724,-1573,-951
		..accept Gifts of the Makers##8013
	step
		.click Flamewalker Relic##2858439 |tip You can find a lot of them up this hill.
		.' Collect Flamewalker Relics |q Gifts of the Makers##8013/1 |goto Farside 4768,-1579,-935
	step
		'Press _C_ to open your Communicator:
		..turnin Gifts of the Makers##8013
	step
		.'_Head up the dirt path_ going up this mountain |goto Farside 4690,-1713,-978 < 20 |c |q 8007/1
	step
		.' _Go up_ the wooden stairway |goto Farside 4548,-1679,-886 < 10 |c |q 8007/1
	step
		..accept Eliminate the High Priest##8009 |goto Farside 4443,-1573,-815
	step
		.' _Continue up_ the mountain and as you go:
		.click Pell Control Point##263679
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 20 |goto Farside 4443,-1573,-815
	step
		.click Pell Control Point##263670
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 40 |goto Farside 4445,-1532,-787
	step
		.click Pell Control Point##263658
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 60 |goto Farside 4468,-1518,-768
	step
		.click Pell Control Point##263665
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |count 80 |goto Farside 4447,-1505,-769
	step
		.click Pell Control Point##263664
		.' Upload the virus into the Pell Control Points |q Spreading the Virus##8007/1 |goto Farside 4411,-1477,-778
	step
		'Press _C_ to open your Communicator:
		..turnin Spreading the Virus##8007
	step
		.' _Follow the stone_ path up and around |goto Farside 4384,-1546,-791 < 10
		.kill 1 High Priest Flame-Guardian##3104127 |q Eliminate the High Priest##8009/1 |goto Farside 4314,-1560,-685 |tip He is at the very top of the mountain.
	step
		.click Flamewalker Console##263570
		.' Shut down the Flamewalker Console |q Eliminate the High Priest##8009/2 |goto Farside 4382,-1549,-687
	step
		'Press _C_ to open your Communicator:
		..turnin Eliminate the High Priest##8009
		..accept Sovereign's Landing##8012
	step
		.'_Follow the trail_ back down the mountain |goto Farside 4511,-1583,-693 < 5 |c |q 8012/2
	step
		.' _Use the portal_ and teleport up |goto Farside 3981,-1833,-938 < 5 |c |q 8012/2
	step
		.' _Use the portal_ and teleport up the next level |goto Farside 4051,-1934,-721 < 5 |c |q 8012/2
	step
		.' Go to Virtue's Landing |q Sovereign's Landing##8012/2 |goto Farside 2988,-2041,-711
	step
		.click Ship to Sovereign's Landing##266246
		.' Click _Yes_ to go to Sovereign's Landing |q Sovereign's Landing##8012/3 |goto Farside 5358,-4555,-496
	step
		.talk Private Tafu##3068909 |goto Farside 4049,-5200,-723
		..turnin Sovereign's Landing##8012
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Sovereign's Landing_ as your Recall point |goto Farside 4027,-5273,-722
		|confirm
	step
		.' There is a zone event called _Asteroid 3C48 [GROUP 10+]_ that awards a blue item.  Quest is obtained from datachron when event starts. |goto Farside 4027,-5273,-722
		|confirm
	step
		.talk Spigo##269149 |goto Farside 4048,-5277,-723
		..accept Into the Void##6516
	step
		.' Look for signs of Spigo's ship |q Into the Void##6516/1 |goto Farside 3992,-5425,-738
	step
		.kill Craterclaw Ripper##3126974+ |goto Farside 3930,-5428,-739
		..accept Aggressive Aliens##6546
	step
		.click Dustrunner Debris##3121640+
		.' Search Dustrunner Debris for clues |q Into the Void##6516/2 |goto Farside 3977,-5431,-738
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Void##6516
		..accept Element of Surprise##6471
	step
		.click ShadowyStoneform |goto Farside 4071,-5907,-732 < 5
		..accept Dead Gone##6432
	step
		'Press _C_ to open your Communicator:
		..accept Scattered##6428 |goto Farside 3649,-5469,-736
	step
		.' Find Spigo's crashed ship |q Element of Surprise##6471/1 |goto Farside 3496,-5806,-726
	step
		.click Dustrunner Hull Door##269269
		.' Choose _Yes_, enter the Dustrunner's hull
		.' Enter Spigo's crashed ship |q Element of Surprise##6471/2 |goto Farside 3460,-5795,-757
	step
		.click SHIPMENT: 018J##269270
		.' Enter Spigo's code, _60191_ |q Element of Surprise##6471/3 |goto Farside 3345,-5666,-845
		.' Fight the enemies within the yellow circle
		.' Defend against the Darkspur Cartel's ambush |q Element of Surprise##6471/4 |goto Farside 3343,-5667,-845
	step
		'Press _C_ to open your Communicator:
		..turnin Element of Surprise##6471
		..accept On the Run##6517
	step
		.click Dustrunner Hull Door##269271
		.' Exit the Hull |goto Farside 3391,-5638,-845 < 5
		.' Locate the Dustrunner's aft compartment |q Scattered##6428/1 |goto Farside 3372,-5719,-717
	step
		.click Cage Door |goto Farside 3325,-5737,-740 <10
		..turnin Dead Gone##6432
	step
		.click Ship Log##269170 |goto Farside 3296,-5725,-740
		.' Read the Ship Log |q Scattered##6428/2
	step
		'Press _C_ to open your Communicator:
		..turnin Scattered##6428
		..accept Stuffed##6430
	step
		.click Holding Pen##269169 |goto Farside 3312,-5725,-738
		..accept Scrambled##6429
	step
		.click Lunar Scrambler##2909672 |goto Farside 3328,-5758,-740
		.' Recover Lunar Scramblers |q Scrambled##6429/1
	step
		.click Holding Pen##269169
		.' Return the Lunar Scramblers to the Holding Pen |q Scrambled##6429/2 |goto Farside 3310,-5726,-738
	step
		'Press _C_ to open your Communicator:
		..turnin Scrambled##6429
	step
		.' Look for signs of Vicious Vlogg |q On the Run##6517/1 |goto Farside 3396,-5910,-735
		.' Defeat Vicious Vlogg |q On the Run##6517/2
	step
		.' Chase Vicious Vlogg |q On the Run##6517/3 |goto Farside 3594,-6008,-736
	step
		.click Farside Starship##462009 |goto Farside 3597,-6028,-735
		..turnin On the Run##6517
		..accept Light the Sky##6518
	step
		.click Vicious Vlogg's Ship##5426611
		.' Press _1_ to shoot at Vlogg's ship
		.' Shoot down Vicious Vlogg's ship |q Light the Sky##6518/1
	step
		' Kill _Craterclaw Slasher_ and _Ripper_
		.' Kill Craterclaw hookfoots |q Stuffed##6430/1 |goto Farside 3842,-6097,-730
		' Kill _Lumos Hydraphore_, _Ferrite Titan_, _Moonstone Goliath_
		.' Kill space critters |q Aggressive Aliens##6546/1 |goto Farside 3842,-6097,-730
	step
		'Press _C_ to open your Communicator:
		..turnin Stuffed##6430
		..turnin Aggressive Aliens##6546
		..accept Overnight Delivery##6431
	step
		.' Locate Vicious Vlogg's crashed ship |q Light the Sky##6518/2 |goto Farside 3969,-6092,-748
	step
		.talk Vicious Vlogg##269149 |goto Farside 3969,-6092,-748
		..turnin Light the Sky##6518
		..accept Bringing Back the Bounty##6472
	step
		.click Vicious Vlogg##482250
		.' Use the _Smack_ skill to slap him when he stops
		.' Escort Vicious Vlogg to Spigo |q Bringing Back the Bounty##6472/1 |tip He will set traps and call adds |goto Farside 4121,-6113,-739
	step
		.kill 1 Darkspur Destroyerbot##484949
		.' Defeat the Darkspur Destroyerbot |q Bringing Back the Bounty##6472/2 |goto Farside 4132,-6136,-738
	step
		.click Vicious Vlogg##482250
		.' Turn Vicious Vlogg over to Spigo |q Bringing Back the Bounty##6472/3 |goto Farside 4192,-6156,-734
	step
		.talk Spigo##269145 |goto Farside 4209,-6161,-734
		..turnin Bringing Back the Bounty##6472
	step
		'Press _C_ to open your Communicator:
		..accept Meet the Team##6453 |goto Farside 4209,-6161,-734
	step
		.' Deliver the package |q Overnight Delivery##6431/1 |goto Farside 3670,-6211,-729
	step
		'Press _T_ to:
		.' Set off a signal flare |q Overnight Delivery##6431/2 |goto Farside 3676,-6210,-729
	step
		'Press _C_ to open your Communicator:
		..turnin Overnight Delivery##6431
	step
		.'_Go up_ this pathway between the cliffs |goto Farside 3812,-6401,-710 < 20 |c |q 6453/1
	step
		.talk Specialist Fifield##502798
		.' Speak with Specialist Fifield |q Meet the Team##6453/2 |goto Farside 3874,-6443,-660
	step
		.talk Specialist Vita##502797
		.' Speak with Specialist Vita |q Meet the Team##6453/1 |goto Farside 3874,-6443,-660
	step
		.talk 1 Private Paxton##502799
		.' Speak with Private Paxton |q Meet the Team##6453/3 |goto Farside 3876,-6440,-660
	step
		.talk Major Bracken##269134 |goto Farside 3877,-6445,-659
		..turnin Meet the Team##6453
		..accept Generating Clues##6454
		..accept Securing Base Camp##6462
	step
		.click Expedition Generator##269127
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 20 |goto Farside 3869,-6447,-659
	step
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 40 |goto Farside 3936,-6427,-658
	step
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 60 |goto Farside 4000,-6462,-660
	step
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |count 80 |goto Farside 4045,-6439,-660
	step
		.click Expedition Generator##269109
		.' Reactivate the Expedition Generators |q Generating Clues##6454/1 |goto Farside 3843,-6595,-665
	step
		'Press _C_ to open your Communicator:
		..turnin Generating Clues##6454
	step
		.' Around Arcanus Base:
		.click Expedition Turret##445663
		.' Reactivate Expedition Turrets |q Securing Base Camp##6462/1 |goto Farside 3855,-6465,-660
	step
		.kill 1 Ravenous Fraz##5501136+
		.' Kill Ravenous aliens |q Securing Base Camp##6462/2 |goto Farside 4269,-6527,-687
	step
		'Press _C_ to open your Communicator:
		..turnin Securing Base Camp##6462
	step
		.talk Specialist Fifield##510178 |goto Farside 4126,-6505,-667
		..accept Life Signs Detected##6455
	step
		.talk Private Paxton##510179 |goto Farside 4122,-6506,-667
		..accept A Preemptive Strike##6458
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/1 |goto Farside 4126,-6505,-667
	step
		.click Expedition Supplies##269029 |goto Farside 4249,-6497,-687
		..accept Picking Up the Pieces##6459
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/2 |goto Farside 4369,-6544,-683
		' As you go, click _Expedition Supplies_ and kill alien creatures
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/3 |goto Farside 4582,-6646,-645
		' As you go, click _Expedition Supplies_ and kill alien creatures
	step
		'Press _T_ to use the quest ability:
		.' Follow the Holographic Life Sign Detector |q Life Signs Detected##6455/4 |goto Farside 4572,-7221,-601
		' As you go, click _Expedition Supplies_ and kill alien creatures
	step
		.talk Specialist Fifield##510178 |goto Farside 4481,-7200,-601
		..turnin Life Signs Detected##6455
	step
		.talk Specialist Vita##510177 |goto Farside 4481,-7200,-601
		..accept Secondhand Research##6456
	step
		.' _Take the portal_ and teleport up |goto Farside 4456,-7208,-597 < 5 |c |q 6456/1
	step
		.' Run over the eggs here to prompt this quest |goto Farside 5606,-11980,-460
		'Press _C_ to open your Communicator:
		..accept Decontamination Protocol: Sterilize##6461
	step
		'All around this area:
		.click Expedition Datapad##268970 |tip These appear as orange cogs on your minimap.
		.' Find Expedition Datapads |q Secondhand Research##6456/1 |goto Farside 5611,-11967,-460
		.' Squash Derelict Eggs |q Decontamination Protocol: Sterilize##6461/1 |goto Farside 5611,-11970,-460
	step
		'Press _C_ to open your Communicator:
		..turnin Decontamination Protocol: Sterilize##6461
	step
		.'_Go up_ the green elevator |goto Farside 5612,-11924,-434 < 5 |c |q 6456/2
	step
		.click Eldan Research Samples##269033
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 1 |goto Farside 5677,-11595,-415
	step
		.click Derelict Augmentor DS-X5##567988
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 2 |goto Farside 5676,-11465,-415
	step
		.click Eldan Research Samples##269031
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 3 |goto Farside 5477,-11462,-415
	step
		.click Eldan Research Samples##269030
		.' Collect Eldan Research Samples |q Secondhand Research##6456/2 |count 4 |goto Farside 5475,-11595,-415
	step
		.kill Derelict Augmentor DS-01##468958+
		.kill Derelict Maintenance Construct##470592+
		.' Destroy Derelict constructs |q Secondhand Research##6456/3 |goto Farside 5557,-11573,-404
	step
		.talk Specialist Vita##576217
		..turnin Secondhand Research##6456
	step
		'Press _C_ to open your Communicator:
		..accept Trouble at Base Camp##6457
	step
		.'_Use the portal_ to teleport down |goto Farside 5579,-12064,-455 < 5 |c |q 6459/1
	step
		.' Collect Expedition Supplies |q Picking Up the Pieces##6459/1 |goto Farside 4698,-6753,-624
		' Kill _Ravenous Frizlet_, _Moonfell Roamer_, and _Lunarfin Stalker_
		.' Kill alien creatures |q A Preemptive Strike##6458/1 |goto Farside 4698,-6753,-624
	step
		'Press _C_ to open your Communicator:
		..turnin A Preemptive Strike##6458
	step
		.talk Major Bracken##269134 |goto Farside 3876,-6444,-660
		..turnin Trouble at Base Camp##6457
		..turnin Picking Up the Pieces##6459
		..accept Showdown With Paxton##6463
	step
		.click Flamethrower##268076 |goto Farside 3934,-6528,-667
		.' Find Private Paxton |q Showdown With Paxton##6463/1
		.' Subdue Private Paxton |q Showdown With Paxton##6463/2
	step
		.talk Major Bracken##269134 |goto Farside 3876,-6444,-660
		..turnin Showdown With Paxton##6463
	step
		'Press _C_ to open your Communicator:
		..accept Stemming the Darktide##6538 |goto Farside 3878,-6447,-660
	step
		'Press the icon on the bottom right of your action bar to:
		.' _Recall-Transmat_ to Sovereign's Landing |goto Farside 4028,-5272,-722 < 20 |c |noway |q 6538
	step
		.talk Kezrek Warbringer##267994 |goto Farside 3570,-5404,-738
		..turnin Stemming the Darktide##6538
		..accept Against the Current##6492
	step
		.talk Scientist Rizz##267999 |goto Farside 3585,-5374,-738
		..accept Best Safecracker This Side of Nearside##6499
		..accept Clearing the Airwaves##6503
	step
		' Click _High Security Eldan Chest_ and solve these Simon Puzzles' |goto Farside 3577,-5370,-738
		.' Solve three colors |q Best Safecracker This Side of Nearside##6499/1
		.' Solve six colors |q Best Safecracker This Side of Nearside##6499/2
		.' Solve nine colors |q Best Safecracker This Side of Nearside##6499/3
		.' Solve twelve colors |q Best Safecracker This Side of Nearside##6499/4
	step
		.talk Scientist Rizz##267999 |goto Farside 3585,-5374,-738
		..turnin Best Safecracker This Side of Nearside##6499
	step
		.click Repellent Emitter##268050 |goto Farside 3489,-5688,-729
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 1
	step
		.click Repellent Emitter##268047 |goto Farside 3661,-5615,-728
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 2
	step
		.click Repellent Emitter##268051 |goto Farside 3619,-5775,-722
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 3
	step
		.click Repellent Emitter##268052 |goto Farside 3614,-5895,-727
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1 |count 4
	step
		.click Repellent Emitter##268049 |goto Farside 3535,-5985,-723
		.' Activate Repellent Emitters |q Clearing the Airwaves##6503/1
	step
		.talk Scientist Rizz##267999 |goto Farside 3585,-5374,-738
		..turnin Clearing the Airwaves##6503
	step
		' Kill _Darktide Destructor_, or _Engulfer_
		.collect 1 Ikthian Weapon Charging Cell##16227
		.' Use the Ikthian Weapon Charging Cell in your inventory |use Ikthian Weapon Charging Cell##16227
		..accept Batteries Found Near Me##6498 |goto Farside 3434,-5260,-729
	step
		' Kill _Darktide Destructor_, and _Engulfer_
		.' Kill Darktide Ikthians |q Against the Current##6492/1 |goto Farside 3434,-5260,-729
		.' Collect Charging Cells from Darktide Ikthians |q Batteries Found Near Me##6498/1 |goto Farside 3434,-5260,-729
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
		.' Pilot the Dominion Battle Suit |q Suits Me Just Fine##6493/1 |goto Farside 3154,-5414,-680
	step
		' Kill _Darktide Razorfin_ or _Rifler_
		.' Kill Darktide forces with the Dominion Battle Suit |q Suits Me Just Fine##6493/2 |goto Farside 3057,-5531,-683
	step
		.' Go to Checkpoint Beta |q Suits Me Just Fine##6493/3 |goto Farside 3037,-5638,-683
	step
		'Press _C_ to open your Communicator:
		..accept Observe and Report##6500
	step
		'Press _C_ to open your Communicator:
		..turnin Suits Me Just Fine##6493
		..accept Word from the Inside##6494
	step
		.click Draken Prisoner##677282
		.' Free the Dominion prisoners |q Word from the Inside##6494/1 |goto Farside 3057,-5881,-683
	step
		'Press _C_ to open your Communicator:
		..turnin Word from the Inside##6494
		..accept Tell Us Everything##6495
	step
		' Kill _Equalizer Protector_ and _Security Probe_
		.' Destroy Equalizer constructs |q Observe and Report##6500/1 |goto Farside 2997,-5797,-684
	step
		'Press _C_ to open your Communicator:
		..turnin Observe and Report##6500
	step
		'_Go up_ one of the green elevators |goto Farside 2986,-5876,-686 < 10
		.click Darktide Satellite Uplink##268065
		.' Hack the 1st Darktide Satellite Uplink |q Tell Us Everything##6495/1 |goto Farside 2987,-5940,-662
	step
		.click Darktide Satellite Uplink##268064
		.' Hack the 2nd Darktide Satellite Uplink |q Tell Us Everything##6495/2 |goto Farside 2980,-6047,-662
	step
		'Press _C_ to open your Communicator:
		..accept Wield the Lightning##6501 |goto Farside 3005,-6106,-662 |tip You may have to kill a mob or two if this doesn't trigger.
	step
		.click Darktide Satellite Uplink##268063
		.' Hack the 3rd Darktide Satellite Uplink |q Tell Us Everything##6495/3 |goto Farside 3010,-6130,-661
	step
		.click Power Drill##268022
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 16  |goto Farside 2961,-6106,-657
	step
		.click Power Drill##268021
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 33 |goto Farside 2962,-6127,-656
	step
		.click Power Drill##268019
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 50 |goto Farside 2967,-6151,-656
	step
		.click Power Drill##268023
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 66 |goto Farside 3030,-6070,-656
	step
		.click Power Drill##268022
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |count 83 |goto Farside 3053,-6084,-656
	step
		.click Power Drill##268018
		.' Plant lit-bombs on Power Drills |q Wield the Lightning##6501/1 |goto Farside 3064,-6110,-65
	step
		'Press _T_ to:
		.' Detonate lit-bombs on Power Drills |q Wield the Lightning##6501/2 |goto Farside 3079,-6098,-661
	step
		'Press _C_ to open your Communicator:
		..turnin Wield the Lightning##6501
	step
		'_Go up_ the green elevator |goto Farside 3025,-6230,-649 < 5
		.' Find Kezrek Warbringer |q Tell Us Everything##6495/4 |goto Farside 3042,-6262,-583
	step
		.talk Kezrek Warbringer##267986 |goto Farside 3106,-6278,-583
		..turnin Tell Us Everything##6495
		..accept The Anti-Gravity of the Situation##8729
	step
		'Press _T_ to use your quest ability |tip This will stun them. Use in combat.
		.kill Darktide Dragoon##857950+
		.' Kill Darktide warbots |q The Anti-Gravity of the Situation##8729/1 |goto Farside 3125,-6357,-583
		.' Kill Darktide Finrippers, Dorsalecutters, and Needlefins |q The Anti-Gravity of the Situation##8729/2 |goto Farside 3125,-6357,-583
	step
		.' Regroup at the rally point |q The Anti-Gravity of the Situation##8729/3 |goto Farside 2968,-6464,-575
	step
		.talk Kezrek Warbringer##267991 |goto Farside 2968,-6464,-575
		..turnin The Anti-Gravity of the Situation##8729
		..accept To the Dishonor##6496
	step
		'Follow him to the position you will defend
		.' Fight waves of Darktide Ikthians |q To the Dishonor##6496/1 |goto Farside 2900,-6480,-577
	step
		.talk Kezrek Warbringer##267990 |goto Farside 2908,-6511,-577
		..turnin To the Dishonor##6496
		..accept Fight Fire with Fire##6497
	step
		'Press _C_ to open your Communicator:
		..accept Off the Scales##6504
	step
		.' Chase Admiral Gelic Ironscale |q Fight Fire with Fire##6497/1 |goto Farside 3143,-6736,-538
	step
		.kill 1 Darktide Champion##862789
		.' Defeat the Darktide Champion |q Fight Fire with Fire##6497/2 |goto Farside 3227,-6818,-532
	step
		.click Plasmic Power Cell##268042+ |tip Start with the one at left and do them clockwise.
		.' Calibrate the Plasmic Power Cells |q Off the Scales##6504/1 |goto Farside 3180,-6830,-531
	step
		'Press _C_ to open your Communicator:
		..turnin Off the Scales##6504
	step
		.click Plasmic Equalizer##268059
		.' Destroy the Ikthian armada with the Plasmic Equalizer |q Fight Fire with Fire##6497/3 |goto Farside 3272,-6836,-532
	step
		'Press _C_ to open your Communicator:
		..turnin Fight Fire with Fire##6497
		..accept Welcome Home (Illium)##6539
	step
		'Press _C_ to open your Communicator:
		..accept Opening Doors##8870 |tip This quest will open when you have reached level 35.
	step
		.' _Recall-Transmat_ to Sovereign's Landing |goto Farside 4028,-5272,-722 < 20 |c |noway |q 6539
	step
		.click Ship to Virtue's Landing##270550
		.' Choose _Yes_, travel back to Illium |goto Farside 4129,-5231,-706
		.' Return to Illium |q Welcome Home (Illium)##6539/1 |goto Illium -3638,-806,-863
	step
		.' _Go through_ the large gate |goto Illium -3563,-794,-881 < 20 |c |noway |q 8870/1
	step
		.' Travel to the Mysterious Portal in Illium |q Opening Doors##8870/1 |goto Illium -3679,-1044,-852
	step
		.click Mysterious Portal
		.' Enter the Mysterious Portal in Illium |q Opening Doors##8870/2 |goto Illium -3679,-1044,-852
	step
		' Talk to _Drusera_ and follow her instructions
		.' Discover the secrets of Exo-Lab Prime |q Opening Doors##8870/3|tip Drusera story quests work the same way as a Shiphand.  No detail guide is provided at this time.
	step
		.'_Go through_ the large gates |goto Illium -3562,-792,-881 < 20 |c |noway |q 8870
	step
		.click Enigma Chamber Door##263162
		.' _Enter_ the Enigma Chamer |goto Illium -3461,-1054,-881 < 5 |c |noway |q 8870
	step
		.click Elevator Control##263158
		.' Take the _Elevator down_ |goto Illium -3157,-1781,-1037 < 5 |c |noway |q 8870
	step
		.talk Chancellor Juro Takigurian##263152
		..turnin Opening Doors##8870 |goto Illium -3252,-1825,-1027
	step
		.click Elevator Control##263158
		.' Take the _Elevator up_ |goto Illium -3157,-1781,-1037 < 5 |c |noway |q 6539
	step
		.click Enigma Chamber Door##263162
		.' _Exit_ the Enigma Chamer |goto Illium -3461,-1054,-881 < 5 |c |noway |q 6539
	]]
)