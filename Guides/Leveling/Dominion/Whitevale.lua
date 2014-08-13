ZGV:RegisterGuide("Dominion\\Whitevale (23-29)",
	{
	faction="Dominion",
	startlevel=23,
	endlevel=29,
	nextguide="Dominion\\Farside (29-35)",
	image="ZygorUIGuides:Whitevale", 
	description="Whitevale is a zone in central Alizar in WildStar. It is a a frozen wasteland that is under the influence of strange weather-altering technology. Whitevale is also a region suited for levels 23-29."
	},
	[[
	step
		.talk Captain Visia##265429
		.' Click _Yes_ to travel to Whitevale
		.' Arrive at Palerock Post |q Report to Palerock Post##8126/2 |goto Whitevale -3466,-524,-870
	step
		'Press _C_ to open your Communicator:
		..accept Strong Defenses##5355 |goto Whitevale 1762,-734,-993
	step
		.talk Acolyte Maros##297304
		..accept Wolves Among the Flock##5452 |goto 1789,-736,-998
	step
		.click Palerock Post Taxi Kiosk##270859
		.' Get the _Palerock Post_ taxi point |goto 1775,-625,-994
		|confirm
	step
		'Around this area:
		.talk Truthbound Preacher##297315+
		.' Speak to Truthbound Preachers |q Wolves Among the Flock##5452/1 |goto 1862,-716,-999
		.click Dominion Defense Generator##266160+
		.' Activate Dominion Defense Generators |q Strong Defenses##5355/1 |count 1 |goto 1820,-773,-999
	step
		.talk Major Glacian Aurelius##265005
		..turnin Report to Palerock Post##8126 |goto 2125,-744,-961
		..turnin Strong Defenses##5355 |goto 2125,-744,-961
		..accept Miner Cutoff##5357 |goto 2125,-744,-961
	step
		.talk Captain Phillip Aurelius##265772
		..accept Drill, Interrupted##5356 |goto 2127,-741,-961
	step
		.click Transmat Terminal##293884
		.' Click _Yes_ to set _Palerock Post_ as your Recall point |goto Whitevale 2133,-673,-959
		|confirm
	step
		.' Rendezvous with Acolyte Maros |q Wolves Among the Flock##5452/2 |goto 2029,-761,-961
	step
		.click Acolyte Maros##297305
		.' Examine Acolyte Maros' body |q Wolves Among the Flock##5452/3 |goto 2029,-761,-961
	step
		'Press _C_ to open your Communicator:
		..turnin Wolves Among the Flock##5452
	step
		'Press _C_ to open your Communicator:
		..accept Digging for Clues##5369 |goto Whitevale 2288,-662,-977
	step
		.' Kill Drill Operator Gridz |q Drill, Interrupted##5356/1 |goto 2301,-631,-980
		--  Drill Operator Gridz##928896
	step
		.click Ore Sample##951846 |tip Collect these as you go.
		.click Bomb Plant Loc Alice##265508
		.' Destroy the Exile Drill Equipment at Drill Site "Alice" |q Miner Cutoff##5357/1 |count 25 |goto Whitevale 2323,-645,-983
		.' Destroy the Exile Drill Equipment at Drill Site "Alice" |q Miner Cutoff##5357/1 |count 50 |goto 2315,-655,-982
		.' Destroy the Exile Drill Equipment at Drill Site "Alice" |q Miner Cutoff##5357/1 |count 75 |goto 2295,-639,-980
		.' Destroy the Exile Drill Equipment at Drill Site "Alice" |q Miner Cutoff##5357/1 |goto 2311,-622,-983
	step
		.' Kill Drill Operator Mark |q Drill, Interrupted##5356/2 |goto Whitevale 2459,-495,-1006
		-- Drill Operator Mark##1211863
	step
		.click Bomb Plant Loc Bertha##265593
		.' Destroy the Exile Drill Equipment at Drill Site "Bertha" |q Miner Cutoff##5357/2 |count 25 |goto Whitevale 2466,-496,-1005
		.' Destroy the Exile Drill Equipment at Drill Site "Bertha" |q Miner Cutoff##5357/2 |count 50 |goto 2478,-496,-1005
		.' Destroy the Exile Drill Equipment at Drill Site "Bertha" |q Miner Cutoff##5357/2 |count 75 |goto 2494,-480,-1006
		.' Destroy the Exile Drill Equipment at Drill Site "Bertha" |q Miner Cutoff##5357/2 |goto 2477,-515,-1003
	step
		.' Kill Drill Operator Devan |q Drill, Interrupted##5356/3 |goto 2536,-358,-993
		--  Drill Operator Devan##1219455
	step
		.click Bomb Plant Loc Chuck##265585
		.' Destroy the Exile Drill Equipment at Drill Site "Chuck" |q Miner Cutoff##5357/3 |count 25 |goto 2531,-369,-995
		.' Destroy the Exile Drill Equipment at Drill Site "Chuck" |q Miner Cutoff##5357/3 |count 50 |goto 2519,-363,-995
		.' Destroy the Exile Drill Equipment at Drill Site "Chuck" |q Miner Cutoff##5357/3 |count 75 |goto 2532,-360,-994
		.' Destroy the Exile Drill Equipment at Drill Site "Chuck" |q Miner Cutoff##5357/3 |goto 2546,-362,-993
	step
		.click Ore Sample##951846
		.' Collect Ore Samples |q Digging for Clues##5369/1 |goto 2511,-356,-995
	step
		'Press _C_ to open your Communicator:
		..turnin Miner Cutoff##5357
		..turnin Drill, Interrupted##5356
		..accept Missing in Action##5362
	step
		.' Find Captain Phillip Aurelius |q Missing in Action##5362/1 |goto 2440,-283,-991
		.click Captain Phillip Aurelius##1239345
		.' Check Captain Phillip Aurelius for signs of life |q Missing in Action##5362/2 |goto 2440,-283,-991
	step
		.talk Major Glacian Aurelius##265000
		..turnin Missing in Action##5362 |goto Whitevale 2413,-170,-982
		..accept In Every Corner##5359 |goto 2413,-170,-982
		..accept Burn the Vermin Out##5360 |goto 2413,-170,-982
	step
		.talk Technician Verton##268530
		..accept Scrapping the Scramblers##5370 |goto 2420,-171,-983
	step
		.talk Mineralogist Teraquartz##268538
		..turnin Digging for Clues##5369 |goto 2421,-168,-983
	step
		.talk Scientist Pomi Vrizz##268563
		..accept Finding Frozen Fuzzies##5367 |goto 2399,-161,-982
	step
		.talk Bhaskar##268507
		..accept Power of a Frozen Heart##5358 |goto 2445,-118,-980
	step
		.talk Corporal Vexus##267779
		..accept Demolitions Disposal##5450 |goto 2364,-201,-994
	step
		.click Sunderstone Proximity Mine##540648
		.' Disarm Sunderstone Proximity Mines |q Demolitions Disposal##5450/1 |goto 2356,-200,-995
	step
		'Press _C_ to open your Communicator:
		..turnin Demolitions Disposal##5450 |goto 2365,-210,-992
	step
		'All around this area
		.click Sunderstone Barrel##1028503+
		.click Sunderstone Junk Pile##1036029+
		.click Sunderstone Barrel##966542+
		.' Destroy Barrels, Crates, and Junk Piles |q In Every Corner##5359/1 |goto 2219,-342,-994
		.' Kill Sunderstone Cowards |q In Every Corner##5359/2 |goto 2219,-342,-994
	step
		'Press _C_ to open your Communicator:
		..turnin In Every Corner##5359
	step
		.click Exile Comm Scrambler##267890 |tip These are found in houses around this area.
		.' Destroy the Exile Comm Scrambler |q Scrapping the Scramblers##5370/1 |goto Whitevale 2259,-307,-995
	step
		'Press _C_ to open your Communicator:
		..turnin Scrapping the Scramblers##5370
	step
		.kill Sunderstone Smasher##1256827+
		.get 1 Sunderstone Prisoner Key##13393
		.' Use the Sunderstone Prisoner Key in your Inventory |use Sunderstone Prisoner Key##13393
		..accept Too Important to Die##5361 |goto 2260,-225,-1001
	step
		.click Master Scribe Ernust##1222655 |tip He's inside this house.
		.' Rescue Master Scribe Ernust |q Too Important to Die##5361/2 |goto 2145,-270,-981
	step
		.click Turret Location Bravo##265206
		.' Activate Incendiary Turrets |q Burn the Vermin Out##5360/1 |count 25 |goto Whitevale 2201,-266,-986
		.click Turret Location Bravo##265206
		.' Activate Incendiary Turrets |q Burn the Vermin Out##5360/1 |count 50 |goto 2242,-362,-998
		.click Turret Location Bravo##265206
		.' Activate Incendiary Turrets |q Burn the Vermin Out##5360/1 |count 75 |goto 2329,-299,-1002
		.click Turret Location Bravo##265206
		.' Activate Incendiary Turrets |q Burn the Vermin Out##5360/1 |goto 2330,-297,-1002
	step
		'Press _C_ to open your Communicator:
		..turnin Burn the Vermin Out##5360
		..accept The Rebels' Secret Weapon##5363
	step
		.kill P-H2O Warbot##1406391 |tip You may need help from another person although it is possible to solo him.
		.' Destroy the P-H2O Warbot |q The Rebels' Secret Weapon##5363/1 |goto 2298,-216,-1002
	step
		'Press _C_ to open your Communicator:
		..turnin The Rebels' Secret Weapon##5363
		..accept No Granok is That Precise##5371
	step
		.kill Rime-Scaled Boulderback##1191156+
		.' Collect Ice-Crusted Boulderback Hearts from Ice-Crusted Boulderbacks |q Power of a Frozen Heart##5358/1 |goto 2019,-464,-992
	step
		.kill 1 Sunderstone Medic##4034484+
		.kill 1 Sunderstone Defender##4098561+
		.kill 1 Sunderstone Rebel##4044723+
		.kill 1 Sunderstone Scrapper##4056356+
		.kill 1 Sunderstone Smasher##4102202+
		.' Kill Sunderstone Exiles |q Too Important to Die##5361/1 |goto Whitevale 2342,-308,-1002
	step
		.click Unacclimated Razortail##1287647
		.' Press _T_ to:
		.' Thaw Frozen Animals |q Finding Frozen Fuzzies##5367/1 |goto 2614,-299,-975
	step
		.talk Bhaskar##1605689
		..turnin Power of a Frozen Heart##5358 |goto 2444,-112,-978
	step
		.talk Mineralogist Teraquartz##268538
		..turnin Too Important to Die##5361 |goto 2421,-167,-983
	step
		.talk Scientist Pomi Vrizz##268563
		..turnin Finding Frozen Fuzzies##5367 |goto 2401,-162,-982
	step
		.talk Researcher Finazi Vrizz##268541
		..accept Evolving Eldan Tech##5368 |goto Whitevale 2398,-164,-982
	step
		.click Eldan Evolver##1740289
		.' Press _T_ to:
		.' Disable or destroy Eldan Evolver |q Evolving Eldan Tech##5368/1 |goto 2562,-179,-953
	step
		'Press _C_ to open your Communicator:
		..turnin Evolving Eldan Tech##5368
	step
		.talk Director Faustius##297329
		..accept Hazmat Training Course##5343 |goto Whitevale 2672,-228,-978
	step
		.click Dominion Hazmat Suit Stand##297456
		.' Put on a Hazmat Suit |q Hazmat Training Course##5343/1 |goto 2683,-229,-977
	step
		.click Hazmat Suit Recharging Station##297437 |goto 2698,-236,-976
		.' Recharge your Hazmat Suit |q Hazmat Training Course##5343/2 |goto 2742,-219,-976
	step
		'Press _C_ to open your Communicator:
		..turnin Hazmat Training Course##5343
		..accept Research Reclamation##5344
		..accept Toxin Feeders##5347
		..accept Neurotoxin Samples##5348
	step
		'Press _C_ to open your Communicator:
		..accept Data Recovery##5353 |goto 2847,-186,-1013
	step
		.click XAS Research-Network Console##297522
		.' Activate XAS Research-Network Consoles |q Data Recovery##5353/1 |count 33 |goto 2858,-209,-1013
	step
		.click XAS Storage Crate##1703144
		.' Collect XAS Storage Crates |q Research Reclamation##5344/1 |goto 2872,-218,-1018
	step
		.click Cargo Pallet##1697024
		.' Deposit XAS Storage Crates on a Cargo Pallet |q Research Reclamation##5344/2 |goto 2899,-236,-1022
	step
		'Press _C_ to open your Communicator:
		..turnin Research Reclamation##5344
	step
		.kill 1 Toxic Frizlet##1755213+
		.kill 1 Toxic Fraz##1799522+
		.' Kill Toxic Fraz and Toxic Frizlets |q Toxin Feeders##5347/1 |goto 2871,-268,-1018
		.' Collect Toxin Samples from toxic creatures |q Neurotoxin Samples##5348/1 |goto 2871,-268,-1018
	step
		'Press _C_ to open your Communicator:
		..turnin Neurotoxin Samples##5348
		..turnin Toxin Feeders##5347
	step
		.click XAS Research-Network Console##297523
		.' Activate XAS Research-Network Consoles |q Data Recovery##5353/1 |count 66 |goto 2942,-280,-1018
	step
		.click XAS Research-Network Console##297526
		.' Activate XAS Research-Network Consoles |q Data Recovery##5353/1 |goto 3018,-332,-1014
	step
		'Press _C_ to open your Communicator:
		..accept Reclaiming the Lower Levels##5349
	step
		.click Explorer Pageo##297506
		..accept Proof of the Fallen##5411 |goto 3050,-324,-1015
	step
		.' Find Inventor Tazzo |q Reclaiming the Lower Levels##5349/1 |goto Whitevale 2848,-181,-1013
	step
		.click Teleport Pad##297390 |goto Whitevale 2851,-177,-1012 < 5
		.click Teleport Pad Power Controls##297384
		.' Repair the Localized Matter Transfer Pod |q Reclaiming the Lower Levels##5349/2 |goto Whitevale 2858,-160,-1012
	step
		.talk Inventor Tazzo##297324
		..turnin Reclaiming the Lower Levels##5349 |goto 2855,-159,-1013
		..accept Subterranean Grave##5350 |goto 2855,-159,-1013
	step
		.click XAS Research-Network Console##297509
		.' Continue activating XAS Research-Network Consoles |q Data Recovery##5353/2 |count 20 |goto Whitevale 2895,-126,-1017
		.click XAS Research-Network Console##297514
		.' Continue activating XAS Research-Network Consoles |q Data Recovery##5353/2 |count 40 |goto 2934,-118,-1015
		.click XAS Research-Network Console##297510
		.' Continue activating XAS Research-Network Consoles |q Data Recovery##5353/2 |count 60 |goto 3001,-91,-1011
	step
		.click XAS Research-Network Console##297513
		.' Continue activating XAS Research-Network Consoles |q Data Recovery##5353/2 |count 80 |goto 3042,-96,-1022
		.click XAS Research-Network Console##297517
		.'  Continue activating XAS Research-Network Consoles |q Data Recovery##5353/2 |goto 3008,-149,-1010
	step
		'Press _C_ to open your Communicator:
		..turnin Data Recovery##5353
	step
		.kill Pridianflow Cringer##1906219+
		.' Kill Pridianflow and Pridianheart elementals |q Subterranean Grave##5350/1 |goto 3058,-101,-1021
	step
		'Press _C_ to open your Communicator:
		..turnin Subterranean Grave##5350
		..accept Elemental Origins##5352
	step
		.click Noxinnate the Sludgerager##4302718
		.' Press _T_ to use your Localized Energy Slick Generator
		.' Kill Noxinnate the Sludgerager |q Elemental Origins##5352/1 |goto 3057,-106,-1021
		-- Noxinnate the Sludgerager##1911600
	step
		.click Eldan Elemental Forge Panel##297381
		.' Access the Eldan Elemental Forge Panel |q Elemental Origins##5352/2 |goto 3075,-52,-1015
	step
		.talk Inventor Tazzo##297323
		..turnin Elemental Origins##5352 |goto 2692,-241,-976
	step
		'Press _C_ to open your Communicator:
		..accept To Camp Virtue##5354 |goto 2692,-241,-976
	step
		.talk Director Faustius##297329
		..turnin Proof of the Fallen##5411 |goto 2673,-230,-977
	step
		.talk Agent Lex##264585
		..turnin No Granok is That Precise##5371 |goto 2499,-720,-976
		..accept Every Contingency##5372 |goto 2499,-720,-976
	step
		'Press _T_ to:
		.' Use the Sensor Array to locate Colonel Phelan |q Every Contingency##5372/1 |goto 2882,-757,-938
		.click Phelan's Tracking Device##1947055
		.' Investigate Phelan's Tracking Device |q Every Contingency##5372/2 |goto 2882,-757,-938
		.' Listen to the Recording |q Every Contingency##5372/3 |goto 2882,-757,-938
	step
		.talk Agent Lex##264580
		..turnin Every Contingency##5372 |goto Whitevale 3005,-789,-945
		..accept Painting a Picture##5373 |goto 3005,-789,-945
		..accept Painfully Predictable##5376 |goto 3005,-789,-945
	step
		.click Dusty Vending Machine##264371
		.' Enter the Black Hoods enclave |q Painting a Picture##5373/1 |goto 2703,-999,-951
	step
		'_Follow the path_ in the cave |goto 2575,-946,-1043 < 10
		.click Black Hoods Control Terminal##264704
		.' Use the Black Hoods Control Terminal |q Painting a Picture##5373/2 |goto 2509,-954,-1043
	step
		.kill 1 Blackfrost Agent##4310664+
		.kill 1 Blackfrost Analyst##2129594+
		.kill 1 Blackfrost Sentry##4335326+
		.' Kill Black Hoods operatives |q Painting a Picture##5373/4 |goto 2465,-980,-1044
	step
		'Press _C_ to open your Communicator:
		..turnin Painting a Picture##5373
		..accept A Demonstration of Will##5375
	step
		.click Shatterforce Data Cassette##264563
		..accept Intel Never Dies##5378 |goto Whitevale 2382,-957,-1054
	step
		.click Plant Explosive Charge##264663
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 12 |goto 2464,-988,-1043
		.click Plant Explosive Charge##264657
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 25 |goto 2403,-979,-1040
		.click Plant Explosive Charge##264675
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 37 |goto 2404,-926,-1038
		.click Plant Explosive Charge##264686
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 50 |goto 2377,-970,-1053
	step
		.click Plant Explosive Charge##264691
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 62 |goto 2333,-956,-1049
		.click Plant Explosive Charge##264680
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 75 |goto 2307,-966,-1046
		.click Plant Explosive Charge##264680
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |count 87 |goto 2307,-966,-1046
		.click Plant Explosive Charge##264652
		.' Activate Plant Explosive Charges |q A Demonstration of Will##5375/1 |goto 2329,-1024,-1047
	step
		'Press _C_ to open your Communicator:
		..turnin A Demonstration of Will##5375
		..accept Finish at the Top##5374
	step
		.kill 1 Blackfrost Agent##4310664+
		.kill 1 Blackfrost Analyst##2129594+
		.kill 1 Blackfrost Sentry##4335326+
		.' Collect Shatterforce Data Cassettes |q Intel Never Dies##5378/1 |goto 2322,-959,-1048
	step
		.' Kll Agent Tibor |q Finish at the Top##5374/1 |goto 2310,-924,-1046
		-- Agent Tibor##2036076
		.click Prison Cage Controls##264739
		.' Free Colonel Phelan |q Finish at the Top##5374/2 |goto 2326,-901,-1041
	step
		'Start heading toward the _cave exit_ |goto 2509,-979,-1047 < 10
		.' _Follow_ the path up and around |goto 2594,-945,-1042 < 10
		.click Enclave Exit##264366
		.' _Exit_ the Enclave |goto 2682,-943,-1006 < 5
		.talk Agent Lex##264580
		..turnin Finish at the Top##5374 |goto 3005,-788,-945
	step
		.talk Captain Daresh##264568
		..turnin Intel Never Dies##5378 |goto Whitevale 3010,-790,-945
	step
		.click Resistance Tent##264501
		.' Burn Resistance Tents |q Painfully Predictable##5376/1 |goto Whitevale 2833,-541,-957
	step
		.kill 1 Sunderstone Defender##2071493+
		.kill 1 Sunderstone Medic##2153079+
		.kill 1 Sunderstone Scrapper##2005690+
		.' Kill Sunderstone Exiles |q Painfully Predictable##5376/2 |goto 2833,-541,-957
	step
		'Press _C_ to open your Communicator:
		..turnin Painfully Predictable##5376
	step
		.talk Captain Sevina##297216
		..turnin To Camp Virtue##5354 |goto Whitevale 2174,118,-983
		..accept Escaped##5479 |goto 2174,118,-983
	step
		.talk Scientist Rezzo##297200
		..turnin Escaped##5479 |goto 2215,150,-980
		..accept A Slight Discomfort##5478 |goto 2215,150,-980
	step
		.click Radiant Medical Station##297008
		.' Use the Radiant Medical Station |q A Slight Discomfort##5478/1 |goto 2215,150,-980
	step
		.talk Scientist Rezzo##297200
		..turnin A Slight Discomfort##5478 |goto 2215,150,-980
		..accept Bot's Eye View##5393 |goto 2215,150,-980
	step
		.click Stealthbot Controller##297090
		.' Use the Stealthbot Controller to scout the Truthbound Encampment |q Bot's Eye View##5393/1 |goto 2187,139,-983
	step
		.click Truthbound Vindicator##1691754
		.' Press _1_ on your hotbar to: |tip You can press 2 to stun the sentinals.
		.' Use the Stealthbot to bio-scan Truthbound Converts |q Bot's Eye View##5393/2 |goto 2397,101,-1027
	step
		'Go to this spot:
		.' _Avoid Truthbound Sentinels_
		.' Learn where the Ascendancy's Initiates are taken |q Bot's Eye View##5393/3 |goto 2528,136,-1000
	step
		.talk Scientist Rezzo##297200
		..turnin Bot's Eye View##5393 |goto Whitevale 2216,151,-980
		..accept The Source of Their Power##5396 |goto 2216,151,-980
	step
		'Press _C_ to open your Communicator:
		..accept Purging the Truth(bound)##5397 |goto Whitevale 2356,146,-995
	step
		.click Omni-Plasm Reservoir##1655896
		.' Collect Omni-Plasm Samples from Omni-Plasm Reservoirs |q The Source of Their Power##5396/1 |goto 2516,196,-1031
	step
		'Press _C_ to open your Communicator:
		..turnin The Source of Their Power##5396
		..accept Nanite Negation##5395
	step
		.click Truthbound Convert##874233
		.' Press _T_ to use Reprogrammed Nanites on Truthbound Converts |q Nanite Negation##5395/1 |goto 2525,225,-1031
		.kill Truthbound Vindicator##1817858+
		.kill Truthbound Evocator##1796817+
		.' Kill Truthbound cultists |q Purging the Truth(bound)##5397/1 |goto 2533,214,-1031
	step
		'Press _C_ to open your Communicator:
		..turnin Purging the Truth(bound)##5397
	step
		.talk Scientist Rezzo##297204
		..turnin Nanite Negation##5395 |goto 2195,115,-983
	step
		.talk Toric Antevian##297203
		..accept The Ascendant Champion##5398 |goto 2200,116,-983
	step
		.' Use the Eldan Teleporter |q The Ascendant Champion##5398/1 |goto 2437,191,-1000
	step
		'Kill all the mobs that attack, then:
		.kill Vindicator Cyros##262150
		.kill Truthbound Harbinger##262198
		.' Confront Vindicator Cyros and the Truthbound Harbinger |q The Ascendant Champion##5398/2 |goto 3,51,-227
	step
		'Use the Eldan Teleporter |goto 3,9,-227 < 5
		.talk Toric Antevian##2105832
		..turnin The Ascendant Champion##5398 |goto 2521,141,-1000
	step
		'Press _C_ to open your Communicator:
		..accept Convoy to Wigwalli##5669 |goto 2521,141,-1000
	step
		.click Eldan Terminal##297195
		..accept Uncovering the Truth##5394 |goto 2452,19,-1027
	step
		.click Eldan Terminal##297179
		.' Use the Eldan Terminals |q Uncovering the Truth##5394/1 |count 20 |goto Whitevale 2511,45,-1027
		.click Eldan Terminal##297185
		.' Use the Eldan Terminals |q Uncovering the Truth##5394/1 |count 40 |goto 2506,91,-1027
		.click Eldan Terminal##297176
		.' Use the Eldan Terminals |q Uncovering the Truth##5394/1 |count 60 |goto 2474,147,-1027
		.click Eldan Terminal##297198
		.' Use the Eldan Terminals |q Uncovering the Truth##5394/1 |count 80 |goto 2451,160,-1027
		.click Eldan Terminal##297180
		.' Use the Eldan Terminals |q Uncovering the Truth##5394/1 |goto 2429,106,-1027
	step
		'Press _C_ to open your Communicator:
		..turnin Uncovering the Truth##5394
	step
		.talk Chief Migisi##291699
		..turnin Convoy to Wigwalli##5669 |goto Whitevale 3467,-434,-943
		..accept Missing Migisi##5570 |goto 3467,-434,-943
	step
		.click Wigwalli Taxi Kiosk##270837
		.' Get the _Wigwalli Village_ flight point |goto 3461,-418,-939
		|confirm
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Wigwalli Village_ as your Recall point |goto Whitevale 3448,-400,-942
		|confirm
	step
		.talk Bride Kamala##289634
		..accept The Complete Guest List##5544 |goto Whitevale 3464,-467,-942
	step
		.talk Shaman Achal##291150
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 20 |goto 3436,-481,-942
		.talk Far-Trader Zopa##291151
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 40 |goto 3497,-509,-938
		.talk Hunt-Master Toshan##291142
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 60 |goto 3617,-491,-932
	step
		.talk Young Migisi##291698
		..turnin Missing Migisi##5570 |goto 3560,-397,-938
		..accept Charting the Course##5572 |goto 3560,-397,-938
	step
		.click Redmoon Chest##291855 |tip You may have to search a few before you complete this.
		.' Search Redmoon Chests |q Charting the Course##5572/1 |goto 3617,-283,-941
	step
		'Press _C_ to open your communicator:
		..turnin Charting the Course##5572
		..accept In the Bosun's Brig##5574
	step
		.kill 1 Bosun Sprulo##4895478 |q In the Bosun's Brig##5574/2 |goto Whitevale 3725,-289,-935
	step
		.click Bosun's Brig##291819
		.' Free Young Migisi from Bosun Sprulo's brig |q In the Bosun's Brig##5574/1 |goto 3711,-299,-935
	step
		.talk Young Migisi##291688
		..turnin In the Bosun's Brig##5574 |goto Whitevale 3763,-223,-936
		..accept Redmoon's Reekage##5576 |goto 3763,-223,-936
		..accept Redmoon's Ruin##5577 |goto 3763,-223,-936
	step
		.click Fuse##291815 |tip They look like pink X's on the ground.
		.' Ignite gunpowder kegs |q Redmoon's Ruin##5577/1 |goto 3811,-234,-942
		.click Redmoon Tracker##4766823
		.click Redmoon Trained Razortail##4098248
		.click Redmoon Buccaneer##5134734
		.click Redmoon Rover##1489938
		'Press _T_ to:
		.' Use Migisi's stinkbombs on Redmoon Marauders |q Redmoon's Reekage##5576/1 |goto 3815,-238,-943
	step
		'Press _C_ to open your communicator:
		..turnin Redmoon's Ruin##5577
		..turnin Redmoon's Reekage##5576
		..accept Portside of Starboard##5578
	step
		.talk Treasure Hunter Ram##291153
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 80 |goto Whitevale 3770,-523,-931
		.talk Kurg-Tender Gagan##291154
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |goto 3770,-523,-931
	step
		.talk Far-Trader Diki##291691
		..accept Blood Moonshine##5587 |goto 3752,-510,-931
	step
		.talk Treasure Collector Rung##279919
		..accept Wigwalli Treasure##9212 |goto Whitevale 3781,-525,-931
	step
		.' Wigwalli Treasures are buried around this area. As you walk around keep an eye on the _Wigwalli Treasure Proximity_ that appears in the top left part of your screen.
		.' When the bar reaches 100, use the _Digging for Treasure!_ skill in your temporary skill bar to dig the treasure up.
		.' Find a Wigwalli Buried Shiny |q Wigwalli Treasure##9212/1 |goto Whitevale 3677,-386,-929
	step
		.kill 1 Redmoon Buccaneer##1557338+
		.kill 1 Redmoon Tracker##1549745+
		.kill 1 Redmoon Corsair##1175393+
		.kill 1 Redmoon Rifleman##1545166+
		.' Kill Redmoon Marauders |q Blood Moonshine##5587/1 |goto 3815,-238,-943
		.' Collect Stolen Shinies from Redmoon Marauders |q Blood Moonshine##5587/2 |goto 3815,-238,-943
	step
		.talk Bride Kamala##289634
		..turnin The Complete Guest List##5544 |goto Whitevale 3463,-469,-942
		..accept Bountiful Floral Bouquet##5543 |goto 3463,-469,-942
		..accept The Lighting of the Lanterns##5545 |goto 3463,-469,-942
		..accept Something Old, New, Eldan, and Blue##5546 |goto 3463,-469,-942
	step
		.talk Best Man Seba##291511
		..accept Where Have All the Groomsmen Gone?##5539 |goto 3459,-480,-942
	step
		.talk Far-Trader Diki##291691
		..turnin Blood Moonshine##5587 |goto 3752,-511,-931
	step
		.talk Treasure Hunter Ram##291153
		.' Get the Old Lopp Map from Treasure Hunter Ram |q Something Old, New, Eldan, and Blue##5546/1 |goto 3772,-522,-931
	step
		.talk Treasure Collector Rung##279919
		..turnin Wigwalli Treasure##9212 |goto Whitevale 3782,-525,-931
	step
		.talk Merchant Wuzzle##280131
		.' Buy a New Lopp Energy Rod from Merchant Wuzzle |q Something Old, New, Eldan, and Blue##5546/3 |goto 3785,-523,-931 |tip It is listed under the "General" tab.
	step
		.click Deep Floral Essence##4687489 |tip These can be found around trees and rocks in this area.
		.' Collect Deep Floral Essence |q Bountiful Floral Bouquet##5543/1 |goto 3656,-731,-926
	step
		.' Find the missing caravan |q Where Have All the Groomsmen Gone?##5539/1 |goto Whitevale 3792,-720,-956
	step
		.kill 1 Sickly Snoglug##5300426
		.talk Lopp Groomsman##5391807
		.' _Click here_ for another spawn point |goto Whitevale 3908,-742,-957
		.talk Lopp Groomsman##5207818
		.' _Click here_ for another spawn point |goto 3678,-691,-937
		.talk Lopp Groomsman##5404321
		.' _Click here_ for another spawn point |goto 3678,-846,-921
		.talk Lopp Groomsman##3739227
		.' Find Lopp Groomsman |q Where Have All the Groomsmen Gone?##5539/4 |goto 3801,-546,-927
	step
		.talk Best Man Seba##291509
		..turnin Where Have All the Groomsmen Gone?##5539 |goto Whitevale 3812,-717,-957
		..accept Shattered in the Snow##5540 |goto 3812,-717,-957
	step
		.kill Coldroot Icecracker##4894336+
		.' Collect Frostglow Algae from Coldroot Icecrackers |q The Lighting of the Lanterns##5545/1 |goto Whitevale 3792,-720,-956
		.kill Snowstep Stag##4644956+
		.' Collect Snowstep Stag Horns from Snowstep Roamers |q The Lighting of the Lanterns##5545/2 |goto 3792,-720,-956
		.kill Frostshell Clamper##5265922+
		.' Collect Frostshell Fragments from Frostshell Clampers |q The Lighting of the Lanterns##5545/3 |goto 3792,-720,-956
		.click Wigwalli Wedding Shiny##5581965
		.' Recover Wigwalli Wedding Shinies from animals |q Shattered in the Snow##5540/1 |goto 3785,-685,-956
	step
		'Press _C_ to open your communicator:
		..turnin Shattered in the Snow##5540
		..accept Not Without a Fight##5541
	step
		.kill Darkice Shaman##5483247+
		.kill Darkice Mystic##4562398+
		.kill Darkice Basher##1642898+
		.kill Darkice Scratcher##1638118+
		.' Kill Darkice Skeech |q Not Without a Fight##5541/1 |goto Whitevale 3904,-992,-928
		.' Collect the Darkice Prisoner Key |q Not Without a Fight##5541/2 |goto 3904,-992,-928
	step
		.click Darkice Cage Door##291516
		.' Unlock the Darkice Cage Door |q Not Without a Fight##5541/3 |goto 3924,-1029,-915
	step
		.talk Groom Dawa##291517
		..turnin Not Without a Fight##5541 |goto 3919,-1045,-911
		..accept The Stolen Engagement Shiny##5542 |goto 3919,-1045,-911
	step
		.kill 1 Darkice Queen##5700044
		.' Reclaim the Lopp Engagement Shiny from the Darkice Queen |q The Stolen Engagement Shiny##5542/1 |goto Whitevale 3921,-1138,-912
	step
		.click Whitevale Eldan Pylon##291059
		.' Collect a Eldan Pylon Fragment from the Whitevale Eldan Pylon |q Something Old, New, Eldan, and Blue##5546/4 |goto 4082,-972,-916
	step
		.kill 1 Burningblue Dawngrazer##1295957
		.' Collect a Burningblue Energy Shard from the Burningblue Dawngrazer |q Something Old, New, Eldan, and Blue##5546/5 |goto Whitevale 4090,-979,-916
	step
		.kill 1 Burningblue Dawngrazer##5820010
		.' Get the something old - invisible |q Something Old, New, Eldan, and Blue##5546/2 |goto 4103,-977,-915
	step
		.talk Shaman Achal##291150
		.' Talk to Shaman Achal |q Bountiful Floral Bouquet##5543/2 |goto 3438,-481,-942
	step
		.talk Far-Trader Zopa##291151
		.' Speak to Far-Trader Zopa |q The Lighting of the Lanterns##5545/4 |goto 3498,-511,-938
	step
		.talk Bride Kamala##289634
		..turnin Bountiful Floral Bouquet##5543 |goto 3464,-470,-942
		..turnin The Lighting of the Lanterns##5545 |goto 3464,-470,-942
	step
		.talk Relic Holder Ramesh##290827
		.' Talk to Relic Holder Ramesh |q Something Old, New, Eldan, and Blue##5546/6 |goto 3362,-480,-942
	step
		.talk Groom Dawa##291508
		..turnin The Stolen Engagement Shiny##5542 |goto Whitevale 3464,-486,-941
	step
		.talk Bride Kamala##289634
		..turnin Something Old, New, Eldan, and Blue##5546 |goto Whitevale 3464,-467,-942
		..accept A Shiny Wedding at Last##5547 |goto 3464,-467,-942
	step
		.talk Relic Holder Ramesh##290339
		.' Retrieve the Relic of Dak-Buun |q A Shiny Wedding at Last##5547/1 |goto 3362,-478,-942
	step
		.click Lopp Wedding Altar Stand##290940
		.' Place the Relic of Dak-Buun on the wedding altar |q A Shiny Wedding at Last##5547/2 |goto Whitevale 3599,-553,-937
		.' Observe the Wedding Ceremony |q A Shiny Wedding at Last##5547/3 |goto 3596,-549,-937
	step
		.talk Dak-Buun##5344918
		..turnin A Shiny Wedding at Last##5547 |goto 3600,-552,-937
	step
		.click Pouch of Gelidar Pearls##1221656
		..accept Deep Sea Diving##5586 |goto Whitevale 4079,-218,-951
	step
		'Swim to the middle of this sucken structure
		.' Locate the Fortune's Fool |q Portside of Starboard##5578/1 |goto 4118,-206,-961
	step
		.click Hull Door##291725
		.' Swim down to the Fortune's Fool |q Portside of Starboard##5578/2 |goto 4146,-193,-998
		.click Hull Door##291886
		.' Click _Yes_ to enter the Fortune's Fool |q Portside of Starboard##5578/3 |goto 4146,-193,-998
	step
		'_Follow_ this hallway |goto Whitevale 3882,-228,-1196 < 5
		.kill 1 First Mate Darugna##4302223
		.kill 1 Blackbeak##1194283
		.' Kill First Mate Darugna and Blackbeak |q Portside of Starboard##5578/4 |goto 3970,-151,-1195
	step
		.click Young Migisi##5287496
		.' Free Young Migisi |q Portside of Starboard##5578/5 |goto 3964,-142,-1195
	step
		'Press _C_ to open your communicator:
		..turnin Portside of Starboard##5578
		..accept A Wigwalli Welcome##5579
	step
		'_Follow the hallway_ out |goto Whitevale 3883,-227,-1196 < 5
		' _Keep following_ the path out |goto Whitevale 3824,-275,-1186 < 5
		.click Hull Door##291731 |goto Whitevale 3823,-313,-1187 < 10
		.click Gelidar Pearls##5689482 |tip These are found on the bottom of Thermock Lake.
		.' Collect Gelidar Pearls |q Deep Sea Diving##5586/1 |goto Whitevale 4121,-230,-966
	step
		.talk Far-Trader Diki##291851
		..turnin Deep Sea Diving##5586 |goto Whitevale 3753,-511,-931
	step
		.talk Chief Migisi##291699
		..turnin A Wigwalli Welcome##5579 |goto Whitevale 3468,-434,-943
	step
		.talk Avanti the Bright-Eyed##291868
		..accept A Frosty Request##5588 |goto 3447,-459,-943
	step
		.kill Huntress Kezzia##292297
		..accept Priorities##5716 |goto 3472,-415,-941
	step
		.click Pristine Snow##6009318 |tip These look like small piles of snow around this area.
		.' Gather Pristine Snow |q A Frosty Request##5588/1 |goto Whitevale 3513,-351,-942
	step
		.talk Kurg-Tender Umeshanu##291729
		..accept Spring After Sprouts##5585 |goto 3424,-265,-937
	step
		.click Snow Sprout##2182542
		.' Catch Snow Sprouts |q Spring After Sprouts##5585/1 |goto 3454,-261,-942
	step
		.talk Kurg-Tender Umeshanu##291729
		..turnin Spring After Sprouts##5585 |goto 3424,-267,-93
	step
		.click Avanti's Snow Mound##5962678
		'Press _T_ to: |tip You'll have to do this 3 times.
		.' Build a Snowlopp on Avanti's Snow Mound |q A Frosty Request##5588/2 |goto 3442,-465,-942
	step
		.talk Avanti the Bright-Eyed##291868
		..turnin A Frosty Request##5588 |goto 3445,-459,-9437
	step
		.click Kezzia's Mount##5949249
		.' Take Kezzia's Mount |q Priorities##5716/1 |goto Whitevale 3471,-404,-942
	step
		.talk Major Hesperius##292796
		..turnin Priorities##5716 |goto Whitevale 3553,209,-960
		..accept No Man Left For Dead##5717 |goto 3553,209,-960
	step
		.talk Sergeant Bell##292797
		..accept The Dead Walking##5720 |goto 3550,213,-960
	step
		.talk Mondo Zax##292758
		..accept For Science##5726 |goto 3506,212,-963
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Dominion Base_ as your Recall point |goto 3486,179,-960
		|confirm
	step
		.click Outbreak Squirg##5937849
		.' Grab a Squirg for capture |goto Whitevale 3546,165,-971
		|confirm
	step
		.click Outbreak Squirg##5937849
		.' Return the captured Squirg to Mondo Zax |q For Science##5726/1 |goto Whitevale 3506,212,-963
	step
		.talk Mondo Zax##292758
		..turnin For Science##5726 |goto 3505,213,-962
	step
		.kill 1 Squirg Spewer##6119704
		'Press _C_ to open your communicator:
		..accept Four Deadly Sins##5721 |goto Whitevale 3704,57,-974
	step
		.kill 1 Squirg Spewer##6119704 |q Four Deadly Sins##5721/4 |goto Whitevale 3696,40,-974
	step
		.kill 1 Squirg Smasher##6219216 |q Four Deadly Sins##5721/1 |goto Whitevale 3798,82,-974
	step
		.kill 1 Squirg Erupter##6074090 |q Four Deadly Sins##5721/2 |goto Whitevale 3861,134,-962
	step
		'Press _C_ to open your communicator:
		..turnin Four Deadly Sins##5721
	step
		.click Lieutenant Jareus##292762
		.' Find Lieutenant Jareus |q No Man Left For Dead##5717/1 |goto 3907,46,-967
	step
		'Press _C_ to open your communicator:
		..turnin No Man Left For Dead##5717
		..accept Extra Crispy##5718 
	step
		.kill Squirg Smasher##1354293+, Huge Hatcher##1396705+, Squirg Zombie##724534+, Squirg Clampjaw##724273+, Big Birther##1352033+
		.' Kill Squirg Zombies |q The Dead Walking##5720/1 |goto Whitevale 3591,53,-973
		.click Fallen Trooper Corpse##6433039
		.' Burn Soldier and Trooper Corpses |q Extra Crispy##5718/1 |goto 3858,27,-971
	step
		'Press _C_ to open your Communitcator:
		..turnin The Dead Walking##5720
	step
		.talk Major Hesperius##292796
		..turnin Extra Crispy##5718 |goto Whitevale 3550,209,-960
		..accept If You Can't Beat Them, Blow Them Up##5719 |goto 3550,209,-960
	step
		.talk Broken Bike Vendor##292759
		..accept Road Kill##5722 |goto 3394,360,-963
	step
		.click Corpse Rider Hoverbike##8944246
		.' Borrow a Hoverbike |q Road Kill##5722/1 |goto 3400,361,-963
	step
		.kill 1 Squirg Zombie##9257404
		.' Run over Squirg Zombies |q Road Kill##5722/2 |goto 3326,316,-961
	step
		'Press _C_ to open your Communicator:
		..turnin Road Kill##5722 |goto 3291,297,-959
	step
		.click Battlefield Munitions##9079467
		.' Recover Battlefield Munitions |q If You Can't Beat Them, Blow Them Up##5719/1 |goto Whitevale 3326,316,-961
	step
		.talk Odd Squirg##8231321
		..accept The Squirg and I##8817 |goto Whitevale 3996,378,-962
	step
		.click Road Warrior##9421062
		.' Stand on the edge of the cliff here and target exile mobs |tip Make sure to stand away from them so they don't kill you immidiately.
		.' Press _T_ to use the Odd Squirg on Exile players and troops |q The Squirg and I##8817/1 |goto 3913,166,-961
	step
		'Standing next to you:
		.talk Odd Squirg##9332361
		..turnin The Squirg and I##8817
	step
		.' Find the Entrance to the Squirg Cave |q If You Can't Beat Them, Blow Them Up##5719/2 |goto Whitevale 3796,-27,-959
	step
		.' Find the source of the Squirg Eggs |q If You Can't Beat Them, Blow Them Up##5719/3 |goto 3820,806,-1065
		.' Press _T_ to:
		.' Place and detonate the Munitions |q If You Can't Beat Them, Blow Them Up##5719/4 |goto 3824,809,-1066 |tip Run from the blast radius.
	step
		.' Step onto one of the small Squirg eggs |goto Whitevale 3799,600,-1039
		'Press _C_ to open your Communitcator:
		..accept Walking on Eggshells##5723
	step
		.' _Walk over_ the eggs in the cave |tip They look like little pointy brown eggs.
		.' Squash Squirg Eggs |q Walking on Eggshells##5723/1 |goto Whitevale 3802,761,-1062
	step
		'Press _C_ to open your communicator:
		..turnin Walking on Eggshells##5723
	step
		'Use the water spring to leave the cave |goto 3791,576,-1031 < 5
		.click Emergency Medical Supplies##292671
		..accept Critical Condition##5725 |goto 3746,-22,-977
	step
		.click Emergency Medical Supplies##9056315
		.' Collect Emergency Medical Supplies |q Critical Condition##5725/1 |goto 3764,-29,-974
	step
		.click Medical Station##292719
		.' Restock empty Medical Stations |q Critical Condition##5725/2 |goto 3509,220,-962
	step
		.talk Mondo Zax##293135
		..turnin Critical Condition##5725 |goto 3506,213,-963
	step
		.talk Major Hesperius##293173
		..turnin If You Can't Beat Them, Blow Them Up##5719 |goto 3552,209,-960
	step
		.talk Major Hesperius##293173
		..turnin If You Can't Beat Them, Blow Them Up##5719 |goto 3552,209,-960
		..accept Mutagenocide##5700 |goto 3552,209,-960
	step
		.talk Mondo Zax##293135
		..accept Datachrons of the Departed##5702 |goto Whitevale 3506,212,-963
	step
		.click Broken Datachron##338451
		.' Find Broken Datachrons on Mutated Soldiers |q Datachrons of the Departed##5702/1 |goto 3622,248,-994
		.' Kill Mutated Soldiers |q Mutagenocide##5700/1 |goto 3618,236,-994
	step
		'Press C to open your communicator:
		..turnin Mutagenocide##5700
		..turnin Datachrons of the Departed##5702
		..accept Mutually Assured Destruction##5727
	step
		.click Fezar##293253
		..accept An All-Consuming Passion##8818 |goto Whitevale 3628,377,-988
	step
		.' Locate Fezar's lost mate |q An All-Consuming Passion##8818/1 |goto 3628,245,-995
	step
		'Press _T_ to: |tip You will need to press T about every 20 yards.
		.' Lure the Dazed Mutation back to Fezar |q An All-Consuming Passion##8818/2 |goto 3628,377,-988
		.' Observe Fezar's reunion |q An All-Consuming Passion##8818/3 |goto 3628,377,-988
	step
		.kill 1 Loving Mutation##433673
		.' Kill the Loving Mutation |q An All-Consuming Passion##8818/4 |goto 3639,358,-990
	step
		.click Broken Ultrabot Part##293261
		..accept A Real Fixer-Upper##7332 |goto 3753,398,-982
	step
		.click Broken Ultrabot Part##381719
		.kill 1 Mutated Soldier##1492684+
		.' Collect Ultrabot Parts |q A Real Fixer-Upper##7332/1 |goto 3810,432,-976
	step
		.click Broken Ultrabot##293333
		.' Repair the Broken Ultrabot |q A Real Fixer-Upper##7332/2 |goto 3768,407,-983
	step
		'Press C to open your communicator:
		..turnin A Real Fixer-Upper##7332
	step
		.click Jetpack of Fallen Soldier##292727 |goto 3640,228,-996 > 5
		|confirm
	step
		.' Equip the Back pack and fly up to the rock in the air here 
		.' Get to the top of the Terraformer |q Mutually Assured Destruction##5727/1 |goto 3736,212,-917 |tip Press 1 repeatedly to fly with the jetpack.
	step
		.click Terraformer Console##293029
		.' Decrypt the Terraformer Console's data |q Mutually Assured Destruction##5727/2 |goto 3737,213,-917
	step
		.talk Mondo Zax##293135
		..turnin Mutually Assured Destruction##5727 |goto Whitevale 3506,212,-963
		..turnin An All-Consuming Passion##8818 |goto 3506,212,-963
		..accept Here They Come##5724 |goto 3506,212,-963
	step
		.click Signal Flare##293039
		.' Defend the yellow circle from Zombies |tip Press T to use your flamethrower.
		.' Ignite 1st Signal Flare and repel Zombies |q Here They Come##5724/1 |goto Whitevale 3563,147,-971
	step
		.click Signal Flare#3##293038
		.' Defend the yellow circle from Zombies |tip Press T to use your flamethrower.
		.' Ignite 3rd Signal Flare and repel Zombies |q Here They Come##5724/3 |goto Whitevale 3492,150,-966
	step
		.click Signal Flare#2##293030
		.' Defend the yellow circle from Zombies |tip Press T to use your flamethrower.
		.' Ignite 2nd Signal Flare and repel Zombies |q Here They Come##5724/2 |goto 3539,297,-971
	step
		.click Signal Flare#4##293037
		.kill 1 Squirg Giant##552350 |tip You cannot use your flamethrower on him.
		.' Ignite final Signal Flare and repel Zombies |q Here They Come##5724/4 |goto 3523,199,-964
	step
		.talk Mondo Zax##293135
		..turnin Here They Come##5724 |goto 3506,213,-963
	step
		'Press _C_ to open your Communicator:
		..accept The Intern##5832 |goto Whitevale 3548,208,-961
	step
		.talk Mondo Zax##293135
		.' Click one of the _3_ buttons above your action bar
		.' Answer the Game Show Host's questions |q The Intern##5832/1 |goto Whitevale 3104,772,-1032 |tip You should be able to answer any way you wish.
	step
		.talk Prime Executive##278101
		..turnin The Intern##5832 |goto Whitevale 3096,776,-1032
		..accept Abduction Junction##5833 |goto 3096,776,-1032
	step
		.click Transmat Terminal##272208
		.' Click _Yes_ to set _Dominion Base_ as your Recall point |goto Whitevale 3050,725,-1027
		|confirm
	step
		.click Prosperity Junction Taxi Kiosk##270986
		.' Get the _Dominion Base_ Taxi flight point |goto Whitevale 3140,870,-1042
		|confirm
	step
		.kill 1 Silverscale Prober##1516462
		'Press _C_ to open your communicator:
		..accept Calculated Hostility##6025 |goto Whitevale 3170,1110,-1050
	step
		.' Jump through abducted Protostar Employees |q Abduction Junction##5833/1 |goto Whitevale 3129,1101,-1054 |tip You need to jump into the light before the ships take off.
		.kill Silverscale Abductor##950199+
		.kill Silverscale Prober##854285+
		.' Kill Silverscale Ikthians |q Calculated Hostility##6025/1 |goto Whitevale 3050,1181,-1053
	step
		'Press _C_ to open your Communicator:
		..turnin Abduction Junction##5833
		..turnin Calculated Hostility##6025
		..accept Minimizing Losses##5834
	step
		'All along the river and Calmwater Lake:
		.click Protostar Fish Collector##275207+
		.' Reactivate Protostar Fish Collectors |q Minimizing Losses##5834/2 |goto Whitevale 3040,984,-1075
		.kill Sabotaged Servicebot##866906+
		.kill Sabotaged Fishbot##959154+
		.' Collect Salvaged Parts from Sabotaged Fishbots |q Minimizing Losses##5834/1 |goto 3026,952,-1071
	step
		.talk Prime Executive##278101
		..turnin Minimizing Losses##5834 |goto Whitevale 3096,776,-1032
		..accept Creative Marketing##5835 |goto 3096,776,-1032
	step
		.click Protostar B.L.I.M.P.##1263078 |goto Whitevale 3010,714,-1030 < 10
		.' Press _1_ to throw promotional supplies at Soulcore enemies on the ground as you fly |q Creative Marketing##5835/1 |goto Whitevale 2364,675,-1018
	step
		.talk Prime Executive##278101
		..turnin Creative Marketing##5835 |goto 3096,775,-1032
		..accept You're Fired!##5836 |goto 3096,775,-1032
	step
		.talk Protostar Employee##1090120+ |tip They are all around this little base
		.' Fire Protostar Employees |q You're Fired!##5836/1 |goto 3076,787,-1036
	step
		.talk Prime Executive##278101
		..turnin You're Fired!##5836 |goto Whitevale 3097,776,-1032
	step
		'Press _C_ to open your communicator:
		..accept Hostile Takeover##5841 |goto 3091,775,-1032
	step
		.click Master Control Panel##277928 |tip It's inside this little hut.
		.' Download access codes |q Hostile Takeover##5841/1 |goto 3097,719,-1028
	step
		'Watch the Dialogue
		.' Learn the fate of the Prime Executive |q Hostile Takeover##5841/2 |goto 3095,775,-1032
	step
		.talk Prime Executive##278101
		..turnin Hostile Takeover##5841 |goto Whitevale 3095,775,-1032
		..accept Glacial Relations##5946 |goto 3095,775,-1032
	step
		'_Follow the road_ in the snow |goto Whitevale 3481,835,-996 < 20
		'Press _C_ to open your communicator:
		..accept Lost in the Silver Sea##5886 |goto 3829,730,-921
	step
		.talk Researcher Benbazi##273411
		..turnin Lost in the Silver Sea##5886 |goto Whitevale 3961,752,-909
		..accept Into the Undertow##5888 |goto 3961,752,-909
		..accept Tempest Tides##5890 |goto 3961,752,-909
	step
		.talk Interspecies Relations Liaison##273408
		..turnin Glacial Relations##5946 |goto 3974,728,-906
	step
		'Press _T_ to:
		.' Summon the Extractorbot |q Into the Undertow##5888/1 |goto Whitevale 3932,768,-912
	step
		'Press _T_ to:
		.' Summon the Extractorbot |q Into the Undertow##5888/2 |goto Whitevale 3969,938,-933
		.' When the Extractorbot finds Ice Crystals, you need to jump into them to collect them
		.' Collect Crystallized Primal Water samples |q Into the Undertow##5888/3 |goto 3969,938,-933
	step
		'Press _C_ to open your communicator:
		..turnin Into the Undertow##5888
		..accept Darkwater Abyss##5892 |goto 3897,888,-929
		..accept Splitting the Spatial Sea##5894 |goto 3897,888,-929
	step
		.click Triton Incubator##273713+
		.' Destroy Triton Incubators |q Darkwater Abyss##5892/1 |goto Whitevale 4084,1149,-880
		.kill 1 Silverscale Behemoth##1454237+
		.kill 1 Silverscale Leviathan##1674788+
		.' Kill Silverscale Leviathans |q Tempest Tides##5890/1 |goto 4103,1139,-880
		.' Kill Silverscale Mobs |q Splitting the Spatial Sea##5894/1 |goto 4103,1139,-880
	step
		'Press _C_ to open your communicator:
		..turnin Darkwater Abyss##5892
		..turnin Tempest Tides##5890
		..turnin Splitting the Spatial Sea##5894
		..accept Primal Powers and Triton's Dread##5896
	step
		
		.kill 1 Prime Gillsting##1306821 |q Primal Powers and Triton's Dread##5896/1 |goto Whitevale 4395,1412,-813
		.kill 1 Silverscale Dreadnaught##1307864 |q Primal Powers and Triton's Dread##5896/2 |goto 4366,1420,-812
	step
		'Press _C_ to open your Communicator:
		..turnin Primal Powers and Triton's Dread##5896
		..accept Stirring Interstellar Waves##5898
	step
		.click Cortex Analyzer##273418
		.' Choose _Yes_, Restore the Focus of Water to its proper balance
		.' Access the Cortex Analyzer |q Stirring Interstellar Waves##5898/1 |goto 4397,1256,-817
	step
		'Press _C_ to open your Communicator:
		..turnin Stirring Interstellar Waves##5898
		..accept Pathway to Pell##5900
	step
		.talk High Priest Rain-Caller##273281
		..turnin Pathway to Pell##5900 |goto Whitevale 2662,1211,-1070
		..accept Changing of the Tides##5849 |goto 2662,1211,-1070
	step
		.talk Calmwater Cloud-Collector##273272
		..accept Rain Catcher##5929 |goto 2667,1251,-1065
	step
		'Run to this area:
		'Press _C_ to open your Communicator: 
		..accept On The Rocks##5839 |goto Whitevale 2450,1225,-1068
	step
		.click Calmwater Rain Catcher##272895
		.' Inspect Calmwater Rain Catchers |q Rain Catcher##5929/1 |goto 2367,1207,-1055
	step
		'Press _C_ to open your Communicator:
		..turnin Rain Catcher##5929
	step
		.click Fence##277568
		.' Go through the fence |goto Whitevale 2318,1138,-1063 < 5
		.talk Exotic Resources Financier##277887
		..accept Exotic Furs##5838 |goto 2296,1106,-1051
		..accept ZubbleBubble Trouble##5840 |goto 2296,1106,-1051
	step
		.kill Snowfury Yeti##1059361+
		.kill Wooly Trampler##490102+
		.kill Snowstalker Yeti##494557+
		.' Collect Exotic Furs from Yeti and Mammodin |q Exotic Furs##5838/1 |goto Whitevale 3399,1259,-1023
		.' Collect ZubbleBubble Flavor Crystals from Yeti |q ZubbleBubble Trouble##5840/1 |goto 3519,982,-1017
		.kill Colossal Cragfist##672290+ |tip They are scattered and hard to find all around this area.
		.' Collect Crystalized Rocks from Colossal Gronyx |q On The Rocks##5839/1 |goto Whitevale 2391,972,-1073
	step
		.' Investigate Doomtide Village |q Changing of the Tides##5849/1 |goto Whitevale 2273,1370,-1028
	step
		'Press _C_ to open your communicator:
		..turnin Changing of the Tides##5849
		..accept Leaking Propaganda##5850
	step
		.kill 1 Doomtide Storm-Striker##1779561
		'Press _C_ to open your Communicator:
		..accept Converted Casualties##5882 |goto 2287,1407,-1026
	step
		.click Soulcore Propaganda Machine##273257
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |count 20 |goto 2287,1407,-1026
		.click Soulcore Propaganda Machine##273245
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |count 40 |goto 2226,1486,-1020
		.click Soulcore Propaganda Machine##273269
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |count 60 |goto 2131,1460,-1016
	step
		.click Soulcore Propaganda Machine##273269
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |count 80 |goto 2198,1543,-1013
		.click Soulcore Propaganda Machine##273264
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |goto 2256,1499,-1012
	step
		'Press _C_ to opne your Communicator:
		..turnin Leaking Propaganda##5850
		..accept Unwavering Faith##5851
	step
		.kill 1 Doomtide Storm-Striker##827899+
		.kill 1 Doomtide Thunder-Stalker##897934+
		.kill 1 Doomtide Rain-Hoarder##1790565+
		.kill 1 Doomtide Shock-Weaver##1671244+
		.' Kill Doomtide Pell |q Converted Casualties##5882/1 |goto 2206,1470,-1021
	step
		'Press _C_ to open your Communicator:
		..turnin Converted Casualties##5882
	step
		.talk Exotic Resources Financier##277959
		..turnin Exotic Furs##5838 |goto Whitevale 3304,1030,-1026
		..turnin On The Rocks##5839 |goto 3304,1030,-1026
		..turnin ZubbleBubble Trouble##5840 |goto 3304,1030,-1026
	step
		.click Captured Calmwater Acolyte##1349660
		..accept Disrupting Deadly Interrogations##5884 |goto Whitevale 1995,1199,-1027
	step
		.click Control Panel##273164
		.' Investigate the offshoot of Doomtide Village |q Unwavering Faith##5851/1 |goto Whitevale 1979,1218,-1028
	step
		.click Control Panel##273176
		.' Free Calmwater captives |q Unwavering Faith##5851/2 |goto Whitevale 2048,1192,-1028
		.kill Soulcore Interrogator##1614637+
		.' Destroy Soulcore Interrogators |q Disrupting Deadly Interrogations##5884/1 |goto 2022,1125,-1029
	step
		'Press _C_ to open your Communicator:
		..turnin Disrupting Deadly Interrogations##5884
	step
		.talk High Priest Rain-Caller##273270
		..turnin Unwavering Faith##5851 |goto 2659,1212,-1070
		..accept Offerings from the Deep##5852 |goto 2659,1212,-1070
	step
		.kill 1 Calmwater Longsnout##275945+
		.click Ritual Scale##2463642+
		.' Collect Ritual Scales from Calmwater Longsnout |q Offerings from the Deep##5852/1 |goto  2607,1089,-1098
	step
		.talk High Priest Rain-Caller##273270
		..turnin Offerings from the Deep##5852 |goto 2661,1209,-1070
		..accept The Calmwater Ritual##5853 |goto 2661,1209,-1070
	step
		.click Ritual Altar##272955
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |count 20 |goto Whitevale 2689,1191,-1073
		.click Ritual Altar##273069
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |count 40 |goto 2698,1163,-1072
		.click Ritual Altar##273068
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |count 60 |goto 2722,1152,-1073
	step
		.click Ritual Altar##273062
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |count 80 |goto 2747,1159,-1073
		.click Ritual Altar##273065
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |goto 2765,1189,-1071
	step
		.click Calmwater Lightning-Chanter##272841
		.' Give the sacred scales to the Calmwater Lightning-Chanters |q The Calmwater Ritual##5853/2 |count 33 |goto Whitevale 2734,1182,-1073
		.click Calmwater Lightning-Chanter##272973
		.' Give the sacred scales to the Calmwater Lightning-Chanters |q The Calmwater Ritual##5853/2 |count 66 |goto 2724,1177,-1073
		.click Calmwater Lightning-Chanter##272957
		.' Give the sacred scales to the Calmwater Lightning-Chanters |q The Calmwater Ritual##5853/2 |goto 2714,1183,-1073
	step
		'Avoid the red circles on the ground so you don't take damage
		.' Remain in the circle until the ritual is complete |q The Calmwater Ritual##5853/3 |goto Whitevale 2724,1186,-1072
	step
		.talk High Priest Rain-Caller##273270
		..turnin The Calmwater Ritual##5853 |goto 2661,1212,-1070
		..accept Wet Work##5854 |goto 2661,1212,-1070
	step
		.talk Chieftain Rain-Fighter##272933
		.' Find Chieftain Rain-Fighter |q Wet Work##5854/1 |goto  2432,906,-1071
		.' Speak with Chieftain Rain-Fighter |q Wet Work##5854/2 |goto 2432,906,-1071
	step
		.' Kill Purifier Landes |q Wet Work##5854/3 |goto 2327,811,-1073
	step
		'Press _C_ to opne your communicator:
		..turnin Wet Work##5854
		..accept Troubled Waters##5947
	step
		.talk The Caretaker##274036
		..turnin Troubled Waters##5947 |goto 2443,427,-1037
		..accept Into Augment Facility X426##5823 |goto 2443,427,-1037
	step
		.click Caretaker's Panel Gamma##274050
		.' Activate Caretaker's Panel Gamma |q Into Augment Facility X426##5823/2 |goto 2292,464,-1030
	step
		.kill Soulcore Defender##2979791+
		.kill Soulcore Evocator##2336768+
		.kill Soulcore Disciple##2985403+
		.kill Modified X426 Probe##2966905+
		.' Kill Soulcore forces |q Into Augment Facility X426##5823/1 |goto 2330,426,-1030 
	step
		.collect 1 X-D12 Origin Data##14771
		.' Use the X-D12 Origin Data in your bags |use X-D12 Origin Data##14771
		..accept Original Modifications##5935 |goto 2330,426,-1030
	step
		.kill Modified X426 Probe##2930119+
		.' Collect X-D12 Origin Data from X426 Probes |q Original Modifications##5935/1 |goto Whitevale 2315,464,-1030 |tip This quest has been bugged for a while. It is completable if you kill the Probes LAST. Stand with the probes behind you and kill the humanoid mob first, then turn around and kill the probes. They should then drop the Origin Data for the quest.
	step
		.click Beckoning Hand##274150
		.' Turn in The Beckoning Hand |goto Whitevale 2296,326,-1040
		|confirm
	step
		.talk The Caretaker##274036
		..turnin Into Augment Facility X426##5823 |goto 2441,428,-1038
	step
		.talk The Caretaker##274025
		..accept Indoctrination Denied##5824 |goto 2290,464,-1029
	step
		.click Caretaker's Panel Alpha##274046
		.' Activate Caretaker's Panel Alpha |q Indoctrination Denied##5824/2 |goto 2343,747,-1040
		.talk The Caretaker##274023
		..accept Destroying Corrupting Tools##5825 |goto 2342,747,-1040
	step
		.click Electro Chains##3014451
		.' Destroy Electro Chains to free Subjugated captives |q Indoctrination Denied##5824/1 |goto 2335,668,-1041
		'Press _T_ to:
		.' Use the Eldan mechanical converter on Reprogrammed Augmentors as you proceed
	step
		.talk The Caretaker##274023
		..turnin Indoctrination Denied##5824 |goto 2343,749,-1039
	step
		'Press _C_ to open your Communicator:
		..accept A Loyal Subject##8109 |goto 2038,727,-1041
		'Press _T_ to:
		.' Use the Eldan mechanical converter on Reprogrammed Augmentors as you proceed
	step
		.' Locate Scientist Bizi |q A Loyal Subject##8109/1 |goto Whitevale 1950,719,-1031
		.' Kill Purifier Clochron |q A Loyal Subject##8109/2 |goto 1951,712,-1031
		--Purifier Clochron##2805276
	step
		.click Prison Force Field Controls##274186
		.' Deactivate the Prison Force Field Controls |q A Loyal Subject##8109/3 |goto 1950,711,-1031
	step
		'Press _C_ to open your Communicator:
		..turnin A Loyal Subject##8109
	step
		.' _Follow the walkway_ around the green sludge |goto 1835,626,-1041 < 20
		.click Reprogrammed Augmentor##2851930
		'Press _T_ to:
		.' Use the Eldan mechanical converter on Reprogrammed Augmentors |q Destroying Corrupting Tools##5825/1
		.click Caretaker's Panel Rho##274043
		.' Activate Caretaker's Panel Rho |q Destroying Corrupting Tools##5825/2 |goto 1925,528,-1005
	step
		.talk The Caretaker##274021
		..turnin Destroying Corrupting Tools##5825 |goto 1926,527,-1004
		..accept The Fall of the Ascendancy##5826 |goto 1926,527,-1004
	step
		.click Augmentation Core Terminal##274224
		.' Survive the wave of enemies
		.kill Harbringer Sveltla##3198458
		.' Hack the Augmentation Core Terminal |q The Fall of the Ascendancy##5826/1 |goto 2182,417,-1000
		.' Kill Harbringer Sveltla |q The Fall of the Ascendancy##5826/2 |goto 2182,417,-1000
	step
		.click Caretaker's Panel Upsilon##274039
		.' Activate Caretaker's Panel Upsilon |q The Fall of the Ascendancy##5826/3 |goto 2161,315,-1013
	step
		.talk The Caretaker##274020
		..turnin The Fall of the Ascendancy##5826 |goto 2161,315,-1013
		..accept Meeting with Metal Maw Prime##5827 |goto 2161,315,-1013
	step
		'Take the Green _Eleveator up_ |goto 2068,334,-1027 < 5
		.' Take the elevator to Deepfreeze Containment |q Meeting with Metal Maw Prime##5827/1 |goto 2035,344,-971
	step
		.' Investigate the Dome Controls |q Meeting with Metal Maw Prime##5827/2 |goto 2005,409,-972
		..turnin Meeting with Metal Maw Prime##5827 |goto 2005,409,-972
		..accept Return to Illium##8768 |goto 2005,409,-972
	step
		.' Take the _elevator down_ |goto Whitevale 1917,456,-971 < 10
		.' Find the Nexonian Analyzation Unit |q Original Modifications##5935/2 |goto 1864,504,-1015
	step
		.click Nexonian Analyzation Unit##274299
		..turnin Original Modifications##5935 |goto 1864,504,-1015
	step
		.talk Protostar Transport Pilot##273945
		.' Speak to the Protostar Transport Pilot |q Return to Illium##8768/1 |goto 2316,1098,-1054
		.' Click _Yes_ to Travel to Illium
	step
		.talk Ringo Hax##265414
		..turnin Return to Illium##8768 |goto Illium -3452,-739,-891
]])
