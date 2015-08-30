if not ZGV then return end
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
		.talk Agent Marcus##281080 |goto Auroria -2548,-1872,-875
		..turnin Auroria Deployment##9905
		..accept Citizen Concerns##3751
	step
		.click Transmat Terminal##265407
		.' Click _Yes_ to set _Hycrest_ as your Recall point |goto Auroria -2541,-1911,-869
		|confirm
	step
		.talk Kaytia Yohons##282062 |goto Auroria -2523,-1830,-880
		.' Speak with Kaytia Yohons |q Citizen Concerns##3751/1
	step
		.click Datachron##282039 |goto Auroria -2523,-1830,-880
		.' Repair the datachron |q Citizen Concerns##3751/2
	step
		.talk Gate Guard Argus##282056 |goto Auroria -2437,-1802,-879
		.' Speak with Gate Guard Argus |q Citizen Concerns##3751/3
	step
		' _Jump down_ from the guard position
		.kill 1 Dozer##1030887 |q Citizen Concerns##3751/4 |goto Auroria -2374,-1750,-911
	step
		'_Follow_ the road up |goto Auroria -2331,-1797,-901 < 10
		.talk Antonia Corbitan##280706 |goto Auroria -2320,-1971,-870
		.' Speak with Dealer Rakon |q Citizen Concerns##3751/5
	step
		' Click _City Hall Delivery_ crate right next of npc
		.' Deliver Dealer Rakon's Crate |q Citizen Concerns##3751/6 |goto Auroria -2500,-1855,-881
	step
		'Press _C_ to open your Communicator:
		..turnin Citizen Concerns##3751
		..accept Gruesome Secrets##5630
	step
		.talk Watchman Decker##282314 |goto Auroria -2624,-1809,-876
		..accept Ashes to Ashes##5754
	step
		.click Deceased Plague Victim##282287 |tip They are laying on the ground in this area.
		.' Burn Dead Plague Victims |q Ashes to Ashes##5754/1 |goto Auroria -2660,-1782,-881
	step
		'Meet Agent Marcus |q Gruesome Secrets##5630/1 |goto Auroria -2662,-1734,-881
	step
		.click Plagued Hycrest Guard##281976 |goto Auroria -2662,-1734,-881
		.' Investigate the corpse |q Gruesome Secrets##5630/2
	step
		.' Fight the waves of enemies:
		.' Listen to Agent Marcus's findings |q Gruesome Secrets##5630/3 |goto Auroria -2663,-1731,-881
	step
		.talk Agent Marcus##281989 |goto Auroria -2665,-1730,-881
		..turnin Gruesome Secrets##5630
		..accept The Truth Comes Out##3753
		'There is a tunnel behind Marcus, take it
	step
		.talk Watchman Decker##282314 |goto Auroria -2625,-1809,-876
		..turnin Ashes to Ashes##5754
	step
		'_Enter_ the Barracks
		.' Go to the Hycrest Barracks  |q The Truth Comes Out##3753/1 |goto Auroria -2362,-1983,-865
	step
		.click Hycrest Basement Door##282144 |goto Auroria -2362,-1983,-865
		.' Enter the Interrogation Room |q The Truth Comes Out##3753/2
	step
		.click Prisoner Rodaeus##1096173 |goto Auroria -2479,-1846,-928
		.' Interrogate Prisoner Rodaeus |q The Truth Comes Out##3753/3
	step
		.talk Governor Aluviel##282128 |goto Auroria -2483,-1850,-929
		..turnin The Truth Comes Out##3753
	step
		'Press _C_ to open your Communicator:
		..accept Deadly Samples##5640
	step
		.'_Exit_ the Interrogation Center |goto Auroria -2506,-1831,-924 < 2 |c |q 5640/1
	step
		.' _Leave_ the house |goto Auroria -2370,-1963,-865 < 5 |c |q 5640/1
	step
		.click Hycrest Basement Door##281827
		.' _Enter the basement_ |goto Auroria -2366,-2002,-868 < 2 |c |q 5640/1
	step
		.click Slank Trap##281823
		.' Collect the Hycrest barracks sample |q Deadly Samples##5640/1 |goto Auroria -2347,-1984,-904
	step
		.click Hycrest Basement Door##281859
		.' _Enter the Basement_ |goto Auroria -2272,-1905,-873 < 2 |c |q 5640/2
	step
		.click Slank Trap##281819
		.' Collect the Hycrest church sample |q Deadly Samples##5640/2 |goto Auroria -2288,-1891,-904
	step
		.click Hycrest Basement Door##281829
		.' _Exit_ the door |goto Auroria -2281,-1877,-899 < 2 |c |q 5640/3
	step
		.click Hycrest Basement Door##281856
		.' _Enter_ the Basement |goto Auroria -2512,-1803,-887 < 2 |c |q 5640/3
	step
		.click Slank Trap##281811
		.' Collect the Hycrest City Hall sample |q Deadly Samples##5640/3 |goto Auroria -2512,-1797,-929
	step
		.click Hycrest Basement Door##281821
		.' _Exit_ the door |goto Auroria -2506,-1783,-924 < 2 |c |q 5640/4
	step
		.' _Follow the road_ through the gate |goto Auroria -2557,-1862,-875 < 10 |c |q 5640/4
	step
		.click Hycrest Basement Door##281854
		.' _Enter_ the basement |goto Auroria -2598,-1935,-867 < 2 |c |q 5640/4
	step
		.click Slank Trap##281797
		.' Collect the Hycrest Governor's Residence sample |q Deadly Samples##5640/4 |goto Auroria -2583,-1922,-900
	step
		.click Hycrest Basement Door##281835
		.' _Exit_ the door |goto Auroria -2594,-1902,-895 < 2 |c |q 5640
	step
		.' _Follow_ the road to the East |goto Auroria -2560,-1866,-874 < 10 |c |q 5640
	step
		.talk Alchemist Pontinia##286639 |goto Auroria -2374,-1983,-864
		..turnin Deadly Samples##5640
		..accept Trial and Error##5641
	step
		.click Contagion Cleanse##281954 |goto Auroria -2374,-1986,-864
		.' Create a test batch of Contagion Cleanse |q Trial and Error##5641/1
	step
		.click Pox-Be-Gone##281958 |goto Auroria -2368,-1986,-865
		.' Create a test batch of Pox-Be-Gone |q Trial and Error##5641/2
	step
		.click Plague Away##281946 |goto Auroria -2377,-1976,-863
		.' Create a test batch of Plague Away |q Trial and Error##5641/3
	step
		.click Plagued Fields Hunter##1115011 |goto Auroria -2390,-1981,-869
		.' Test the Contagion Cleanse |q Trial and Error##5641/4
	step
		.click Plagued Rowsdower##1112487 |goto Auroria -2390,-1978,-869
		.' Test the Pox-Be-Gone |q Trial and Error##5641/5
	step
		.click Plagued Lowborn##1116886 |goto Auroria -2390,-1974,-869
		.' Test the Plague Away |q Trial and Error##5641/6
	step
		.talk Alchemist Pontinia##286639 |goto Auroria -2374,-1983,-864
		..turnin Trial and Error##5641
	step
		'Press _C_ to open your Communicator:
		..accept The Savior of Hycrest##5643
	step
		.' Go to Hycrest Church |q The Savior of Hycrest##5643/1 |goto Auroria -2312,-1882,-869
	step
		' Click _Infected Highborn_
		.' Administer the cure |q The Savior of Hycrest##5643/2 |goto Auroria -2312,-1882,-869
	step
		.'_Follow the road_ through the gate |goto Auroria -2558,-1869,-874 < 10 |c |q 5643
	step
		.talk Governor Aluviel##286658 |goto Auroria -2598,-1924,-864
		..turnin The Savior of Hycrest##5643
		..accept Report to the Gates##5647
	step
		.talk Gate Guard Malik##281786 |goto Auroria -2558,-1806,-889
		..turnin Report to the Gates##5647
		..accept Quarantine##5646
	step
		.click AI Module Generator##281660 |goto Auroria -2560,-1801,-890
		.' Activate an AI Module Generator |q Quarantine##5646/1
	step
		.click Lowborn Citizen##1183495
		.' Scan Lowborn Citizens |q Quarantine##5646/2 |goto Auroria -2554,-1744,-907 |tip These respawn very quickly.
	step
		.talk Gate Guard Malik##281786 |goto Auroria -2557,-1805,-889
		..turnin Quarantine##5646
	step
		'Press _C_ to open your Communicator:
		..accept Emergency Broadcast##2599 |goto Auroria -2557,-1805,-889
	step
		.talk Farmer Titus##286629 |goto Auroria -2590,-1635,-917
		..accept From the Shadows##5665
		..accept Keeping an Eye Out##5666
	step
		' Around this area:  |goto Auroria -2608,-1504,-927
		.click Captured Farmhand Egg Sac##944101
		.' Rescue Farmhands |q Keeping an Eye Out##5666/1
		.' Kill Grave Spiders |q From the Shadows##5665/1
	step
		'Press _C_ to use your Communicator:
		..turnin From the Shadows##5665
		..turnin Keeping an Eye Out##5666
		..accept The Mother of All Spiders##5671
	step
		.' Destroy Gravespinner |q The Mother of All Spiders##5671/1 |goto Auroria -2665,-1505,-922
	step
		.talk Farmer Titus##286629 |goto Auroria -2590,-1635,-917
		..turnin The Mother of All Spiders##5671
	step
		.click Bingberry Holoplayer##282076
		.' Upload the governor's message at Bingberry Orchard |q Emergency Broadcast##2599/1 |goto Auroria -2500,-1671,-920
	step
		.talk Momma Kestus##286652 |goto Auroria -2489,-1678,-921
		..accept Bringing in the Harvest##2581
	step
		.click Gravitic Destabilizer##286477
		.' This gives a jump buff. Jump to the trees red orbs
		.' Collect Bingberries using a Gravitic Destabilizer |q Bringing in the Harvest##2581/1 |goto Auroria -2427,-1696,-924
	step
		.talk Momma Kestus##286652 |goto Auroria -2490,-1678,-921
		..turnin Bringing in the Harvest##2581
	step
		.click Eastern Pen Holoplayer##282054
		.' Upload the governor's message at the Hycrest Corral |q Emergency Broadcast##2599/2 |goto Auroria -2240,-1578,-930
	step
		.click Greenfield Holoplayer##282074
		.' Upload the governor's message at Greenfield Estate |q Emergency Broadcast##2599/3 |goto Auroria -2382,-1508,-930
	step
		.talk Lord Benevolo##286640 |goto Auroria -2390,-1496,-929
		..turnin Emergency Broadcast##2599
		..accept Carrier Eradication##5648
		..accept Consumer Beware##5658
	step
		.kill 1 Plagued Strawgrazer Bull##311180+
		.kill 1 Plagued Highfeather Hunter##399341+
		.kill 1 Plagued Highfeather Bounder##400437+
		.' Kill Plagued wildlife |q Carrier Eradication##5648/1 |goto Auroria -2378,-1354,-920
	step
		.click Fresh Fruit Basket##281504 |goto Auroria -2305,-1356,-923
		.' Examine the Fresh Fruit Basket  |q Consumer Beware##5658/1
	step
		.click Hycrest Greens##281506 |goto Auroria -2374,-1294,-924
		.' Examine the Hycrest Greens |q Consumer Beware##5658/2
	step
		.click Hycrest Foodstuffs##281497 |goto Auroria -2512,-1312,-928
		.' Examine crates of Hycrest Foodstuffs |q Consumer Beware##5658/3
	step
		.talk Farmhand Julia##281336 |goto Auroria -2516,-1320,-929
		..accept The Evil Within##5674
	step
		' Around this area |goto Auroria -2563,-1312,-930
		.' Kill Vandarin Farmhands |q The Evil Within##5674/1
		.' Rescue Kidnapped Lowborn |q The Evil Within##5674/2
	step
		.' Use the _Vandarin Family Crest_ in your bags |use Vandarin Family Crest##14201
		..accept Vandarin Infamy##5678
	step
		.talk Farmhand Julia##281336 |goto Auroria -2515,-1320,-929
		..turnin The Evil Within##5674
	step
		.talk Lord Benevolo##286640 |goto Auroria Auroria -2392,-1495,-929
		..turnin Carrier Eradication##5648
		..turnin Consumer Beware##5658
		..turnin Vandarin Infamy##5678
		..accept Stopping the Spread##5649
	step
		.click Hay Stack##281625 |tip It's inside the silo.
		.' Ignite the Hay Stack at the first silo |q Stopping the Spread##5649/1 |goto Auroria -2488,-1438,-926
	step
		.click Hay Stack##281629 |tip It's inside the silo.
		.' Ignite the Hay Stack at the second silo |q Stopping the Spread##5649/2 |goto Auroria -2288,-1270,-923
	step
		.click Hay Stack##281621
		.' Ignite the Hay Stack at the third Silo |q Stopping the Spread##5649/3 |goto Auroria -2439,-1229,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Stopping the Spread##5649
		..accept Person of Interest##5662
	step
		.' Listen to Agent Marcus's intercepted comm call in Hycrest |q Person of Interest##5662/1
	step
		' Is behind the 3rd Hay Stack building
		.' Travel to the Red Barn |q Person of Interest##5662/2 |goto Auroria -2467,-1218,-928 <5
	step
		'Kill Demitrius Kole |q Person of Interest##5662/3 |goto Auroria -2476,-1174,-926
	step
		'Press _C_ to open your Communicator:
		..turnin Person of Interest##5662
		..accept Curing the Masses##5653
		..accept Radio Silence##5613
	step
		'Press _C_ to open your Communicator:
		..accept Research, Interrupted##5548 |goto Auroria -2352,-1226,-923 < 5
	step
		'_Go through_ the tall stone gates |goto Auroria -2355,-1183,-920 < 5
		.talk Director Kalea##283031 |goto Auroria -2374,-1167,-919
		..turnin Research, Interrupted##5548
		..accept The Canimid Nuisance##5549
	step
		.talk Hermit Bilvus##283041 |goto Auroria -2382,-1171,-919
		..accept Re-Salvage Operation##5551
		..accept An Equivar Named Lucy##5552
	step
		' Kill _Greystone_ mobs and click _Damaged Junk_ around |goto Auroria -2429,-1089,-901
		.' Gather Hermit Bilvus's Damaged Junk |q Re-Salvage Operation##5551/1
		.' Kill Canimid |q The Canimid Nuisance##5549/1
	step
		'Press _C_ to open your Communicator:
		..turnin The Canimid Nuisance##5549
		..accept Seismic Instability##5553
		..accept Tools, Not Toys!##5554
	step
		.click Moonshine Barrel##282919 |goto Auroria -2445,-826,-883
		..accept The Hermit's Rotgut##5550
	step
		.click Lucy the Equivar##283009 |goto Auroria -2476,-815,-882
		.' Find Lucy the Equivar |q An Equivar Named Lucy##5552/1
	step
		'Ride Lucy back to camp but be careful of enemies |goto Auroria -2368,-1170,-919
		.' Return Lucy the Equivar to Hermit Bilvus |q An Equivar Named Lucy##5552/2
	step
		.talk Hermit Bilvus##283041 |goto Auroria -2382,-1171,-919
		..turnin The Hermit's Rotgut##5550
		..turnin Re-Salvage Operation##5551
		..turnin An Equivar Named Lucy##5552
	step
		'_Enter_ the cave |goto Auroria -2380,-1046,-907 < 5
		.click Seismic Thumper##283017 |goto Auroria -2335,-919,-937
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 20
	step
		.click Seismic Thumper##283030 |goto Auroria -2403,-906,-938
		'Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 40
	step
		.click Seismic Thumper##283032 |goto Auroria -2429,-819,-93
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 608
	step
		.click Seismic Thumper##283029 |goto Auroria -2497,-860,-953
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1 |count 80
	step
		.click Seismic Thumper##283008 |goto Auroria -2501,-923,-951
		.' Power down the Seismic Thumpers |q Seismic Instability##5553/1
	step
		'Press _C_ to open your Communicator:
		..turnin Seismic Instability##5553
		..accept The Alpha Assassination##5555
	step
		.'_Continue down_ the tunnel |goto Auroria -2452,-909,-957 < 5 |c |q 5555/1
	step
		' Kill Greystone Alpha |q The Alpha Assassination ##5555/1 |goto Auroria -2490,-784,-988
	step
		'_Go up_ the ramp and exit cave
		.talk Geologist Brooja##282906 |goto Auroria -2359,-1164,-918
		..turnin Tools, Not Toys!##5554
	step
		.talk Director Kalea##283031 |goto Auroria -2374,-1168,-918
		..turnin The Alpha Assassination##5555
	step
		.click Greystone Hill Tunnel Entrance##270743
		.' _Enter_ the tunnel |goto Auroria -2398,-988,-875 < 5
		'Press _C_ to open your Communicator:
		..accept Miner Yeti Report##7698 |goto Auroria -1722,-1936,-1171
	step
		.' Kill Cragroach Dredgers |q Miner Yeti Report##7698/1 |goto Auroria -1771,-1935,-1171
	step
		.' Find Digger Anton |q Miner Yeti Report##7698/2 |goto Auroria -1788,-1831,-1163
		.' Kill Bantam Yeti |q Miner Yeti Report##7698/3
	step
		'_Run up_ the wooden stairway |goto Auroria -1791,-1953,-1170 < 5
		.talk Miner Vallas##270723 |goto Auroria -1740,-1879,-1136
		..turnin Miner Yeti Report##7698
	step
		'_Run down_ the wooden stairs and climb Greystone Hill ladder |goto Auroria -1680,-1935,-1168 < 5
		.click Exit to Greystone Hill##270746
		'_Go through_ the stone gates |goto Auroria -2354,-1184,-920 < 5
		'_Go to_ the Designated Plague Area |q Curing the Masses##5653/1 |goto Auroria -2268,-1379,-925
	step
		'Keep an eye on your toxic meter, at the left of sprint
		.click Plague-Infected Lowborn##1144645 |tip Run out to safe area after 2-3 cleanse attempts.
		.' Cure Plague-Infected Lowborn |q Curing the Masses##5653/2 |goto Auroria -2268,-1379,-925
	step
		'Press _C_ to open your Communicator:
		..turnin Curing the Masses##5653 |goto Auroria -2268,-1379,-925
	step
		.talk Flasia Arvina##283246 |goto Auroria -2072,-1507,-907
		..turnin Radio Silence##5613
	step
		'Press _C_ to open your Communicator:
		..accept Self-Reliance##5614
	step
		.talk Farmer Pelus##286378 |goto Auroria -2061,-1479,-907
		..accept Redsnout the Ravenous##5651
		..accept Strangling Strangleweed##5652
	step
		' Around this area:
		.' Uproot clumps of Strangleweed |q Strangling Strangleweed##5652/1
		.' Kill Plagued Strawgrazer Bulls |q Self-Reliance##5614/1 |goto Auroria -2063,-1556,-904
	step
		'Press _C_ to open your Communicator:
		..turnin Strangling Strangleweed##5652
	step
		.talk Flasia Arvina##283246 |goto Auroria -2071,-1506,-907
		..turnin Self-Reliance##5614
	step
		.click Canimid Burrow##283039
		.kill 1 Redsnout the Ravenous##1288960 |q Redsnout the Ravenous##5651/1 |goto Auroria -1959,-1379,-891
	step
		'Press _C_ to open your Communicator:
		..turnin Redsnout the Ravenous##5651 |goto Auroria -1973,-1368,-895
	step
		.talk Vetina Casca##283051 |goto Auroria -2067,-1475,-908
		..accept Search Party##5615
	step
		.click Declan Casca##283045 |goto Auroria -2173,-1663,-916
		.' Find Declan Casca |q Search Party##5615/1
	step
		.kill 1 Ryton Casca##1249665 |goto Auroria -2211,-1810,-897
		.' Find Ryton Casca |q Search Party##5615/2
	step
		.talk Dalia Casca##283057 |goto Auroria -2120,-1819,-886
		.' Find Dalia Casca |q Search Party##5615/3
	step
		'Press _C_ to open your Communicator:
		..turnin Search Party##5615
		..accept The Poxbrew Enclave##5616
	step
		.kill Poxbrew Scout##1255430
		.kill Poxbrew Sentry##1169974
		.kill Poxbrew Overseer##1257216
		.' Collect information from Poxbrew Scouts |q The Poxbrew Enclave##5616/1 |goto Auroria -2102,-1738,-898
	step
		.click Poxbrew Enclave Entrance##283351
		.' Use Access Code _5440_ to enter the Poxbrew Enclave |q The Poxbrew Enclave##5616/2 |goto Auroria -2026,-1700,-883
	step
		'Press _C_ to open your Communicator:
		..turnin The Poxbrew Enclave##5616
		..accept The New Plague##5618
	step
		' Click _Black Hoods Alchemy Experiment_ table
		..accept Denial of Resources##5619 |goto Auroria -2107,-1761,-1017
	step
		' Destroy _Black Hoods Alchemy Supplies_ as you go
		.kill Poxbrew Operative##1224341
		.click Medical Components##1225109
		.' Collect Medical Components |q The New Plague##5618/1 |goto Auroria -2111,-1768,-1019
	step
		' Destroy _Black Hoods Alchemy Supplies_ as you go
		.click Black Hoods Alchemy Desk##283343+
		.' Use the Black Hoods Alchemy Desk |q The New Plague##5618/2 |goto Auroria -2064,-1672,-1018
	step
		' Destroy _Black Hoods Alchemy Supplies_ as you go
		.click Black Hoods Cage##283284+
		.' Test the cure on prisoners |q The New Plague##5618/3 |goto Auroria -2061,-1660,-1018
	step
		' Destroy _Black Hoods Alchemy Supplies_ as you go
		.click Black Hoods Cage##283276+
		.' Test the cure on prisoners |q The New Plague##5618/3 |goto Auroria -2061,-1660,-1018
	step
		.click Black Hoods Alchemy Supplies##283268+
		.' Destroy Black Hoods Alchemy Supplies |q Denial of Resources##5619/1 |goto Auroria -2107,-1615,-1003 |tip These appear as an orange cog on your minimap.
	step
		'Press _C_ to open your Communicator:
		..turnin The New Plague##5618
		..turnin Denial of Resources##5619
		..accept Taking Ehlsa Alive##5620
	step
		.kill 1 Director Ehlsa##1317814+
		.' Capture Director Ehlsa |q Taking Ehlsa Alive##5620/1 |goto Auroria -2060,-1472,-1018
	step
		'Press _C_ to open your Communicator:
		..turnin Taking Ehlsa Alive##5620
		..accept Forever Honored##5621
	step
		'Move away from center, then:
		.' _Recall-Transmat_ to Hycrest - Transmat |goto Auroria -2541,-1911,-869 < 20 |c |noway |q 5621
	step
		.talk Governor Aluviel##286691  |goto Auroria -2479,-1840,-879
		.' Speak with Governor Aluviel |q Ftorever Honored##5621/1
		..turnin Forever Honored##5621
		..accept Production Problems##3899
	step
		.'_Exit Hycrest_ through the stone walls |goto Auroria -2304,-1980,-870 < 10 |c |q 3899
	step
		.talk Production Facility Manager##277280 |goto Auroria -2087,-2043,-874
		..turnin Production Problems##3899
		..accept The Red Tape of Courage##5955
	step
		.talk Hot Beverage Requisitions##277385 |goto Auroria -2126,-2039,-876
		.' Answer: _Yes_ to all the questions:
		.' Talk to Hot Beverage Requisitions |q The Red Tape of Courage##5955/2
	step
		 .talk Temp Agency Liaison##277356 |goto Auroria -2022,-2055,-876
		 .' Answer: _Yes_, _Yes_, _Yes_, _No_ then _Yes_.
		.'Talk to the Temp Agency Liaison |q The Red Tape of Courage##5955/1
	step
		.talk Profit Acquisition Officer##277360  |goto Auroria -2030,-2003,-867 |tip He is at the top of the stairs.
		.' Answer: _Yes_, _No_, _No_, _No_
		.' Talk to the Profit Acquisition Officer |q The Red Tape of Courage##5955/3
	step
		.talk Production Facility Manager##277280 |goto Auroria -2087,-2043,-874
		..turnin The Red Tape of Courage##5955
		..accept Not Fit For Consumption##3901
		..accept Security Upgrades##3890
	step
		.click Cubig Security Zapper Console##277752 |tip They are all around this area.
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |count 33 |goto Auroria -2027,-2096,-877
	step
		.click Cubig Security Zapper Console##277764
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |count 66 |goto Auroria -2024,-2081,-877
	step
		.click Cubig Security Zapper Console##277747
		.' Upload security programs into Security Zapper Consoles |q Security Upgrades##3890/1 |goto Auroria -1991,-2070,-878
	step
		'Press _C_ to open your Communicator:
		..turnin Security Upgrades##3890
		..accept The Great Cubig Heist##3891
	step
		.talk Junior Assistant Security Officer##277495 |goto Auroria -2049,-2074,-877
		.' Talk to the Junior Assistant Security Officer |q The Great Cubig Heist##3891/1
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.click Cubig Alpha##518880 |goto Auroria -1950,-2056,-880
		.' Steal Cubig Alpha |q The Great Cubig Heist##3891/2
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.' _Continue through_ the Cubig Pens |goto Auroria -1985,-2049,-877 < 10
		.click Cubig Beta##523836 |goto Auroria -1980,-1998,-876
		.' Steal Cubig Beta |q The Great Cubig Heist##3891/3
	step
		.' _Stay within the fenced area_ and avoid the white spotlights |goto Auroria -2047,-2093,-877
		.' _Continue through_ the Cubig Pens |goto Auroria -1941,-2080,-882 < 10
		.click Cubig Gamma##523837 |goto Auroria -1864,-2107,-889
		.' Steal Cubig Gamma |q The Great Cubig Heist##3891/4
	step
		.talk Livestock Theft Prevention Analyst##1480111
		.' Talk to the Livestock Theft Prevention Analyst |q The Great Cubig Heist##3891/5 |goto Auroria -2065,-2071,-877
	step
		'Press _C_ to open your Communicator:
		..turnin The Great Cubig Heist##3891
	step
		.talk Associate Cloning Operator##277483 |goto Auroria -2078,-2017,-877
		.' Speak with the Associate Cloning Operator |q Not Fit For Consumption##3901/1
	step
		.click Cloning Controls##277489 |goto Auroria -2077,-2015,-876
		.' Use the Cloning Controls |q Not Fit For Consumption##3901/2
	step
		.kill 1 Cubig Squared##1463830
		.' Kill the clone of Cloned Cubig |q Not Fit For Consumption##3901/3 |goto Auroria -2073,-2021,-877
	step
		.talk Production Facility Manager##277280 |goto Auroria -2087,-2043,-874
		..turnin Not Fit For Consumption##3901
		..accept Here a Minute Ago##5944
	step
		.talk Duplication Supervisor##277281 |goto Auroria -2068,-2010,-877
		..accept Cuboar Whitewash##3932
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Cubig Farm_ as your Recall point |goto Auroria -1908,-2039,-882
		|confirm |q 3932
	step
		.talk Protostar Assistant Manager##277386 |goto Auroria -1830,-2139,-890
		..turnin Here a Minute Ago##5944
		..accept The Prime Cubig##3902
	step
		.kill Cuboar Abomination##1305191+
		.kill Cuboar Horror##1406123+
		.kill Cuboar Mutation##504270+
		.' Kill cuboars |q Cuboar Whitewash##3932/1 |goto Auroria -1793,-2053,-898
	step
		'Press _C_ to open your Communicator:
		..turnin Cuboar Whitewash##3932
	step
		'Press _C_ to open your Communicator:
		..accept Vectra's Distress##6005 |goto Auroria -1769.2,-2235.7,-890.2
	step
		.talk Explorer Vectra##273144 |goto Auroria -1842,-2259,-867
		..turnin Vectra's Distress##6005
		..accept Marked Territory##5969
		..accept Survey Says##5970
	step
		.click Fallen Surveyor##272285 |tip You may need to click a few before you find the right one.
		.' Find the missing survey data |q Survey Says##5970/2 |goto Auroria -1801,-2364,-841
	step
		'Press _C_ to open your Communicator:
		..turnin Survey Says##5970
	step
		.kill 1 Longear Mangler##917946+
		.kill 1 Longear Thrasher##1559383+
		.' Kill Longears |q Marked Territory##5969/1 |goto Auroria -1700,-2429,-837
	step
		'Press _C_ to open your Communicator:
		..turnin Marked Territory##5969
		..accept Leader of the Pack##5971
	step
		.' Search the Exploration Society Camp |q Leader of the Pack##5971/1 |goto Auroria -1656,-2445,-850
	step
		.kill 1 Bloodhowler##1565209
		.' Recover the datachron |q Leader of the Pack##5971/2 |goto Auroria -1566,-2544,-828
	step
		.talk Explorer Vectra##273144 |goto Auroria -1842,-2259,-867
		..turnin Leader of the Pack##5971
	step
		.' _Enter_ the cave |goto Auroria -1693,-2305,-904 < 5 |c |q 3902/2
	step
		.click Prime Cubig##1531144
		.' Attach the Cubig Recovery Kit to the Prime Cubig |q The Prime Cubig##3902/2 |goto Auroria -1725,-2416,-896
	step
		.click Cubig Sow##277457 |goto Auroria -1728,-2417,-897
		..accept Life Found a Way##6046
	step
		.' _Recall-Transmat_ to Cubig Farm |goto Auroria -1908,-2039,-882 < 20 |c |noway |q 6046
	step
		.talk Cubig Accommodations Manager##1682228 |goto Auroria -2121,-2095,-876
		.' Speak to the Cubig Accommodations Manager |q The Prime Cubig##3902/3
	step
		.talk Production Facility Manager##277280 |goto Auroria -2086,-2044,-875
		..turnin The Prime Cubig##3902
		..turnin Life Found a Way##6046
	step
		'Press _C_ to open your Communicator:
		..accept Pink Slips For Everyone##6011
	step
		.talk Protostar Supply Manager##276773 |goto Auroria -1843,-1819,-882
		.' Fire the Supply Manager |q Pink Slips For Everyone##6011/2
	step
		.talk Protostar Operation Supervisor##1691446 |goto Auroria -1799,-1848,-902
		.' Fire the Operation Supervisor |q Pink Slips For Everyone##6011/1
	step
		.talk Protostar Master Roboticist##1549175 |goto Auroria -1793,-1817,-901
		.' Fire the Master Roboticist |q Pink Slips For Everyone##6011/3
	step
		.talk Protostar Quality Controller##1516321
		.' Fire the Quality Controller |q Pink Slips For Everyone##6011/4 |goto Auroria -1790,-1791,-919
		.' _Jump up_ the rocks here |goto Auroria -1842,-1828,-895 < 10
	step
		'Press _C_ to open your Communicator:
		..turnin Pink Slips For Everyone##6011
		..accept Freebot Negotiations##6012
	step
		.talk Preceptor Alpha##273215 |goto Auroria -1773,-1732,-924
		..turnin Freebot Negotiations##6012
		..accept Getting Out the Code##3905
	step
		.talk Sprocket##277189 |goto Auroria -1717,-1726,-929
		..accept Resuming Production##5880
	step
		.kill 1 Viceclaw Pincer##275243+
		.' Recover the Drill Booster from Viceclaw Scrab |q Resuming Production##5880/1 |goto Auroria -1685,-1791,-925
	step
		.click Freebot Drill##276911
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 25 |goto Auroria -1636,-1775,-931
	step
		.click Devastated Minebot##277048 |goto Auroria -1624,-1751,-929
		..accept Robo Recycling##5931
	step
		.talk Doodad##276818 |goto Auroria -1511,-1718,-949
		..accept Hostile Geomorphs##3904
	step
		.click Freebot Drill##276925
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 50 |goto Auroria -1561,-1727,-946
		' Kill any rock mob and free bots on your way
	step
		.click Freebot Drill##276909
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |count 75 |goto Auroria -1554,-1835,-949
		' Kill any rock mob and free bots on your way
	step
		.click Freebot Drill##276923
		.' Restart the Freebot Drills |q Resuming Production##5880/2 |goto Auroria -1471,-1777,-947
		' Kill any rock mob and free bots on your way
	step
		.' Transmit the Freebot code to Protostar Bots |q Getting Out the Code##3905/1 |goto Auroria -1542,-1790,-950
		.' Destroy Mozyk Rumblers |q Hostile Geomorphs##3904/1 |goto Auroria -1542,-1790,-950
		.' Destroy Biting Boulders |q Hostile Geomorphs##3904/2 |goto Auroria -1542,-1790,-950
		.' Collect Salvaged Minebot Components for Doodad |q Robo Recycling##5931/1 |goto Auroria -1495,-1750,-947
	step
		'Press _C_ to open your Communicator:
		..turnin Hostile Geomorphs##3904
		..turnin Getting Out the Code##3905
		..accept Positive Probability##5843
		..turnin Resuming Production##5880
	step
		.talk Doodad##276818 |goto Auroria -1512,-1717,-949
		..turnin Robo Recycling##5931
		..accept Robo Resurrection##3896
	step
		.click Deactivated Freebot##1725773
		.' Test the Freebot Energizing Apparatus |q Robo Resurrection##3896/1 |goto Auroria -1513,-1716,-949
	step
		.talk Doodad##276818 |goto Auroria -1511,-1716,-949
		..turnin Robo Resurrection##3896
	step
		.talk Protostar Wildlife Controller##1650986 |goto Auroria -1341,-1522,-933
		.' Speak to the Protostar Wildlife Controller |q Positive Probability##5843/1
	step
		'This starts as holdout event, 3 waves then Golthox
		.kill 1 Golthox##1757461
		.' Destroy Golthox |q Positive Probability##5843/2 |goto Auroria -1325,-1503,-935
	step
		.talk Preceptor Alpha##276925 |goto Auroria -1340,-1502,-935
		..turnin Positive Probability##5843
		..accept Freebots Don't Work For Free##3970
	step
		.talk Ambassador Flywheel##276955 |goto Auroria -1249,-1585,-928
		.' Meet Ambassador Flywheel |q Freebots Don't Work For Free##3970/1
	step
		'Press _C_ to open your Communicator:
		..turnin Freebots Don't Work For Free##3970
		..accept Honey Troubles##3900
	step
		.click Borrowed Speeder##1470420
		.' Use the borrowed speeder |q Honey Troubles##3900/1 |goto Auroria -1227,-1600,-928
		.' Travel to Protostar Honeyworks |q Honey Troubles##3900/2 |goto Auroria -1521,-2052,-918
	step
		.talk Protostar Rescue Lead##273137 |goto Auroria -1527,-2049,-917
		..turnin Honey Troubles##3900
		..accept Distress Call##6029
	step
		.talk Protostar Staff Recovery Specialist##273189 |goto Auroria -1525,-2031,-917
		..accept Another Successful Procedure##3947
	step
		.click Ailing Employee##1563878
		.' Cure the Ailing Employees |q Another Successful Procedure##3947/1 |goto Auroria -1524,-2017,-918
	step
		.talk Protostar Staff Recovery Specialist##273189 |goto Auroria -1525,-2030,-918
		..turnin Another Successful Procedure##3947
	step
		.click Transmat Terminal##271707 |goto Auroria -1606,-2029,-920
		.' Press _Yes_ to set the _Honeyworks Headquarters_ as your Recall Point
		|confirm |q 6029
	step
		.' _Run up_ the hill |goto Auroria -1376,-2122,-910 < 15 |c |q 6029
	step
		.' _Follow_ the wooden stairs up |goto Auroria -1348,-2236,-865 < 5 |c |q 6029
	step
		.talk Honeyworks Extraction Lead##276116 |goto Auroria -1320,-2263,-861
		..turnin Distress Call##6029
		..accept Station A-22 Relief##5910
		..accept Buzzbing Onslaught##5980
	step
		.talk Protostar Station Operator##276217 |goto Auroria -1309,-2278,-861
		..accept Honeyhive Defenders##5928
	step
		.click Station A-22 Pressure Valve##276461
		.' Close the Station A-22 Pressure Valve |q Station A-22 Relief##5910/1 |goto Auroria -1329,-2336,-891
	step
		'Press _C_ to open your Communicator:
		..turnin Station A-22 Relief##5910
		..accept Station B-34 SOS##6021
	step
		.' Go to the stranded Protostar employee |q Buzzbing Onslaught##5980/1 |goto Auroria -1369,-2313,-894
		.click Barrel of Honey##276059
		.' Gather Honey Resources |q Buzzbing Onslaught##5980/2 |goto Auroria -1369,-2313,-894
	step
		.kill 1 Honeyhive Ransacker##1781647
		.' This is a holdout mission |tip Use lots of AoE, they won't attack you back.
		.' Defend the honey supplies |q Buzzbing Onslaught##5980/3 |goto Auroria -1370,-2312,-894
	step
		'Press _C_ to open your Communicator:
		..turnin Buzzbing Onslaught##5980
	step
		.talk Honeyworks Refinement Lead##276112 |goto Auroria -1087,-2289,-851
		..turnin Station B-34 SOS##6021
		..accept Station B-34 Relief##5977
		..accept Death to the Queen##6006
	step
		.click Pump Station 2 - Settler Depot##278241
		.' Close the Station B-34 Pressure Valve |q Station B-34 Relief##5977/1 |goto Auroria -1089,-2195,-867
	step
		'Press _C_ to open your Communicator:
		..turnin Station B-34 Relief##5977
		..accept Station C-19 SOS##6026
	step
		.' Find the Honeyhive Queen's Hive |q Death to the Queen##6006/1 |goto Auroria -1244,-2123,-847
	step
		.kill 1 Honeyhive Queen##1833098 |q Death to the Queen##6006/2 |goto Auroria -1263,-2111,-851
	step
		'Press _C_ to open your Communicator:
		..turnin Death to the Queen##6006
	step
		.kill 1 Honeyhive Guardian##1750736+
		.kill 1 Honeyhive Harvester##6950309+
		.' Kill Honeyhive Buzzbings |q Honeyhive Defenders##5928/1 |goto Auroria -1277,-2308,-886
	step
		'Press _C_ to open your Communicator:
		..turnin Honeyhive Defenders##5928
	step
		.talk Honeyworks Ultrasonication Lead##276027 |goto Auroria -1094,-2030,-901
		..turnin Station C-19 SOS##6026
		..accept Station C-19 Relief##5978
		..accept A Rocket Propelled Rescue##5933
	step
		' Click _Drowning Protostar_, then press _T_ to:
		.' Rescue Protostar Employees |q A Rocket Propelled Rescue##5933/1 |goto Auroria -1148,-2035,-912 |tip You can do this from a safe distance
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
		.talk Honeyworks Packaging Lead##276055 |goto Auroria -843,-2143,-835
		..turnin Station D-7 SOS##6027
		..accept Station D-7 Relief##5979
		..accept Honey Snacks##6031
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
		.' Kill Goldclaw Girrok |q Honey Snacks##6031/2 |goto Auroria -962,-2059,-850
	step
		.' Kill Yogirrok |q Honey Snacks##6031/3 |goto Auroria -892,-1992,-836
	step
		'Press _C_ to open your Communicator:
		..turnin Honey Snacks##6031
	step
		.talk Mondo Zax##273191 |goto Auroria -963,-2352,-835
		..turnin Demanding Backup##4331
		..accept Artillery for Breakfast##5991
		..accept Order of Battle##6032
	step
		.click Primal Lodestone##271787
		.' Mark the first Primal Lodestone |q Artillery for Breakfast##5991/1 |goto Auroria -912,-2366,-827
	step
		.talk Assistant Turi Eta##273146 |goto Auroria -978,-2467,-799
		..accept Light it Up##3907
	step
		.click Primal Lodestone##271799
		.' Mark the second Primal Lodestone |q Artillery for Breakfast##5991/2 |goto Auroria -1041,-2569,-762
	step
		.talk Assistant Frezemi Wrizz##273162 |goto Auroria -1027,-2556,-764
		..accept Munitions Demolitions##6016
	step
		.click Aurin Munitions Crate##1919904
		.' Destroy Aurin Munitions Crates |q Munitions Demolitions##6016/1 |goto Auroria -965,-2584,-767
		' Kill _Hivestrike Operative_ or _Elementalist_
		.' Collect Aurin Battle Plans |q Order of Battle##6032/1 |goto Auroria -965,-2584,-767
	step
		'Press _C_ to open your Communicator:
		..turnin Munitions Demolitions##6016
		..turnin Order of Battle##6032
	step
		.click Primal Lodestone##271793
		.' Mark the third Primal Lodestone |q Artillery for Breakfast##5991/3 |goto Auroria -1057,-2451,-779
	step
		'Press _C_ to open your Communicator:
		..turnin Artillery for Breakfast##5991
		..accept Extreme Prejudice##6010
	step
		.click Ragebloom##271869 |tip They are tall flowers
		.' Burn Ragebloom Plants |q Light it Up##3907/1 |goto Auroria -1046,-2486,-777
		' Kill _Hivestrike Grazer_ and _Grovekeeper_'
		.' Kill Hivestrike Aurin |q Light it Up##3907/2 |goto Auroria -962,-2576,-769
	step
		'Press _C_ to open your Communicator:
		..turnin Light it Up##3907
	step
		.' Enter the cave |goto Auroria -1092,-2560,-766 < 5 |c |q 6010/1
	step
		.kill 1 Matria Segrey##702453
		.' Kill Matria Segrey and recover the Dominion Firing Codes |q Extreme Prejudice##6010/1 |goto Auroria -1127,-2577,-772
	step
		.'Go up the stairs, inside this cave |goto Auroria -1098,-2576,-764 < 5 |c |q 6010/2
	step
		.click Orbital Targeting Computer##270830
		.' Enter the Dominion Firing Codes "_1337_" into the Orbital Targeting Computer |q Extreme Prejudice##6010/2 |goto Auroria -1137,-2545,-750
	step
		'Press _C_ to open your Communicator:
		..turnin Extreme Prejudice##6010
		..accept Invasion Averted##6051
	step
		.' _Recall-Transmat_ to Protostar Honeyworks HQ |goto Auroria -1607,-2029,-919 |c |noway |q 6051
	step
		.talk Guard Captain Terentius##273166 |goto Auroria -1558,-2043,-916
		..turnin Invasion Averted##6051
	step
		'Press _C_ to open your Communicator:
		..accept Reporting In##6559
	step
		.' Click _Protostar Hycrest Dispatcher_ to: |goto Auroria -1565,-2038,-917 < 3
		.' Travel to Hycrest |goto Auroria -2541,-1911,-869 < 20 |c |noway |q 6659
	step
		.talk Governor Aluviel##286719 |goto Auroria -2480,-1837,-879
		..turnin Reporting In##6559
		..accept Flying South for the War##6562
	step
		.click Dominion Escort Ship##1887012
		.' Board the Dominion Escort Ship |q Flying South for the War##6562/1 |goto Auroria -2470,-1961,-875 < 3
	step
		.talk Aviator Ralyus##268181 |goto Auroria -2181,-806,-905
		..turnin Flying South for the War##6562
		..accept Citizens Under Siege##6313
	step
		.'_Run through_ the gates |goto Auroria -2032,-901,-905 < 10 |c |q 6313
	step
		.talk Lord Syrus##268182 |goto Auroria -1960,-944,-894
		..turnin Citizens Under Siege##6313
		..accept Defenses Offline##6324
	step
		'_Jump up_ the hay stacks |goto Auroria -1988,-931,-895 < 10
		.click Eastern Dominion Cannon##265510
		.' Calibrate the Eastern Dominion Cannon |q Defenses Offline##6324/2 |goto Auroria -1979,-908,-881
	step
		'_Jump up_ the hay stacks |goto Auroria -2063,-940,-905 < 10
		.click Western Dominion Cannon##265530
		.' Calibrate the Western Dominion Cannon |q Defenses Offline##6324/1 |goto Auroria -2088,-951,-890
	step
		'_Jump up_ the rocks |goto Auroria -1988,-1015,-894 < 10
		.click Northern Dominion Cannon##265514
		.' Calibrate the Northern Dominion Cannon |q Defenses Offline##6324/3 |goto Auroria -1964,-1039,-868
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Gildgrass Manor_ as your Recall point |goto Auroria -1983,-990,-892
		|confirm |q 6324
	step
		.talk Lord Syrus##268182 |goto Auroria -1959,-943,-894
		..turnin Defenses Offline##6324
		..accept Disable the Detonators##6332
		..accept Blackheart Slayer##6403
	step
		.click Gildgrass Ammunition Supplies##265506
		.' Collect Gildgrass Ammunition Supplies |q Disable the Detonators##6332/1 |goto Auroria -2029,-945,-900
	step
		.click Blackheart Detonator##743875
		'Press _T_ to:
		'Attach explosives to Blackheart Detonator |q Disable the Detonators##6332/2 |goto Auroria -2037,-884,-910
	step
		.talk Lord Syrus##268188 |goto Auroria -1959,-943,-894
		..turnin Disable the Detonators##6332
	step
		.talk Engineer Titani##265474 |goto Auroria -1959,-948,-894
		..accept Dominion Reserves##6440
	step
		.click Projectionbot Supply##265470
		.' Boot up a Projectionbot |q Dominion Reserves##6440/1 |goto Auroria -2060,-926,-905
	step
		.click Dominion Corporal##265477
		.' Press _1_ to create a projection of the Dominion Corporal |q Dominion Reserves##6440/2 |goto Auroria -1971,-984,-891
	step
		.click Dominion Field Medic##265483
		.' Press _1_ to create a projection of the Dominion Field Medic |q Dominion Reserves##6440/3 |goto Auroria -2062,-1013,-910
	step
		.click Reserve Defender##265436
		.' Press _1_ to create projections of Reserve Defenders |q Dominion Reserves##6440/4 |goto Auroria -2030,-958,-900
	step
		.talk Engineer Titani##265474 |goto Auroria -1960,-948,-894
		..turnin Dominion Reserves##6440
		..accept Detonator Duplicates##6346
	step
		.click Projectionbot Supply##265410
		.' Boot up a Projectionbot |q Detonator Duplicates##6346/1 |goto Auroria -2061,-928,-904
	step
		.click Blackheart Detonator##688062
		.' Press _1_ on your hotbar to:
		.' Scan a Blackheart Detonator |q Detonator Duplicates##6346/2 |goto Auroria -2061,-928,-904
	step
		.' Press _2_ on your hotbar to:
		.' Use the Blackheart Detonator at the Skeech huts |q Detonator Duplicates##6346/3 |goto Auroria -2069,-738,-930
	step
		.talk Engineer Titani##265474 |goto Auroria -1960,-948,-894
		..turnin Detonator Duplicates##6346
	step
		.talk Lord Syrus##268188 |goto Auroria -1959,-944,-894
		..accept Close The Portals##6355
	step
		' Kill marked enemies in the area
		.' Kill Blackheart Summoners and Summoned Horrors |q Close The Portals##6355/1 |goto Auroria -1892,-713,-945
		.' Kill Blackheart Skeech |q Blackheart Slayer##6403/1 |goto Auroria -1908,-695,-946
	step
		'Press _C_ to open your Communicator:
		..turnin Close The Portals##6355
		..turnin Blackheart Slayer##6403
		..accept Blackheart Prisoners##6388
	step
		'Find the Blackheart Hollow entrance |q Blackheart Prisoners##6388/1 |goto Auroria -1884,-601,-953
	step
		.click Summoning Dust##696535 |goto Auroria -1845,-521,-953
		..accept Dust to Dust##6404
	step
		'As you run through the cave:
		.' Burn bags of Summoning Dust |q Dust to Dust##6404/1 |goto Auroria -1781,-394,-953
		.' Free Dominion Captives |q Blackheart Prisoners##6388/2 |goto Auroria -1781,-394,-953
	step
		'Press _C_ to open your Communicator:
		..turnin Blackheart Prisoners##6388
		..turnin Dust to Dust##6404
		..accept Ritual Intervention##6397
	step
		'Follow the cave around |goto Auroria -1686,-305,-963 < 15
		.' Kill Kaarg the Divine |q Ritual Intervention##6397/1 |goto Auroria -1791,-207,-970
	step
		.click Chua Drill##847463 |goto Auroria -1795,-210,-970 <3
		.' Take the drill back to town |goto Auroria -2006,-1034,-901 < 100 |c |noway |q 6397
	step
		.talk Lord Syrus##268188 |goto Auroria -1959,-943,-894
		..turnin Ritual Intervention##6397
		..accept Bought the Farm##6520
	step
		.talk Farmer Sanders##268206 |goto Auroria -1815,-985,-921
		..accept A Farmer's Secret...##6198
	step
		.talk Millennial Sidus##268205 |goto Auroria -1805,-1007,-922
		..turnin Bought the Farm##6520
		..accept Breaker of Bonds##6188
	step
		.kill 1 Miss Miggins##747379 |q Breaker of Bonds##6188/1 |goto Auroria -1679,-831,-919
	step
		.click Slave Den##264459
		.' Enter the Slave Den |goto Auroria -1683,-805,-921
		'Investigate the slave den |q Breaker of Bonds##6188/2 |goto Auroria -1683,-1050,-947
	step
		' Around the area:
		.' Free Enslaved Farmers |q Breaker of Bonds##6188/3
		.' Recover the Zesty Seasoning |q A Farmer's Secret...##6198/1 |goto Auroria -1728,-921,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Breaker of Bonds##6188
		..turnin A Farmer's Secret...##6198
		..accept Bingberry Bootlegging##6207
	step
		.talk Farmer Gummer |goto Auroria -1812,-1001,-921
		..accept Vital Harvest##6215
		..accept One Last Breath##6326
	step
		.talk Millennial Sidus##268205 |goto Auroria -1804,-1008,-922
		..accept Contraband Cleanup##6544
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 16 |goto Auroria -1703,-1020,-923
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 33 |goto Auroria -1724,-1043,-923
	step
		.click Fresh Bingberries##264252
		.' Collect Fresh Bingberries |q Vital Harvest##6215/1 |goto Auroria -1719,-1061,-924 < 3
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 50 |goto Auroria -1692,-1074,-924 |tip Also feed farmers on your way
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 66 |goto Auroria -1655,-1109,-924  |tip Also feed farmers on your way
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |count 83 |goto Auroria -1674,-1158,-924  |tip Also feed farmers on your way
	step
		.click Bingberry Still##264300
		.' Set explosive charges on the Bingberry Stills |q Bingberry Bootlegging##6207/1 |goto Auroria -1695,-1180,-923  |tip Also feed farmers on your way
	step
		.click Famished Farmer##751763 |tip They look like people sitting on the ground.
		.' Press _T_ to:
		.' Feed Famished Farmers |q Vital Harvest##6215/2 |goto Auroria -1696,-1138,-922
	step
		'Move away from the Bingberry Distillery |q Bingberry Bootlegging##6207/2 |goto Auroria -1723,-1185,-924 < 3
	step
		.' Press _T_ to:
		.' Detonate the explosive charges |q Bingberry Bootlegging##6207/3 |goto Auroria -1723,-1185,-924 < 3
	step
		'Press _C_ to open your Communicator:
		..turnin Bingberry Bootlegging##6207
		..turnin Vital Harvest##6215
		..accept Loading Zone: No Landing##6245
	step
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |count 33 |goto Auroria -1592,-1128,-924
		' Kill _Red Ember Runners_ and collect _Stolen Supplies_ on your way
	step
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |count 66 |goto Auroria -1517,-1070,-924
		' Kill _Red Ember Runners_ and collect _Stolen Supplies_ on your way
	step
		.click Navigation Control Panel##264113
		.' Disable Navigation Control Panels |q Loading Zone: No Landing##6245/1 |goto Auroria -1586,-1036,-924
		' Kill _Red Ember Runners_ and collect _Stolen Supplies_ on your way
	step
		' Around area:
		.' Recover Stolen Supplies |q Contraband Cleanup##6544/1
		.' Kill Red Ember Runners |q Contraband Cleanup##6544/2 |goto Auroria -1584,-1135,-924
	step
		'Press _C_ to open your Communicator:
		..turnin Loading Zone: No Landing##6245
		..turnin Contraband Cleanup##6544
		..accept Stomping Out the Embers##6265
	step
		.click Weapon Crate##264111
		.' Collect Red Ember Grenades from a Weapon Crate |q Stomping Out the Embers##6265/1 |goto Auroria -1569,-1050,-924
	step
		.click Lain the Oppressor##908403
		.' Press _T_ to use the Red Ember Grenade on Lain and his cronies. |tip He walks up and down this road.
		.' Kill Lain the Oppressor |q Stomping Out the Embers##6265/2 |goto Auroria -1513,-923,-922
	step
		'Press _C_ to open your Communicator:
		..turnin Stomping Out the Embers##6265
		..accept Fallow Fields##6295
	step
		.click Escaped Farmer##858499
		'Resuscitate Escaped Farmers |q One Last Breath##6326/1 |goto Auroria -1530,-844,-920
		.kill Red Ember Repulser##863169
		.' Kill Red Ember Repulsers |q One Last Breath##6326/2 |goto Auroria -1530,-844,-920
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
		.' _Enter_ the house |goto Auroria -1596,-947,-907 < 5 |c |q 6315/1
	step
		.click Clugg's Panic Room##264150
		.' _Enter_ the panic room |goto Auroria -1580,-925,-907 < 2 |c |q 6315/1
	step
		.kill 1 Clugg the Crazed##806271 |q Put Him Down##6315/1 |goto Auroria -1592,-945,-957
	step
		.' _Recall-Transmat_ to Gildgrass Manor |goto Auroria -1986,-989,-891 < 5 |c |noway |q 6315
	step
		.talk Millennial Sidus##268205 |goto Auroria -1805,-1007,-922
		..turnin Put Him Down##6315
		..accept A Digging Interest##6521
	step
		.talk Researcher Naboom##263528  |goto Auroria -1752,-1197,-940
		..turnin A Digging Interest##6521
		..accept Medical Defense##6421
		..accept Imprint Identification##6425
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Collegium Basecamp_ as your Recall point |goto Auroria -1749,-1207,-939 <3
		|confirm |q 6425
	step
		.talk Researcher Hekkel##263519 |goto Auroria -1766,-1202,-940
		..accept More Scrap for the Pile##6442
	step
		.' Go to Dig Site One |q Medical Defense##6421/1 |goto Auroria -1768,-1279,-956
	step
		.talk Researcher Elizabeth##263830  |goto Auroria -1768,-1278,-956
		.' Check on Researcher Elizabeth |q Medical Defense##6421/2
		.' Defend Collegium Researchers |q Medical Defense##6421/3
	step
		.talk Researcher Omegus##263529 |goto Auroria -1762,-1276,-956
		..turnin Medical Defense##6421
		..accept Priceless Cargo##6427
		..accept Disrupting Power##6439
	step
		' Kill marked mobs and click _Sealed Eldan Artifacts_
		.' Find Power Node Alpha |q Disrupting Power##6439/1
		.' Deactivate Power Node Alpha |q Disrupting Power##6439/2 |goto Auroria -1719,-1375,-949
	step
		' Kill marked mobs and click _Sealed Eldan Artifacts_
		.' Find Power Node Beta |q Disrupting Power##6439/3
		.' Deactivate Power Node Beta |q Disrupting Power##6439/4 |goto Auroria -1848,-1420,-935
	step
		.' Use the _Eldan Glyph Fragment_ on your inventory
		..accept Strength of Azrion##7886 |goto Auroria -1835,-1243,-957
	step
		.' _Jump down_ here |goto Auroria -1806,-1414,-934 |c |q 7886/1
	step
		.' _Climb up_ ramp |goto Auroria -1813,-1389,-948 |c |q 7886/1
	step
		.' _Mount up_ and _Jump here_ | goto Auroria -1847,-1309,-935 |c |q 7886/1
	step
		.' Find and repair the Cracked Eldan Glyph Panel |q Strength of Azrion##7886/1 |goto Auroria -1901,-1279,-939
	step
		' Kill marked mobs and click _Sealed Eldan Artifacts_
		.' Find Power Node Gamma |q Disrupting Power##6439/5
		.' Deactivate Power Node Gamma |q Disrupting Power##6439/6 |goto Auroria -1878,-1205,-955
	step
		.' Teleport Sealed Eldan Artifacts in the Windfall Digsite to the orbiting cargo ship |q Priceless Cargo##6427/1
		.' Collect Augmented Blood Samples from XT-9 Servitors |q Imprint Identification##6425/1 |goto Auroria -1719,-1375,-949
	step
		'Press _C_ to open your Communicator:
		..turnin Imprint Identification##6425
		..turnin Priceless Cargo##6427
		..turnin Disrupting Power##6439
		..accept Administrative Error##6466
	step
		.talk Priestess Severina##263163 |goto Auroria -1770,-1199,-940
		..turnin Strength of Azrion##7886
		..accept Broken Virtues##7888
	step
		.' Go to Windfall Cave |q Administrative Error##6466/1 |goto Auroria -1890,-1147,-959
	step
		'Press _C_ to open your Communicator:
		..accept Abandoned Tech##6540 |goto Auroria -1886,-1161,-958
	step
		.click Abandoned Collegium Tech##263901
		.' Collect abandoned Collegium tech |q Abandoned Tech##6540/1 |goto Auroria -1893,-1150,-959
	step
		.click Decommissioned XT-9 Protector##666613
		.' Press _T_ to:
		.' Test abandoned Collegium tech |q Abandoned Tech##6540/2 |goto Auroria -1918,-1053,-958
	step
		'Press _C_ to open your Communicator:
		..turnin Abandoned Tech##6540
	step
		.kill 1 XT-9 Administrator Tyson##919814 |q Administrative Error##6466/2 |goto Auroria -1913,-1016,-958
	step
		.' _Continue_ into the cave |goto Auroria -1954,-1033,-957 < 10 |c |q 6466/3
	step
		.click Processing Core##263907
		.' Hack the Processing Core |q Administrative Error##6466/3 |goto Auroria -2005,-985,-957
	step
		.' _Leave_ the cave |goto Auroria -1889,-1149,-959 < 10 |c |q 6442/1
	step
		.kill 1 XT-9 Augmentor##895086+
		.kill 1 XT-9 Probe##895409+
		.kill 1 XT-9 Servitor##895618+
		.' Destroy Eldan Constructs |q More Scrap for the Pile##6442/1 |goto Auroria -1847,-1224,-957
	step
		'Press _C_ to open your Communicator:
		..turnin More Scrap for the Pile##6442
	step
		' Kill _XT-9 Augmentor_, _Probe_, _Protector_, or _Sentinel_ |goto Auroria -1782,-1361,-949
		.' Collect the Fragment of Courage from an Eldan Construct |q Broken Virtues##7888/1
		.' Collect the Fragment of Justice from an Eldan Construct |q Broken Virtues##7888/2
		.' Collect the Fragment of Knowledge from an Eldan Construct |q Broken Virtues##7888/3
		.' Collect the Fragment of Purity from an Eldan Construct |q Broken Virtues##7888/4
		.' Collect the Fragment of Devotion from an Eldan Construct |q Broken Virtues##7888/5
	step
		.talk Priestess Severina##263163 |goto Auroria -1769,-1199,-940
		..turnin Broken Virtues##7888
	step
		.talk Researcher Naboom##263528 |goto Auroria -1753,-1196,-940
		..turnin Administrative Error##6466
		..accept Clouds on the Horizon##6522
	step
		.talk Chemist Ingo##268184 |goto Auroria -1542,-1260,-925
		..turnin Clouds on the Horizon##6522
		..accept Crystalline Immunity##6327
	step
		.kill 1 Viridian Trundler##1014080
		.' Collect Viridian Crystal Samples from Viridian Boulderbacks |q Crystalline Immunity ##6327/1 |goto Auroria -1667,-1423,-925
	step
		.talk Chemist Ingo##268184 |goto Auroria -1543,-1260,-924
		..turnin Crystalline Immunity##6327
		..accept Terminite Termination##6329
		..accept We'll Need Something Sticky...##6330
	step
		.' _Termite Dews_ are on the floor, and _Relics_ around rocks  |tip Keep an eye on the Toxic meter |goto Auroria -1514,-1373,-929
		.' Collect Relic Fragments |q We'll Need Something Sticky...##6330/1
		.' Collect Terminite Dews |q We'll Need Something Sticky...##6330/2
	step
		.' Press _T_ to:
		.' Reassemble a Sticky Relics |q We'll Need Something Sticky...##6330/3
	step
		.kill 1 Sleepy Putrid Devourer##1046144+
		.kill 1 Putrid Devourer##931468+
		.' Kill Putrid Terminites |q Terminite Termination##6329/1 |goto Auroria -1519,-1368,-929
	step
		'Press _C_ to open your Communicator:
		..turnin Terminite Termination##6329
	step
		.click Viridian Altar##263471 |goto Auroria -1501,-1382,-927
		.' Place the Sticky Relic on the Viridian Altar |q We'll Need Something Sticky...##6330/4
	step
		'Press _C_ to open your Communicator:
		..turnin We'll Need Something Sticky...##6330
		..accept The Ground Beneath Your Feet##6331
	step
		.click Malignant Burrow##263470
		.' Find the source of the Putrid Devourers |q The Ground Beneath Your Feet##6331/1 |goto Auroria -1575,-1473,-927
	step
		' Click _Dead Slimy Gorger_.  This will start a holdout.  Fight 4 waves of eggs, then boss.
		.' Poke the Dead Slimy Gorger |q The Ground Beneath Your Feet##6331/2 |goto Auroria -1540,-1358,-1003
	step
		.' Click _Malignant Burrow_ to Exit the termite mound |goto Auroria -1575,-1473,-927 < 10 |c |q 6331
	step
		.talk Chemist Ingo##268184 |goto Auroria -1541,-1260,-925
		..turnin The Ground Beneath Your Feet##6331
		..accept On To Glory!##6614
	step
		.' _Enter_ the city gates |goto Auroria -1303,-1253,-911 < 10 |c |q 6614
	step
		.talk Major Caros##291343 |goto Auroria -1254,-1176,-893
		..turnin On To Glory!##6614
		..accept Give me the SitRep##6716
	step
		.talk Nurse Sabinec##281156 |goto Auroria -1219,-1173,-893
		..accept Clean Dressings and Dirty Jokes##6725
	step
		.click Wounded Soldier##1085519
		.' Bandage Wounded Soldiers |q Clean Dressings and Dirty Jokes##6725/1 |goto Auroria -1175,-1154,-901
	step
		'Press _C_ to open your Communicator:
		..turnin Clean Dressings and Dirty Jokes##6725
	step
		.talk Captain Hortenus##281159 |goto Auroria -1298,-1091,-889
		.' Speak to Captain Hortenus |q Give me the SitRep##6716/1
		..accept Refit and Refuel##6718
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Fort Glory_ as your Recall point |goto Auroria -1291,-1071,-888 < 5
		|confirm |q 6716
	step
		.talk Captain Arkexa##291339 |goto Auroria -1293,-1018,-889
		.' Speak to Captain Arkexa |q Give me the SitRep##6716/3
		..accept Running Dry##6720
		..accept Reply In Kind##6730
	step
		.click GL-04 Ammo Case##1093092
		.' Pick up GL-04 Ammo Cases |q Running Dry##6720/1 |goto Auroria -1298,-1035,-889
	step
		.talk Lieutenant Vezka##291338 |goto Auroria -1274,-992,-884
		..accept Osun Hurdles##6726
	step
		.click Bot-In-A-Box##1039854 |goto Auroria -1171,-1126,-888
		.' Pick up a Bot-In-A-Box |q Refit and Refuel##6718/1
	step
		.click Control Panel##293250 |goto Auroria -1119,-1139,-889
		.' Use Passcode _6718_ to collect fuel at the Fuel Tank |q Refit and Refuel##6718/2
	step
		.talk Captain Pingo##281158 |goto Auroria -1026,-1149,-879
		.' Speak to Captain Pingo |q Give me the SitRep##6716/2
		..accept Alloy Allies##6719
	step
		'Press _T_ to:
		.' Deploy the Bot-In-A-Box to diagnose Warbreaker |q Refit and Refuel##6718/3 |goto Auroria -1241,-1106,-889
	step
		.talk Captain Hortenus##281159 |goto Auroria -1297,-1090,-889
		..turnin Refit and Refuel##6718
	step
		.click GL-04 Auto Turret##283327
		.' Reload, track, and calibrate GL-04 Auto Turrets |q Running Dry##6720/2 |goto Auroria -1170,-994,-890
		.click Field Barricade##283234
		.' Attach Draken Spears to the Field Barricades |q Osun Hurdles##6726/1 |goto Auroria -1150,-978,-889
	step
		'Press _C_ to open your Communicator:
		..turnin Osun Hurdles##6726
	step
		.click Inoperable GL-03 Titan##293241 |goto Auroria -1092,-1008,-879 < 3
		.' Collect a Titan Power Cell from an Inoperable GL-03 Titan |q Alloy Allies##6719/1
	step
		.' Transmit the location of a Voreth Wall Breaker |q Reply In Kind##6730/2 |goto Auroria -1081,-871,-866
		' Kill _Voreth Sapper_, _Raider_ and _Soul Frayer_'
		.' Kill Voreth Osun |q Reply In Kind##6730/1 |goto Auroria -1111,-952,-884
	step
		'Press _C_ to open your Communicator:
		..turnin Reply In Kind##6730
	step
		.' Walk back to _Fort Glory_ |goto Auroria -1211,-1046,-889 < 20 |c |q 6719
	step
		.click Titan Control Panel##283158 |goto Auroria -1015,-1125,-879
		.' Insert the Titan Power Cell into a Titan Control Panel |q Alloy Allies##6719/2
		.kill 1 GL-03 Titan##1121129
	step
		.talk Captain Pingo##281158 |goto Auroria -1028,-1149,-879
		..turnin Alloy Allies##6719
	step
		.' _Recall-Transmat_ to Fort Glory |goto Auroria -1291,-1071,-888 < 20
	step
		.talk Captain Arkexa##291339 |goto Auroria -1291,-1018,-889
		..turnin Running Dry##6720
	step
		.talk Colonel Trillos##281160 |goto Auroria -1243,-1025,-889
		..turnin Give me the SitRep##6716
		..accept Severing the Rotten##6723
	step
		'Press _C_ to open your Communicator:
		..accept Find Your Quarry##6721 |goto Auroria -1028,-1149,-879
	step
		.' Head out of _Fort Glory_ |goto Auroria -1211,-1046,-889 < 20 |c |q 6721
	step
		.' And follow this road |goto Auroria -1170,-937,-896 < 20 |c |q 6721
	step
		.click Ore Sample##283188 |goto Auroria -1321,-786,-968
		..accept Exanite Examination##6733 |tip On your way free Prisoners and kill Slave Masters
	step
		.' Rescue Unafflicted Prisoners |q Severing the Rotten##6723/1 |goto Auroria -1354,-805,-972
		.' Collect Osun Ore Samples by destroying Osun Ore Deposits |q Exanite Examination##6733/1 |goto Auroria -1348,-822,-970
	step
		.kill 1 Voreth Slave Master##1162820 |q Find Your Quarry##6721/1 |goto Auroria -1274,-882,-925
		' Kill _Soulrotted Minion_, _Digger_, and _Dark Mender_'
		.' Kill Soulrotted slaves |q Find Your Quarry##6721/2 |goto Auroria -1274,-882,-925
	step
		'Press _C_ to open your Communicator:
		..turnin Find Your Quarry##6721
		..turnin Severing the Rotten##6723
		..turnin Exanite Examination##6733
		..accept Blind Hunt##6724
	step
		'_Enter_ the cave |goto Auroria -1147,-668,-944 < 10
		.' Kill Magoth the Unclean |q Blind Hunt##6724/1 |goto Auroria -1126,-603,-965
	step
		'Press _C_ to open your Communicator:
		..turnin Blind Hunt##6724
		..accept Into the Fires##6732
	step
		.' _Follow_ the ramp up |goto Auroria -1424,-751,-970 < 10 |c |q 6732
	step
		.' _Climb_ the stairs and continue straight |goto Auroria -1480,-667,-942 < 10 |c |q 6732
	step
		.talk Scout Tricus##291334 |goto Auroria -1470,-525,-928
		..turnin Into the Fires##6732
		..accept Into the Warhound's Maw##6703
	step
		.talk Scout Hazira##281152 |goto Auroria -1472,-522,-928
		..accept Fall of the Bladevault Keeper##6706
	step
		.click Bladevault Passage##283055 |goto Auroria -1440,-468,-927
		.' Enter the Bladevault |q Into the Warhound's Maw##6703/1
	step
		.' Follow the curvy path |goto Auroria -1900,-872,-1254 < 10 |c |q 6732
	step
		.click Voreth Weapon Rack##1228924 |goto Auroria -1811,-750,-1252 |tip There are other racks around
		..accept Bladebane##6707
	step
		' Click _Voreth War Drums_ to start a holdout.  Defeat 3 waves and boss.
		.' Challenge the Bladevault Keeper |q Fall of the Bladevault Keeper##6706/1 |goto Auroria -1819,-733,-1252
	step
		'Press _C_ to open your Communicator:
		..turnin Fall of the Bladevault Keeper##6706
	step
		.click Voreth Weapon Rack##1098518
		.' Destroy Voreth Weapon Racks |q Bladebane##6707/1 |goto Auroria -1891,-645,-1270
	step
		'Press _C_ to open your Communicator:
		..turnin Bladebane##6707
	step
		.' Continue the path down |goto Auroria -1837,-631,-1270 < 14 |c |q 6703
	step
		' _Skip_ the _Warhammer_ with a quest symbol to your left
		.click Fires of Kel Voreth Gateway##283051
		.' Enter the Fires of Kel Voreth |q Into the Warhound's Maw##6703/2 |goto Auroria -1859,-591,-1252
	step
		'Press _C_ to open your Communicator:
		..turnin Into the Warhound's Maw##6703
		..accept The Hammer of Sundering##6708
		..accept Smite the Smiths##6711
	step
		.click Pile of Ashes##282995 |goto Auroria -1488,-349,-921
		..accept Extinguishing the Embers##6710
	step
		.' Click _Voreth Ember_, then press _T_ to:
		.' Collect Voreth Ember Cores |q Extinguishing the Embers##6710/1 |goto Auroria -1472,-289,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Extinguishing the Embers##6710
	step
		' Around this area:
		.' Collect Steel Scrap from Metal Scrap Piles |q The Hammer of Sundering##6708/2 |goto Auroria -1356,-250,-917
		.' Collect Voreth Wood from Voreth Crates |q The Hammer of Sundering##6708/1 |goto Auroria -1356,-250,-917
	step
		'Press _C_ to open your Communicator:
		..turnin The Hammer of Sundering##6708
		..accept Like the Voreth##6727
	step
		.click Voreth Furnace##292920
		.' Use the Voreth Furnace to melt steel |q Like the Voreth##6727/1 |goto Auroria -1384,-241,-921
		.click Voreth Anvil##282980
		.' Use the Voreth Anvil to mold steel |q Like the Voreth##6727/2 |goto Auroria -1434,-257,-921
	step
		.click Water Bucket##292934
		.' Use the Water Bucket to cool the steel |q Like the Voreth##6727/3 |goto Auroria -1439,-254,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Like the Voreth##6727
		..accept Chain Sunderer##6822
		..accept The Chainforgers##6713
	step
		.kill 1 Forge Laborer##1259226+
		.kill 1 Forge Thrall##1254984+
		.' Kill Forge Thralls, Forgers, and Laborers |q Smite the Smiths##6711/1 |goto Auroria -1414,-301,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Smite the Smiths##6711
	step
		.' Head _up the ramp_ to the top level |goto Auroria -1420,-143,-921 < 10 |c |q 6822
	step
		.' Continue your _way up_ |goto Auroria -1467,-82,-867 < 10 |c |q 6822
	step
		.' You're _nearly there_! |goto Auroria -1492,-43,-846 < 10 |c |q 6822
	step
		.click Voreth Chains##292890
		.' Destroy the fourth Voreth Chain |q Chain Sunderer##6822/5 |goto Auroria -1597,-82,-801
	step
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##282928
		.' Destroy the third Voreth Chain |q Chain Sunderer##6822/4 |goto Auroria -1603,-338,-801
	step
		.kill Voreth Chainforger##1245410+
		.' Click _To the East Tower_  |goto Auroria -1538,-389,-801 < 5
		.' Take the Pipe to Eastern Tower |goto Auroria -1411,-395,-801 < 5 |c |q 6822
	step
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##292892
		.' Destroy the first Voreth Chain |q Chain Sunderer##6822/2 |goto Auroria -1348,-339,-801
	step
		'As you travel along the top:
		.kill Voreth Chainforger##1245410+
		.click Voreth Chains##282930
		.' Destroy the second Voreth Chain |q Chain Sunderer##6822/3 |goto Auroria -1349,-83,-801
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
		.' _Walk back_ to this pathway |goto Auroria -1289,-210,-809 < 10 |c |q 6714
	step
		.kill 1 Voreth Flame##1975540
		.' Destroy the Voreth Flame |q Fire in the Sky##6714/1 |goto Auroria -1474,-205,-798
	step
		.' Click _Mass Inversion Unit_  |tip This grants a fall buff |goto Auroria -1474,-229,-796 < 5
		.' Jump from here _without mount_ |goto Auroria -1473,-233,-796 < 3 |c |q 6714
	step
		.talk Scout Tricus##291334 |goto Auroria -1470,-524,-928
		..turnin Fire in the Sky##6714
	step
		'Press _C_ to open your Communicator:
		..accept Break of Dawn##6736
	step
		.talk Captain Acrie##281150 |goto Auroria -1725,-555,-922
		..turnin Break of Dawn##6736
		..accept Osun Oversight##6738
	step
		.' Search for soldiers in the house |q Osun Oversight##6738/1 |goto Auroria -1745,-585,-924
		.' Examine the outpost's artillery |q Osun Oversight##6738/2 |goto Auroria -1925,-474,-917
	step
		.' Search the supply tent for Provisions |q Osun Oversight##6738/3 |goto Auroria -1974,-489,-921
		.' Examine the Command Tent |q Osun Oversight##6738/4 |goto Auroria -1992,-423,-921
	step
		'Press _C_ to open your Communicator:
		..turnin Osun Oversight##6738
		..accept Overrun and Overgrown##6749
	step
		.click Transmat Terminal
		.' Click _Yes_ to set _Outpost Dawn_ as your Recall point |goto Auroria -1914,-356,-918
		|confirm
	step
		.click Fallen Voreth Raider##282350 |goto Auroria -1977,-450,-921
		..accept Smoke Signals##6752
	step
		.click Destroyed Supply Crate##292340 |goto Auroria -1970,-482,-921
		..accept Long Shelf Life##6751
	step
		.' Pull the Overgrown Weeds |q Overrun and Overgrown##6749/2 |goto Auroria -1975,-388,-922
		.' Cut down Overgrown Grass |q Overrun and Overgrown##6749/1 |goto Auroria -1984,-466,-919
		' Also kill Fringe mobs around
	step
		.' Collect the scattered Outpost Supplies |q Long Shelf Life##6751/1 |goto Auroria -1999,-497,-920
		.' Collect Osun Weapons |q Smoke Signals##6752/1 |goto Auroria -1988,-522,-919
		' Also kill Fringe mobs around
	step
		.click Fire Pit##292367
		.' Set fire to the Osun Weapons |q Smoke Signals##6752/2 |goto Auroria -1970,-433,-920
	step
		'Press _C_ to open your Communicator:
		..turnin Smoke Signals##6752
	step
		.click Destroyed Supply Crate##292340 |goto Auroria -1970,-481,-921
		..turnin Long Shelf Life##6751
	step
		.kill 1 Fringe Scavenger##2067905+
		.kill 1 Fringe Pack Rover##1918355+
		.' Kill Fringe dagun |q Overrun and Overgrown##6749/3 |goto Auroria -1945,-441,-918
	step
		'Press _C_ to open your Communicator:
		..turnin Overrun and Overgrown##6749
		..accept Flip the Switch##6750
	step
		.' Kill Skrappy |q Flip the Switch##6750/2 |goto Auroria -1970,-564,-918
		.' Restore power by accessing the Generator Access Panel |q Flip the Switch##6750/3 |goto Auroria -1970,-564,-918
	step
		'Press _C_ to open your Communicator:
		..turnin Flip the Switch##6750
		..accept While You're Here...##6753
	step
		.talk Axis Dignitas##281151 |goto Auroria -2117,-473,-918
		..turnin While You're Here...##6753
		..accept Can You Keep a Secret?##6754
	step
		'Press _C_ to open your Communicator:
		..accept XAS Should Be KOS##6755 |goto Auroria -2089,-515,-920
	step
		.click Dead Experimental Beast##282020 |goto Auroria -2080,-591,-918
		..accept Mistakes Do Happen##6783
	step
		.click Laboratory Access Panel##292045
		.' Access the Laboratory Access Panel |q Can You Keep a Secret?##6754/1 |goto Auroria -2149,-626,-918
	step
		.click Stealth Experiment##292040
		.' Collect a sample from a Stealth Experiment |q Mistakes Do Happen##6783/1 |goto Auroria -2102,-567,-918
	step
		.click Web Experiment##282028
		.' Collect a sample from a Web Experiment |q Mistakes Do Happen##6783/2 |goto Auroria -2051,-551,-918
	step
		.click Production Access Panel##282040
		.' Access the Production Access Panel |q Can You Keep a Secret?##6754/2 |goto Auroria -2060,-606,-913
	step
		.click Venom Experiment##292030
		.' Collect a sample from a Venom Experiment |q Mistakes Do Happen##6783/3 |goto Auroria -2017,-631,-913
	step
		.click Repository Access Panel##292044
		.' Access the Repository Access Panel |q Can You Keep a Secret?##6754/3 |goto Auroria -2140,-650,-910
	step
		'Press _C_ to open your Communicator:
		..turnin Can You Keep a Secret?##6754
	step
		.kill Tech Seeker Logistician##1456081+
		.kill Tech Seeker Dataminer##1450400+
		.' Kill Exile Tech Seekers |q XAS Should Be KOS##6755/1 |goto Auroria -2060,-606,-913
	step
		'Press _C_ to open your Communicator:
		..turnin XAS Should Be KOS##6755
	step
		'Press _C_ to open your Communicator:
		..accept No Granok Unturned##6788 |goto Auroria -2155,-674,-910 < 5
	step
		.' Locate fallen lancer |q No Granok Unturned##6788/1 |goto Auroria -2143,-657,-910
	step
		'Press _C_ to open your Communicator:
		..turnin No Granok Unturned##6788
	step
		.click Fallen Lancer##282038 |goto Auroria -2143,-655,-910
		..accept Within a Stone's Throw##6771
	step
		.talk DRED Sentry##291949 |goto Auroria -2190,-653,-909
		..accept Leave No Trace##6820
	step
		.' Search for clues |q Within a Stone's Throw##6771/1 |goto Auroria -2324,-752,-916
		.' Kill the Giantcrushers |q Mistakes Do Happen##6783/4
	step
		'Press _C_ to open your Communicator:
		..turnin Mistakes Do Happen##6783
	step
		.' Investigate Meadow Point |q Within a Stone's Throw##6771/2 |goto Auroria -2419,-657,-931 < 3
	step
		'Press _C_ to open your Communicator:
		..turnin Within a Stone's Throw##6771
		..accept Rock Crusher##6772
	step
		' Around this area:
		.' Kill Exile Lancers |q Rock Crusher##6772/1 |goto Auroria -2378,-575,-945
		.' Search for DRED Agents |q Leave No Trace##6820/1
	step
		'Press _C_ to open your Communicator:
		..turnin Rock Crusher##6772
		..turnin Leave No Trace##6820
		..accept Dropped and Gone##6776
	step
		.' Locate the XAS Leader |q Dropped and Gone##6776/1 |goto Auroria -2510,-528,-939
	step
		' Click _Stolen Data?_.  |tip This will start a holdout  |goto Auroria -2512,-528,-939 < 2
		.' Recover the Stolen Data |q Dropped and Gone##6776/2
	step
		'Press _C_ to open your Communicator:
		..turnin Dropped and Gone##6776
		..accept Data Loss##6810
	step
		.click Stolen Data##281977 |goto Auroria -2305,-405,-925
		.' Recover the Stolen Data |q Data Loss##6810/1
		.' Kill Brinlanya Moonstone |q Data Loss##6810/2
	step
		'Press _C_ to open your Communicator:
		..turnin Data Loss##6810
		..accept Report to Palerock Post##8126
	step
		' From the _Recall_ menu, select:
		.' Transmat to Illium |goto Illium -3409,-747,-889 < 20 |c |noway |q 8126
	]]
)