ZGV:RegisterGuide("Exiles\\Whitevale (23-29)",
		{faction="Exiles",
		nextguide="Exiles\\Farside (29-35)",
		image="ZygorUIGuides:Whitevale", 
		startlevel=23,
		endlevel=29,
		description="Whitevale is a zone in central Alizar in WildStar. It is a a frozen wasteland that is under the influence of strange weather-altering technology. Whitevale is also a region suited for levels 25-33."	
		},[[
	step
		
		.' Use your Teleport ability to return to _Teleport: Thayd_ |goto Thayd 4260,-2208,-810 < 300
		.' Take the _elevator up_ |goto Thayd 4314,-1607,-721 < 10
		.click Talon of Osiric Display##274905
		.' Take the Talon of Osiric to the museum in Thayd |q Talon of Osiric##9093/1 |goto Thayd 4297,-1647,-665
	step
		.talk Dorian Walker##274884
		..turnin Talon of Osiric##9093 |goto 4321,-1640,-668
	step
		.talk Warrant Officer Burke##274869
		.' Secure transit to Thermock Hold |q Cold and Getting Colder##8800/1 |goto Thayd 3991,-2418,-789
		.click Warrant Officer Burke##274869
		.' Click _Yes_ to travel to Whitevale
	step
		.' Take the _road out of Thayd_ |goto Whitevale 3901,-1424,-881 < 30
		.talk Exile Soldier##291925
		..accept Grok's in Charge##5122 |goto Whitevale 4506,-575,-938
	step
		.talk Supply Officer Chet##292150
		..accept A Box of Stogies##5288 |goto 4519,-624,-947
	step
		.talk Brewmaster Grok##291953 |tip These are found sitting around and outside the bar.
		..turnin Grok's in Charge##5122 |goto Whitevale 4654,-699,-934
		..turnin Cold and Getting Colder##8800 |goto 4654,-699,-934
		..accept Last Man Standing##5026 |goto 4654,-699,-934
	step
		.click Bar Hooligan##6050468
		.' Press _T_ to use your Knockout Punch on Bar Hooligans |q Last Man Standing##5026/1 |goto Whitevale 4685,-731,-939
	step
		.talk Brewmaster Grok##291953
		..turnin Last Man Standing##5026 |goto Whitevale 4654,-699,-934
		..accept Immediate Report##5260 |goto 4654,-699,-934
		..accept No Beer, No Business##5027 |goto 4654,-699,-934
	step
		.' Go to the Thermock Chronicle House |q Immediate Report##5260/1 |goto Whitevale 4589,-827,-913
	step
		.talk Apprentice Puqik##292136
		..accept Butchering for the Butcher##5028 |goto 4559,-818,-916
	step
		.talk Smoky Soka##292153
		.' Find Smoky Soka |q A Box of Stogies##5288/1 |goto 4501,-794,-916
		.click Shipment of Granok Cigars##6003180
		.' Collect the Shipment of Granok Cigars |q A Box of Stogies##5288/2 |goto 4491,-781,-915
	step
		.talk Distributor Barleyfield##292137 |q No Beer, No Business##5027/1 |goto 4551,-892,-883
	step
		.talk "Money Baggs" Tragg##291926
		..accept Runok's in the Red##5256 |goto 4517,-925,-875
	step
		.click Stolen Keg##292130
		.' Retrieve the Stolen Kegs |q No Beer, No Business##5027/2 |goto Whitevale 4474,-929,-881
	step
		.click Grismaran Fine Rum##274245
		..accept Smuggler Shakedown##5134 |goto Whitevale 4464,-739,-934
	step
		.talk Supply Officer Chet##292150
		..turnin A Box of Stogies##5288 |goto Whitevale 4520,-624,-947
	step
		.talk Brewmaster Grok##291953
		..turnin No Beer, No Business##5027 |goto Whitevale 4653,-698,-934
		..turnin Immediate Report##5260 |goto 4653,-698,-934
	step
		'Press _C_ to use your communicator:
		..accept The Emissary##5263
	step
		.talk Special Agent Boyd##271129
		.' Speak with the Black Hoods Secret Agent |q The Emissary##5263/1 |goto Whitevale 4638,-835,-918
		.' Click _Yes_ to travel to Avra's Lair |goto Whitevale 4566,-1185,-1070
	step
		.' Meet with Avra Darkos |q The Emissary##5263/4 |goto 4404,-1184,-1067
		.' Leave Black Hoods Hideout |q The Emissary##5263/6 |goto Whitevale 4639,-833,-919
	step
		'Press _C_ to use your communicator:
		..turnin The Emissary##5263
		..accept The Black Hoods##5070
	step
		.talk Bar Patron##271838 |tip You can find more Patrons around the bar.
		.' Find the Black Hood agents disguised as Bar Patrons |q The Black Hoods##5070/1 |goto Whitevale 4661,-729,-939
	step
		.' Meet Agent Lazilo |q The Black Hoods##5070/3 |goto Whitevale 4530,-629,-947
	step
		.talk Agent Lazilo##271715
		..accept Bug Sweep##5074 |goto 4530,-629,-947
	step
		.' Around the bar area: |tip Look for small cloaked robots floating a few feet off the ground.
		.' Press _T_ to destroy ICI Surveillance Units near the Last Man Standing |q Bug Sweep##5074/1 |goto 4623,-682,-938
	step
		.talk Mercenary Runok##274284
		.' Speak to Mercenary Runok |q Runok's in the Red##5256/1 |goto 4695,-806,-934
		.talk Frega##274283
		.' Speak to Frega |q Runok's in the Red##5256/2 |goto 4679,-817,-932
		.click Runok's Belongings##274268
		.' Search Runok's Belongings |q Runok's in the Red##5256/3 |goto 4679,-813,-932
	step
		.' Around the Chronicle House: |tip Look for small cloaked robots floating a few feet off the ground.
		.' Press _T_ to destroy ICI Surveillance Units near the Chronicle House |q Bug Sweep##5074/2 |goto 4595,-816,-916
	step
		.' Around the Gambling Den: |tip Look for small cloaked robots floating a few feet off the ground.
		.' Press _T_ to destroy ICI Surveillance Units near Tragg's Gambling Den |q Bug Sweep##5074/3 |goto 4499,-878,-881
	step
		'Press _C_ to use your communicator:
		..turnin The Black Hoods##5070
		..turnin Bug Sweep##5074
	step
		.talk Agent Zero##271737
		..accept Spy Hunter##5075 |goto 4516,-891,-881
	step
		.talk "Honest" Abby##274269
		.' Sell Mercenary Runok's Heirloom Blade to "Honest" Abby |q Runok's in the Red##5256/4 |goto 4491,-794,-914
	step
		'Press _C_ to use your communicator:
		..turnin Runok's in the Red##5256
		..accept You Can Run...##5257
	step
		.kill Snowshadow Saboteur##5922876+ |tip Press T all around the base to expose the Saboteurs.
		.' Press _T_ to reveal and kill Snowshadow Saboteurs |q Spy Hunter##5075/1 |goto 4507,-817,-917
	step
		'Press _C_ to use your communicator:
		..turnin Spy Hunter##5075
		..accept Breaking and Entering##5078
	step
		.click Data Terminal##272039 |tip It's inside this small house.
		.' Access the Data Terminal |q Breaking and Entering##5078/1 |goto 4513,-773,-913
		.' Defend against ICI Snowshadow attackers |q Breaking and Entering##5078/2 |goto 4514,-776,-913
	step
		'Press _C_ to use your communicator:
		..turnin Breaking and Entering##5078
		..accept Hot on the Icy Trail##5079
	step
		.click Suspicious Snow Lopp##271759
		.' Locate the first clue |q Hot on the Icy Trail##5079/1 |goto 4757,-653,-942
		.click Suspicious Snow Lopp##271752
		.' Locate the second clue |q Hot on the Icy Trail##5079/2 |goto Whitevale 4799,-535,-941
		.click Suspicious Snow Lopp##271744
		.' Locate the third clue |q Hot on the Icy Trail##5079/3 |goto Whitevale 4949,-593,-933
	step
		'Press _C_ to use your communicator:
		..turnin Hot on the Icy Trail##5079 |goto 4943,-596,-931
		..accept Kill the Double Agent##5080 |goto 4941,-595,-932
	step
		.kill Whitesprings Swarmling##6102688
		.kill Whitesprings Pincer##6187710
		.' Collect Spikehorde Fillets |q Butchering for the Butcher##5028/2 |goto Whitevale 4914,-493,-944
	step
		.talk Ric Longshanks##6168650
		.' Talk to Ric Longshanks |q You Can Run...##5257/1 |goto 4816,-829,-942
	step
		.click Ric Longshanks##5922158
		.' Follow Ric Longhanks as he tries to run away
		.' Press _T_ to use Gambler's Glue to slow Ric Longshanks |q You Can Run...##5257/2 |goto 4817,-830,-942
		.kill 1 Ric Longshanks##5922158
	step
		'Press _C_ to use your communicator:
		..turnin You Can Run...##5257
		..accept ... But You Can't Hide##5258
	step
		.kill Silversnout Mauler##6112336
		.kill Silversnout Girrok##5668805
		.' Collect Girrok Flanks |q Butchering for the Butcher##5028/1 |goto Whitevale 5031,-877,-928
	step
		.' Locate the secret meeting location |q Kill the Double Agent##5080/1 |goto Whitevale 4979,-744,-888
		.kill 1 Agent Zero##6044648
		.kill 1 Agent Lazilo##6242319
		.' Kill Agent Lazilo and Agent Zero |q Kill the Double Agent##5080/2 |goto 4977,-740,-888
	step
		'Press _C_ to use your communicator:
		..turnin Kill the Double Agent##5080
		..accept Distress Call##5304
	step
		.click Bundle of Dried Flowers##271768
		..accept The Snowfade Grounds##5305 |goto Whitevale 4967,-743,-888
	step
		'_Enter_ the ice cave |goto Whitevale 5199,-1163,-897 < 20
		.' Find Bernie the Barfly |q ... But You Can't Hide##5258/1 |goto Whitevale 5178,-1255,-892
	step
		'_Follow_ the ramp up |goto Whitevale 5195,-1273,-892 < 10
		.kill 1 Silversnout Patriarch##568007
		.' Save Bernie the Barfly |q ... But You Can't Hide##5258/2 |goto Whitevale 5269,-1260,-880
	step
		'_Leave_ the cave |goto Whitevale 5196,-1171,-895 < 10
		.talk "Money Baggs" Tragg##291925 |tip He's at the top of the hill in the house.
		..turnin ... But You Can't Hide##5258 |goto 4520,-927,-877
	step
		.talk Grollo the Butcher##292147
		..turnin Butchering for the Butcher##5028 |goto Whitevale 4538,-712,-935
	step
		'_Jump_ onto the flying tram |goto 4455,-741,-934 < 10
		.click Smuggler's Strongbox##274228
		.' Open the Smuggler's Strongbox |q Smuggler Shakedown##5134/1 |goto Whitevale 4307,-298,-757
	step
		'_Jump_ onto the flying tram |goto Whitevale 4325,-365,-756 < 10
		.talk Bartender Alemar##291950
		..turnin Smuggler Shakedown##5134 |goto Whitevale 4654,-707,-934
	step
		.talk Alchemist Vikmos##274108
		..turnin The Snowfade Grounds##5305 |goto Whitevale 5239,-112,-970
		..accept Peculiar Flora##5054 |goto 5239,-112,-970
	step
		.click Fresh Malfrost Blossom##6517499
		.' Gather Fresh Malfrost Blossoms |q Peculiar Flora##5054/2 |goto 5214,-109,-971
	step
		.talk Matria Paleblossom##272568
		..accept The Matria's Concerns##5165 |goto 5218,-84,-969
	step
		.' Listen to Matria Paleblossom |q The Matria's Concerns##5165/1 |goto 5216,-83,-971
		.click Elder Soul Sprout##272597
		.' Touch the Elder Soul Sprout |q The Matria's Concerns##5165/2 |goto 5212,-82,-971
	step
		.talk Matria Paleblossom##272568
		..turnin The Matria's Concerns##5165 |goto 5218,-84,-969
	step
		.talk Scientist Marshmaul##273455
		..accept Thawing Out the Wildlife##5061 |goto 5197,-104,-971
	step
		.talk Banther Windtracker##272856
		..accept Hunter and Gatherer##5067 |goto 5238,-86,-971
	step
		.talk Mitsy Grassdancer##272892
		..accept Splorg Sniffles##5063 |goto 5232,-75,-971
	step
		.click Transmat Terminal##270833 |goto Whitevale 5195,-41,-972
		.' Click _Yes_ to set your Recall to Snowfade Grounds
		|confirm |q 5067
	step
		.click Frozen Plant##6383697
		.' Gather Tundra Tubers from Frozen Plants |q Hunter and Gatherer##5067/2 |goto Whitevale 5183,100,-971
		.click Warm-Weather Pumera##1042865+, Warm-Weather Razortail##273025+
		.' Press _T_ to:
		.' Use the Aurin Frost Melter to thaw frozen animals |q Thawing Out the Wildlife##5061/1 |goto Whitevale 5117,-17,-959
	step
		.kill Frost-Striped Predator##6503986
		.' Kill pumera and girrok |q Hunter and Gatherer##5067/1 |goto Whitevale 5183,100,-971
	step
		'Press _C_ to use your communicator:
		..turnin Hunter and Gatherer##5067
		..accept The Frozen Balance##5068
	step
		.kill Whitesprings Pincer##6496213+, Whitesprings Swarmling##1111654+
		.' Gather Swarmling Shells from Whitesprings Swarmlings |q Splorg Sniffles##5063/2 |goto 5019,-297,-940
	step
		.kill Boulderpack Ringtail##6599723+, Icehorn Mammodin##6723807+, Rime-Scaled Boulderback##728384+
		.' Kill Boulderbacks, Ringtails, and Mammodin |q The Frozen Balance##5068/1 |goto Whitevale 4906,-82,-941
	step
		'Press _C_ to use your communicator:
		..turnin The Frozen Balance##5068
	step
		.talk Scientist Marshmaul##273447
		..turnin Thawing Out the Wildlife##5061 |goto Whitevale 5196,-106,-971
		..accept Speak to the Matria##5166 |goto 5196,-106,-971
	step
		.talk Matria Paleblossom##272561
		..turnin Speak to the Matria##5166 |goto 5217,-84,-969
		..accept Reports from the Frozen Field##5117 |goto 5217,-84,-969
		..accept The Cries of the Forest##5118 |goto 5217,-84,-969
	step
		.talk Mitsy Grassdancer##950332
		.' Return to Mitsy Grassdancer |q Splorg Sniffles##5063/3 |goto 5232,-74,-971
		.' Watch Wiggles get better |q Splorg Sniffles##5063/4 |goto 5231,-75,-971
	step
		.talk Mitsy Grassdancer##272884
		..turnin Splorg Sniffles##5063 |goto 5231,-75,-971
		..accept Truffle Sniffer##5064 |goto 5231,-75,-971
	step
		.talk Alchemist Vikmos##274099
		..turnin Peculiar Flora##5054 |goto 5242,-112,-971
		..accept Obligatory Volunteers##5056 |goto 5242,-112,-971
	step
		.' Follow and protect Mr. Wiggles |q Truffle Sniffer##5064/1 |goto 5217,-51,-973
		.click Tundra Truffle##982464
		.' Collect Tundra Truffles dug up by Mr. Wiggles |q Truffle Sniffer##5064/2 |goto 5241,-31,-973
	step
		.click Warm-Weather Jabbit##899461
		.' Capture a Warm-Weather Jabbit |q Obligatory Volunteers##5056/1 |goto Whitevale 5186,-247,-945
		.click Warm-Weather Pumera##936459
		.' Capture a Warm-Weather Pumera |q Obligatory Volunteers##5056/2 |goto 5181,-206,-943
		.click Tundra Jabbit##916386
		.' Press _T_ to use the Specimen Net to capture a Tundra Jabbit |q Obligatory Volunteers##5056/3 |goto 5199,-205,-942
		.click Frost-Striped Pumera##966602
		.' Press _T_ to use the Specimen Net to capture a Frost-Striped Pumera |q Obligatory Volunteers##5056/4 |goto 5294,-264,-939
	step
		.click Soul Sprout##272678
		.' Place protective wards on Elder Tree saplings |q The Cries of the Forest##5118/2 |goto 5083,-69,-954
	step
		.click Soul Sprout##272678
		.' Place protective wards on Elder Tree saplings |q The Cries of the Forest##5118/3 |goto Whitevale 5091,67,-962
	step
		.click Soul Sprout##272678
		.' Place protective wards on Elder Tree saplings |q The Cries of the Forest##5118/4 |goto Whitevale 5072,-182,-942
	step
		.click Soul Sprout##272678
		.' Place protective wards on Elder Tree saplings |q The Cries of the Forest##5118/6 |goto Whitevale 4928,-200,-940
	step
		.click Soul Sprout##272678
		.' Place protective wards on Elder Tree saplings |q The Cries of the Forest##5118/1 |goto Whitevale 4883,-60,-939
	step
		.talk Snowfade Naturalist##759486
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 14 |goto Whitevale 4989,-63,-949
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 28 |goto 5057,-72,-954
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 42 |goto Whitevale 5029,-164,-945
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 57 |goto Whitevale 4935,-200,-940
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 71 |goto Whitevale 4865,-143,-930
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |count 85 |goto Whitevale 4865,-143,-930
	step
		.talk Snowfade Naturalist##761973
		.' Collect reports from Snowfade Naturalists and Snowfade Wood Watchers |q Reports from the Frozen Field##5117/1 |goto Whitevale 4935,-51,-933
	step
		.talk Alchemist Vikmos##274099
		..turnin Obligatory Volunteers##5056 |goto Whitevale 5236,-114,-971
		..accept Some Testing Required##5057 |goto 5236,-114,-971
	step
		.talk Mitsy Grassdancer##272884
		..turnin Truffle Sniffer##5064 |goto 5232,-74,-971
	step
		.talk Matria Paleblossom##272561
		..turnin Reports from the Frozen Field##5117 |goto 5219,-84,-969
		..turnin The Cries of the Forest##5118 |goto 5219,-84,-969
		..accept Following the Elder Voices##5119 |goto 5219,-84,-969
	step
		.' Listen to Alchemist Vikmos and Avra Darkos |q Some Testing Required##5057/1 |goto 5241,-114,-971
		.click Captured Tundra Jabbit##1018250
		.' Feed the Captured Tundra Jabbit |q Some Testing Required##5057/2 |goto 5236,-114,-971
		.click Captured Warm-Weather Jabbit##1015639
		.' Feed the Captured Warm-Weather Jabbit |q Some Testing Required##5057/3 |goto 5238,-118,-971
		.click Captured Warm-Weather Pumera##1018387
		.' Feed Captured Frost-Striped Pumera |q Some Testing Required##5057/4 |goto 5245,-116,-971
		.click Captured Frost-Striped Pumera##1018382
		.' Feed the Captured Warm-Weather Pumera |q Some Testing Required##5057/5 |goto 5243,-111,-971
	step
		.talk Alchemist Vikmos##1003963
		..turnin Some Testing Required##5057 |goto 5241,-113,-971
	step
		.talk Alchemist Vikmos##1003963
		..accept Off to Locus Dawn##5059 |goto 5240,-113,-971
	step
		.' Find the musical voice of the Wise One |q Following the Elder Voices##5119/1 |goto 5197,-119,-969
		.' Follow the voice of the Wise One |q Following the Elder Voices##5119/2 |goto Whitevale 5068,-31,-947
		.' Continue to follow the voice of the Wise One |q Following the Elder Voices##5119/3 |goto 4842,-128,-924
	step
		.kill 1 Frostfist##1029791
		.' Kill the ice gronyx named Frostfist |q Following the Elder Voices##5119/5 |goto Whitevale 4608,-93,-927
	step
		.click Elder Tree Soul Sprout##272576
		.' Press _T and left-click_ the Sprout to place a protective ward on the Wise One's Soul Sprout |q Following the Elder Voices##5119/6 |goto 4592,-98,-921
	step
		'Press _C_ to use your communicator:
		..turnin Following the Elder Voices##5119
	step
		.talk Regulator Codec##291937 |tip He walks around Locus Dawn and may not be in this exact spot.
		..turnin Off to Locus Dawn##5059 |goto Whitevale 5874,-1086,-944
		..turnin Distress Call##5304 |goto 5874,-1086,-944
		..accept Sentinels##5039 |goto 5874,-1086,-944
	step
		.talk Wiretapp##291924
		..accept Brain Dump##5040 |goto 5880,-1089,-944
	step
		.kill Berserk Freebot##870588
		.kill Rampaging Freebot##1083382
		.' Collect Neural Cores |q Brain Dump##5040/1 |goto 5799,-992,-970
		.' Deactivate bands of crazed Freebots |q Sentinels##5039/1 |goto 5799,-992,-970
	step
		'Press _C_ to use your communicator:
		..turnin Brain Dump##5040
		..turnin Sentinels##5039
		..accept Where There's Smoke...##5162
	step
		.' Examine the debris |q Where There's Smoke...##5162/1 |goto Whitevale 5866,-817,-979
	step
		.talk Pilot Byrdson##291776
		..accept Nobody Left Behind##5254 |goto 6197,-591,-975
	step
		.' Investigate the crash site |q Where There's Smoke...##5162/2 |goto Whitevale 6066,-513,-907
		.click Fallen Crewman##698318 |tip They are found all around this crash site.
		.' Revive Fallen Crewmen |q Nobody Left Behind##5254/1 |goto 6056,-518,-906
		.kill 1 Mechari Overseer##557983
		.' Kill the Mechari Overseer |q Where There's Smoke...##5162/3 |goto 6053,-505,-908
	step
		..turnin Where There's Smoke...##5162
		..accept To the Botcave!##5044
		..accept Control, Halt, Defeat##5041
	step
		.talk Pilot Byrdson##291776
		..turnin Nobody Left Behind##5254 |goto Whitevale 6198,-591,-975
		..accept Hungry and Desperate##5120 |goto 6198,-591,-975
	step
		.kill Lumbering Walatusk##1062367 |tip These are found near the shore.
		.' Collect Walatusk Livers from Walatusks |q Hungry and Desperate##5120/1 |goto Whitevale 6234,-743,-998
	step
		.talk Rescued Crewman##291718
		..turnin Hungry and Desperate##5120 |goto Whitevale 6195,-591,-976
	step
		.click Berserk Freebot##1094803
		.click Rampaging Freebot##1103234
		.' _Weaken_ the bots, but don't kill them
		.' Press _T_ to apply the hotfix to weakened Freebots |q Control, Halt, Defeat##5041/1 |goto 5877,-889,-985
	step
		'Press _C_ to use your communicator:
		..turnin Control, Halt, Defeat##5041
	step
		'_Enter_ the cave |goto 5578,-886,-962 < 10
		.' Locate the entrance to the Botcave |q To the Botcave!##5044/1 |goto Whitevale 5573,-859,-962
		.click Spycam Install Point##291910
		.' Install the first Black Hoods Spycam |q To the Botcave!##5044/2 |goto Whitevale 5443,-767,-1002
		.click Spycam Install Point##291906
		.' Install the second Black Hoods Spycam |q To the Botcave!##5044/3 |goto Whitevale 5470,-585,-1021
		.click Spycam Install Point##291903
		.' Install the third Black Hoods Spycam |q To the Botcave!##5044/4 |goto 5388,-464,-1019
	step
		.talk Avra Darkos##1200551
		..turnin To the Botcave!##5044 |goto 5384,-460,-1020
		..accept The Dominion Did It##5045 |goto 5384,-460,-1020
	step
		.click Door Control Panel##291909 |goto 5450,-509,-1016 < 10
		.' Around this room and back of the cave:
		.kill Snowshadow Inquisitor##1198139
		.kill Snowshadow Saboteur##1031069
		.' Kill Snowshadow agents |q The Dominion Did It##5045/1 |goto Whitevale 5510,-458,-1027
		.kill Snowshadow Scientist##1050644
		.kill Snowshadow Analyst##961894
		.kill Snowshadow Technician##1128893
		.' Kill Snowshadow Scientists |q The Dominion Did It##5045/2 |goto 5384,-448,-1020
		.kill 1 Equalizer Zyrio##1198718
		.' Kill Equalizer Zyrio |q The Dominion Did It##5045/3 |goto Whitevale 5571,-406,-1017
	step
		'Press _C_ to use your communicator:
		..turnin The Dominion Did It##5045
		..accept High Level Infiltration##5108
	step
		'_Leave_ the cave |goto Whitevale 5579,-887,-963 < 10
		.click Black Hoods Infiltration Chopper##1208724
		.' Board the infiltration chopper |q High Level Infiltration##5108/1 |goto Whitevale 4542,-660,-940
		.' Base jump into the ICI base |q High Level Infiltration##5108/2 |goto Whitevale 5438,111,-947
	step
		.talk Avra Darkos##271246
		..turnin High Level Infiltration##5108 |goto 5437,86,-948
		..accept Unsafe Working Conditions##5107 |goto 5437,86,-948
		..accept Wetwork in Whitevale##5314 |goto 5437,86,-948
	step
		.click Flow Control Panel##271692
		.' Sabotage Flow Control Panels |q Unsafe Working Conditions##5107/2 |count 33 |goto 5565,58,-956
		.click Flow Control Panel##271699
		.' Sabotage Flow Control Panels |q Unsafe Working Conditions##5107/2 |count 66 |goto 5538,151,-955
		.click Flow Control Panel##271683
		.' Sabotage Flow Control Panels |q Unsafe Working Conditions##5107/2 |goto 5635,164,-955
	step
		.kill Snowshadow Mad Scientist##1240221+, Snowshadow Analyst##1258575+
		.' Kill Snowshadow Scientists |q Unsafe Working Conditions##5107/1 |goto 5542,76,-952
	step
		'Press _C_ to use your communicator:
		..turnin Unsafe Working Conditions##5107
		..accept No More Questions##5109
	step
		
		.kill 1 Inventor Trappa##1269077 |q Wetwork in Whitevale##5314/1 |goto 5562,140,-947
	step
		'_Enter_ the cave |goto Whitevale 5774,-53,-934 < 10
		.kill Snowshadow Analyst##1134407+, Snowshadow Inquisitor##1261990+, Snowshadow Investigator##287263+, Snowshadow Dominator##1284546+
		.' Kill Snowshadow Dominators and Snowshadow Inquisitors |q No More Questions##5109/1 |goto 5883,-160,-954
	step
		'Press _C_ to use your communicator:
		..turnin No More Questions##5109
		..accept Charge the Explosives to 11##5110
		..accept Freedom at Snowshadow##5315 |goto Whitevale 5857,-144,-954
	step
		.' All around the inside of this cave:
		.click Snowshadow Energy Cage##274181
		.' Memorize and repeat the color pattern as shown
		.' Free Exile Prisoners from Snowshadow Energy Cages |q Freedom at Snowshadow##5315/1 |goto 5883,-163,-954
	step
		'Press _C_ to use your communicator:
		..turnin Freedom at Snowshadow##5315
	step
		.kill 1 Cycler Kolo##1285661 |q Wetwork in Whitevale##5314/2 |goto 5968,-119,-953
	step
		.kill Snowshadow Officer##1195689+, Snowshadow Grenadier##1287501+, Snowshadow Cannoneer##1348251+
		.' Kill ICI weapons experts |q Charge the Explosives to 11##5110/1 |goto 5891,-181,-956
	step
		'_Go up_ the stairs |goto 5871,-206,-938 <10
		.kill 1 Equalizer Julius##1284149 |q Wetwork in Whitevale##5314/3 |goto 5975,-86,-917
	step
		'Press _C_ to use your communicator:
		..turnin Wetwork in Whitevale##5314
	step
		.' Plant explosives on the vehicles and equipment in this room:
		.click Bomb Plant Loc##271628
		.' Plant Explosives |q Charge the Explosives to 11##5110/2 |count 33 |goto 5965,-56,-917
		.' Plant Explosives |q Charge the Explosives to 11##5110/2 |count 66 |goto 5990,-47,-914
		.' Plant Explosives |q Charge the Explosives to 11##5110/2 |goto 5998,-64,-918
	step
		'Press _C_ to use your communicator:
		..turnin Charge the Explosives to 11##5110
		..accept Striking at the Snake##5111
	step
		.click Bunker Entrance##271572
		.' Enter the Junction Snowshadow ICI Bunker |q Striking at the Snake##5111/1 |goto Whitevale 5969,-239,-951
	step
		.kill 1 Axis Venin##1223445
		.' Retrieve the ICI Access Code from Axis Venin |q Striking at the Snake##5111/2 |goto Whitevale 6366,-96,-892
	step
		..turnin Striking at the Snake##5111
		..accept Escape from Junction Snowshadow##5112
	step
		.click Snowshadow Info Column##271541
		.' Use Code _6468_ to access the Snowshadow Info Column |q Escape from Junction Snowshadow##5112/1 |goto 6366,-82,-888
		.click Snowshadow Bunker's Back Door##271549
		.' Escape from Junction Snowshadow |q Escape from Junction Snowshadow##5112/2 |goto 6282,-126,-888
	step
		.click Black Hoods Extraction Chopper##271556
		.' Ride Agent Hawke's infiltration chopper |q Escape from Junction Snowshadow##5112/3 |goto Whitevale 6372,-78,-695
	step
		.talk Special Agent Boyd##271334
		.' Click _Yes_ to go to Avra's Lair |q Escape from Junction Snowshadow##5112/4 |goto Whitevale 4639,-836,-918
	step
		.talk Avra Darkos##285008
		.' Speak to Special Agent Boyd |q Escape from Junction Snowshadow##5112/5 |goto 4640,-837,-918
		.' Choose _Yes_, take me to _Avra's Lair_
	step
		.talk Avra Darkos##285005
		..turnin Escape from Junction Snowshadow##5112 |goto 4640,-837,-918 |goto 4400,-1184,-1067
	step
		'Press _C_ to use your communicator:
		..accept Convoy to Wigwalli##5669
	step
		.talk Special Agent Boyd##271139
		.' Choose _Yes_ to leave Avra's Lair |goto 4558,-1186,-1069 < 10
		.click Gelidar Pearls##1452760 |tip It's underwater.
		..accept Deep Sea Diving##5586 |goto Whitevale 4384,-538,-1021
	step
		.' Found all around Thermock Lake:
		.click Gelidar Pearls##1452760
		.kill Icetooth Piranha##1463538
		.' Collect Gelidar Pearls |q Deep Sea Diving##5586/1 |goto 4384,-536,-1024
	step
		.' Use the prompter in the top left of your screen to find the exact location of the treasure, then use the _Digging for Treasure!_ skill in your temporary skill bar to dig it up
		..accept Wigwalli Treasure##9212 |goto Whitevale 4126,-656,-948
	step
		.click Lopp Caravan##291722
		.' Click _Yes_ to ride Far-Trader Jojo's kurg |q Convoy to Wigwalli##5669/1 |goto Whitevale 4251,-832,-942
	step
		.talk Chief Migisi##291739
		..turnin Convoy to Wigwalli##5669 |goto Whitevale 3466,-434,-943
		..accept Missing Migisi##5570 |goto 3466,-434,-943
	step
		.talk Young Migisi##291738
		..turnin Missing Migisi##5570 |goto Whitevale 3559,-398,-939
		..accept Charting the Course##5572 |goto 3559,-398,-939
	step
		.talk Bride Kamala##289675
		..accept The Complete Guest List##5544 |goto Whitevale 3462,-469,-942
	step
		.talk Far-Trader Diki##291730
		..turnin Deep Sea Diving##5586 |goto 3752,-511,-931
		..accept Blood Moonshine##5587 |goto 3752,-511,-931
	step
		.talk Treasure Collector Rung##279932
		..turnin Wigwalli Treasure##9212 |goto 3782,-524,-931
	step
		.talk Treasure Hunter Ram##291189
		.talk Kurg-Tender Gagan##291177
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 20 |goto 3771,-520,-931
		.talk Hunt-Master Toshan##291188
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 40 |goto 3619,-490,-932
	step
		.talk Hunt-Master Toshan##291180
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 60 |goto Whitevale 3618,-491,-932
	step
		.talk Far-Trader Zopa##291176
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |count 80 |goto 3498,-510,-938
	step
		.talk Shaman Achal##291186
		.' Speak to every Lopp on Bride Kamala's list |q The Complete Guest List##5544/1 |goto 3438,-482,-942
	step
		.talk Bride Kamala##289675
		..turnin The Complete Guest List##5544 |goto 3463,-470,-942
		..accept Bountiful Floral Bouquet##5543 |goto 3463,-470,-942
		..accept The Lighting of the Lanterns##5545 |goto 3463,-470,-942
		..accept Something Old, New, Eldan, and Blue##5546 |goto 3463,-470,-942
	step
		.talk Best Man Seba##291544
		..accept Where Have All the Groomsmen Gone?##5539 |goto 3459,-479,-942
	step
		.click Transmat Terminal##279281
		.' Click _Yes_ to set your Recall to Snowsoft Woods |goto Whitevale 3449,-400,-942
		|confirm |q 5572
	step
		.click Redmoon Chest##291889
		.' Search Redmoon Chests |q Charting the Course##5572/2 |goto 3620,-350,-937
	step
		'Press _C_ to use your communicator:
		..turnin Charting the Course##5572
		..accept In the Bosun's Brig##5574
	step
		.kill 1 Bosun Sprulo##1777965 |q In the Bosun's Brig##5574/2 |goto Whitevale 3721,-295,-935
		.click Bosun's Brig##291858
		.' Free Young Migisi from Bosun Sprulo's brig |q In the Bosun's Brig##5574/1 |goto 3715,-300,-935
	step
		.' All around this area:
		.kill Redmoon Rover##1411349+, Redmoon Tracker##1758300+, Redmoon Trained Razortail##1777283+
		.' Collect Stolen Shinies from Redmoon Marauders |q Blood Moonshine##5587/2 |goto 3630,-311,-936
		.kill Redmoon Corsair##1572082+, Redmoon Rover##1811448+, Redmoon Rifleman##1691307+, Redmoon Renegade##1705330+
		.' Kill Redmoon Marauders |q Blood Moonshine##5587/1 |goto Whitevale 3630,-311,-936
	step
		.talk Young Migisi##291727
		..turnin In the Bosun's Brig##5574 |goto Whitevale 3763,-224,-936
		..accept Redmoon's Reekage##5576 |goto 3763,-224,-936
		..accept Redmoon's Ruin##5577 |goto 3763,-224,-936
	step
		.' All around this area:
		.click Fuse##291850
		.' Ignite gunpowder kegs |q Redmoon's Ruin##5577/1 |goto 3806,-228,-941
		.' Press _T_ to use Migisi's stinkbombs on Redmoon mobs and then kill them |q Redmoon's Reekage##5576/1 |goto 3813,-245,-943
	step
		'Press _C_ to use your communicator:
		..turnin Redmoon's Reekage##5576
		..turnin Redmoon's Ruin##5577
		..accept Portside of Starboard##5578
	step
		.' Locate the Fortune's Fool |q Portside of Starboard##5578/1 |goto Whitevale 3947,-342,-943
		.' Swim down to the Fortune's Fool |q Portside of Starboard##5578/2 |goto 4116,-212,-965
		.click Hull Door##291765
		.' Click _Yes_ to enter the Fortune's Fool |q Portside of Starboard##5578/3 |goto 4145,-190,-999
	step
		'_Run through_ this corridor |goto Whitevale 3880,-228,-1196 < 10
		.kill 1 First Mate Darugna##1961671
		.kill 1 Blackbeak##1953478
		.' Kill First Mate Darugna and Blackbeak |q Portside of Starboard##5578/4 |goto Whitevale 3977,-151,-1195
		.click Young Migisi##1951112
		.' Free Young Migisi |q Portside of Starboard##5578/5 |goto 3967,-143,-1195
	step
		'Press _C_ to use your communicator:
		..turnin Portside of Starboard##5578
		..accept A Wigwalli Welcome##5579
	step
		'_Run back_ through the corridor |goto Whitevale 3921,-226,-1198 < 10
		.click Hull Door##291752 
		.' _Exit_ the Ship |goto 3824,-313,-1187 < 10
		.click Deep Floral Essence##1817609
		.' Collect Deep Floral Essence |q Bountiful Floral Bouquet##5543/1 |goto Whitevale 3906,-661,-957
	step
		.kill Frostshell Clamper##1971359+, Coldroot Sleetsmasher##1944405+, Frostshell Slusher##1905422+
		.' Collect Frostshell Fragments from Frostshell Clampers |q The Lighting of the Lanterns##5545/3 |goto 3904,-690,-961
		.kill Coldroot Icecracker##1845042
		.' Collect Frostglow Algae from Coldroot Icecrackers |q The Lighting of the Lanterns##5545/1 |goto 3990,-748,-955
		.kill Snowstep Roamer##1930912 |tip Look for yellow dots on your mini map
		.' Collect Snowstep Stag Horns from Snowstep Roamers |q The Lighting of the Lanterns##5545/2 |goto Whitevale 3875,-771,-957
	step
		.' Find the missing caravan |q Where Have All the Groomsmen Gone?##5539/1 |goto 3795,-720,-956
		.kill 1 Sickly Snoglug##2026050
		.talk Lopp Groomsman##1983174
		.' _Click here_ for another spawn point |goto 3680,-695,-937
		.talk Lopp Groomsman##2044499
		.' _Click here_ for another spawn point |goto Whitevale 3801,-544,-927
		.talk Lopp Groomsman##2041516
		.' _Click here_ for another spawn point |goto Whitevale 3675,-847,-922
		.talk Lopp Groomsman##2036523
		.' Find Lopp Groomsmen |q Where Have All the Groomsmen Gone?##5539/2 |goto 3895,-744,-955
	step
		.talk Treasure Hunter Ram##291189
		.' Get the Old Lopp Map from Treasure Hunter Ram |q Something Old, New, Eldan, and Blue##5546/1 |goto Whitevale 3773,-522,-931
	step
		.talk Merchant Wuzzle##280163
		.' Buy a New Lopp Energy Rod from Merchant Wuzzle |tip It is listed in the General tab. |q Something Old, New, Eldan, and Blue##5546/3 |goto 3787,-524,-930
	step
		.click Whitevale Eldan Pylon##290935
		.' Collect a Eldan Pylon Fragment from the Whitevale Eldan Pylon |q Something Old, New, Eldan, and Blue##5546/4 |goto Whitevale 4083,-972,-916
	step
		.kill Burningblue Dawngrazer##1956118
		.' Collect a Burningblue Energy Shard from the Burningblue Dawngrazer |q Something Old, New, Eldan, and Blue##5546/5 |goto 4100,-977,-915
	step
		.talk Best Man Seba##291542
		..turnin Where Have All the Groomsmen Gone?##5539 |goto Whitevale 3815,-717,-957
		..accept Shattered in the Snow##5540 |goto 3815,-717,-957
	step
		.' Scattered around the area:
		.click Wigwalli Wedding Shiny##1999975
		.' Recover Wigwalli Wedding Shinies from animals |q Shattered in the Snow##5540/1 |goto 3800,-693,-957
	step
		'Press _C_ to use your communicator:
		..turnin Shattered in the Snow##5540
		..accept Not Without a Fight##5541
	step
		.kill Darkice Shaman##2077980+, Darkice Scratcher##1888275+, Darkice Adept##1926347+, Darkice Mystic##2051893+
		.' Kill Darkice Skeech |q Not Without a Fight##5541/1 |goto Whitevale 3908,-963,-935
		.' Collect the Darkice Prisoner Key |q Not Without a Fight##5541/2 |goto 3906,-967,-935
	step
		.click Darkice Cage Door##291550
		.' Unlock the Darkice Cage Door |q Not Without a Fight##5541/3 |goto 3924,-1029,-915
	step
		.talk Groom Dawa##291551
		..turnin Not Without a Fight##5541 |goto 3919,-1044,-912
		..accept The Stolen Engagement Shiny##5542 |goto 3919,-1044,-912
	step
		'_Enter_ the cave |goto Whitevale 3915,-1061,-909 < 10
		.kill 1 Darkice Queen##2155393
		.' Reclaim the Lopp Engagement Shiny from the Darkice Queen |q The Stolen Engagement Shiny##5542/1 |goto Whitevale 3920,-1160,-912
	step
		.talk Far-Trader Diki##291730
		..turnin Blood Moonshine##5587 |goto Whitevale 3753,-511,-931
	step
		.talk Far-Trader Zopa##291176
		.' Speak to Far-Trader Zopa |q The Lighting of the Lanterns##5545/4 |goto Whitevale 3499,-511,-938
	step
		.talk Groom Dawa##291541
		..turnin The Stolen Engagement Shiny##5542 |goto 3465,-484,-941
	step
		.talk Bride Kamala##289675
		..turnin The Lighting of the Lanterns##5545 |goto 3464,-472,-942
	step
		.talk Shaman Achal##291186 |q Bountiful Floral Bouquet##5543/2 |goto 3438,-481,-942
	step
		.talk Relic Holder Ramesh##290370 |q Something Old, New, Eldan, and Blue##5546/6 |goto Whitevale 3362,-478,-942
	step
		.talk Bride Kamala##289675
		..turnin Bountiful Floral Bouquet##5543 |goto Whitevale 3461,-469,-943
		..turnin Something Old, New, Eldan, and Blue##5546 |goto 3461,-469,-943
		..accept A Shiny Wedding at Last##5547 |goto 3461,-469,-943
	step
		.talk Chief Migisi##291739
		..turnin A Wigwalli Welcome##5579 |goto 3464,-436,-943
	step
		.talk Avanti the Bright-Eyed##291908
		..accept A Frosty Request##5588 |goto Whitevale 3447,-459,-943
	step
		.talk Krag Studrok##292341
		..accept Priorities##5529 |goto 3468,-409,-941
	step
		.click Pristine Snow##2071266 |tip They look like piles of snow all around this area.
		.' Gather Pristine Snow |q A Frosty Request##5588/1 |goto Whitevale 3424,-396,-946
	step
		.click Avanti's Snow Mound##2184391 |tip You'll have to do it 3 times.
		.' Press _T_ to build a Snowlopp on Avanti's Snow Mound |q A Frosty Request##5588/2 |goto Whitevale 3443,-462,-943
	step
		.talk Avanti the Bright-Eyed##291908
		..turnin A Frosty Request##5588 |goto 3445,-459,-943
	step
		.talk Relic Holder Ramesh##290370
		.' Retrieve the Relic of Dak-Buun |q A Shiny Wedding at Last##5547/1 |goto Whitevale 3362,-478,-942
	step
		.click Lopp Wedding Altar Stand##290973
		.' Place the Relic of Dak-Buun on the wedding altar |q A Shiny Wedding at Last##5547/2 |goto Whitevale 3601,-554,-937
		.' Observe the Wedding Ceremony |q A Shiny Wedding at Last##5547/3 |goto 3601,-547,-937
	step
		.talk Dak-Buun##2127545
		..turnin A Shiny Wedding at Last##5547 |goto 3599,-552,-937
	step
		.talk Kurg-Tender Umeshanu##291729
		..accept Spring After Sprouts##5585 |goto 3424,-265,-937
	step
		.click Snow Sprout##2182542
		.' Catch Snow Sprouts |q Spring After Sprouts##5585/1 |goto 3454,-261,-942
	step
		.talk Kurg-Tender Umeshanu##291729
		..turnin Spring After Sprouts##5585 |goto 3424,-267,-937
	step
		.click Krag's Hoverbike##2151569
		.' Take Krag's Hoverbike |q Priorities##5529/1 |goto 3462,-407,-940
	step
		.talk Commander Raxen##292857
		..turnin Priorities##5529 |goto Whitevale 4023,164,-966
		..accept No Man Left For Dead##5530 |goto 4023,164,-966
	step
		.talk Mechanic Anxa##292854
		..accept The Dead Walking##5533 |goto 4027,173,-966
	step
		.talk Victor Lazarin##292855
		..accept For Science##5706 |goto 4001,221,-969
	step
		.click Outbreak Squirg##2214376
		.' Capture an Outbreak Squirg |q For Science##5706/1 |goto Whitevale 3912,118,-972
		.' Once you have the Squirg _on your head_ then bring it to this spot |goto Whitevale 4001,218,-969
	step
		.talk Victor Lazarin##292855
		..turnin For Science##5706 |goto Whitevale 4003,223,-969
	step
		.kill 1 Squirg Erupter##527477
		.' Press _C_ to use your communicator
		..accept Four Deadly Sins##5534 |goto Whitevale 3724,73,-975 |tip You may need to kill a few Zombies for this to unlock.
	step
		.click Emergency Medical Supplies##292711
		..accept Critical Condition##5705 |goto 3746,-23,-976
	step
		.click Emergency Medical Supplies##2300684 |tip They are all around this area as you quest:
		.kill 1 Squirg Smasher##2257128 |q Four Deadly Sins##5534/1 |goto 3791,64,-974 |tip He looks like a green alien, he walks around this area.
	step
		.click Emergency Medical Supplies##2300684 |tip They are all around this area as you quest:
		.kill 1 Squirg Erupter##2192450 |q Four Deadly Sins##5534/2 |goto 3846,92,-968 |tip He looks like a green alien, he walks around this area.
	step
		.click Emergency Medical Supplies##2300684 |tip They are all around this area as you quest:
		.kill 1 Squirg Stalker##2262759 |q Four Deadly Sins##5534/3 |goto 3588,60,-973 |tip He looks like a green alien, he walks around this area.
	step
		.kill 1 Squirg Spewer##2262535 |q Four Deadly Sins##5534/4 |goto 3698,32,-975 |tip He looks like a green alien, he walks around this area.
		.click Emergency Medical Supplies##2300684
		.' Collect Emergency Medical Supplies |q Critical Condition##5705/1 |goto 3780,-13,-974
	step
		' Press _C_ to use your communicator:
		..turnin Four Deadly Sins##5534
	step
		.click Corporal Maxog##292716
		.' Find Corporal Maxog |q No Man Left For Dead##5530/1 |goto 3690,17,-975
	step
		' Press _C_ to use your communicator:
		..turnin No Man Left For Dead##5530
		..accept Extra Crispy##5531
	step
		.click Fallen Soldier Corpse##2205194
		.' Burn Fallen Soldier and Trooper Corpses |q Extra Crispy##5531/1 |goto 3663,-24,-975
	step
		.kill Squirg Zombie##2127937
		.' Kill Squirg Zombies  |q The Dead Walking##5533/1 |goto Whitevale 3846,63,-969
	step
		' Press _C_ to use your communicator:
		..turnin The Dead Walking##5533
	step
		.talk Commander Raxen##292857
		..turnin Extra Crispy##5531 |goto Whitevale 4025,165,-966
		..accept If You Can't Beat Them, Blow Them Up##5532 |goto 4025,165,-966
	step
		.click Medical Station##292378
		.' Restock the empty Medical Stations |q Critical Condition##5705/2 |count 33 |goto 4013,228,-969
		.click Medical Station##292384
		.' Restock the empty Medical Stations |q Critical Condition##5705/2 |count 66 |goto 4033,228,-968
		.click Medical Station##292374
		.' Restock the empty Medical Stations |q Critical Condition##5705/2 |goto 4033,236,-966
	step
		.talk Victor Lazarin##292855
		..turnin Critical Condition##5705 |goto 4002,223,-969
	step
		.click Broken Bike Vendor##292850
		..accept Road Kill##5535 |goto Whitevale 4230,324,-944
	step
		.click Corpse Rider##2432173
		.' Borrow a Hoverbike |q Road Kill##5535/1 |goto 4225,326,-944
		.' Run over Squirg Zombies |q Road Kill##5535/2 |goto 4308,242,-944
	step
		' Press _C_ to use your communicator:
		..turnin Road Kill##5535
	step
		.click Battlefield Munitions##1854967 |tip More can be found around this area.
		.' Recover Battlefield Munitions |q If You Can't Beat Them, Blow Them Up##5532/1
	step
		.click Odd Squirg##2304896
		..accept The Squirg and I##8811 |goto Whitevale 3999,377,-962
	step
		.talk Varill Goldwood##292921
		..accept An All-Consuming Passion##8806 |goto Whitevale 3712,422,-983
	step
		.' Locate Varill Goldwood's lost lover |q An All-Consuming Passion##8806/1 |goto 3792,359,-987
	step
		.' Slowly make your way back to Varill, using _T_ to lure the Mutation with you |q An All-Consuming Passion##8806/2 |goto 3713,421,-984
		.' Observe Varill Goldwood's reunion |q An All-Consuming Passion##8806/3 |goto 3713,424,-983
		.kill 1 Loving Mutation##2453857
		.' Kill the Loving Mutation |q An All-Consuming Passion##8806/4 |goto 3710,425,-982
	step
		.talk Victor Lazarin##292803
		..turnin An All-Consuming Passion##8806 |goto Whitevale 4000,221,-969
	step
		.' This quest will turn you _PvP_ and requires you to kill enemies at a Dominion player base
		.' Feel free to skip this if you don't want to do it or if Dominion players are giving you too much trouble
		.click Shatterforce Gunner##2170210
		.click Shatterforce Infantry##1948443
		.' Press _T_ to use the Odd Squirg on Dominion players and troops |tip This greatly lowers their level and health, making you able to kill them. |q The Squirg and I##8811/1 |goto Whitevale 3529,284,-968
	step
		.' Standing next to you:
		.talk Odd Squirg##2499944
		..turnin The Squirg and I##8811 |goto Whitevale 3527,293,-969
	step
		.' Find the entrance to the Squirg Cave |q If You Can't Beat Them, Blow Them Up##5532/2 |goto Whitevale 3796,-32,-969
		.' Find the source of the Squirg Eggs |q If You Can't Beat Them, Blow Them Up##5532/3 |goto Whitevale 3824,799,-1065
		.click Bomb Marker##292656
		.' Press _T_ to place and Detonate the Munitions |q If You Can't Beat Them, Blow Them Up##5532/4 |goto 3823,808,-1065
	step
		.' Jump into the plume of water to leave the cave |goto 3791,577,-1032 <10
		.talk Commander Raxen##292805
		..turnin If You Can't Beat Them, Blow Them Up##5532 |goto 4024,166,-966
		..accept Mutagenocide##5699 |goto 4024,166,-966
	step
		.talk Victor Lazarin##292803
		..accept Datachrons of the Departed##5689 |goto 4000,222,-969
	step
		.' Found all around the Blasted Fields:
		.click Broken Datachron##863766
		.kill Mutated Soldier##470615
		.' Find Broken Datachrons on Mutated Soldiers |q Datachrons of the Departed##5689/1 |goto Whitevale 3889,244,-990
		.kill Mutated Soldier##837452
		.' Kill Mutated Soldiers |q Mutagenocide##5699/1 |goto 3854,221,-995
	step
		' Press _C_ to use your communicator:
		..turnin Mutagenocide##5699
		..turnin Datachrons of the Departed##5689
		..accept Mutually Assured Destruction##5707
	step
		.' Pick up the Jetpack |goto 3834,187,-992 <10
		.' Press _1_ to use the Jetpack to fly to the top of the Terraformer |q Mutually Assured Destruction##5707/1 |goto Whitevale 3736,211,-917
		.click Terraformer Console##292640
		.' Wipe the Terraformer Console's data |q Mutually Assured Destruction##5707/2 |goto 3736,213,-917
		.' Escape the Terraformer! |q Mutually Assured Destruction##5707/3 |goto Whitevale 4003,195,-968
	step
		.talk Victor Lazarin##292803
		..turnin Mutually Assured Destruction##5707 |goto 3998,221,-969
		..accept Here They Come##5655 |goto 3998,221,-969
	step
		.click Signal Flare##292665
		.kill Squirg Zombie##960876 |tip Press _T_ to use your Flamethrower.
		.' Ignite 1st Signal Flare and repel Zombies |q Here They Come##5655/1 |goto Whitevale 3971,232,-967
		.click Signal Flare #2##292657
		.kill Squirg Zombie##964915 |tip Press _T_ to use your Flamethrower.
		.' Ignite 2nd Signal Flare and repel Zombies |q Here They Come##5655/2 |goto Whitevale 3984,175,-969
		.click Signal Flare #3##292661
		.kill Squirg Zombie##948600 |tip Press _T_ to use your Flamethrower.
		.' Ignite 3rd Signal Flare and repel Zombies |q Here They Come##5655/3 |goto Whitevale 4024,132,-967
		.click Signal Flare #4##292666
		.kill 1 Squirg Giant##969888
		.' Ignite final Signal Flare and repel Zombies |q Here They Come##5655/4 |goto Whitevale 3999,204,-969
	step
		.talk Victor Lazarin##292803
		..turnin Here They Come##5655 |goto 3999,221,-969
	step
		' Press _C_ to use your communicator:
		..accept The Intern##5832
	step
		.click Broken Ultrabot Part##292875
		..accept A Real Fixer-Upper##7331 |goto Whitevale 3667,148,-1000
	step
		.' Found all around the Blasted Fields:
		.click Broken Ultrabot Part##336762
		.' Collect Ultrabot Parts |q A Real Fixer-Upper##7331/1 |goto 3616,212,-996
	step
		.click Broken Ultrabot##292931
		.' Repair the Broken Ultrabot |q A Real Fixer-Upper##7331/2 |goto 3677,140,-999
	step
		' Press _C_ to use your communicator:
		..turnin A Real Fixer-Upper##7331
	step
		.' Follow the road south |goto Whitevale 3825,550,-946 <10
		.talk Game Show Host##277954
		.' Select "Just jump out!"
		.' Use the skills on your temporary bar to answer the Game Show Host's questions |q The Intern##5832/1 |goto Whitevale 3100,773,-1032
		.talk Game Show Host##277954
		.' Select "Profit!"
		.' Use the skills on your temporary bar to answer the Game Show Host's questions |q The Intern##5832/2 |goto Whitevale 3100,773,-1032
		.talk Game Show Host##277954
		.' Select "You've FailCeded"
		.' Use the skills on your temporary bar to answer the Game Show Host's questions |q The Intern##5832/3 |goto Whitevale 3100,773,-1032
	step
		.talk Prime Executive##277965
		..turnin The Intern##5832 |goto 3095,775,-1032
		..accept Abduction Junction##5833 |goto 3095,776,-1032
	step
		.click Transmat Terminal##272810
		.' Click _Yes_ to set your Recall ability to Prosperity Junction |goto 3049,725,-1028
		|confirm |q 5833
	step
		.kill 1 Silverscale Abductor##1194331
		.' Press _C_ to use your communicator
		..accept Calculated Hostility##6025 |goto 3128,1104,-1054
	step
		.' All around this area:
		.' Jump through abducted Protostar Employees |q Abduction Junction##5833/1 |goto Whitevale 3117,1170,-1053
		.kill Silverscale Abductor##1187371
		.kill Silverscale Prober##1168357
		.' Kill Silverscale Ikthians |q Calculated Hostility##6025/1 |goto 3075,1149,-1057
	step
		' Press _C_ to use your communicator:
		..turnin Calculated Hostility##6025
		..turnin Abduction Junction##5833
		..accept Minimizing Losses##5834
	step
		.' All around Calmwater Lake:
		.kill Sabotaged Fishbot##1059403
		.' Collect Salvaged Parts from Sabotaged Fishbots |q Minimizing Losses##5834/1 |goto Whitevale 2841,963,-1080
		.click Protostar Fish Collector##275071
		.' Reactivate Protostar Fish Collectors |q Minimizing Losses##5834/2 |goto 2833,965,-1080
	step
		.talk Prime Executive##277965
		..turnin Minimizing Losses##5834 |goto Whitevale 3095,775,-1032
		..accept Creative Marketing##5835 |goto 3095,775,-1032
	step
		.click Protostar B.L.I.M.P.##1263078 |goto Whitevale 3010,714,-1030 <10
		.' Press _1_ to throw promotional supplies at Soulcore enemies on the ground as you fly |q Creative Marketing##5835/1 |goto Whitevale 2364,675,-1018
	step
		.talk Prime Executive##277965
		..turnin Creative Marketing##5835 |goto Whitevale 3095,773,-1032
		..accept You're Fired!##5836 |goto 3095,773,-1032
	step
		.' All around Prosperity Junction:
		.talk Protostar Employee##1258544
		.' Fire Protostar Employees |q You're Fired!##5836/1 |goto 3105,697,-1025
	step
		.talk Prime Executive##277965
		..turnin You're Fired!##5836 |goto 3095,775,-1032
	step
		.talk Prime Assistant##277894
		..accept Hostile Takeover##5841 |goto 3017,833,-1030
	step
		.click Master Control Panel##277792
		.' Download access codes |q Hostile Takeover##5841/1 |goto 3097,720,-1028
		.' Learn the fate of the Prime Executive |q Hostile Takeover##5841/2 |goto 3094,773,-1032
	step
		.talk Prime Executive##277965
		..turnin Hostile Takeover##5841 |goto 3092,775,-1032
	step
		.talk Exotic Resources Financier##277962
		..accept Exotic Furs##5838 |goto Whitevale 3305,1029,-1026
		..accept On The Rocks##5839 |goto 3305,1029,-1026
		..accept ZubbleBubble Trouble##5840 |goto 3305,1029,-1026
	step
		.kill Wooly Mammodin##1263289
		.kill Snowfury Yeti##1020423
		.kill Wooly Trampler##1231749
		.kill Snowstalker Yeti##1368936
		.' Collect ZubbleBubble Flavor Crystals from Yeti |q ZubbleBubble Trouble##5840/1 |goto Whitevale 3464,1027,-1021
		.' Collect Exotic Furs from Yeti and Mammodin |q Exotic Furs##5838/1 |goto 3466,1032,-1025
	step
		.talk Exotic Resources Financier##277962
		..turnin Exotic Furs##5838 |goto Whitevale 3305,1030,-1026
		..turnin ZubbleBubble Trouble##5840 |goto 3305,1030,-1026
	step
		.kill Colossal Cragfist##1065380 |tip These are spread out throughout this area.
		.' Collect Crystalized Rocks from Colossal Gronyx |q On The Rocks##5839/1 |goto 2481,848,-1074
	step
		.talk Exotic Resources Financier##277890
		..turnin On The Rocks##5839 |goto 2296,1107,-1051
	step
		' Press _C_ to use your communicator:
		..accept Lost in the Silver Sea##5885 |goto Whitevale 3800,730,-929
	step
		.talk Researcher Cowan##273300
		..turnin Lost in the Silver Sea##5885 |goto 3948,725,-910
	step
		.talk Researcher Cowan##273300
		..accept Into the Undertow##5887 |goto Whitevale 3949,725,-909
		..accept Tempest Tides##5889 |goto 3949,725,-909
	step
		.' Press _T_ to summon the Extractorbot
		.' Jump into the blue floating crystals that the bot uncovers |q Into the Undertow##5887/1 |goto Whitevale 3872,884,-932
		.' Collect Crystallized Primal Water samples |q Into the Undertow##5887/3 |goto Whitevale 3872,884,-932
	step
		' Press _C_ to use your communicator:
		..turnin Into the Undertow##5887
		..accept Darkwater Abyss##5891
		..accept Splitting the Spatial Sea##5893
	step
		.' Around this area:
		.kill Silverscale Taskmaster##1730743+, Silverscale Overseer##1589587+, Silverscale Hydrocrawler##1733808+, Silverscale Spinelancer##1681903+, Silverscale Aquabionicist##1742005+
		.' Kill Silverscale Ikthians |q Tempest Tides##5889/1 |goto Whitevale 3920,892,-929
	step
		'Press _C_ to use your communicator:
		..turnin Tempest Tides##5889
	step
		.' Inside the Silverscale Station:
		.click Triton Incubator##273637
		.' Destroy Triton Incubators |q Darkwater Abyss##5891/1 |goto 4130,1108,-880
		.kill Silverscale Hydrocrawler##1793060
		.kill Silverscale Aquabionicist##1764544
		.' Kill Silverscale Behemoths and Leviathans |q Splitting the Spatial Sea##5893/1 |goto 4123,1193,-880
	step
		'Press _C_ to use your communicator:
		..turnin Splitting the Spatial Sea##5893
		..turnin Darkwater Abyss##5891
		..accept Primal Powers and Triton's Dread##5895
	step
		.kill 1 Prime Gillsting##1306821 |q Primal Powers and Triton's Dread##5895/1 |goto 4390,1407,-813
		.kill 1 Silverscale Dreadnaught##1307864 |q Primal Powers and Triton's Dread##5895/2 |goto 4366,1420,-812
	step
		'Press _C_ to open your Communicator:
		..turnin Primal Powers and Triton's Dread##5895 |goto 4353,1391,-813
		..accept Stirring Interstellar Waves##5897 |goto 4353,1391,-813
	step
		.click Cortex Analyzer##273418
		.' Choose _Yes_, Restore the Focus of Water to its proper balance
		.' Access the Cortex Analyzer |q Stirring Interstellar Waves##5897/1 |goto 4397,1256,-817
	step
		'Press _C_ to open your Communicator:
		..turnin Stirring Interstellar Waves##5897
		..accept Pathway to Pell##5899 |goto 4397,1256,-817
	step
		.talk High Priest Rain-Caller##273281
		..turnin Pathway to Pell##5899 |goto Whitevale 2662,1211,-1070
	step
		.talk Silverscale Cetacean##523559
		..accept Changing of the Tides##5849 |goto Whitevale 2662,1210,-1070
	step
		.talk Survival Supply Stash##1748124
		..accept Rain Catcher##5929 |goto 2666,1250,-1066
	step
		.' Around this area:
		.click Calmwater Rain Catcher##272934
		.' Inspect Calmwater Rain Catchers |q Rain Catcher##5929/1 |goto Whitevale 2366,1297,-1058
	step
		'Press _C_ to use your communicator:
		..turnin Rain Catcher##5929
	step
		.' Investigate Doomtide Village |q Changing of the Tides##5849/1 |goto 2274,1372,-1028
	step
		..turnin Changing of the Tides##5849
		..accept Leaking Propaganda##5850
	step
		.kill 1 Doomtide Storm-Striker##1951224
		.' Press _C_ to open your Communicator:
		..accept Converted Casualties##5882 |goto 2280,1407,-1026
	step
		.click The Eye of Hydris##268951
		..accept The Eye of Hydris##9140 |goto Whitevale 2262,1543,-1012
	step
		.click Soulcore Propaganda Machine##273262
		.' Deactivate Soulcore Propaganda Machines |q Leaking Propaganda##5850/1 |goto 2224,1382,-1026
		.kill Doomtide Hail-Striker##1916492
		.kill Doomtide Storm-Striker##1929952
		.' Kill Doomtide Pell |q Converted Casualties##5882/1 |goto 2247,1423,-1024
	step
		'Press _C_ to use your communicator:
		..turnin Converted Casualties##5882
		..turnin Leaking Propaganda##5850
		..accept Unwavering Faith##5851
	step
		.' Investigate the offshoot of Doomtide Village |q Unwavering Faith##5851/1 |goto 2036,1256,-1028
	step
		.talk Captured Calmwater Acolyte##2032210
		..accept Disrupting Deadly Interrogations##5884 |goto 2000,1201,-1028
	step
		.kill Soulcore Interrogator##2038148
		.' Destroy Soulcore Interrogators |q Disrupting Deadly Interrogations##5884/1 |goto 2005,1210,-1028
		.click Control Panel##273169 |tip Found around this area of Doomtide Village.
		.' Free Calmwater captives |q Unwavering Faith##5851/2 |goto 1989,1222,-1028
	step
		'Press _C_ to use your communicator:
		..turnin Disrupting Deadly Interrogations##5884
	step
		.talk High Priest Rain-Caller##273287
		..turnin Unwavering Faith##5851 |goto Whitevale 2662,1212,-1070
		..accept Offerings from the Deep##5852 |goto 2662,1212,-1070
	step
		.click Ritual Scale##2090241
		.kill Calmwater Longsnout##1782899
		.' Collect Ritual Scales from Calmwater Longsnout |q Offerings from the Deep##5852/1 |goto Whitevale 2578,1066,-1082
	step
		.talk High Priest Rain-Caller##273287
		..turnin Offerings from the Deep##5852 |goto Whitevale 2662,1211,-1070
		..accept The Calmwater Ritual##5853 |goto 2662,1211,-1070
	step
		.click Ritual Altar##272970
		.' Lay your hands on the Ritual Altars |q The Calmwater Ritual##5853/1 |goto 2691,1189,-1073
		.talk Calmwater Lightning-Chanter##272859
		.' Give the sacred scales to the Calmwater Lightning-Chanters |q The Calmwater Ritual##5853/2 |goto 2724,1173,-1072
		.' Dodge red circles while staying in the circle of Chanters until the ritual is complete |q The Calmwater Ritual##5853/3 |goto 2723,1181,-1073
	step
		.talk High Priest Rain-Caller##273287
		..turnin The Calmwater Ritual##5853 |goto 2663,1211,-1070
		..accept Wet Work##5854 |goto 2663,1211,-1070
	step
		.' Find Chieftain Rain-Fighter |q Wet Work##5854/1 |goto Whitevale 2442,913,-1074
		.talk Chieftain Rain-Fighter##272952
		.' Speak with Chieftain Rain-Fighter |q Wet Work##5854/2 |goto 2435,908,-1072
		.kill 1 Purifier Landes##2049878
		.' Kill Purifier Landes |q Wet Work##5854/3 |goto Whitevale 2329,813,-1073
	step
		'Press _C_ to use your communicator:
		..turnin Wet Work##5854
		..accept Troubled Waters##5947
	step
		.click The Caretaker##274053
		..turnin Troubled Waters##5947 |goto 2443,431,-1038
		..accept Into Augment Facility X426##5823 |goto 2443,431,-1038
	step
		.click Caretaker's Panel Gamma##274067
		.' Activate Caretaker's Panel Gamma |q Into Augment Facility X426##5823/2 |goto 2291,462,-1030
	step
		.talk The Caretaker##274046
		..accept Indoctrination Denied##5824 |goto 2293,462,-1030
		..accept The Rending of Belle##5932 |goto 2293,462,-1030
	step
		.click Beckoning Hand##274150
		.accept The Beckoning Hand##5934 |goto Whitevale 2296,325,-1040  //Added Coordinates
	step
		.collect 1 X-D12 Origin Data##14771
		.' Use the X-D12 Origin Data in your bags |use X-D12 Origin Data##14771
		..accept Original Modifications##5935 |goto 2330,426,-1030
	step
		.kill Modified X426 Probe##2930119+
		.' Collect X-D12 Origin Data from X426 Probes |q Original Modifications##5935/1 |goto Whitevale 2315,464,-1030 |tip This quest has been bugged for a while. It is completable if you kill the Probes LAST. Stand with the probes behind you and kill the humanoid mob first, then turn around and kill the probes. They should then drop the Origin Data for the quest.
	step
		.kill Soulcore Defender##2149079+, Soulcore Vindicator##1969808+, Soulcore Disciple##2031901+, Modified X426 Probe##2167603
		.' Kill Soulcore forces |q Into Augment Facility X426##5823/1 |goto 2291,462,-1030
	step
		.click Electro Chains##2283632
		.' Destroy Electro Chains to free Subjugated captives |q Indoctrination Denied##5824/1 |goto 2334,671,-1041
		.click Caretaker's Panel Alpha##274063
		.' Activate Caretaker's Panel Alpha |q Indoctrination Denied##5824/2 |goto 2343,747,-1040
		.click Rusty's Electro Chains##2150456
		.' Destroy Rusty's Electro Chains |q The Rending of Belle##5932/1 |goto 2389,693,-1040
	step
		.talk The Caretaker##274044
		..turnin Into Augment Facility X426##5823 |goto 2291,463,-1030
		..turnin Indoctrination Denied##5824 |goto 2344,747,-1040
		..accept Destroying Corrupting Tools##5825 |goto 2344,747,-1040
	step
		.click Bolt's Electro Chains##2267015
		.' Destroy Bolt's Electro Chains |q The Rending of Belle##5932/2 |goto 2215,842,-1040
	step
		.click Modified Augmentor##2239578 |tip These can be found scattered around this area.
		.' Use the Eldan mechanical converter on Reprogrammed Augmentor |q Destroying Corrupting Tools##5825/1 |goto 2204,691,-1040
	step
		.' Find Belle Walker |q The Rending of Belle##5932/3 |goto 1953,723,-1027
		.kill 1 Energized Heavy Water##351632
		.' Kill Purifier Clochron |q The Rending of Belle##5932/4 |goto 1962,724,-1031
		.click Modified Augmentor##2266589
		.' Destroy the Augmentors torturing Belle Walker |q The Rending of Belle##5932/5 |goto 1953,712,-1031
	step
		'Press _C_ to use your communicator:
		..turnin The Rending of Belle##5932
	step
		.click Caretaker's Panel Rho##274060
		.' Activate Caretaker's Panel Rho |q Destroying Corrupting Tools##5825/2 |goto 1926,527,-1005
	step
		.talk Caretaker's Panel Rho##274060
		..turnin Destroying Corrupting Tools##5825 |goto 1927,528,-1005
		..accept The Fall of the Ascendancy##5826 |goto 1927,528,-1005
	step
		.click Augmentation Core Terminal##274894
		.' Hack the Augmentation Core Terminal |q The Fall of the Ascendancy##5826/1 |goto Whitevale 2182,421,-1000
		.' Kill the enemies that attack in waves
		.kill 1 Harbringer Sveltla##6481743
		.' Kill Harbringer Sveltla |q The Fall of the Ascendancy##5826/2 |goto 2184,421,-1000
		.click Caretaker's Panel Upsilon##274707
		.' Activate Caretaker's Panel Upsilon |q The Fall of the Ascendancy##5826/3 |goto Whitevale 2162,316,-1014
	step
		.talk The Caretaker##274691
		..turnin The Fall of the Ascendancy##5826 |goto 2162,316,-1014
		..accept Meeting with Metal Maw Prime##5827 |goto 2162,316,-1014
	step
		.' _Go up_ the elevator |goto 2062,412,-1009 < 10
		.' Take the elevator to Deepfreeze Containment |q Meeting with Metal Maw Prime##5827/1 |goto 2046,404,-971
		.' Investigate the Dome Controls |q Meeting with Metal Maw Prime##5827/2 |goto 2009,414,-971
	step
		'Press _C_ to use your communicator
		..turnin Meeting with Metal Maw Prime##5827
		..accept Back to Thayd##8767 |goto 2009,414,-971
	step
		.talk Protostar Transport Pilot##274604
		.' Speak to the Protostar Transport Pilot |q Back to Thayd##8767/1 |goto Whitevale 2316,1102,-1054
		.' Click _Yes_ to return to Thyad |goto Thayd 4046,-2370,-803 <10
	step
		.talk Lulu Blackbush##275523
		..turnin Back to Thayd##8767 |goto 4033,-2378,-800
]])
