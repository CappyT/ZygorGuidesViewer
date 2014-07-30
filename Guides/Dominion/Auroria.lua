ZGV:RegisterGuide("Dominion\\Auroria (15-23)",
	{
	faction="Dominion",
	startlevel=15,
	endlevel=23,
	nextguide="Dominion\\Whitevale (23-29)",
	image="ZygorUIGuides:Auroria", 
	description="Auroria is a large prairie with sweeping winds located in central Olyssia. It is suited for characters level 15-23. "
	},
	[[
	step
		'_Go up_ the stairs and follow the stone road |goto Illium -3349,-1081,-901 < 10
		.' _Keep following_ the stone road |goto -2979,-1283,-897 < 10
		.' _Exit the city_ gates |goto Illium -2795,-1399,-922 < 10
		.talk Farmer Titus##286629
		..accept From the Shadows##5665 |goto Auroria -2548,-1557,-931
		..accept Keeping an Eye Out##5666 |goto -2548,-1557,-931
	step
		.click Captured Farmhand Egg Sac##944101 |tip They are all around this area.
		.' Rescue Farmhands |q Keeping an Eye Out##5666/1 |goto Auroria -2608,-1504,-927
		.kill 1 Gravespinner##943264
		.kill 1 Grave Crawler##951631 |tip They are all around this area.
		.' Kill Grave Spiders |q From the Shadows##5665/1 |goto -2608,-1504,-927
	step
		'Press _C_ to use your Communicator:
		..turnin From the Shadows##5665
		..turnin Keeping an Eye Out##5666
		..accept The Mother of All Spiders##5671
	step
		.kill 1 Gravespinner##966172
		.' Destroy Gravespinner |q The Mother of All Spiders##5671/1 |goto -2665,-1505,-922
	step
		.talk Farmer Titus##286629
		..turnin The Mother of All Spiders##5671 |goto -2548,-1557,-931
	step
		.talk Momma Kestus##286652
		..accept Bringing in the Harvest##2581 |goto Auroria -2489,-1678,-921
	step
		.click Gravitic Destabilizer##286477
		.' When you click this, you can jump very high
		.' While you have the buff, jump into the trees into the glowing red orbs
		.' Collect Bingberries using a Gravitic Destabilizer |q Bringing in the Harvest##2581/1 |goto -2427,-1696,-924
	step
		.talk Momma Kestus##286652
		..turnin Bringing in the Harvest##2581 |goto -2490,-1678,-921
	step
		'_Follow_ the road into town |goto Auroria -2550,-1761,-901 < 10
		.talk Watchman Decker##282314
		..accept Ashes to Ashes##5754 |goto Auroria -2624,-1809,-876
	step
		.click Deceased Plague Victim##282287 |tip They are laying on the ground in this area.
		.' Burn Dead Plague Victims |q Ashes to Ashes##5754/1 |goto -2660,-1782,-881
	step
		.talk Watchman Decker##282314
		..turnin Ashes to Ashes##5754 |goto -2625,-1809,-876
	step
		.click Transmat Terminal##265407
		.' Click _Yes_ to set _Hycrest_ as your Recall point |goto Auroria -2541,-1911,-869
		|confirm
	step
		.talk Agent Marcus##281080
		.' Speak with Agent Marcus |q An Uninviting Situation##5622/2 |goto Auroria -2440,-1934,-879
	step
		.click Hycrest Taxi Kiosk##291027
		.' Get the taxi fly point |goto Auroria -2480,-1974,-875
		|confirm
	step
		'_Enter_ the gate |goto -2562,-1868,-873
		.talk Governor Aluviel##286658
		.' Speak with Governor Aluviel |q An Uninviting Situation##5622/3 |goto -2598,-1924,-864
	step
		'Press _C_ to open your Communicator:
		..turnin An Uninviting Situation##5622
		..accept Citizen Concerns##3751
	step
		.talk Kaytia Yohons##282062
		.' Speak with Kaytia Yohons |q Citizen Concerns##3751/1 |goto -2523,-1830,-880
	step
		.click Datachron##282039
		.' Repair the datachron |q Citizen Concerns##3751/2 |goto -2523,-1830,-880
	step
		.talk Gate Guard Argus##282056
		.' Speak with Gate Guard Argus |q Citizen Concerns##3751/3 |goto -2437,-1802,-879
	step
		.kill 1 Dozer##1030887 |q Citizen Concerns##3751/4 |goto -2374,-1750,-911
	step
		'_Follow_ the road up |goto -2331,-1797,-901 < 10
		.talk Antonia Corbitan##280706
		.' Speak with Dealer Rakon |q Citizen Concerns##3751/5 |goto -2320,-1971,-870
	step
		.click Main Hall Delivery##282034 |goto -2329,-1964,-869 |tip It's right next to Dealer Rakon.
		|confirm
	step
		.' Deliver Dealer Rakon's Crate |q Citizen Concerns##3751/6 |goto -2500,-1855,-881
	step
		'Press _C_ to open your Communicator:
		..turnin Citizen Concerns##3751 |goto -2500,-1855,-881
		..accept Gruesome Secrets##5630 |goto -2500,-1855,-881
	step
		'Meet Agent Marcus |q Gruesome Secrets##5630/1 |goto -2662,-1734,-881
		.click Plagued Hycrest Guard##281976
		.' Investigate the corpse |q Gruesome Secrets##5630/2 |goto -2662,-1734,-881
		.' Stay in the Yellow Circle and fight the waves of enemies:
		.' Listen to Agent Marcus's findings |q Gruesome Secrets##5630/3 |goto -2663,-1731,-881
	step
		.talk Agent Marcus##281989
		..turnin Gruesome Secrets##5630 |goto -2665,-1730,-881
		..accept The Truth Comes Out##3753 |goto -2665,-1730,-881
	step
		'_Enter_ the Barracks
		.' Go to the Hycrest Barracks  |q The Truth Comes Out##3753/1 |goto -2362,-1983,-865
		.click Hycrest Basement Door##282144
		.' Enter the Interrogation Room |q The Truth Comes Out##3753/2 |goto -2362,-1983,-865
	step
		.click Prisoner Rodaeus##1096173
		.' Interrogate Prisoner Rodaeus |q The Truth Comes Out##3753/3 |goto -2479,-1846,-928
	step
		.talk Governor Aluviel##282128
		..turnin The Truth Comes Out##3753 |goto -2483,-1850,-929
		'Press _C_ to open your Communicator:
		..accept Deadly Samples##5640 |goto -2483,-1850,-929
	step
		'_Exit_ the Interrogation Center |goto -2506,-1831,-924 < 2
		.' _Leave_ the house |goto -2370,-1963,-865 < 5
		.click Hycrest Basement Door##281827
		.' _Enter the basement_ |goto -2366,-2002,-868 < 2
		.click Slank Trap##281823
		.' Collect the Hycrest barracks sample |q Deadly Samples##5640/1 |goto -2347,-1984,-904
	step
		.click Hycrest Basement Door##281859
		.' _Enter the Basement_ |goto -2272,-1905,-873 < 2
		.click Slank Trap##281819
		.' Collect the Hycrest church sample |q Deadly Samples##5640/2 |goto -2288,-1891,-904
	step
		.click Hycrest Basement Door##281829
		.' _Exit_ the door |goto -2281,-1877,-899 < 2
		.click Hycrest Basement Door##281856
		.' _Enter_ the Basement |goto -2512,-1803,-887 < 2
		.click Slank Trap##281811
		.' Collect the Hycrest town hall sample |q Deadly Samples##5640/3 |goto -2512,-1797,-929
	step
		.click Hycrest Basement Door##281821
		.' _Exit_ the door |goto -2506,-1783,-924 < 2
		.' _Follow the road_ through the gate |goto -2557,-1862,-875 < 10
		.click Hycrest Basement Door##281854
		.' _Enter_ the basement |goto -2598,-1935,-867 < 2
		.click Slank Trap##281797
		.' Collect the Hycrest Governor's Residence sample |q Deadly Samples##5640/4 |goto -2583,-1922,-900
	step
		.click Hycrest Basement Door##281835
		.' _Exit_ the door |goto -2594,-1902,-895 < 2
		.' _Follow_ the road through the gate |goto Auroria -2560,-1866,-874 < 10
		.talk Alchemist Pontinia##286639
		..turnin Deadly Samples##5640 |goto Auroria -2374,-1983,-864
		..accept Trial and Error##5641 |goto -2374,-1983,-864
	step
		.click Contagion Cleanse##281954
		.' Create a test batch of Contagion Cleanse |q Trial and Error##5641/1 |goto -2374,-1986,-864
		.click Pox-Be-Gone##281958
		.' Create a test batch of Pox-Be-Gone |q Trial and Error##5641/2 |goto -2368,-1986,-865
		.click Plague Away##281946
		.' Create a test batch of Plague Away |q Trial and Error##5641/3 |goto -2377,-1976,-863
	step
		.click Plagued Fields Hunter##1115011
		.' Test the Contagion Cleanse |q Trial and Error##5641/4 |goto Auroria -2390,-1981,-869
	step
		.click Plagued Rowsdower##1112487
		.' Test the Pox-Be-Gone |q Trial and Error##5641/5 |goto -2390,-1978,-869
	step
		.click Plagued Lowborn##1116886
		.' Test the Plague Away |q Trial and Error##5641/6 |goto -2390,-1974,-869
	step
		.talk Alchemist Pontinia##286639
		..turnin Trial and Error##5641 |goto -2374,-1983,-864
	step
		'Press _C_ to open your Communicator:
		..accept The Savior of Hycrest##5643 |goto -2374,-1983,-864
	step
		.click Infected Highborn##1115044 |tip They are all around this church building.
		.' Administer the cure |q The Savior of Hycrest##5643/2 |goto -2312,-1882,-869
	step
		'_Follow the road_ through the gate |goto -2558,-1869,-874 < 10
		.talk Governor Aluviel##286658
		..turnin The Savior of Hycrest##5643 |goto -2598,-1924,-864
		..accept Report to the Gates##5647 |goto -2598,-1924,-864
	step
		.talk Gate Guard Malik##281786
		..turnin Report to the Gates##5647 |goto -2558,-1806,-889
		..accept Quarantine##5646 |goto -2558,-1806,-889
	step
		.click AI Module Generator##281660
		.' Activate an AI Module Generator |q Quarantine##5646/1 |goto -2560,-1801,-890
		.click Lowborn Citizen##1183495
		.' Scan Lowborn Citizens |q Quarantine##5646/2 |goto -2554,-1744,-907 |tip These respawn very quickly.
	step
		.talk Gate Guard Malik##281786
		..turnin Quarantine##5646 |goto -2557,-1805,-889
	step
		'Press _C_ to open your Communicator:
		..accept Emergency Broadcast##2599 |goto -2557,-1805,-889
	step
		.click Bingberry Holoplayer##282076
		.' Upload the governor's message at Bingberry Orchard |q Emergency Broadcast##2599/1 |goto Auroria -2500,-1671,-920
		.click Eastern Pen Holoplayer##282054
		.' Upload the governor's message at the Hycrest Corral |q Emergency Broadcast##2599/2 |goto -2240,-1578,-930
		.click Greenfield Holoplayer##282074
		.' Upload the governor's message at Greenfield Estate |q Emergency Broadcast##2599/3 |goto -2382,-1508,-930
	step
		.talk Lord Benevolo##286640
		..turnin Emergency Broadcast##2599 |goto -2390,-1496,-929
		..accept Carrier Eradication##5648 |goto -2390,-1496,-929
		..accept Consumer Beware##5658 |goto -2390,-1496,-929
	step
		.click Fresh Fruit Basket##281504
		.' Examine the Fresh Fruit Basket  |q Consumer Beware##5658/1 |goto -2305,-1356,-923
		.click Hycrest Greens##281506
		.' Examine the Hycrest Greens |q Consumer Beware##5658/2 |goto -2374,-1294,-924
		.click Hycrest Foodstuffs##281497
		.' Examine crates of Hycrest Foodstuffs |q Consumer Beware##5658/3 |goto -2512,-1312,-928
	step
		.kill 1 Plagued Strawgrazer Bull##311180+
		.kill 1 Plagued Highfeather Hunter##399341+
		.kill 1 Plagued Highfeather Bounder##400437+
		.' Kill Plagued wildlife |q Carrier Eradication##5648/1 |goto Auroria -2378,-1354,-920
	step
		.talk Farmhand Julia##281336
		..accept The Evil Within##5674 |goto -2516,-1320,-929
	step
		.kill Vandarin Overseer##1383572+, Vandarin Reaper##1386019+, Vandarin Strong Arm##394413+, Contulius Vandarin##341753+, Vandarin Farmhand##365648+
		.' Kill Vandarin Farmhands |q The Evil Within##5674/1 |goto -2563,-1312,-930
		.click Kidnapped Lowborn##1299269
		.' Rescue Kidnapped Lowborn |q The Evil Within##5674/2 |goto -2563,-1312,-930
		.collect 1 Vandarin Family Crest##14201
		.' Use the Vandarin Family Crest in your bags |use Vandarin Family Crest##14201
		..accept Vandarin Infamy##5678
	step
		.talk Farmhand Julia##281336
		..turnin The Evil Within##5674 |goto -2515,-1320,-929
	step
		.talk Lord Benevolo##286640
		..turnin Carrier Eradication##5648 |goto Auroria -2388,-1496,-929
		..turnin Consumer Beware##5658 |goto -2388,-1496,-929
		..turnin Vandarin Infamy##5678 |goto -2392,-1494,-929
		..accept Stopping the Spread##5649 |goto Auroria -2392,-1495,-929
	step
		.click Hay Stack##281625 |tip It's inside the silo.
		.' Ignite the Hay Stack at the first silo |q Stopping the Spread##5649/1 |goto Auroria -2488,-1438,-926
		.click Hay Stack##281629 |tip It's inside the silo.
		.' Ignite the Hay Stack at the second silo |q Stopping the Spread##5649/2 |goto Auroria -2288,-1270,-923
		.click Hay Stack##281621
		.' Ignite the Hay Stack at the third Silo |q Stopping the Spread##5649/3 |goto Auroria -2439,-1229,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Stopping the Spread##5649 |goto Auroria -2439,-1229,-924
		..accept Person of Interest##5662 |goto -2439,-1229,-924
	step
		'_Go through_ the tall stone gates |goto Auroria -2355,-1183,-920 < 5
		.talk Hermit Bilvus##283041
		..accept Re-Salvage Operation##5551 |goto -2382,-1171,-919
		..accept Research, Interrupted##5548 |goto -2382,-1171,-919
	step
		.talk Director Kalea##283031
		..turnin Research, Interrupted##5548 |goto -2376,-1169,-919
		..accept The Canimid Nuisance##5549 |goto -2376,-1169,-919
	step
		.talk Hermit Bilvus##283041
		..accept An Equivar Named Lucy##5552 |goto -2382,-1171,-919
	step
		.click Damaged Junk##283015
		.' Gather Hermit Bilvus's Damaged Junk |q Re-Salvage Operation##5551/1 |goto Auroria -2429,-1089,-901
		.kill 1 Greystone Burrower##1203316
		.kill 1 Greystone Masher##1213928
		.kill 1 Greystone Rumbler##1170860
		.' Kill Canimid |q The Canimid Nuisance##5549/1 |goto -2416,-1092,-902
	step
		'Press _C_ to open your Communicator:
		..turnin The Canimid Nuisance##5549
		..accept Seismic Instability##5553
		..accept Tools, Not Toys!##5554
	step
		.talk Hermit Bilvus##283166
		..turnin Re-Salvage Operation##5551 |goto Auroria -2380,-1171,-919
	step
		.click Greystone Hill Tunnel Entrance##270743
		.' _Enter_ the tunnel |goto Auroria -2398,-988,-875 < 5
		'Press _C_ to open your Communicator:
		..accept Miner Yeti Report##7698 |goto -1722,-1936,-1171
	step
		.' Kill Cragroach Dredgers |q Miner Yeti Report##7698/1 |goto -1771,-1935,-1171
	step	
		.' Find Digger Anton |q Miner Yeti Report##7698/2 |goto -1788,-1831,-1163
		.kill 1 Bantam Yeti##1234668 |q Miner Yeti Report##7698/3 |goto -1788,-1831,-1163
	step
		'_Run up_ the wooden stairway |goto -1791,-1953,-1170 < 5
		.talk Miner Vallas##270723
		..turnin Miner Yeti Report##7698 |goto -1740,-1879,-1136
	step
		'_Run down_ the wooden stairs |goto -1767,-1891,-1135 < 5
		.click Exit to Greystone Hill##270746
		.' _Climb the ladder_ out |goto -1680,-1935,-1168 < 5
		'_Enter_ the cave |goto -2380,-1046,-907 < 5
		.click Seismic Thumper##283017
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 20 |goto Auroria -2335,-919,-937
	step
		.click Seismic Thumper##283030
		'Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 40 |goto Auroria -2403,-906,-938
		.click Seismic Thumper##283032
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 60 |goto -2429,-819,-938
		.click Seismic Thumper##283029
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 80 |goto -2497,-860,-953
		.click Seismic Thumper##283008
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |goto -2501,-923,-951
	step
		'Press _C_ to open your Communicator:
		..turnin Seismic Instability##5553
		..accept The Alpha Assassination##5555
	step
		'_Continue down_ the tunnel |goto Auroria -2452,-909,-957 < 5
		.kill 1 Greystone Alpha##1256664 |q The Alpha Assassination ##5555/1 |goto -2490,-784,-988
	step
		'_Go up_ the ramp |goto -2417,-824,-976 < 5
		.' _Follow_ the tunnels |goto -2432,-837,-947 < 5
		.' _Continue heading_ toward the exit |goto -2349,-926,-938 < 5
		.' _Exit_ the cave |goto -2377,-1041,-908 < 10		
		.click Moonshine Barrel##282919
		..accept The Hermit's Rotgut##5550 |goto -2445,-826,-883
	step
		.click Lucy the Equivar##283009
		.' Find Lucy the Equivar |q An Equivar Named Lucy##5552/1 |goto -2477,-813,-883
	step
		'Ride Lucy back to camp but be careful of enemies
		.' Return Lucy the Equivar to Hermit Bilvus |q An Equivar Named Lucy##5552/2 |goto Auroria -2368,-1170,-919
	step
		.talk Geologist Brooja##282906
		..turnin Tools, Not Toys!##5554 |goto Auroria -2362,-1167,-918
	step
		.talk Director Kalea##283031
		..turnin The Alpha Assassination ##5555 |goto Auroria -2374,-1168,-918
	step
		.talk Hermit Bilvus##283041
		..turnin The Hermit's Rotgut##5550 |goto -2382,-1171,-919
		..turnin An Equivar Named Lucy##5552 |goto -2382,-1171,-919
	step
		'_Go through_ the stone gates |goto Auroria -2354,-1184,-920 < 5
		.' Travel to the Red Barn |q Person of Interest##5662/2 |goto Auroria -2476,-1174,-926
		.kill 1 Demitrius Kole##1168270 |q Person of Interest##5662/3 |goto -2476,-1174,-926
	step
		'Press _C_ to open your Communicator:
		..turnin Person of Interest##5662
		..accept Curing the Masses##5653
	step
		'_Go to_ the Designated Plague Area |q Curing the Masses##5653/1 |goto Auroria -2268,-1379,-925
		.click Plague-Infected Lowborn##1144645 |tip Don't stand in this area too long, the fumes will hurt you.
		.' Cure Plague-Infected Lowborn |q Curing the Masses##5653/2 |goto -2268,-1379,-925
	step
		'Press _C_ to open your Communicator:
		..turnin Curing the Masses##5653 |goto -2268,-1379,-925
		..accept Radio Silence##5613 |goto -2268,-1379,-925
	step
		.talk Flasia Arvina##283246
		..turnin Radio Silence##5613 |goto Auroria -2072,-1507,-907
	step
		'Press _C_ to open your Communicator:
		..accept Self-Reliance##5614
	step
		.talk Farmer Pelus##286378
		..accept Redsnout the Ravenous##5651 |goto -2061,-1479,-907
		..accept Strangling Strangleweed##5652 |goto -2061,-1479,-907
	step
		.click Strangleweed##1242848 |tip They are weeds growing all around this area.
		.' Uproot clumps of Strangleweed |q Strangling Strangleweed##5652/1 |goto Auroria -2064,-1545,-904
	step
		'Press _C_ to open your Communicator:
		..turnin Strangling Strangleweed##5652
	step
		.kill 1 Plagued Strawgrazer Bull##1250582+
		.kill 1 Plagued Strawgrazer Buck##304022+
		.kill 1 Strawgrazer Pack Bull##312261+
		.' Kill Plagued Strawgrazer Bulls |q Self-Reliance##5614/1 |goto -2063,-1556,-904
	step
		.talk Flasia Arvina##283246
		..turnin Self-Reliance##5614 |goto -2071,-1506,-907
	step
		.click Canimid Burrow##283039
		.kill 1 Redsnout the Ravenous##1288960 |q Redsnout the Ravenous##5651/1 |goto -1959,-1379,-891
	step
		'Press _C_ to open your Communicator:
		..turnin Redsnout the Ravenous##5651 |goto -1973,-1368,-895
	step
		.talk Vetina Casca##283051
		..accept Search Party##5615 |goto -2067,-1475,-908
	step
		.click Declan Casca##283045
		.' Find Declan Casca |q Search Party##5615/1 |goto Auroria -2173,-1663,-916
	step
		.kill 1 Ryton Casca##1249665
		.' Find Ryton Casca |q Search Party##5615/2 |goto -2211,-1810,-897
	step
		.talk Dalia Casca##283057
		.' Find Dalia Casca |q Search Party##5615/3 |goto -2120,-1819,-886
	step
		'Press _C_ to open your Communicator:
		..turnin Search Party##5615
		..accept The Poxbrew Enclave##5616 |goto Auroria -2138,-1850,-883
	step
		.kill Poxbrew Scout##1255430
		.kill Poxbrew Sentry##1169974
		.kill Poxbrew Overseer##1257216
		.' Collect information from Poxbrew Scouts |q The Poxbrew Enclave##5616/1 |goto -2102,-1738,-898
	step
		.click Poxbrew Enclave Entrance##283351
		.' Use Access Code 5440 to enter the Poxbrew Enclave |q The Poxbrew Enclave##5616/2 |goto -2026,-1700,-883
	step
		'Press _C_ to open your Communicator:
		..turnin The Poxbrew Enclave##5616
		..accept The New Plague##5618
	step
		.click Black Hoods Alchemy Supplies##283268+ |tip Destroy these as you go.
		.click Black Hoods Alchemy Experiment##283278
		..accept Denial of Resources##5619 |goto -2107,-1761,-1017
	step
		.click Black Hoods Alchemy Supplies##283268+ |tip Destroy these as you go.
		.kill Poxbrew Operative##1224341
		.click Medical Components##1225109
		.' Collect Medical Components |q The New Plague##5618/1 |goto -2111,-1768,-1019
	step
		.click Black Hoods Alchemy Supplies##283268+ |tip Destroy these as you go.
		.click Black Hoods Alchemy Desk##283343+
		.' Use the Black Hoods Alchemy Desk |q The New Plague##5618/2 |goto -2064,-1672,-1018
	step
		.click Black Hoods Alchemy Supplies##283268+ |tip Destroy these as you go.
		 .click Black Hoods Cage##283284+
		.' Test the cure on prisoners |q The New Plague##5618/3 |goto -2061,-1660,-1018
	step
		.click Black Hoods Alchemy Supplies##283268+ |tip Destroy these as you go.
		.click Black Hoods Cage##283276+
		.' Test the cure on prisoners |q The New Plague##5618/3 |goto -2061,-1660,-1018
	step
		'Press _C_ to open your Communicator:
		..turnin The New Plague##5618
		..accept Taking Ehlsa Alive##5620
	step
		.kill 1 Director Ehlsa##1317814+
		.' Capture Director Ehlsa |q Taking Ehlsa Alive##5620/1 |goto -2060,-1472,-1018
	step
		'Press _C_ to open your Communicator:
		..turnin Taking Ehlsa Alive##5620
		..accept Forever Honored##5621
	step
		.click Black Hoods Alchemy Supplies##283268+
		.' Destroy Black Hoods Alchemy Supplies |q Denial of Resources##5619/1 |goto -2107,-1615,-1003 |tip These appear as an orange cog on your minimap.
	step
		'Press _C_ to open your Communicator:
		..turnin Denial of Resources##5619 |goto -2107,-1615,-1003
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Hycrest Point - Transmat |goto -4388,-607,-968 < 100 |c |noway |q 5515
	step
		.talk Governor Aluviel##286691
		.' Speak with Governor Aluviel |q Forever Honored##5621/1 |goto -2479,-1840,-879
		..turnin Forever Honored##5621
		..accept Production Problems##3899 |goto -2479,-1840,-879
	step
		'_Exit Hycrest_ through the stone walls |goto -2304,-1980,-870 < 10
		.talk Production Facility Manager##277280
		..turnin Production Problems##3899 |goto -2089,-2044,-875
		..accept The Red Tape of Courage##5955 |goto -2089,-2044,-875
	step
		.talk Hot Beverage Requisitions##277385
		.' Answer: _Yes_ to all the questions:
		.' Talk to Hot Beverage Requisitions |q The Red Tape of Courage##5955/2 |goto -2129,-2040,-877
	step
		 .talk Temp Agency Liaison##277356
		 .' Answer: _Yes_, _Yes_, _Yes_, _No_ then _Yes_.
		.'Talk to the Temp Agency Liaison |q The Red Tape of Courage##5955/1 |goto -2022,-2056,-877
	step
		.talk Profit Acquisition Officer##277360 |tip He is at the top of the stairs.
		.' Answer: _Yes_, _No_, _No_, _No_
		.' Talk to the Profit Acquisition Officer |q The Red Tape of Courage##5955/3 |goto -2031,-2004,-868
	step
		.talk Production Facility Manager##277280
		..turnin The Red Tape of Courage##5955 |goto -2085,-2042,-875
		..accept Not Fit For Consumption##3901 |goto -2085,-2042,-875
		..accept Security Upgrades##3890 |goto -2085,-2042,-875
	step
		.click Cubig Security Zapper Console##277752 |tip They are all around this area.
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |count 33 |goto Auroria -2027,-2096,-877
		.click Cubig Security Zapper Console##277764
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |count 66 |goto Auroria -2024,-2081,-877
		.click Cubig Security Zapper Console##277747
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |goto -1991,-2070,-878
	step
		'Press _C_ to open your Communicator:
		..turnin Security Upgrades##3890
		..accept The Great Cubig Heist##3891
	step
		.talk Junior Assistant Security Officer##277495
		.' Talk to the Junior Assistant Security Officer |q The Great Cubig Heist##3891/1 |goto -2049,-2074,-877
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.click Cubig Alpha##518880 |goto -1953,-2057,-880 < 10
		.' Steal Cubig Alpha |q The Great Cubig Heist##3891/2 |goto -2057,-2076,-877
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.' _Continue through_ the Cubig Pens |goto Auroria -1987,-2065,-878
		.click Cubig Beta##523836 |goto -1977,-2006,-877 < 10
		.' Steal Cubig Beta |q The Great Cubig Heist##3891/3 |goto -2057,-2075,-877
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.' _Continue through_ the Cubig Pens |goto -1941,-2080,-882 < 10
		.click Cubig Gamma##523837 |goto -1866,-2105,-890 < 10
		.' Steal Cubig Gamma |q The Great Cubig Heist##3891/4 |goto -2058,-2071,-877
	step
		.talk Livestock Theft Prevention Analyst##1480111
		.' Talk to the Livestock Theft Prevention Analyst |q The Great Cubig Heist##3891/5 |goto -2065,-2071,-877
	step
		'Press _C_ to open your Communicator:
		..turnin The Great Cubig Heist##3891 |goto -2065,-2071,-877
	step
		.talk Associate Cloning Operator##277483
		.' Speak with the Associate Cloning Operator |q Not Fit For Consumption##3901/1 |goto -2078,-2017,-877
	step
		.click Cloning Controls##277489
		.' Use the Cloning Controls |q Not Fit For Consumption##3901/2 |goto -2077,-2015,-876
	step
		.kill 1 Cubig Squared##1463830
		.' Kill the clone of Cloned Cubig |q Not Fit For Consumption##3901/3 |goto -2073,-2021,-877
	step
		.talk Production Facility Manager##277280
		..turnin Not Fit For Consumption##3901 |goto -2086,-2043,-875
		..accept Here a Minute Ago##5944 |goto -2086,-2043,-875
	step
		.talk Duplication Supervisor##277281
		..accept Cuboar Whitewash##3932 |goto -2068,-2010,-877
	step
		.click Cubig Farms Taxi Kiosk##290955
		.' Get the _Cubig Pens_ flight point |goto Auroria -1944,-2015,-879
		|confirm
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Cubig Farm_ as your Recall point |goto Auroria -1908,-2039,-882
		|confirm
	step
		.talk Protostar Assistant Manager##277386
		..turnin Here a Minute Ago##5944 |goto Auroria -1830,-2139,-890
		..accept The Prime Cubig##3902 |goto -1830,-2139,-890
	step
		'Press _C_ to open your Communicator:
		..accept Vectra's Distress##6005 |goto Auroria -1813,-2063,-895
	step
		.kill Cuboar Abomination##1305191+
		.kill Cuboar Horror##1406123+
		.kill Cuboar Mutation##504270+
		.' Kill cuboars |q Cuboar Whitewash##3932/1 |goto -1793,-2053,-898
	step
		'Press _C_ to open your Communicator:
		..turnin Cuboar Whitewash##3932
	step
		.talk Explorer Vectra##273144
		..turnin Vectra's Distress##6005 |goto -1842,-2259,-867
		..accept Marked Territory##5969 |goto -1842,-2259,-867
		..accept Survey Says##5970 |goto -1842,-2259,-867
	step
		.click Fallen Surveyor##272285 |tip You may need to click a few before you find the right one.
		.' Find the missing survey data |q Survey Says##5970/2 |goto -1801,-2364,-841
	step
		'Press _C_ to open your Communicator:
		..turnin Survey Says##5970
	step
		.kill 1 Longear Mangler##917946+
		.kill 1 Longear Thrasher##1559383+
		.' Kill Longears |q Marked Territory##5969/1 |goto -1700,-2429,-837
	step
		'Press _C_ to open your Communicator:
		..turnin Marked Territory##5969
		..accept Leader of the Pack##5971
	step
		.' Search the Exploration Society Camp |q Leader of the Pack##5971/1 |goto -1656,-2445,-850
	step
		.kill 1 Bloodhowler##1565209
		.' Recover the datachron |q Leader of the Pack##5971/2 |goto -1566,-2544,-828
	step
		'Press _C_ to open your Communicator:
		..accept Puddles of Trouble##7367 |goto Auroria -1626,-2282,-916
	step
		' _Enter_ the cave |goto Auroria -1693,-2305,-904 < 5
		.click Prime Cubig##1531144
		.' Attach the Cubig Recovery Kit to the Prime Cubig |q The Prime Cubig##3902/2 |goto -1725,-2416,-896
	step
		.click Cubig Sow##277457
		..accept Life Found a Way##6046 |goto -1728,-2417,-897
	step
		' _Leave_ the cave |goto -1692,-2303,-904 < 10
		.talk Angry Regurgitated Buzzbing##1653357
		..turnin Leader of the Pack##5971 |goto -1841,-2260,-867
	step
		.' Press the icon on the bottom right of your action bar to:
		.' Recall to Cubig Farm Point - Transmat |goto -1909,-2044,-882 < 100 |c |noway |q 5515
	step
		.talk Production Facility Manager##277280
		..turnin Life Found a Way##6046 |goto -2085,-2042,-875
	step
		.talk Cubig Accommodations Manager##1682228
		.' Speak to the Cubig Accommodations Manager |q The Prime Cubig##3902/3 |goto Auroria -2121,-2095,-876
	step
		.talk Production Facility Manager##277280
		..turnin The Prime Cubig##3902 |goto -2086,-2044,-875
	step
		'Press _C_ to open your Communicator:
		..accept Pink Slips For Everyone##6011
	step
		.talk Protostar Operation Supervisor##1691446
		.' Fire the Operation Supervisor |q Pink Slips For Everyone##6011/1 |goto -1799,-1848,-902
		.talk Protostar Master Roboticist##1549175
		.' Fire the Master Roboticist |q Pink Slips For Everyone##6011/3 |goto -1793,-1817,-901
		.talk Protostar Quality Controller##1516321
		.' Fire the Quality Controller |q Pink Slips For Everyone##6011/4 |goto -1790,-1791,-919
		.' _Jump up_ the rocks here |goto Auroria -1842,-1828,-895 < 10
		.talk Protostar Supply Manager##276773
		.' Fire the Supply Manager |q Pink Slips For Everyone##6011/2 |goto -1843,-1819,-882
	step
		'Press _C_ to open your Communicator:
		..turnin Pink Slips For Everyone##6011
		..accept Freebot Negotiations##6012
	step
		.talk Preceptor Alpha##273215
		..turnin Freebot Negotiations##6012 |goto -1773,-1732,-924
		..accept Getting Out the Code##3905 |goto -1773,-1732,-924
	step
		.talk Sprocket##277189
		..accept Resuming Production##5880 |goto -1717,-1726,-929
	step
		.click Devastated Minebot##277048
		..accept Robo Recycling##5931 |goto -1624,-1751,-929
	step
		.talk Doodad##276818
		..accept Hostile Geomorphs##3904 |goto -1511,-1718,-949
	step
		'All around this area:
		.click Protostar Minebot##1285078
		.' Transmit the Freebot code to Protostar Bots |q Getting Out the Code##3905/1 |goto -1542,-1790,-950
		.kill Mozyk Rumbler##582541+
		.kill Mozyk Crusher##1699170+
		.' Destroy Mozyk Rumblers |q Hostile Geomorphs##3904/1 |goto -1542,-1790,-950
		.kill Biting Boulder##1479024+
		.' Destroy Biting Boulders |q Hostile Geomorphs##3904/2 |goto -1542,-1790,-950
		.click Destroyed Bot##277205
		.' Collect Salvaged Minebot Components for Doodad |q Robo Recycling##5931/1 |goto Auroria -1495,-1750,-947
	step
		'Press _C_ to open your Communicator:
		..turnin Getting Out the Code##3905
		..turnin Hostile Geomorphs##3904
		..accept Positive Probability##5843
	step
		.talk Doodad##276818
		..turnin Robo Recycling##5931 |goto -1512,-1717,-949
		..accept Robo Resurrection##3896 |goto -1512,-1717,-949
	step
		.click Deactivated Freebot##1725773
		.' Test the Freebot Energizing Apparatus |q Robo Resurrection##3896/1 |goto -1513,-1716,-949
	step
		.talk Doodad##276818
		..turnin Robo Resurrection##3896 |goto -1511,-1716,-949
	step
		.kill 1 Viceclaw Pincer##275243+
		.' Recover the Drill Booster from Viceclaw Scrab |q Resuming Production##5880/1 |goto -1547,-1824,-949
	step
		.click Freebot Drill##276911
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 25 |goto Auroria -1638,-1773,-932
		.click Freebot Drill##276925
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 50 |goto -1639,-1896,-930
		.click Freebot Drill##276909
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 75 |goto -1554,-1835,-949
		.click Freebot Drill##276923
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |goto -1471,-1777,-947
	step
		'Press _C_ to open your Communicator:
		..turnin Resuming Production##5880
	step
		.talk Protostar Wildlife Controller##1650986
		.' Speak to the Protostar Wildlife Controller |q Positive Probability##5843/1 |goto Auroria -1341,-1522,-933
	step
		.kill 1 Golthox##1757461
		.' Destroy Golthox |q Positive Probability##5843/2 |goto -1301,-1475,-931
	step
		.talk Preceptor Alpha##276925
		..turnin Positive Probability##5843 |goto -1340,-1502,-935
		..accept Freebots Don't Work For Free##3970 |goto -1340,-1502,-935
	step
		.talk Ambassador Flywheel##276955
		.' Meet Ambassador Flywheel |q Freebots Don't Work For Free##3970/1 |goto -1249,-1585,-928
	step
		'Press _C_ to open your Communicator:
		..turnin Freebots Don't Work For Free##3970
		..accept Honey Troubles##3900
	step
		.click Borrowed Speeder##1470420
		.' Use the borrowed speeder |q Honey Troubles##3900/1 |goto -1227,-1600,-928
		.' Travel to Protostar Honeyworks |q Honey Troubles##3900/2 |goto -1521,-2052,-918
	step
		.talk Protostar Rescue Lead##273137
		..turnin Honey Troubles##3900 |goto Auroria -1527,-2049,-917
		..turnin Puddles of Trouble##7367 |goto -1527,-2049,-917
		..accept Distress Call##6029 |goto -1527,-2049,-917
	step
		.talk Protostar Staff Recovery Specialist##273189
		..accept Another Successful Procedure##3947 |goto -1525,-2031,-917
	step
		.click Ailing Employee##1563878
		.' Cure the Ailing Employees |q Another Successful Procedure##3947/1 |goto -1524,-2017,-918
	step
		.talk Protostar Staff Recovery Specialist##273189
		..turnin Another Successful Procedure##3947 |goto -1525,-2030,-918
	step
		.' _Run up_ the hill |goto Auroria -1376,-2122,-910 < 10
		.' _Follow_ the wooden stairs up |goto -1348,-2236,-865 < 5
		.talk Honeyworks Extraction Lead##276116
		..turnin Distress Call##6029 |goto -1320,-2263,-861
		..accept Station A-22 Relief##5910 |goto -1320,-2263,-861
		..accept Buzzbing Onslaught##5980 |goto -1320,-2263,-861
	step
		.talk Protostar Station Operator##276217
		..accept Honeyhive Defenders##5928 |goto -1309,-2278,-861
	step
		.click Station A-22 Pressure Valve##276461
		.' Close the Station A-22 Pressure Valve |q Station A-22 Relief##5910/1 |goto Auroria -1329,-2336,-891
	step
		'Press _C_ to open your Communicator:
		..turnin Station A-22 Relief##5910
		..accept Station B-34 SOS##6021
	step
		.' Go to the stranded Protostar employee |q Buzzbing Onslaught##5980/1 |goto -1369,-2313,-894
		.click Barrel of Honey##276059
		.' Gather Honey Resources |q Buzzbing Onslaught##5980/2 |goto -1369,-2313,-894
	step
		.kill 1 Honeyhive Ransacker##1781647
		.' Stay in the yellow circle and defend the honey |tip Use lots of AoE, they won't attack you back.
		.' Defend the honey supplies |q Buzzbing Onslaught##5980/3 |goto -1370,-2312,-894
	step
		'Press _C_ to open your Communicator:
		..turnin Buzzbing Onslaught##5980
	step
		.kill 1 Honeyhive Guardian##1750736+
		.' Kill Honeyhive Buzzbings |q Honeyhive Defenders##5928/1 |goto -1277,-2308,-886
	step
		'Press _C_ to open your Communicator:
		..turnin Honeyhive Defenders##5928
	step
		.talk Honeyworks Refinement Lead##276112
		..turnin Station B-34 SOS##6021 |goto Auroria -1087,-2289,-851
		..accept Station B-34 Relief##5977 |goto Auroria -1087,-2289,-851
		..accept Death to the Queen##6006 |goto Auroria -1087,-2289,-851
	step
		.click Pump Station 2 - Settler Depot##278241
		.' Close the Station B-34 Pressure Valve |q Station B-34 Relief##5977/1 |goto Auroria -1089,-2195,-867
	step
		'Press _C_ to open your Communicator:
		..turnin Station B-34 Relief##5977
		..accept Station C-19 SOS##6026
	step
		.' Find the Honeyhive Queen's Hive |q Death to the Queen##6006/1 |goto -1244,-2123,-847
	step
		.kill 1 Honeyhive Queen##1833098 |q Death to the Queen##6006/2 |goto -1263,-2111,-851
	step
		'Press _C_ to open your Communicator:
		..turnin Death to the Queen##6006
	step
		.talk Honeyworks Ultrasonication Lead##276027
		..turnin Station C-19 SOS##6026 |goto Auroria -1094,-2030,-901
		..accept Station C-19 Relief##5978 |goto -1094,-2030,-901
		..accept A Rocket Propelled Rescue##5933 |goto -1094,-2030,-901
	step
		.click Drowning Protostar##1831849 |tip They are buried in honey all around here.
		.' Rescue Protostar Employees |q A Rocket Propelled Rescue##5933/1 |goto Auroria -1148,-2035,-912
	step
		'Press _C_ to open your Communicator:
		..turnin A Rocket Propelled Rescue##5933
	step
		.click Station C-19 Pressure Valve##276448
		.' Close the Station C-19 Pressure Valve |q Station C-19 Relief##5978/1 |goto Auroria -1206,-1949,-910
	step
		'Press _C_ to open your Communicator:
		..turnin Station C-19 Relief##5978
		..accept Station D-7 SOS##6027
	step
		.talk Honeyworks Packaging Lead##276055
		..turnin Station D-7 SOS##6027 |goto Auroria -843,-2143,-835
		..accept Station D-7 Relief##5979 |goto -843,-2143,-835
		..accept Honey Snacks##6031 |goto -843,-2143,-835
	step
		.click Station D-7 Pressure Valve##275993
		.' Close the Station D-7 Pressure Valve |q Station D-7 Relief##5979/1 |goto Auroria -940,-2043,-853
	step
		'Press _C_ to open your Communicator:
		..turnin Station D-7 Relief##5979
		..accept Demanding Backup##4331
	step
		.click Stolen Honey Drum##1929322+ |tip They are barrels all around this area.
		.' Send honey drums back |q Honey Snacks##6031/1 |goto Auroria -962,-2059,-850
		.kill Goldclaw Savage##1576789+
		.kill Goldclaw Brute##695652+
		.' Kill Goldclaw Girrok |q Honey Snacks##6031/2 |goto -962,-2059,-850
	step
		.' Kill Yogirrok |q Honey Snacks##6031/3 |goto -892,-1992,-836
	step
		'Press _C_ to open your Communicator:
		..turnin Honey Snacks##6031
	step
		.talk Mondo Zax##273191
		..turnin Demanding Backup##4331 |goto Auroria -963,-2352,-835
		..accept Artillery for Breakfast##5991 |goto -963,-2352,-835
		..accept Order of Battle##6032 |goto -963,-2352,-835
	step
		.click Primal Lodestone##271787
		.' Mark the first Primal Lodestone |q Artillery for Breakfast##5991/1 |goto -912,-2366,-827
	step
		.click Primal Lodestone##271799
		.' Mark the second Primal Lodestone |q Artillery for Breakfast##5991/2 |goto -1041,-2569,-762
	step
		.talk Assistant Frezemi Wrizz##273162
		..accept Munitions Demolitions##6016 |goto -1027,-2556,-764
	step
		.click Aurin Munitions Crate##1919904
		.' Destroy Aurin Munitions Crates |q Munitions Demolitions##6016/1 |goto -965,-2584,-767
		.kill 1 Hivestrike Operative##1687184+
		.kill 1 Hivestrike Operative##1928525+
		.kill 1 Hivestrike Elementalist##1917002+
		.' Collect Aurin Battle Plans |q Order of Battle##6032/1 |goto -965,-2584,-767
	step
		'Press _C_ to open your Communicator:
		..turnin Order of Battle##6032
		..turnin Munitions Demolitions##6016
	step
		.talk Assistant Turi Eta##273146
		..accept Light it Up##3907 |goto -978,-2467,-799
	step
		.click Primal Lodestone##271793
		.' Mark the third Primal Lodestone |q Artillery for Breakfast##5991/3 |goto -1057,-2451,-779
	step
		'Press _C_ to open your Communicator:
		..turnin Artillery for Breakfast##5991
		..accept Extreme Prejudice##6010
	step
		.click Ragebloom##271869 |tip They look like flowers all around this area.
		.' Burn Ragebloom Plants |q Light it Up##3907/1 |goto -1046,-2486,-777
		.kill 1 Hivestrike Grazer##1936852
		.kill Hivestrike Grovekeeper##1919067
		.' Kill Hivestrike Aurin |q Light it Up##3907/2 |goto -962,-2576,-769
	step
		'Press _C_ to open your Communicator:
		..turnin Light it Up##3907
	step
		.' Enter the cave |goto -1092,-2560,-766 < 5
		.kill 1 Matria Segrey##702453
		.' Kill Matria Segrey and recover the Dominion Firing Codes |q Extreme Prejudice##6010/1 |goto -1127,-2577,-772
	step
		'Go up the stairs, inside this cave |goto -1098,-2576,-764 < 5
		.click Orbital Targeting Computer##270830
		.' Enter the Dominion Firing Codes "_1337_" into the Orbital Targeting Computer |q Extreme Prejudice##6010/2 |goto -1137,-2545,-750
	step
		'Press _C_ to open your Communicator:
		..turnin Extreme Prejudice##6010
		..accept Invasion Averted##6051
	step
		' _Jump down_ and follow the path down the hill |goto Auroria -1134,-2426,-790 < 20
		.talk Guard Captain Terentius##273166
		..turnin Invasion Averted##6051 |goto Auroria -1558,-2043,-916
	step
		'Press _C_ to open your Communicator:
		..accept Reporting In##6559
	step
		.click Protostar Hycrest Dispatcher##275914
		.' Use the Protostar Hycrest Dispatcher to travel to Hyrcrest and speak with Govenor Aluviel |goto Auroria -1565,-2038,-917
		.talk Governor Aluviel##286719
		..turnin Reporting In##6559 |goto -2598,-1924,-864
		..accept Flying South for the War##6562 |goto -2598,-1924,-864
	step
		.click Dominion Escort Ship##1887012
		.' Board the Dominion Escort Ship |q Flying South for the War##6562/1 |goto -2474,-1961,-876
	step
		.click Gildgrass Taxi Kiosk##290954
		.' Get the _Gildgrass Airfield_ flight point |goto Auroria -2206,-839,-905
		|confirm
	step
		.talk Aviator Ralyus##268181
		..turnin Flying South for the War##6562 |goto -2181,-806,-905
		..accept Citizens Under Siege##6313 |goto Auroria -2181,-806,-905
	step
		'_Run through_ the gates |goto -2032,-901,-905 < 10
		.talk Lord Syrus##268182
		..turnin Citizens Under Siege##6313 |goto -1960,-944,-894
		..accept Defenses Offline##6324 |goto -1960,-944,-894
	step
		'_Jump up_ the hay stacks |goto -1988,-931,-895 < 10
		.click Eastern Dominion Cannon##265510 |tip It's up on the wall.
		.' Calibrate the Eastern Dominion Cannon |q Defenses Offline##6324/2 |goto -1980,-908,-881
	step
		'_Jump up_ the hay stacks |goto -2063,-940,-905 < 10
		.click Western Dominion Cannon##265530 |tip It's up on the wall.
		.' Calibrate the Western Dominion Cannon |q Defenses Offline##6324/1 |goto -2091,-955,-890
	step
		'_Jump up_ the rocks |goto -1988,-1015,-894 < 10
		.click Northern Dominion Cannon##265514 |tip It's up on this large rock.
		.' Calibrate the Northern Dominion Cannon |q Defenses Offline##6324/3 |goto -1961,-1046,-869
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Gildgrass Manor_ as your Recall point |goto -1983,-990,-892
		|confirm
	step
		.talk Lord Syrus##268182
		..turnin Defenses Offline##6324 |goto Auroria -1959,-943,-894
		..accept Disable the Detonators##6332 |goto -1959,-943,-894
		..accept Blackheart Slayer##6403 |goto -1959,-943,-894
	step
		.click Gildgrass Ammunition Supplies##265506
		.' Collect Gildgrass Ammunition Supplies |q Disable the Detonators##6332/1 |goto -2029,-945,-900
	step
		.click Blackheart Detonator##743875
		'Press _T_ to:
		'Attach explosives to Blackheart Detonator |q Disable the Detonators##6332/2 |goto -2037,-884,-910
	step
		.talk Lord Syrus##268188
		..turnin Disable the Detonators##6332 |goto -1959,-943,-894
	step
		.talk Engineer Titani##265474
		..accept Dominion Reserves##6440 |goto Auroria -1959,-948,-894
	step
		.click Projectionbot Supply##265470
		.' Boot up a Projectionbot |q Dominion Reserves##6440/1 |goto -2060,-926,-905
	step
		.click Dominion Corporal##265477
		.' Press _1_ to create a projection of the Dominion Corporal |q Dominion Reserves##6440/2 |goto -2062,-926,-904
		.click Dominion Field Medic##265483
		.' Press _1_ to create a projection of the Dominion Field Medic |q Dominion Reserves##6440/3 |goto -2062,-926,-904
		.click Reserve Defender##265436
		.' Press _1_ to create projections of Reserve Defenders |q Dominion Reserves##6440/4 |goto -2062,-926,-904
	step
		.talk Engineer Titani##265474
		..turnin Dominion Reserves##6440 |goto Auroria -1960,-948,-894
		..accept Detonator Duplicates##6346 |goto -1960,-948,-894
	step
		.click Projectionbot Supply##265410
		.' Boot up a Projectionbot |q Detonator Duplicates##6346/1 |goto -2061,-928,-904
	step
		.click Blackheart Detonator##688062
		.' Press _1_ on your hotbar to:
		.' Scan a Blackheart Detonator |q Detonator Duplicates##6346/2 |goto Auroria -2061,-928,-904
	step
		.' Press _2_ on your hotbar to:
		.' Use the Blackheart Detonator at the Skeech huts |q Detonator Duplicates##6346/3 |goto -2061,-928,-904
	step
		.talk Engineer Titani##265474
		..turnin Detonator Duplicates##6346 |goto -1960,-948,-894
	step
		.talk Lord Syrus##268188
		..accept Close The Portals##6355 |goto -1959,-944,-894
	step
		.kill Summoned Horror##707375+, Blackheart Summoner##707423+
		.' Kill Blackheart Summoners and Summoned Horrors |q Close The Portals##6355/1 |goto -1892,-713,-945
		.kill Blackheart Invader##732389+, Blackheart Creep##732232+, Blackheart Scrapper##711404+, Blackheart Enchanter##710719+, Blackheart Spellbinder##711209+, Blackheart Summoner##707423+
		.' Kill Blackheart Skeech |q Blackheart Slayer##6403/1 |goto -1908,-695,-946
	step
		'Press _C_ to open your Communicator:
		..turnin Blackheart Slayer##6403
		..turnin Close The Portals##6355
		..accept Blackheart Prisoners##6388 |goto -1908,-695,-946
	step
		'Find the Blackheart Hollow entrance |q Blackheart Prisoners##6388/1 |goto -1884,-601,-953
	step
		.click Summoning Dust##696535
		..accept Dust to Dust##6404 |goto Auroria -1845,-521,-953
	step
		'As you run through the cave:
		.click Summoning Dust##698368
		.' Burn bags of Summoning Dust |q Dust to Dust##6404/1 |goto Auroria -1781,-394,-953
		.click Dominion Captive##695560
		.' Free Dominion Captives |q Blackheart Prisoners##6388/2 |goto -1781,-394,-953
	step
		'Press _C_ to open your Communicator:
		..turnin Blackheart Prisoners##6388
		..turnin Dust to Dust##6404
		..accept Ritual Intervention##6397
	step
		'Follow the cave around |goto Auroria -1686,-305,-963 < 15
		.' Kill Kaarg the Divine |q Ritual Intervention##6397/1 |goto -1791,-207,-970
	step
		.click Chua Drill##847463 |goto Auroria -1795,-210,-970 <3
		.' Take the drill back to town |goto -2006,-1034,-901 < 100
		.talk Lord Syrus##268188
		..turnin Ritual Intervention##6397 |goto -1959,-943,-894
		..accept Bought the Farm##6520 |goto -1959,-943,-894
	step
		.talk Millennial Sidus##268205
		..turnin Bought the Farm##6520 |goto -1805,-1007,-922
		..accept Breaker of Bonds##6188 |goto -1805,-1007,-922
	step
		.talk Farmer Sanders##268206
		..accept A Farmer's Secret...##6198 |goto -1815,-985,-921
	step
		.click Enslaved Farmer##733570
		.' Free Enslaved Farmers |q Breaker of Bonds##6188/3 |goto -1728,-921,-924
	step
		.kill 1 Miss Miggins##747379 |q Breaker of Bonds##6188/1 |goto -1679,-831,-919
	step
		.click Zesty Seasoning##741123 |tip They are scattered all over the farm.
		.' Recover the Zesty Seasoning |q A Farmer's Secret...##6198/1 |goto -1679,-831,-919
	step
		'Press _C_ to open your Communicator:
		..turnin A Farmer's Secret...##6198
	step
		.click Slave Den##264459
	 	.' Enter the Slave Den |goto -1683,-805,-921
		'Investigate the slave den |q Breaker of Bonds##6188/2 |goto -1683,-1050,-947
	step
		'Press _C_ to open your Communicator:
		..turnin Breaker of Bonds##6188
		..accept Bingberry Bootlegging##6207
	step
		.click Slave Den##264459
		.' Leave the Den |goto -1662,-1021,-943 < 5
		'Press _C_ to open your Communicator:
		..accept Vital Harvest##6215 |goto -1701,-1013,-923
	step
		.click Fresh Bingberries##264252
		.' Collect Fresh Bingberries |q Vital Harvest##6215/1 |goto -1710,-1061,-925
	step
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 16 |goto -1724,-1043,-923
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 33 |goto -1703,-1020,-923
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 50 |goto -1692,-1074,-924
	step
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 66 |goto -1655,-1109,-924
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 83 |goto -1674,-1158,-924
		.click Bingberry Still##264300 |tip They are all around this area.
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |goto -1695,-1180,-923
	step
		.click Famished Farmer##751763 |tip They look like people sitting on the ground.
		.' Press _T_ to:
		.' Feed Famished Farmers |q Vital Harvest##6215/2 |goto -1696,-1138,-922
	step
		'Press _C_ to open your Communicator:
		..turnin Vital Harvest##6215
	step
		'Move away from the Bingberry Distillery |q Bingberry Bootlegging##6207/2 |goto -1736,-1186,-928
		.' Press _T_ to:
		.' Detonate the explosive charges |q Bingberry Bootlegging##6207/3 |goto -1736,-1186,-928
	step
		'Press _C_ to open your Communicator:
		..turnin Bingberry Bootlegging##6207
		..accept Loading Zone: No Landing##6245
	step
		.talk Researcher Naboom##263528
		..accept Collegium Under Attack##6420 |goto Auroria -1752,-1196,-940
		..turnin Collegium Under Attack##6420 |goto -1752,-1197,-940
		..accept Medical Defense##6421 |goto -1752,-1197,-940
		..accept Imprint Identification##6425 |goto -1752,-1197,-940
	step
		.talk Researcher Hekkel##263519
		..accept More Scrap for the Pile##6442 |goto -1766,-1202,-940
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Collegium Basecamp_ as your Recall point |goto Auroria -1751,-1207,-939
		|confirm
	step
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |count 33 |goto -1592,-1128,-924
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |count 66 |goto -1517,-1070,-924
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |goto -1586,-1036,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Loading Zone: No Landing##6245
		..accept Stomping Out the Embers##6265
	step
		.click Weapon Crate##264111
		.' Collect Red Ember Grenades from a Weapon Crate |q Stomping Out the Embers##6265/1 |goto -1569,-1050,-924
	step
		.click Lain the Oppressor##908403
		.' Press _T_ to use the Red Ember Grenade on Lain and his cronies. |tip He walks up and down this road.
		.' Kill Lain the Oppressor |q Stomping Out the Embers##6265/2 |goto -1513,-923,-922
	step
		'Press _C_ to open your Communicator:
		..turnin Stomping Out the Embers##6265
		..accept Fallow Fields##6295
		..accept One Last Breath##6326
	step
		.click Escaped Farmer##858499
		'Resuscitate Escaped Farmers |q One Last Breath##6326/1 |goto -1530,-844,-920
		.kill Red Ember Repulser##863169
		.' Kill Red Ember Repulsers |q One Last Breath##6326/2 |goto -1530,-844,-920
	step
		'Press _C_ to open your Communicator:
		..turnin One Last Breath##6326
	step
		.kill 1 Red Ember Sharpshooter##940385+
		.kill 1 Red Ember Goon##849570+
		.kill 1 Red Ember Overseer##942011+
		.' Kill Red Ember gang members |q Fallow Fields##6295/1 |goto Auroria -1573,-956,-908
	step
		'Press _C_ to open your Communicator:
		..turnin Fallow Fields##6295
		..accept Put Him Down##6315
	step
		.' _Enter_ the house |goto -1596,-947,-907 < 5
		.click Clugg's Panic Room##264150 
		.' _Enter_ the panic room |goto -1580,-925,-907 < 2
		.kill 1 Clugg the Crazed##806271 |q Put Him Down##6315/1 |goto -1592,-945,-957
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Windfall Digsite - Transmat |goto -1751,-1207,-939 < 100 |c |noway |q 5515
	step
		.' Go to Dig Site One |q Medical Defense##6421/1 |goto Auroria -1768,-1279,-956
		.talk Researcher Elizabeth##263830
		.' Check on Researcher Elizabeth |q Medical Defense##6421/2 |goto Auroria -1768,-1278,-956
		.' Defend Collegium Researchers |q Medical Defense##6421/3 |goto Auroria -1768,-1278,-956
	step
		.talk Researcher Omegus##263529
		..turnin Medical Defense##6421 |goto -1762,-1276,-956
		..accept Priceless Cargo##6427 |goto -1762,-1276,-956
		..accept Disrupting Power##6439 |goto -1762,-1276,-956
	step
		.click Power Node Alpha##263753
		.' Find Power Node Alpha |q Disrupting Power##6439/1 |goto -1719,-1375,-949
		.' Deactivate Power Node Alpha |q Disrupting Power##6439/2 |goto -1719,-1375,-949
	step
		.' Find Power Node Beta |q Disrupting Power##6439/3 |goto -1848,-1420,-935
		.click Power Node Beta##263750
		.' Deactivate Power Node Beta |q Disrupting Power##6439/4 |goto -1848,-1420,-935
	step
		.' Find Power Node Gamma |q Disrupting Power##6439/5 |goto -1878,-1205,-955
		.click Power Node Gamma##263733
		.' Deactivate Power Node Gamma |q Disrupting Power##6439/6 |goto -1878,-1205,-955
	step
		'Press _C_ to open your Communicator:
		..turnin Disrupting Power##6439
		..accept Administrative Error##6466
	step
		.' Go to Windfall Cave |q Administrative Error##6466/1 |goto -1890,-1147,-959
	step
		'Press _C_ to open your Communicator:
		..accept Abandoned Tech##6540 |goto -1886,-1161,-958
	step
		.click Abandoned Collegium Tech##263901
		.' Collect abandoned Collegium tech |q Abandoned Tech##6540/1 |goto -1893,-1150,-959
	step
		.click Decommissioned XT-9 Protector##666613
		.' Press _T_ to:
		.' Test abandoned Collegium tech |q Abandoned Tech##6540/2 |goto -1918,-1053,-958
	step
		'Press _C_ to open your Communicator:
		..turnin Abandoned Tech##6540
	step
		.kill 1 XT-9 Administrator Tyson##919814 |q Administrative Error##6466/2 |goto Auroria -1913,-1016,-958
	step
		' _Continue_ into the cave |goto -1954,-1033,-957 < 10
		.click Processing Core##263907
		.' Hack the Processing Core |q Administrative Error##6466/3 |goto -2005,-985,-957
	step
		' _Leave_ the cave |goto Auroria -1889,-1149,-959 < 10
		.click Sealed Eldan Artifact##859206
		.' Teleport Sealed Eldan Artifacts |q Priceless Cargo##6427/1 |goto -1847,-1224,-957
		.kill 1 XT-9 Augmentor##895086+
		.kill 1 XT-9 Probe##895409+
		.kill 1 XT-9 Servitor##895618+
		.' Destroy Eldan Constructs |q More Scrap for the Pile##6442/1 |goto -1847,-1224,-957
		.' Collect Augmented Blood Samples from XT-9 Servitors |q Imprint Identification##6425/1 |goto -1847,-1224,-957
		.get 1 Eldan Glyph Fragment##20862
		..accept Strength of Azrion##7886 |goto -1835,-1243,-957 |use Eldan Glyph Fragment##20862
	step
		'Press _C_ to open your Communicator:
		..turnin Imprint Identification##6425
		..turnin More Scrap for the Pile##6442
		..turnin Priceless Cargo##6427
	step
		.click Cracked Eldan Glyph Panel##263162
		.' Find and repair the Cracked Eldan Glyph Panel |q Strength of Azrion##7886/1 |goto -1901,-1279,-939
	step
		.talk Priestess Severina##263163
		..turnin Strength of Azrion##7886
		..accept Broken Virtues##7888 |goto -1770,-1199,-940
	step
		.talk Researcher Naboom##263528
		..turnin Administrative Error##6466 |goto -1753,-1196,-940
		..accept Clouds on the Horizon##6522 |goto -1753,-1196,-940
	step
		.kill XT-9 Protector##1013595+
		.kill XT-9 Probe##978043+
		.' Collect the Fragment of Courage from an Eldan Construct |q Broken Virtues##7888/1 |goto Auroria -1782,-1361,-949
		.' Collect the Fragment of Justice from an Eldan Construct |q Broken Virtues##7888/2 |goto -1782,-1361,-949
		.' Collect the Fragment of Knowledge from an Eldan Construct |q Broken Virtues##7888/3 |goto -1782,-1361,-949
		.' Collect the Fragment of Purity from an Eldan Construct |q Broken Virtues##7888/4 |goto -1782,-1361,-949
		.' Collect the Fragment of Devotion from an Eldan Construct |q Broken Virtues##7888/5 |goto -1782,-1361,-949
	step
		.talk Priestess Severina##263163
		..turnin Broken Virtues##7888 |goto -1769,-1199,-940
	step
		.talk Millennial Sidus##268205
		..turnin Put Him Down##6315 |goto Auroria -1804,-1008,-922
		..accept Contraband Cleanup##6544 |goto -1804,-1008,-922
	step
		.click Stolen Supplies##1021678
		.' Recover Stolen Supplies |q Contraband Cleanup##6544/1 |goto Auroria -1584,-1135,-924
		.' Kill Red Ember Runners |q Contraband Cleanup##6544/2 |goto -1607,-1101,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Contraband Cleanup##6544
	step
		.talk Chemist Ingo##268184
		..turnin Clouds on the Horizon##6522 |goto Auroria -1542,-1260,-925
		..accept Crystalline Immunity##6327 |goto -1542,-1260,-925
	step
		.kill 1 Viridian Trundler##1014080
		.' Collect Viridian Crystal Samples from Viridian Boulderbacks |q Crystalline Immunity ##6327/1 |goto -1667,-1423,-925
	step
		.talk Chemist Ingo##268184
		..turnin Crystalline Immunity##6327 |goto -1543,-1260,-924
		..accept Terminite Termination##6329 |goto -1543,-1260,-924
		..accept We'll Need Something Sticky...##6330 |goto -1543,-1260,-924
	step
		.click Relic Fragment##936218 |tip These are mostly on the rocks in this area.
		.' Collect Relic Fragments |q We'll Need Something Sticky...##6330/1 |goto Auroria -1514,-1373,-929
		.click Terminite Dew##1044927 |tip These are mostly on the ground in this area.
		.' Collect Terminite Dews |q We'll Need Something Sticky...##6330/2 |goto -1514,-1373,-929
		.' Press _T_ to:
		.' Reassemble a Sticky Relics |q We'll Need Something Sticky...##6330/3 |goto -1476,-1400,-931
	step
		.kill 1 Sleepy Putrid Devourer##1046144+
		.kill 1 Putrid Devourer##931468+
		.' Kill Putrid Terminites |q Terminite Termination##6329/1 |goto Auroria -1519,-1368,-929
	step
		'Press _C_ to open your Communicator:
		..turnin Terminite Termination##6329
	step
		.click Viridian Altar##263471
		.' Place the Sticky Relic on the Viridian Altar |q We'll Need Something Sticky...##6330/4 |goto -1501,-1382,-927
	step
		'Press _C_ to open your Communicator:
		..turnin We'll Need Something Sticky...##6330
		..accept The Ground Beneath Your Feet##6331
	step
		.click Malignant Burrow##263470
		.' Find the source of the Putrid Devourers |q The Ground Beneath Your Feet##6331/1 |goto -1575,-1473,-927.
	step
		.click Dead Slimy Gorger##263464
		.' Poke the Dead Slimy Gorger |q The Ground Beneath Your Feet##6331/2 |goto Auroria -1540,-1358,-1003
		.kill 1 Terminite Egg##1997878+
		.kill 1 Slimy Gorger##1999413+
		.kill 1 Noxious Tyrant##1103583
		.' Defend the Slimy Gorger
	step
		.click Malignant Burrow##263460
		.' _Exit_ the termite mound |goto -1554,-1377,-999 < 5
		.talk Chemist Ingo##268184
		..turnin The Ground Beneath Your Feet##6331 |goto -1541,-1260,-925
		..accept On To Glory!##6614 |goto -1541,-1260,-925
	step
		.' _Enter_ the city gates |goto -1303,-1253,-911 < 10
		.talk Major Caros##291343
		..turnin On To Glory!##6614 |goto -1254,-1176,-893
		..accept Give me the SitRep##6716 |goto -1254,-1176,-893
	step
		.talk Captain Hortenus##281159
		.' Speak to Captain Hortenus |q Give me the SitRep##6716/1 |goto -1298,-1091,-889
		..accept Refit and Refuel##6718 |goto -1298,-1091,-889
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Fort Glory_ as your Recall point |goto Auroria -1292,-1072,-888
		|confirm
	step
		.click Fort Glory Taxi Kiosk##280742
		.' Get the _Fort Glory_ flight point |goto -1267,-1035,-889
		|confirm
	step
		.talk Captain Arkexa##291339
		.' Speak to Captain Arkexa |q Give me the SitRep##6716/3 |goto -1293,-1018,-889
		..accept Running Dry##6720 |goto -1293,-1018,-889
		..accept Reply In Kind##6730 |goto -1293,-1018,-889
	step
		.click GL-04 Ammo Case##1093092
		.' Pick up GL-04 Ammo Cases |q Running Dry##6720/1 |goto -1298,-1035,-889
	step
		.talk Lieutenant Vezka##291338
		..accept Osun Hurdles##6726 |goto -1274,-992,-884
	step
		.click Bot-In-A-Box##1039854
		.' Pick up a Bot-In-A-Box |q Refit and Refuel##6718/1 |goto -1171,-1126,-888
	step
		.click Control Panel##293250
		.' Use Passcode _6718_ to collect fuel at the Fuel Tank |q Refit and Refuel##6718/2 |goto -1119,-1139,-889
	step
		'Press _T_ to:
		.' Deploy the Bot-In-A-Box to diagnose Warbreaker |q Refit and Refuel##6718/3 |goto Auroria -1241,-1106,-889
	step
		.talk Captain Hortenus##281159
		..turnin Refit and Refuel##6718 |goto -1297,-1090,-889
	step
		.talk Nurse Sabinec##281156
		..accept Clean Dressings and Dirty Jokes##6725 |goto -1219,-1173,-893
	step
		.click Wounded Soldier##1085519
		.' Bandage Wounded Soldiers |q Clean Dressings and Dirty Jokes##6725/1 |goto -1175,-1154,-901
	step
		'Press _C_ to open your Communicator:
		..turnin Clean Dressings and Dirty Jokes##6725
	step
		.click GL-04 Auto Turret##283327
		.' Reload, track, and calibrate GL-04 Auto Turrets |q Running Dry##6720/2 |goto -1170,-994,-890
		.click Field Barricade##283234
		.' Attach Draken Spears to the Field Barricades |q Osun Hurdles##6726/1 |goto -1150,-978,-889
	step
		'Press _C_ to open your Communicator:
		..turnin Osun Hurdles##6726
	step
		.click Voreth Wall Breaker##1095677
		.' Transmit the location of a Voreth Wall Breaker |q Reply In Kind##6730/2 |goto -1081,-871,-866
		.kill 1 Voreth Sapper##1144664+
		.kill 1 Voreth Soul Flayer##1922856+
		.' Kill Voreth Osun |q Reply In Kind##6730/1 |goto -1111,-952,-884
	step
		'Press _C_ to open your Communicator:
		..turnin Reply In Kind##6730
	step
		.talk Captain Arkexa##291339
		..turnin Running Dry##6720 |goto -1291,-1018,-889
	step
		.talk Captain Pingo##281158
		.' Speak to Captain Pingo |q Give me the SitRep##6716/2 |goto -1026,-1149,-879
		..accept Alloy Allies##6719 |goto -1026,-1149,-879
	step
		.click Inoperable GL-03 Titan##293241
		.' Collect a Titan Power Cell from an Inoperable GL-03 Titan |q Alloy Allies##6719/1 |goto -1093,-1014,-880
	step
		.click Titan Control Panel##283158
		.' Insert the Titan Power Cell into a Titan Control Panel |q Alloy Allies##6719/2 |goto -1015,-1125,-879
		.kill 1 GL-03 Titan##1121129
	step
		.talk Captain Pingo##281158
		..turnin Alloy Allies##6719 |goto -1028,-1149,-879
	step
		'Press _C_ to open your Communicator:
		..accept Find Your Quarry##6721 |goto -1028,-1149,-879
	step
		.talk Colonel Trillos##281160
		..turnin Give me the SitRep##6716 |goto -1243,-1025,-889
		..accept Severing the Rotten##6723 |goto -1243,-1025,-889
	step
		.click Ore Sample##283188
		..accept Exanite Examination##6733 |goto -1321,-786,-968
	step
		.click Unafflicted Prisoner##1152830
		.' Rescue Unafflicted Prisoners |q Severing the Rotten##6723/1 |goto Auroria -1354,-805,-972
		.kill 1 Osun Ore Deposit##1021467
		.' Collect Osun Ore Samples by destroying Osun Ore Deposits |q Exanite Examination##6733/1 |goto -1348,-822,-970
	step
		.kill 1 Voreth Slave Master##1162820 |q Find Your Quarry##6721/1 |goto -1274,-882,-925
		.kill 1 Soulrotted Minion##1171088+
		.kill 1 Soulrotted Digger##11712+
		.kill 1 Soulrotted Dark Mender##1935977+
		.' Kill Soulrotted slaves |q Find Your Quarry##6721/2 |goto -1274,-882,-925
	step
		'Press _C_ to open your Communicator:
		..turnin Find Your Quarry##6721
		..turnin Exanite Examination##6733
		..turnin Severing the Rotten##6723
		..accept Blind Hunt##6724
	step
		'_Enter_ the cave |goto -1147,-668,-944 < 10
		-- .kill 1 Magoth the Unclean##939951
		.' Kill Magoth the Unclean |q Blind Hunt##6724/1 |goto -1126,-603,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Blind Hunt##6724
		..accept Into the Fires##6732
	step
		'_Follow_ the ramp up |goto -1424,-751,-970 < 10
		.' _Follow the path_ up and around |goto -1480,-667,-942 < 10
		.talk Scout Tricus##291334
		..turnin Into the Fires##6732 |goto -1470,-525,-928
		..accept Into the Warhound's Maw##6703 |goto -1470,-525,-928
	step
		.talk Scout Hazira##281152
		..accept Fall of the Bladevault Keeper##6706 |goto -1472,-522,-928
	step
		.talk Bladevault Passage##283055
		.click Bladevault Passage##283055
		.' Enter the Bladevault |q Into the Warhound's Maw##6703/1 |goto -1440,-468,-927
	step
		'Follow the curvy path |goto Auroria -1900,-872,-1254 < 10
		.click Voreth Weapon Rack##1228924
		..accept Bladebane##6707 |goto -1810,-752,-1252
	step
		.click Voreth War Drums##282950
		.kill Voreth Weaponmaster##796381
		.' Challenge the Bladevault Keeper |q Fall of the Bladevault Keeper##6706/1 |goto -1819,-733,-1252
	step
		'Press _C_ to open your Communicator:
		..turnin Fall of the Bladevault Keeper##6706
	step
		.click Ancient Osun Warhammer##292586
		..accept Osun Warhammer##9143 |goto -1842,-614,-1267
	step
		.click Voreth Weapon Rack##1098518
		.' Destroy Voreth Weapon Racks |q Bladebane##6707/1 |goto -1891,-645,-1270
	step
		'Press _C_ to open your Communicator:
		..turnin Bladebane##6707
	step
		.click Fires of Kel Voreth Gateway##283051
		.' Enter the Fires of Kel Voreth |q Into the Warhound's Maw##6703/2 |goto -1859,-591,-1252
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Warhound's Maw##6703
		..accept The Hammer of Sundering##6708
		..accept Smite the Smiths##6711
	step
		.click Pile of Ashes##282995
		..accept Extinguishing the Embers##6710 |goto -1488,-349,-921
	step
		.click Voreth Ember##1255547 |tip They are all around this area.
		.' Press _T_ to:
		.' Collect Voreth Ember Cores |q Extinguishing the Embers##6710/1 |goto -1472,-289,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Extinguishing the Embers##6710
	step
		.click Metal Scrap Pile##817768 |tip They are all around this area.
		.' Collect Steel Scrap from Metal Scrap Piles |q The Hammer of Sundering##6708/2 |goto Auroria -1356,-250,-917
		.click Voreth Crate##1229479 |tip They are all around this area.
		.' Collect Voreth Wood from Voreth Crates |q The Hammer of Sundering##6708/1 |goto Auroria -1356,-250,-917
	step
		'Press _C_ to open your Communicator:
		..turnin The Hammer of Sundering##6708
		..accept Like the Voreth##6727
	step
		.click Voreth Furnace##292920
		.' Use the Voreth Furnace to melt steel |q Like the Voreth##6727/1 |goto -1384,-241,-921
		.click Voreth Anvil##282980
		.' Use the Voreth Anvil to mold steel |q Like the Voreth##6727/2 |goto -1434,-257,-921
	step
		.click Water Bucket##292934
		.' Use the Water Bucket to cool the steel |q Like the Voreth##6727/3 |goto -1439,-254,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Like the Voreth##6727
		..accept Chain Sunderer##6822
		..accept The Chainforgers##6713
	step
		.kill 1 Forge Laborer##1259226+
		.kill 1 Forge Thrall##1254984+
		.' Kill Forge Thralls, Forgers, and Laborers |q Smite the Smiths##6711/1 |goto -1414,-301,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Smite the Smiths##6711
	step
		'Head _up the ramp_ to the top level |goto Auroria -1420,-143,-921 < 10
		.' Continue _up the ramp_ |goto -1467,-82,-867 < 10
		.' You're _nearly there_! |goto -1492,-43,-846 < 10
		.click Voreth Chains##292890
		.' Destroy the fourth Voreth Chain |q Chain Sunderer##6822/5 |goto -1597,-82,-801
	step
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##282928
		.' Destroy the third Voreth Chain |q Chain Sunderer##6822/4 |goto -1603,-338,-801
	step
		.click To the Eastern Tower##283019
		.' Take the Pipe to Eastern Tower |goto -1538,-389,-801 < 5
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##292892
		.' Destroy the first Voreth Chain |q Chain Sunderer##6822/2 |goto -1348,-339,-801
	step
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##282930
		.' Destroy the second Voreth Chain |q Chain Sunderer##6822/3 |goto -1349,-83,-801
	step
		'Press _C_ to open your Communicator:
		..turnin Chain Sunderer##6822
		..accept Fire in the Sky##6714
	step
		-- .kill Voreth Chainforger##1245410+
		.' Found all along the top of the towers:
		.' Kill Voreth Chainforgers |q The Chainforgers##6713/1 |goto Auroria -1387,-87,-817
	step
		'Press _C_ to open your Communicator:
		..turnin The Chainforgers##6713
	step
		.' _Follow_ this pathway |goto Auroria -1472,-39,-810 < 10
		.kill 1 Voreth Flame##1975540
		.' Destroy the Voreth Flame |q Fire in the Sky##6714/1 |goto -1474,-205,-798
	step
		.click Mass Inversion Unit##282904
		.' Pick up the Mass Inversion Unit |goto Auroria -1474,-229,-796 < 5
		.' Run to the vent here and jump down |goto -1561,-395,-807 < 10 |tip Make sure you are not mounted or you will fall to your death.
		.talk Scout Tricus##291334
		..turnin Fire in the Sky##6714 |goto -1470,-524,-928
	step
		'Press _C_ to open your Communicator:
		..accept Break of Dawn##6736
	step
		.talk Captain Acrie##281150
		..turnin Break of Dawn##6736 |goto Auroria -1725,-555,-922
		..accept Osun Oversight##6738 |goto -1725,-555,-922
	step
		.' Search for soldiers in house |q Osun Oversight##6738/1 |goto Auroria -1745,-585,-924
		.' Examine the outpost's artillery |q Osun Oversight##6738/2 |goto -1981,-489,-921
		.' Search the supply tent for Provisions |q Osun Oversight##6738/3 |goto Auroria -1974,-489,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Osun Oversight##6738
		..accept Overrun and Overgrown##6749
	step
		.click Overgrown Weed##1875002
		.' Pull the Overgrown Weeds |q Overrun and Overgrown##6749/2 |goto -1975,-388,-922
		.kill 1 Overgrown Grass##1310339
		.' Cut down Overgrown Grass |q Overrun and Overgrown##6749/1 |goto -1984,-466,-919
	step
		.click Fallen Voreth Raider##282350
		..accept Smoke Signals##6752 |goto -1977,-450,-921
	step
		.click Destroyed Supply Crate##292340
		..accept Long Shelf Life##6751 |goto -1970,-482,-921
	step
		.click Osun Warhammer##1238340
		.' Collect Osun Weapons |q Smoke Signals##6752/1 |goto -1988,-522,-919
		.click Fire Pit##292367
		.' Set fire to the Osun Weapons |q Smoke Signals##6752/2 |goto -1970,-433,-920
	step
		'Press _C_ to open your Communicator:
		..turnin Smoke Signals##6752
	step
		.click Outpost Supplies##1122415
		.' Collect the scattered Outpost Supplies |q Long Shelf Life##6751/1 |goto -1999,-497,-920
	step
		.click Destroyed Supply Crate##292340
		..turnin Long Shelf Life##6751 |goto -1970,-481,-921
	step
		.kill 1 Fringe Scavenger##2067905+
		.kill 1 Fringe Pack Rover##1918355+
		.' Kill Fringe dagun |q Overrun and Overgrown##6749/3 |goto Auroria -1945,-441,-918
	step
		'Press _C_ to open your Communicator:
		..turnin Overrun and Overgrown##6749
		..accept Flip the Switch##6750
	step
		.' Kill Skrappy |q Flip the Switch##6750/2 |goto -1970,-564,-918
		--  Skrappy##1419796
		.click Generator Access Panel##292422
		.' Restore power by accessing the Generator Access Panel |q Flip the Switch##6750/3 |goto -1970,-564,-918
	step
		'Press _C_ to open your Communicator:
		..turnin Flip the Switch##6750
		..accept While You're Here...##6753
	step
		.talk Axis Dignitas##281151
		..turnin While You're Here...##6753 |goto -2117,-473,-918
		..accept Can You Keep a Secret?##6754 |goto -2117,-473,-918
	step
		'Press _C_ to open your Communicator:
		..accept XAS Should Be KOS##6755 |goto Auroria -2089,-515,-920
	step
		.click Dead Experimental Beast##282020
		..accept Mistakes Do Happen##6783 |goto -2080,-591,-918
	step
		.click Stealth Experiment##292040
		.' Collect a sample from a Stealth Experiment |q Mistakes Do Happen##6783/1 |goto -2102,-567,-918
	step
		.click Laboratory Access Panel##292045
		.' Access the Laboratory Access Panel |q Can You Keep a Secret?##6754/1 |goto -2149,-626,-918
	step
		.click Web Experiment##282028
		.' Collect a sample from a Web Experiment |q Mistakes Do Happen##6783/2 |goto -2051,-551,-918
	step
		.click Production Access Panel##282040
		.' Access the Production Access Panel |q Can You Keep a Secret?##6754/2 |goto -2060,-606,-913
	step
		.click Venom Experiment##292030
		.' Collect a sample from a Venom Experiment |q Mistakes Do Happen##6783/3 |goto -2017,-631,-913
	step
		.click Repository Access Panel##292044
		.' Access the Repository Access Panel |q Can You Keep a Secret?##6754/3 |goto -2140,-650,-910
	step
		'Press _C_ to open your Communicator:
		..turnin Can You Keep a Secret?##6754
	step
		.kill Tech Seeker Logistician##1456081+
		.kill Tech Seeker Dataminer##1450400+
		.' Kill Exile Tech Seekers |q XAS Should Be KOS##6755/1 |goto -2060,-606,-913
	step
		'Press _C_ to open your Communicator:
		..turnin XAS Should Be KOS##6755
	step
		.talk DRED Sentry##291949
		..accept Leave No Trace##6820 |goto -2190,-653,-909
	step
		'Press _C_ to open your Communicator:
		..accept No Granok Unturned##6788 |goto -2190,-652,-909
	step
		.' Locate fallen lancer |q No Granok Unturned##6788/1 |goto -2143,-657,-910
	step
		'Press _C_ to open your Communicator:
		..turnin No Granok Unturned##6788
	step
		.click Fallen Lancer##282038
		..accept Within a Stone's Throw##6771 |goto -2143,-655,-910
	step
		.' Search for clues |q Within a Stone's Throw##6771/1 |goto -2325,-749,-917
		.' Kill Giantcrushers |q Mistakes Do Happen##6783/4 |goto -2199,-711,-912
		-- Giantcrusher##1486919
	step
		'Press _C_ to open your Communicator:
		..turnin Mistakes Do Happen##6783
	step
		.click DRED Agent##504568
		.' Search for DRED Agents |q Leave No Trace##6820/1 |goto -2397,-629,-938
	step
		'Press _C_ to open your Communicator:
		..turnin Leave No Trace##6820
	step
		.' Investigate Meadow Point |q Within a Stone's Throw##6771/2 |goto -2399,-656,-935
	step
		'Press _C_ to open your Communicator:
		..turnin Within a Stone's Throw##6771
		..accept Rock Crusher##6772
	step
		.kill 1 Lancer Tempest##607529+
		.kill 1 Lancer Pointer##607593+
		.kill 1 Lancer Enforcer##511038+
		.' Kill Exile Lancers |q Rock Crusher##6772/1 |goto -2378,-575,-945
	step
		'Press _C_ to open your Communicator:
		..turnin Rock Crusher##6772
		..accept Dropped and Gone##6776
	step
		.' Locate the XAS Leader |q Dropped and Gone##6776/1 |goto -2510,-528,-939
	step
		.click Stolen Data?##291924
		.' Recover the Stolen Data |q Dropped and Gone##6776/2 |goto -2510,-528,-939
		.' Kill the waves of enemies that appear
	step
		'Press _C_ to open your Communicator:
		..turnin Dropped and Gone##6776
		..accept Data Loss##6810
	step
		.click Stolen Data##281977
		.' Recover the Stolen Data |q Data Loss##6810/1 |goto -2305,-405,-925
	step
		.' Kill Brinlanya Moonstone |q Data Loss##6810/2 |goto -2302,-406,-925
		-- Brinlanya Moonstone##653377
	step
		'Press _C_ to open your Communicator:
		..turnin Data Loss##6810
		..accept Report to Palerock Post##8126 -- |goto -2286,-396,-925
	step
		' _Enter the city_ of Illium |goto Illium -2848,-418,-906 < 20
		.' _Follow_ the path through the city |goto -3068,-565,-906 < 10
		.click To Artemis Zin's Museum##263643
		.' _Enter the Museum_ |goto -3473,-760,-891 < 5
		.click Osun Warhammer Display##263652
		.' Take the hammer to the museum in Illium |q Osun Warhammer##9143/1 |goto -3375,-1687,-1033
	step
		.talk Artemis Zin##263644
		..turnin Osun Warhammer##9143 |goto -3382,-1721,-1034
	step
		.click To Spaceport Alpha##263635
		.' _Leave_ the Museum |goto -3387,-1874,-1034 < 5
		.' _Go up the ramp_ and continue through Illium |goto -3231,-507,-895 < 10
		.talk Captain Visia##265429
		.' Speak to Captain Visia |q Report to Palerock Post##8126/1 |goto -3466,-524,-870
]])
