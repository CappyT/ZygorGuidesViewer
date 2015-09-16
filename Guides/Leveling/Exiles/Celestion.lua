if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Celestion (6-15)",
	{
	faction="Exiles",
	startlevel=6,
	endlevel=15,
	nextguide="Exiles\\Thayd (15)", 
	image="ZygorUIGuides:Celestion",
	description="Celestion is a zone in northern Alizar in WildStar. It is large forest region, and is a major foothold for The Exiles. Celestion is heavily influenced by the Aurin and Mordesh, and is intended for players levels 6-15.",
	},
	[[
	step
		.' _Leave_ the cave |goto Celestion 930,-3097,-890 <5
		.talk Queen Myala Everstar
		..accept Restoring the Balance##6677 |goto Celestion 1011,-3092,-905
	step
		.'M.A.C. offers a mission where you can learn about your Support Role: _Healing_ |goto Celestion 990,-3059,-900 |only Esper, Medic, Spellslinger
		.'M.A.C. offers a mission where you can learn about your Support Role: _Tanking_ |goto Celestion 990,-3059,-900 |only Engineer, Stalker, Warrior
		|confirm |q 6844
	step
		.talk Arwick Redleaf##292806 |goto Celestion 1028,-3054,-907
		..turnin The Path to Celestion##6844
		..accept Reclaiming Greenbough##6670
		..accept A Fiery Escape##6671
	step
		.talk Yalum Soulbark##284785
		..accept From the Ashes of Greenbough##6675 |goto Celestion 1058,-3080,-906
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 20 |goto Celestion 1116,-2967,-925
	step
		.click Dead Jabbit##284428
		..accept Catch and Release##6674 |goto Celestion 1140,-3004,-927
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 40 |goto Celestion 1202,-3001,-924
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 60 |goto Celestion 1234,-3012,-923
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 80 |goto Celestion 1290,-3001,-922
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 100 |goto Celestion 1277,-3026,-921
	step
		.' Locate Western Embertree |q Restoring the Balance##6677/1 |goto Celestion 1199,-3088,-909
		.' Destroy debris blocking the Western Embertree |q A Fiery Escape##6671/1 |goto Celestion 1199,-3088,-909
	step
		.' _Go down_ the path |goto Celestion 1199,-3102,-913
		.click Trapped Aurin##6268829
		.' Rescue Trapped Aurin |q A Fiery Escape##6671/2 |goto Celestion 1176,-3082,-934
	step
		.' Keep going down |goto Celestion 1178,-3106,-944 <5
		.' Click _Shrine of Protection_
		.' Commune with the Shrine of Protection |q Restore the Balance##6677/2 |goto Celestion 1202,-3112,-942
	step
		.' _Go up_ the ramp |goto Celestion 1192,-3097,-921
		.' _Exit_ the tree |goto Celestion 1198,-3086,-910 <15
		' Around area:
		.' Kill Firestorm troops |q Reclaiming Greenbough##6670/1 |goto Celestion 1177,-3029,-924
		.' Catch Singed critters in Emberwood |q Catch and Release##6674/1 |goto Celestion 1197,-3013,-926
	step
		.' Press _T_ to:
		.' Release Saved critters in a safe place |q Catch and Release##6674/2 |goto Celestion 1180,-2924,-926 <10
	step
		.' Press _C_ to use your Communicator:
		..turnin Reclaiming Greenbough##6670
		..turnin Catch and Release##6674
		..turnin From the Ashes of Greenbough##6675
	step
		.' Locate Eastern Embertree |q Restoring the Balance##6677/3 |goto Celestion 1380,-2990,-914
		.' Destroy debris blocking the Eastern Embertree |q A Fiery Escape##6671/3 |goto Celestion 1380,-2990,-914
	step
		.' _Go down_ the path |goto Celestion 1394,-2994,-917
		.click Trapped Aurin##4459737
		.' Rescue Trapped Aurin |q A Fiery Escape##6671/4 |goto Celestion 1374,-3023,-930
	step
		.' Keep going down |goto Celestion 1397,-3025,-940 <5
		.' Click _Shrine of Protection_
		.' Commune with the Shrine of Protection |q Restore the Balance##6677/4 |goto Celestion 1405,-3003,-945
	step
		.' _Go up_ the path |goto Celestion 1385,-3002,-925
		.' _Exit_ the tree |goto Celestion 1382,-2991,-913
		.' Locate Northeastern Embertree |q Restoring the Balance##6677/5 |goto Celestion 1406,-3102,-902
		.' Destroy debris blocking the Northeastern Embertree |q A Fiery Escape##6671/5 |goto Celestion 1406,-3102,-902
	step
		.' Press _C_ to use your Communicator:
		..turnin A Fiery Escape##6671
		..accept Greenbough Guardian##6672
	step
		.' _Go down_ the path |goto Celestion 1401,-3126,-905
		.talk Fenosha Longbranch##292786
		..accept Dear to My Heart##6678 |goto Celestion 1396,-3129,-906
	step
		.' _Go down_ the path |goto Celestion 1388,-3096,-933
		.' _Continue down_ and to the right |goto Celestion 1373,-3127,-942
		.' Find Chesh |q Dear to My Heart##6678/1 |goto Celestion 1376,-3138,-941
		.click Chesh##292205
	step
		.' Click _Shrine of Protection_
		.' Commune with the Shrine of Protection |q Restore the Balance##6677/6 |goto Celestion 1401,-3140,-937
	step
		.' Press _C_ to use your Communicator:
		..turnin Restoring the Balance##6677
	step
		.' _Go up_ the ramp |goto Celestion 1392,-3120,-911
		.talk Fenosha Longbranch##292786
		..turnin Dear to My Heart##6678 |goto Celestion 1396,-3129,-906
	step
		.' _Exit_ the tree |goto Celestion 1405,-3103,-901 <5
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |count 33 |goto Celestion 1497,-3064,-887 <5
	step
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |count 66 |goto Celestion 1533,-3027,-892 <5
	step
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |goto Celestion 1535,-3119,-877 <5
	step
		.' Press _C_ to use your Communicator:
		..turnin Greenbough Guardian##6672
		..accept Firefighting##6673
	step
		.click Fire Suppressor##6171007
		.' Steal a Dominion Fire Suppressor |q Firefighting##6673/1 |goto Celestion 1559,-3144,-873
	step
		.' When you see  _"Overheating - repair required."_ Press 1.
		.' When you see a Flaming Tree Below, Press 2.
		.' Extinguish forest fires in Emberwood |q Firefighting##6673/2
		.' Repair the Fire Suppressor if it overheats |q Firefighting##6673/3
		.' Extinguish forest fires in Emberwood |q Firefighting##6673/4
		.' Return to Point Firestorm |q Firefighting##6673/5
	step
		.' Press _C_ to use your Communicator:
		..turnin Firefighting##6673
		..accept Journey to Woodhaven##6805
	step
		.' Press _T_ to:
		.' Call upon the Greenbough Guardians |q Journey to Woodhaven##6805/1 |goto Celestion 1565,-3031,-880
	step
		.click Greenbough Guardian##6159967
		.' Climb onto the Greenbough Guardian's back |q Journey to Woodhaven##6805/2 |goto Celestion 1565,-3031,-880
	step
		.' Travel to Woodhaven |q Journey to Woodhaven##6805/3 |goto Celestion 1245,-2579,-950
	step
		.talk Venra Dewflower##284797
		..accept Flower Brigade##6679 |goto Celestion 1233,-2571,-949
	step
		.talk Hunter Chiath##283929
		..accept The Protectors of Celestion##8860 |goto Celestion 1230,-2568,-947
	step
		.kill Greenbark Spewer##6374718, Greenbark Slurper##6149589
		.' Collect Greenbark Chlorospores from Greenbark creatures |q Flower Brigade##6679/1 |goto Celestion 1301,-2571,-948
		.' Hunt an animal near an Aurin Hunter |q The Protectors of Celestion##8860/1 |tip Keep an eye on the "Hunter Varann Proximity" on the top left of the screen.
	step
		.talk Venra Dewflower##284797
		..turnin Flower Brigade##6679 |goto Celestion 1234,-2571,-949
	step
		.' _Cross_ the bridge |goto Celestion 1178,-2504,-941
		.talk Arwick Redleaf##284803 |goto Celestion 1098,-2447,-951
		..turnin Journey to Woodhaven##6805
		..accept Sanctuary Enshrined##6618
	step
		.talk Tender Kaiya##284301
		.' Talk to Tender Kaiya |q Sanctuary Enshrined##6618/1 |goto Celestion 1107,-2423,-950
	step
		.talk Rogum##284794
		..accept Touring Woodhaven##9087 |goto Celestion 1094,-2472,-950
	step
		.click Woodhaven Mailbox##275273
		.' Open the Woodhaven Mailbox |q Touring Woodhaven##9087/2 |goto Celestion 1101,-2440,-951
	step
		.click Woodhaven Taxi Kiosk##270820
		.' Use the Woodhaven Taxi Stand |q Touring Woodhaven##9087/3 |goto Celestion 1111,-2491,-944
		'_Taxi_ locations open automatically now
	step
		.talk Merchant Cliffgale |q Touring Woodhaven##9087/4 |goto Celestion 1084,-2454,-950
		'You can rent a mount for 24 hour playtime
	step
		.click Transmat Terminal##275393
		.' Select the Transmat Terminal |q Touring Woodhaven##9087/5 |goto Celestion 1069,-2491,-949 <10
		'Click _Yes_ to bind to Woodhaven
	step
		.talk Woodhaven Guard
		.' Get directions from a Woodhaven Guard |q Touring Woodhaven##9087/6 |goto Celestion 1103,-2447,-951
		'He walks around the road
	step
		.talk Rogum##284794 |goto Celestion 1093,-2472,-950
		..turnin Touring Woodhaven##9087
	step
		.' _Freight Supervisor Lola_ offers a _Expedition_.  Expeditions are solo instances.  Give good XP, a blue reward, and a random epic drop.  This one is for level 6-9 players. |goto Celestion 1035,-2471,-948
		|confirm |q 8860
	step
		.talk Provisioner Grayfur##275383
		..turnin The Protectors of Celestion##8860 |goto Celestion 1027,-2404,-948
	step
		.click Western Spirit Protector##284303
		.' Help Kaiya bind with the Western Spirit Protector |q Sanctuary Enshrined##6618/4 |goto Celestion 928,-2455,-950 <5 |tip Kill the attackers that come.
	step
		.click Southern Spirit Protector##284304
		.' Help Kaiya bind with the Southern Spirit Protector |q Sanctuary Enshrined##6618/3 |goto Celestion 1078,-2297,-954 <5 |tip Kill the attackers that come.
	step
		.click Eastern Spirit Protector##284305
		.' Help Kaiya bind with the Eastern Spirit Protector |q Sanctuary Enshrined##6618/2 |goto Celestion 1227,-2437,-949 <5 |tip Kill the attackers that come.
	step
		.talk Arwick Redleaf##284803 |goto Celestion 1100,-2446,-951
		..turnin Sanctuary Enshrined##6618
		..accept Predators and Prey##6620
	step
		.' Press _C_ to use your Communicator:
		..accept A Salvageable Situation##9036
	step
		.talk Weaponsmith Redfire##275179 |goto Celestion 1091,-2478,-951
		..turnin A Salvageable Situation##9036
		..accept Breaking it Down##9035
	step
		.' Press _"I"_ to open you inventory
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking it Down##9035/1
	step
		.talk Supplier Whispwick Moonsong##275387
		..turnin Breaking it Down##9035 |goto Celestion 1086,-2477,-951
	step
		.' Press _C_ to use your Communicator:
		..accept The Watcher's Way##6619 |goto Celestion 917,-2245,-950
	step
		.' _Cross_ the river |goto Celestion 875,-2215,-957
		.talk Watcher Yalesh Sageroot##284806 |goto Celestion 774,-2201,-941
		.' Find Watcher Yalesh Sageroot |q The Watcher's Way##6619/1
		..accept A Heralded Horn##6628
	step
		.'Click _Watcher Yalesh Sageroot_, press _T_ to:
		.' Commune with Watcher Yalesh Sageroot |q The Watcher's Way##6619/2 |goto Celestion 774,-2201,-941
	step
		.' Press _C_ to use your Communicator:
		..turnin The Watcher's Way##6619 |goto Celestion 1105,-2374,-952
	step
		.talk Serra Nightbright##292803
		..accept Nature's Nightlight##6680 |goto Celestion 767,-2204,-941
	step
		.' _Leave_ the passage |goto Celestion 741,-2341,-930 <5
		.' _Go up_ the hill |goto Celestion 712,-2389,-915 <5
		.click Primal Matrix##6657608
		.' Retrieve the Primal Matrix |q A Heralded Horn##6628/2 |goto Celestion 670,-2583,-913
	step
		.' _Jump_ onto the giant mushrooms to launch through the air in order to reach the Firefly clouds 
		.' Collect Fireflies by jumping through them |q Nature's Nightlight##6680/1 |goto Celestion 756,-2474,-928
	step
		.' Press _C_ to use your Communicator:
		..turnin Nature's Nightlight##6680
	step
		.' _Go back_ to the hill |goto Celestion 736,-2411,-915 <5
		.' _Go through_ the narrow passage |goto Celestion 714,-2337,-923 <5
		.kill Lightkeeper##5929002
		.' Harvest Lightkeeper's Horn |q A Heralded Horn##6628/3 |goto Celestion 604,-2249,-917 |tip Collect Clarionberry Limbs as you go
	step
		.click Clarionberry Limb##6500405
		.' Gather Clarionberry Bark |q A Heralded Horn##6628/1 |goto Celestion 805,-2284,-943 |tip They are located around vegetation in the area.
	step
		.talk Watcher Yalesh Sageroot##284806 |goto Celestion 774,-2201,-941
		..turnin A Heralded Horn##6628
		..accept Watcher's Warning##6629
	step
		.' _Follow the path_ along the mountain |goto Celestion 881,-2138,-957 <5
		.' _Go to_ the right fork in the road |goto Celestion 902,-2008,-944 <5
		.' Press _T_ to:
		.' Awaken hypnotized Dawngrazers and Jabbits |q Watcher's Warning##6629/1 |goto Celestion 815,-1965,-942
		.' Kill Dazeroot buzzbings |q Watcher's Warning##6629/2 |goto Celestion 815,-1965,-942
	step
		.' Press _C_ to use your Communicator:
		..turnin Watcher's Warning##6629
	step
		.talk Viralist Katoff##292811 |q Predators and Prey##6620/1 |goto Celestion 1286,-2361,-950
	step
		.talk Viralist Katoff##292811
		..accept Flush the Ambush##6625 |goto Celestion 1286,-2361,-950
	step
		.' _Go along_ the path |goto Celestion 1318,-2266,-942 <5
		.' Press _C_ to use your Communicator:
		..accept Composing a Toxoid##6624 |goto Celestion 1309,-2067,-917
	step
		.' Press _T_ on Suspicious Bushes to:
		.' Use Decloaking Grenades to search Suspicious Bushes |q Flush the Ambush##6625/1 |goto Celestion 1299,-2013,-902 |tip They are all around this area.
		.click Suspicious Bush##6182808
		.' Kill Bonerazer Ambushers |q Flush the Ambush##6625/2 |goto Celestion 1258,-1890,-907
	step
		.' Press _C_ to use your Communicator:
		..turnin Flush the Ambush##6625
	step
		.' Press _C_ to use your Communicator:
		..accept Tools of the Trade##6621 |goto Celestion 1277,-1838,-902 <5
	step
		.' Press _T_ to Inject Bonerazer Draken with Bloodbane Toxoid
		.' Collect Draken Blood Samples |q Composing a Toxoid##6624/1 |	goto Celestion 1287,-1849,-904
		.' Kill Bonerazer Draken |q Predators and Prey##6620/4 |goto Celestion 1283,-1813,-898
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 25 |goto Celestion 1309,-1846,-901
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 10 |goto Celestion 1315,-1870,-904
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 50 |goto Celestion 1267,-1832,-900
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 23 |goto Celestion 1266,-1843,-902
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 36 |goto Celestion 1254,-1804,-895
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 75 |goto Celestion 1277,-1760,-891
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 49 |goto Celestion 1279,-1750,-889
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |goto Celestion 1336,-1714,-888 
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 62 |goto Celestion 1282,-1753,-890 |goto Celestion 1313,-1719,-887
	step
		.' Press _T_ to Inject Bonerazer Draken with Bloodbane Toxid
		.' Inject Bonerazer Draken with Bloodbane Toxoid |q Composing a Toxoid##6624/2 |goto Celestion 1233,-1529,-892
	step
		.' Press _C_ to use your Communicator:
		..turnin Predators and Prey##6620
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 75 |goto Celestion 1422,-1708,-886
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 87 |goto Celestion 1415,-1614,-876
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |goto Celestion 1358,-1591,-870
	step
		.' Press _C_ to use your Communicator:
		..turnin Tools of the Trade##6621
		..accept End of the Elders##6626
	step
		.' Press _C_ to use your Communicator:
		..turnin Composing a Toxoid##6624
	step
		.' Press _C_ to use your Communicator:
		..accept Tampered Signals##6797
	step
		.' Follow the road and go here |goto Celestion 1321,-1613,-871 <5
		.' Press _C_ to use your Communicator:
		..accept Stitched Together##6623
	step
		.' _Go up_ the ramp |goto Celestion 1213,-1474,-891
		.click Communication Controls##284125
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |count 50 |goto Celestion 1177,-1462,-880 |tip As you go collect Aurin Remains
	step
		.' _Follow_ the path down |goto Celestion 1211,-1484,-896 <5
		.' _Go up_ the ramp |goto Celestion 1132,-1529,-900 <5
		.click Communication Controls##284124
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |count 100 |goto Celestion 1116,-1542,-882 |tip As you go collect Aurin Remains
	step
		.' Press _C_ to use your Communicator:
		..turnin Tampered Signals##6797
	step
		.' _Go down_ the hill |goto Celestion 1105,-1572,-887 <5
		.' _Enter_ the hut |goto Celestion 1057,-1583,-899 <5
		.' Kill Elder Marok |q End of the Elders##6626/1 |goto Celestion 1055,-1606,-901
	step
		.' _Follow_ the road _East_ |goto Celestion 1102,-1507,-906
		. ' _Follow_ the road _South_ |goto Celestion 1135,-1449,-905
		.' _Enter_ the hut |goto Celestion 1168,-1374,-894
		.' Kill Elder Dakkar |q End of the Elders##6626/2 |goto Celestion 1191,-1363,-895
	step
		.click Aurin Remains##1086927
		.' Collect Aurin Body Parts |q Stitched Together##6623/1
	step
		.' Press _C_ to use your Communicator:
		..turnin End of the Elders##6626
		..accept Preyfinder's Demise##6622
	step
		.' _Go up_ the hill |goto Celestion 1087,-1343,-901 <5
		.' Kill Razen the Preyfinder |q Preyfinder's Demise##6622/1 |goto Celestion 992,-1369,-881
	step
		.' Press _C_ to use your Communicator:
		..turnin Preyfinder's Demise##6622
		..accept A Visit to the Doctor##6659
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Woodhaven - Transmat |goto Celestion 1065,-2487,-949 < 100 |c |noway |q 6623
	step
		.click Recombinator##284185
		.' Activate the Recombinator |q Stitched Together##6623/3 |goto Celestion 1281,-2341,-949
	step
		.talk Professor Papovich##284804
		..turnin Stitched Together##6623 |goto Celestion 1289,-2338,-949
	step
		.' _Follow the path_ out of town |goto Celestion 1324,-2261,-942 <10
		.' _Keep following_ the path |goto Celestion 1303,-2080,-920 <10		// some steps longer than through mountains
		.' _On the crossroad_ take left |goto Celestion 1454,-1852,-891 <10	// but compatible with Settler bikes route
		.talk Physician Boravic##292853
		..turnin A Visit to the Doctor##6659 |goto Celestion 1666,-1858,-911
		..accept Information Extraction##6660
	step
		'Click _Moodie Test Subject_, press _T_ to:
		.' Burn a Moodie Test Subject |q Information Extraction##6660/1 |goto Celestion 1689,-1868,-912
	step
		'Click _Moodie Test Subject_, press _T_ to:
		.' Freeze a Moodie Test Subject |q Information Extraction##6660/2 |goto Celestion 1689,-1868,-912
	step
		'Click _Moodie Test Subject_, press _T_ to:
		.' Electrocute a Moodie Test Subject |q Information Extraction##6660/3 |goto Celestion 1689,-1868,-912
	step
		'Click _Moodie Test Subject_, press _T_ to:
		.' Cut a Moodie Test Subject |q Information Extraction##6660/4 |goto Celestion 1689,-1868,-912
	step
		.talk Physician Boravic##292853 |goto Celestion 1666,-1858,-911
		..turnin Information Extraction##6660
		..accept Moodie Necropsy##6661
	step
		.talk Mesmerist Ozliam##292849
		..accept Science Lesson##6668 |goto Celestion 1675,-1921,-914
	step
		.click Ozliam's Body Scanner##283943
		.' Activate the Body Scanner |q Science Lesson##6668/1 |goto Celestion 1677,-1920,-914
	step
		.click Ozliam's Tissue Sample##283945
		.' Collect Ozliam's Tissue Sample |q Science Lesson##6668/2 |goto Celestion 1686,-1923,-914
	step
		.click Ozliam's Cloner Console##283946
		.' Choose _Yes_, _Yes_, _Yes_
		.' Activate Ozliam's Cloner Console |q Science Lesson##6668/3 |goto Celestion 1663,-1927,-914
	step
		.click Ozliam's Cloner##283947
		.' Repeat the pattern shown:
		.' Activate Ozliam's Cloner |q Science Lesson##6668/4 |goto Celestion 1660,-1929,-914
	step
		.talk Mesmerist Ozliam##292849
		..turnin Science Lesson##6668 |goto Celestion 1672,-1920,-914
	step
		.talk Fenosh Nightfern##284808
		..accept Moodoo Voodoo##6667 |goto Celestion 1642,-1993,-936
	step
		.' Press _C_ to use your Communicator:
		..accept Bad Vibes##6666 |goto Celestion 1581,-2109,-953 <5
	step
		.click Life Force Anomaly##3828153
		.' Scan a Life Force Anomaly |q Bad Vibes##6666/1 |goto Celestion 1592,-2146,-957
	step
		.click Life Force Anomaly##3696813
		.' Scan a second Life Force Anomaly |q Bad Vibes##6666/2 |goto Celestion 1585,-2320,-954 |tip On your way kill Darkloam mobs
	step
		.kill Darkloam Necroshaman##2839353, Darkloam Shadowroot##2783410, Darkloam Gatherer##3862804
		.' Collect Shadowroot Wood |q Moodoo Voodoo##6667/2 |goto Celestion 1584,-2191,-957
	step
		.kill Muddybrook Razortooth##3851155, Darkloam Spirit Kin##3814177, Darkloam Bonecaller##3806604
		.' Collect Mudcrawler Bones |q Moodoo Voodoo##6667/1 |goto Celestion 1629,-2209,-958
		.' Harvest Darkloam Moodie Organs |q Moodie Necropsy##6661/1
	step
		.' Press _T_ to:
		.' Build the Moodie Fear Fetish |q Moodoo Voodoo##6667/3
	step
		.click Life Force Anomaly##3886197
		.' Scan a third Life Force Anomaly |q Bad Vibes##6666/3 |goto Celestion 1744,-2316,-959  //Changed coordinates
	step
		.' Press _T_ to:
		.' Scare Darkloam Moodies by using the Fear Fetish |q Moodoo Voodoo##6667/4 |goto Celestion 1608,-2223,-958 |tip You will have to kill them.
	step
		.' Press _C_ to use your Communicator:
		..turnin Moodie Necropsy##6661
		..accept Grave Robbery##6662
	step
		.' Press _C_ to use your Communicator:
		..turnin Moodoo Voodoo##6667
	step
		.click Life Force Anomaly##3886197
		.' Scan a fourth Life Force Anomaly |q Bad Vibes##6666/4 |goto Celestion 1827,-2263,-961 |tip It's inside of the skull.
	step
		.' Press _C_ to use your Communicator:
		..turnin Bad Vibes##6666
	step
		'_Jump_ down
		.' Enter Darkloam Hole |q Grave Robbery##6662/1 |goto Celestion 1836,-2264,-985
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 16 |goto Celestion 1734,-2263,-1001
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 33 |goto Celestion 1724,-2306,-1002
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 50 |goto Celestion 1683,-2307,-1002
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 66 |goto Celestion 1682,-2244,-1017
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 83 |goto Celestion 1677,-2276,-1017
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |goto Celestion 1678,-2304,-1016
	step
		.' Press _C_ to use your Communicator:
		..turnin Grave Robbery##6662
		..accept Relic Calling##6663
	step
		.click Moodie Focus Reliquary##291947
		.' Summon Life and Death Essence |q Relic Calling##6663/1
		.' Defeat the Summoned Death Essence |q Relic Calling##6663/2 |goto Celestion 1648,-2362,-1020
	step
		.' _Go up_ the ramp |goto Celestion 1692,-2285,-1006
		.' _Follow_ the path up |goto Celestion 1751,-2253,-999
		.' Press _C_ to use your Communicator:
		..accept Dance, Moodie, Dance##6669
	step
		.' _Exit_ the cave |goto Celestion 1841,-2265,-985 <5
		.' _Go up_ the winding path |goto Celestion 1881,-2250,-974 <5
		.' _Continue up_ the winding path |goto Celestion 1853,-2326,-959 <5
		.' _Cross_ the grass |goto Celestion 1775,-2304,-957 <5
		.' Use Moodie drump to dance a beat |q Dance, Moodie, Dance##6669/1 |goto Celestion 1677,-2237,-959
	step
		.' Press _C_ to use your Communicator:
		..turnin Dance, Moodie, Dance##6669
	step
		.talk Ashrynn Strongstem##284810
		..accept Vegging Out##6665 |goto Celestion 1528,-2026,-940	// Is an intended 2nd trip (no move)
	step
		.click Aurin Transmorph Shroom##291932
		.' Commune with Aurin Transmorph Shroom |q Vegging Out##6665/1 |goto Celestion 1517,-2039,-941
	step
		.click Veggie Burrow##283989
		.' Hide in a Veggie Burrow |q Vegging Out##6665/2 |goto Celestion 1518,-2042,-942
	step
		.click Stewing Radish Sprout##283992
		.' Rescue the Veggies |q Vegging Out##6665/3 |goto Celestion 1623,-2360,-950 <20
		.' Defeat the Darkloam Cook |q Vegging Out##6665/4 |goto Celestion 1623,-2360,-950 <20
	step
		.' _Leave_ Darkloam Hollow |goto Celestion 1585,-2127,-955
		.talk Ashrynn Strongstem##284810 |goto Celestion 1528,-2027,-940
		..turnin Vegging Out##6665
	step
		.' _Go up_ the hill |goto Celestion 1673,-2012,-955 <5
		.' _Follow the hill up_ to the path |goto Celestion 1704,-1984,-945 <5
		.' _Enter_ the Grimveil Enclave |goto Celestion 1722,-1915,-917 <5
		.talk Physician Boravic##292853
		..turnin Relic Calling##6663 |goto Celestion 1666,-1857,-911
	step
		.talk Messenger Staenn |goto Celestion 1663,-1852,-910
		..accept Wayfarer's Passage##7055
	step
		.click Hoverbike##3134064
		.' Embark on the Hoverbike |q Wayfarer's Passage##7055/1 |goto Celestion 1662,-1847,-910
	step
		.' Ride the Hoverbike |q Wayfarer's Passage##7055/2 |goto Celestion 1983,-1854,-912
	step
		.' _Go to_ the bridge. |goto Celestion 2040,-1892,-919
		.talk Chief Chugach##280660 |goto Celestion 2071,-1923,-915
		..turnin Wayfarer's Passage##7055
		..accept Gargantuan Tale##6998
	step
		.' _Go up_ the ramp |goto Celestion 2073,-1951,-909
		.' _Continue up_ the ramp |goto Celestion 2124,-1950,-892
		.talk Immuyak##281952
		.' Talk to Immuyak |q Gargantuan Tale##6998/2 |goto Celestion 2146,-1931,-884
	step
		.' _Go down_ the ramp |goto Celestion 2096,-1964,-893
		.' _Continue up_ the ramp |goto Celestion 2199,-2040,-856
		.talk Arrluk##281953 |q Gargantuan Tale##6998/3
	step
		.' _Jump down_ to the ground |goto Celestion 2147,-1982,-923
		.talk Trader Lukadat##281954 |q Gargantuan Tale##6998/1 |goto Celestion 2147,-1982,-923
	step
		.talk Chief Chugach##280660 |goto Celestion 2071,-1924,-915
		..turnin Gargantuan Tale##6998
		..accept Hijunga Defenses##6999
		..accept Rowsdower at Stake##7000
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 20 |goto Celestion 2146,-1828,-920 |tip Kill Tangleclaw pumera as you disarm traps
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 40 |goto Celestion 2171,-1786,-915 |tip Kill Tangleclaw pumera as you disarm traps
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 60 |goto Celestion 2156,-1748,-914 |tip Kill Tangleclaw pumera as you disarm traps
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 80 |goto Celestion 2166,-1710,-910 |tip Kill Tangleclaw pumera as you disarm traps
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 100 |goto Celestion 2211,-1723,-910 |tip Kill Tangleclaw pumera as you disarm traps
	step
		.kill Tangleclaw Slasher##4071034
		.' Kill Tangleclaw pumera |q Hijunga Defenses##6999/2 |goto Celestion 2216,-1690,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Hijunga Defenses##6999
	step
		'Click a _Rowsdower_, press _T_ to:
		.' Round up some Rowsdowers |q Rowsdower at Stake##7000/1 |goto Celestion 2245,-1721,-912
	step
		.' _Go up_ the hill |goto Celestion 2198,-1606,-873
		.click Hitching Post##281932
		.' Secure Rowsdowers to the post |q Rowsdower at Stake##7000/2 |goto Celestion 2213,-1489,-879
	step
		.' Press _C_ to use your Communicator:
		..turnin Rowsdower at Stake##7000
		..accept Breaking Free##7002
	step
		.' Enter Tanglemore Den |q Breaking Free##7002/1 |goto Celestion 2096,-1426,-869
	step
		.talk Trader Lukadat##280659 |goto Celestion 2101,-1396,-869
		..accept Swapping Troubles##7003
		..accept Biting Back##7004
	step
		.click Cargo Lifter##281883
		.' Take Eggs from the cart |q Swapping Troubles##7003/1 |goto Celestion 2104,-1393,-869
	step
		.click Bone Trap##4083129
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |count 20 |goto Celestion 2152,-1305,-869 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.click Bone Trap##4083129
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |count 40 |goto Celestion 2104,-1294,-869 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.click Bone Trap##4083129
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |count 60 |goto Celestion 2087,-1253,-869 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.click Bone Trap##4083129
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |count 80 |goto Celestion 2091,-1211,-868 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.click Bone Trap##4083129
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |goto Celestion 2156,-1158,-870 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.talk Treasure Hunter Tuwawi##285767
		..accept Risky Riches##7005 |goto Celestion 2098,-1163,-872
	step
		.' Kill Tanglemore chompacabras |q Biting Back##7004/1 |goto Celestion 2119,-1162,-872
	step
		.click Burgaska Nest##281885
		.' Place the Eggs back in the Denmother's nests |q Swapping Troubles##7003/2 |goto Celestion 2151,-1154,-870
	step	
		.click Loose Rocks##4058794
		.' Dig for Shiny Baubles beneath Loose Rocks |q Risky Riches##7005/1 |goto Celestion 2161,-1193,-869
	step
		.' Press _C_ to use your Communicator:
		..turnin Swapping Troubles##7003
		..turnin Biting Back##7004
	step
		.talk Treasure Hunter Tuwawi##285767
		..turnin Risky Riches##7005 |goto Celestion 2100,-1163,-872
	step
		.' _Go towards_ the cave exit |goto Celestion 2106,-1228,-869 <5
		.' _Continue following_ the path out of the cave |goto Celestion 2136,-1307,-869 <5
		.' _Leave_ the cave |goto Celestion 2098,-1423,-869 <5
		.' _Follow_ the path |goto Celestion 2118,-1644,-895 <5
		.' _Continue along_ the path |goto Celestion 2154,-1793,-917 <5
		.talk Chief Chugach##280660 |goto Celestion 2071,-1922,-915
		..turnin Breaking Free##7002
		..accept On to Sylvan Glade##7006
	step
		.talk Kurg Caravan Dealer##281444
		.' Talk to the Kurg Caravan Dealer |q On to Sylvan Glade##7006/1 |goto Celestion 2172,-1986,-923
	step
		.' _Enter_ the giant shell |goto Celestion 2737,-2447,-899
		.' _Go down_ the ramp |goto Celestion 2722,-2471,-922
		.talk Consort Yaenna##280652
		..accept Herbal Remedy##7022 |goto Celestion 2763,-2457,-934
	step
		.talk Queen Myala Everstar##280653
		..turnin On to Sylvan Glade##7006 |goto Celestion 2770,-2451,-933
	step
		.' _Go up_ the ramp |goto Celestion 2742,-2476,-931
		.' _Leave_ the building |goto Celestion 2737,-2446,-899
		.' Press _C_ to use your Communicator:
		..accept Crafting for the Exiles in Celestion##7502
	step
		.talk Supervisor Wicksprout
		..turnin Crafting for the Exiles in Celestion##7502 |goto Celestion 2595,-2488,-923
	step
		.' Press _C_ to use your Communicator:
		..accept [Dungeon] Protogames Preparations##9763 |tip No need to complete dungeon for reward
	step
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |tip They are glowing Bulb plant around town
	step
		.' _Enter_ the building |goto Celestion 2736,-2445,-899 <5
		.' _Go down_ the path |goto Celestion 2722,-2472,-921 <5
		.talk Queen Myala Everstar##280653 |goto Celestion 2769,-2451,-933
		..turnin Herbal Remedy##7022
		..accept Trials of a Matria##7357
	step
		.talk Consort Yaenna##280652
		.' Speak to Consort Yaenna |q Trials of a Matria##7357/1 |goto Celestion 2763,-2457,-934
	step
		.' _Go up_ the ramp |goto Celestion 2746,-2475,-933 <5
		.' _Leave_ the tree |goto Celestion 2737,-2446,-899 <5
		.talk Consort Yaenna##281474 |goto Celestion 2670,-2436,-925
		..turnin Trials of a Matria##7357
		..accept Sylvan Test of Spirit##7023
	step
		'Press _1_ to start the Sense
		.' Press _2_ to _Dig_ in this spot |goto Celestion 2629,-2619,-932
		.' Press _2_ to _Dig_ in this spot |goto Celestion 2738,-2628,-926
		.' Press _2_ to _Dig_ in this spot |goto Celestion 2840,-2602,-921
		.' Use the Vind's Tracking Sense |q Sylvan Test of Spirit##7023/2 
	step
		.' Press _C_ to use your Communicator:
		..turnin Sylvan Test of Spirit##7023
		..accept Sylvan Test of Courage##7024
	step
		.' _Go up_ the hill |goto Celestion 2799,-2538,-887 <5
		.' _Go down_ the hill |goto Celestion 2801,-2454,-887 <5
		.' _Jump down_ the ledge and enter the cave |goto Celestion 2648,-2305,-967 <5
		.talk Consort Yaenna##281471
		.' Meet with Consort Yaenna |q Sylvan Test of Courage##7024/1 |goto Celestion 2679,-2355,-970
	step
		.click Stone of Courage##281472
		.' Commune with the Stone of Courage |q Sylvan Test of Courage##7024/2
		.' Kill Spirit Guardian Bohumir |q Sylvan Test of Courage##7024/3
	step
		.' Press _C_ to use your Communicator:
		..turnin Sylvan Test of Courage##7024
		..accept Sylvan Test of Heart##7025
	step
		.' _Leave_ the cave |goto Celestion 2652,-2308,-967 <5
		.' _Go up_ the path |goto Celestion 2633,-2325,-950 <5
		.' _Climb up_ the large roots |goto Celestion 2729,-2429,-904 <5
		.' _Go through_ the doorway |goto Celestion 2800,-2450,-888 <5
		.talk Consort Yaenna##281470
		.' Meet Consort Yaenna |q Sylvan Test of Heart##7025/1 |goto Celestion 2812,-2502,-882
	step
		.' _Jump_ into the Green Orbs floating around the area 
		.' Deliver Primal Life Energy to the Elder Wisdom Tree's Roots |q Sylvan Test of Heart##7025/3 |goto Celestion 2814,-2520,-885
	step
		.' _Go through_ the gates |goto Celestion 2800,-2449,-889 <5
		.' _Cross_ the large tree roots |goto Celestion 2742,-2418,-902 <5
		.' _Enter_ the building |goto Celestion 2736,-2445,-899 <5
		.' _Go down_ the ramp |goto Celestion 2725,-2474,-922 <5
		.talk Queen Myala Everstar##280653
		..turnin Sylvan Test of Heart##7025 |goto Celestion 2770,-2451,-933
	step
		.talk Consort Yaenna##280650 |goto Celestion 2763,-2457,-934
		..accept Meet the Explorers Union##7590
		..accept Crowning Ceremony##8759
	step
		.' _Go up_ the hill |goto Celestion 2746,-2475,-933 <5
		.' _Leave_ the building |goto Celestion 2736,-2445,-899 <5
		.' _Go down_ the giant tree root |goto Celestion 2685,-2458,-912 <5
		.talk Ashella Sunfell##281856
		..turnin Meet the Explorers Union##7590 |goto Celestion 2656,-2507,-932
	step
		.talk Tomas Borgoli##281857
		..accept Gather the Crew##6968 |goto Celestion 2659,-2507,-932
	step
		' While inside the tree:
		.' Collect XAS Field Gear |q Gather the Crew##6968/1
		.' Recruit Sylvan Explorers |q Gather the Crew##6968/3
	step
		.click Cargo Lifter##281872
		.' Set travel coordinates on Cargo Lifters to 7319 |q Gather the Crew##6968/2 |goto Celestion 2617,-2474,-931
	step
		.talk Ashella Sunfell##4189178 |q Gather the Crew##6968/4 |goto Celestion 2656,-2506,-932
	step
		.click Transmat Terminal |goto Celestion 2624,-2426,-931 <5
		' Click _Yes_ to set _Sylvan Glade_ as your Recall Point
		|confirm |q 8759
	step
		.' _Follow_ the path |goto Celestion 2686,-2376,-929 <5
		.' Attend the Crowning Ceremony |q Crowning Ceremony##8759/2 |goto Celestion 2762,-2324,-928 <10
	step
		.talk Matria Yaenna##280651
		..turnin Crowning Ceremony##8759 |goto Celestion 2762,-2324,-928
	step
		.talk Protogames Recruiter |goto Celestion 2772,-2296,-929
		..turnin [Dungeon] Protogames Preparations##9763
	step
		.' _Cross_ the bridge |goto Celestion 2749,-2282,-933 <5
		.' _Follow the fork in the road_ to the left |goto Celestion 2610,-2105,-947 <5
		.' _Continue_ along the path |goto Celestion 2634,-1923,-935 <5
		.talk Tomas Borgoli##280667 |goto Celestion 2650,-1664,-954
		..turnin Gather the Crew##6968
		..accept Making Contact##6969
	step
		.click Display Module##281845
		.' Repeat the pattern shown.
		.' Access the Display Module |q Making Contact##6969/1 |goto Celestion 2621,-1721,-953
	step
		.talk Augmentation Avatar##3995308
		.' Talk to Augmentation Avatar |q Making Contact##6969/2 |goto Celestion 2626,-1724,-952
	step
		.' Enter the Augmentation Chamber |q Making Contact##6969/3 |goto Celestion 2667,-1742,-948
	step
		.talk Augmentation Avatar##4268597
		.' Meet with Augmentation Avatar |q Making Contact##6969/4 |goto Celestion 2810,-1478,-1305
	step
		.' Kill the attacking Augmentors |q Making Contact##6969/5 |goto Celestion 2810,-1473,-1305
	step
		.' Return to Camp Viridian |q Making Contact##6969/6 |goto Celestion 2809,-1434,-1303
	step
		.talk Tomas Borgoli##280667 |goto Celestion 2651,-1664,-954
		..turnin Making Contact##6969
		..accept Follow the Data##6970
	step
		.talk Scientist Shytail |goto Celestion 2639,-1649,-952
		..accept Careful Pickings##6973
	step
		.' _Go towards_ the facility |goto Celestion 2678,-1676,-955
		.' _Ride_ the elevator down |goto Celestion 2735,-1653,-955
		.click GOOP Cannon##280661
		..accept GOOPed!##6975 |goto Celestion 2785,-1665,-987
	step
		.' Press _C_ to use your Communicator:
		..accept Of Augmentation and Aggression##6974 |goto Celestion 2833,-1747,-987 |tip You may have to kill a few enemies for this to show up.
	step
		.' Explore the Repository Access Column |q Follow the Data##6970/2 |goto Celestion 2847,-1821,-988 |tip On your way kill mobs and use T on marked ones
	step
		.' Enter the Nanite Repository |q Follow the Data##6970/3 |goto Celestion 2856,-1836,-984 |tip On your way kill mobs and use T on marked ones
	step
		.click Nanite Release Controller##281826
		.' Deactivate Nanite Release Controllers |q Follow the Data##6970/4 |count 50 |goto Celestion 2774,-1470,-1504
	step
		.click Nanite Release Controller##281827
		.' Deactivate Nanite Release Controllers |q Follow the Data##6970/4 |count 100 |goto Celestion 2623,-1386,-1504
	step
		.' Go through the tunnel |goto Celestion 2700,-1358,-1503 < 10
		.click Identity Module##281823 
		.' Reload the Identity Module |q Follow the Data##6970/5 |goto Celestion 2701,-1259,-1495
	step
		.' Talk to Safety Avatar |q Follow the Data##6970/6 |goto Celestion 2700,-1241,-1490
	step
		.' Press _C_ to use your Communicator:
		..turnin Follow the Data##6970
	step
		.talk Safety Avatar##281825
		..accept A Taste of Augmentation##6971 |goto Celestion 2700,-1241,-1490
	step
		.' _Go through_ the tunnel |goto Celestion 2701,-1302,-1494
		.' _Use the teleporter_ to leave the facility |goto Celestion 2700,-1459,-1498
		.' Click mobs in area, press _T_ to:
		.' GOOP Augmented Creatures and Constructs |q GOOPed!##6975/1 |goto Celestion 2981,-1674,-987
		.' Kill Eldan constructs |q GOOPed!##6975/2
		.' Collect Eldan Artifacts |q Careful Pickings##6973/1
		.' Kill Augmented Aurin and Mordesh |q Of Augmentation and Aggression##6974/1 |goto Celestion 2962,-1661,-987
	step
		.' Press _C_ to use your Communicator:
		..turnin Careful Pickings##6973
		..turnin Of Augmentation and Aggression##6974
		..turnin GOOPed!##6975
	step
		.' Explore the Essential Access Column |q A Taste of Augmentation##6971/1 |goto Celestion 3022,-1660,-987
	step
		.' Enter the Essential Reactor Exo-Lab |q A Taste of Augmentation##6971/2 |goto Celestion 3046,-1642,-984
	step
		.' Enter the Essential Reactor Room |q A Taste of Augmentation##6971/3 |goto Celestion 2544,-1640,-1206
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |count 33 |goto Celestion 2512,-1636,-1207
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |count 66 |goto Celestion 2509,-1588,-1206
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |goto Celestion 2582,-1590,-1206
	step
		.click Essential Reactor##281819
		.' Reload the Essential Reactor |q A Taste of Augmentation##6971/5 |goto Celestion 2547,-1566,-1209
	step
		.talk Safety Avatar##281818
		..turnin A Taste of Augmentation##6971 |goto Celestion 2545,-1552,-1204
		..accept Caretaker Showdown##6972 |goto Celestion 2545,-1552,-1204
	step
		.' _Exit_ the facility through the teleporter |goto Celestion 2545,-1702,-1205
		.' Find the elevator to the Annihilator Silo |q Caretaker Showdown##6972/1 |goto Celestion 3141,-1787,-987
	step
		.' _Ride_ the elevator up |goto Celestion 3153,-1784,-983
		.' _Jump up_ the platform |goto Celestion 3197,-1735,-914
		.' _Climb up_ the giant tree root |goto Celestion 3205,-1711,-892
		.' _Jump onto_ the platform |goto Celestion 3229,-1690,-891
		.' Get to Annihilator Silo N22 |q Caretaker Showdown##6972/2 |goto Celestion 3226,-1641,-886
	step
		.kill Power Core##829596
		.' Destroy the Power Cores |q Caretaker Showdown##6972/4 |count 50 |goto Celestion 3182,-1608,-881
	step
		.kill Power Core##829596
		.' Destroy the Power Cores |q Caretaker Showdown##6972/4
	step
		.talk Augmentation Avatar##829872
		.' Talk to Augmentation Avatar |q Caretaker Showdown##6972/5 |goto Celestion 3224,-1584,-881
	step
		.talk Safety Avatar##859735
		.' Talk to Safety Avatar |q Caretaker Showdown##6972/6 |goto Celestion 3221,-1587,-881
	step
		.' Press _C_ to use your Communicator:
		..turnin Caretaker Showdown##6972
	step
		// Faster than taking Ghost Intel while in town earlier, by 5 secs
		// counting grabbing quests, plus miss the breadcumb XP
		.' Press _C_ to use your Communicator:
		..accept Covert Communications##7051 |tip It may take some seconds to show up
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Sylvan Glade |goto Celestion 2624,-2427,-931 < 10 |c |noway |q 7051
	step
		.talk Recruiter Emilija |goto Celestion 2915,-2349,-928
		..turnin Covert Communications##7051
		..accept Ghost Intel##6981 
	step
		.' _Cross_ the bridge |goto Celestion 2960,-2307,-941 <5
		.' _Follow_ the path up |goto Celestion 3096,-2282,-952 <5
		.' Find the Thayd Courier |q Ghost Intel##6981/1 |goto Celestion 3157,-2344,-938
	step
		.click Thayd Dispatches##281758
		.' Retrieve the Thayd Dispatches |q Ghost Intel##6981/2 |goto Celestion 3157,-2344,-938
		.' Defend against ICI operatives |q Ghost Intel##6981/3 |goto Celestion 3157,-2344,-938
	step
		.click Thayd Courier##281759
		.'Burn the Thayd Courier's Corpse |q Ghost Intel##6981/4 |goto Celestion 3157,-2344,-938
	step
		.' _Continue_ along the path |goto Celestion 3188,-2217,-907 <5
		.talk Director Romavek##280671 |goto Celestion 3202,-2159,-899
		..turnin Ghost Intel##6981
		..accept Reprogramming Interrogation##6982
	step
		.click Deactivated Zeta Agent##896548
		.' Hack the Deactivated Zeta Agent |q Reprogramming Interrogation##6982/1 |goto Celestion 3180,-2155,-897
	step
		.talk Director Romavek##280671
		..turnin Reprogramming Interrogation##6982 |goto Celestion 3201,-2160,-899
		..accept Sum Zero Aggressor##6983 |goto Celestion 3201,-2160,-899
	step
		.' _Follow_ the path up |goto Celestion 3196,-2129,-898 <5
		.' Speak to Marksman Mikhail |q Sum Zero Aggressor##6983/1 |goto Celestion 3122,-2079,-861
	step
		.talk Operative Viktovich##280669
		..accept Listen Like Shadows##6989 |goto Celestion 3120,-2082,-861
	step
		.' _Go down_ the giant tree root |goto Celestion 3188,-2094,-891 <5
		.' _Follow_ the path down |goto Celestion 3222,-2054,-964 <5
		.' _Go to_ the camp |goto Celestion 3211,-1901,-984 <5
		.' _Go through_ the opening |goto Celestion 3207,-1849,-978 <5
		.click ICI Datachron##281591
		.' Plant Surveillance Bugs |count 71 |q Listen Like Shadows##6989/1 |goto Celestion 3246,-1848,-966
	step
		.click ICI Datachron##281587
		.' Plant Surveillance Bugs |count 85 |q Listen Like Shadows##6989/1 |goto Celestion 3267,-1804,-960
	step
		.click ICI Datachron##281588
		.' Plant Surveillance Bugs |count 100 |q Listen Like Shadows##6989/1 |goto Celestion 3320,-1827,-956
	step
		.kill Zeta Equalizer##692673
		.' Kill ICI Zeta Mechari |q Sum Zero Aggressor##6983/2
	step
		.kill Zeta Warbot##282566
		.collect Death Mechanism##20476
		.' Use the Death Mechanism in your inventory |use Death Mechanism##20476
		..accept Mechanisms of War##7385 |goto Celestion 3278,-1881,-958
	step
		.' Find the Junction Zeta Bunker |q Sum Zero Aggressor##6983/3 |goto Celestion 3326,-1832,-958
	step
		.' Press _C_ to use your Communicator:
		..accept Divert Attention##6984
		..turnin Sum Zero Aggressor##6983
		..turnin Listen Like Shadows##6989
	step
		.' Go inside cave |goto Celestion 3376,-1810,-954 <5
		.' Press _C_ to use your Communicator:
		..accept Invasive Intelligence##6987 |goto Celestion 3372,-1810,-953
	step
		..accept Research and Development##6990 |goto Celestion 3472,-1773,-971
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |count 25 |goto Celestion 3502,-1765,-972
	step
		.click ICI Aegis Interface##281625
		.' Hack ICI Aegis Interfaces |q Invasive Intelligence##6987/1 |count 33 |goto Celestion 3489,-1750,-971
	step
		.click ICI Aegis Interface##281625
		.' Hack ICI Aegis Interfaces |q Invasive Intelligence##6987/1 |count 50 |goto Celestion 3479,-1733,-969
	step
		.click Crate of Eldan Components##281610
		.' Collect Crates of Eldan Components |q Research and Development##6990/1 |goto Celestion 3501,-1754,-972
		.kill 1 Zeta Cycler##1035340
		.' Collect Cycler Cores |q Research and Development##6990/2
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |count 50 |goto Celestion 3510,-1730,-971
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |count 75 |goto Celestion 3530,-1706,-969
	step
		.click ICI Aegis Interface##281625
		.' Hack ICI Aegis Interfaces |q Invasive Intelligence##6987/1 |count 83 |goto Celestion 3528,-1694,-968
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |goto Celestion 3481,-1656,-969
	step
		.' Climb up the ramp |goto Celestion 3531,-1752,-970
		.' Find and climb the ramp to the ICI Command Area |q Divert Attention##6984/2 |goto Celestion 3462,-1743,-933
	step
		.click ICI Aegis Interface##281625
		.' Hack ICI Aegis Interfaces |q Invasive Intelligence##6987/1 |goto Celestion 3455,-1646,-933
	step
		.' Press _C_ to use your Communicator:
		..turnin Divert Attention##6984
		..accept Going Out with a Blast##6985
		..turnin Research and Development##6990
	step
		.click ICI Telemetry Display##281700
		.' Access the ICI Telemetry Display |q Going Out with a Blast##6985/1 |goto Celestion 3442,-1609,-934
	step
		.' _Leave_ the tunnel |goto Celestion 3434,-1682,-934 <5
		.' _Jump down_ onto the pipe, then to the groun |goto Celestion 3458,-1758,-947 <5
		.' _Go up_ the tunnel path |goto Celestion 3412,-1796,-961 <5
		.' Get out of ICI Junction Zeta |q Going Out with a Blast##6985/2 |goto Celestion 3334,-1832,-957
	step
		.' Pess _T_ to:
		.' Detonate Bombs |q Going Out with a Blast##6985/3
	step
		.' Press _C_ to use your Communicator:
		..turnin Going Out with a Blast##6985
		..accept Shoot for the Stars##6986
	step
		.click Eldan Defense Laser##281698
		.' Fire the Eldan Defense Laser at these coordinates: 108963458 |q Shoot for the Stars##6986/1 |goto Celestion 3304,-1862,-958
	step
		.' _Jump down_ the ledge |goto Celestion 3294,-1925,-958 <5
		.' _Jump up_ the rocks |goto Celestion 3219,-2073,-948 <5
		.talk Director Romavek##280671
		..turnin Shoot for the Stars##6986 |goto Celestion 3203,-2158,-899
		..turnin Mechanisms of War##7385 |goto Celestion 3203,-2158,-899
	step
		.' Press _C_ to use your Communicator:
		..accept A Meeting of Minds##6961
	step
		.click Cryptanalysis Station##281632
		.' Place the ICI Security Files on the Cryptanalysis Station |q Invasive Intelligence##6987/3 |goto Celestion 3210,-2161,-899
	step
		.' Decrypt the ICI Security Files using the Decryption Device |q Invasive Intelligence##6987/4 |goto Celestion 3211,-2154,-899
	step
		.talk Cryptoanalyst Ksenia##280670
		..turnin Invasive Intelligence##6987 |goto Celestion 3208,-2157,-899
	step
		'Press the icon on the bottom left of your action bar to:
		.' _Recall-Transmat_ to Sylvan Glade |goto Celestion 2624,-2427,-931 < 10 |c |noway |q 6961
	step
		.' _Enter_ the building |goto Celestion 2737,-2446,-899
		.' _Go down_ the path |goto Celestion 2723,-2473,-921
		.' Meet with Arwick Redleaf |q A Meeting of Minds##6961/1 |goto Celestion 2766,-2460,-933
	step
		.' _Go up_ the path |goto Celestion 2748,-2473,-933
		.' _Exit_ the building |goto Celestion 2737,-2446,-899
		.' _Follow_ the path |goto Celestion 2562,-2477,-936
		.' _Go up_ the ramp |goto Celestion 2466,-2509,-937
		.talk Victor Lazarin |goto Celestion 2423,-2488,-921
		..turnin A Meeting of Minds##6961
		..accept Trespasser##6953
	step
		.talk Esora Dawning##278864
		..accept Data Mining##7027 |goto Celestion 2407,-2484,-921
	step
		.click Datapad Interface##278645
		.' Activate the Datapad Interface |q Data Mining##7027/1 |goto Celestion 2415,-2489,-920
	step
		.' Watch the giant screen, there will be _3_ circles that you need to watch.
		.' Each circle will have it's own color. Watch the orbs as they appear, and click the circles that correspond with them as they pass through the circles.
		.' Complete one Data Mining session |q Data Mining##7027/2
		.' Hit Colors at the right time |q Data Mining##7027/3
	step
		.talk Esora Dawning##278864
		..turnin Data Mining##7027 |goto Celestion 2406,-2484,-921
	step
		.talk Tender Thistletail##278172
		..accept A Caring Nurturer##6962 |goto Celestion 2381,-2568,-937
	step
		.click Delicate Sproutling##278194
		.' Nourish Delicate Sproutlings |q A Caring Nurturer##6962/1 |goto Celestion 2436,-2468,-937 |tip They are all around this camp site
	step
		.talk Tender Thistletail##278172
		..turnin A Caring Nurturer##6962 |goto Celestion 2383,-2568,-937
		..accept Indigenous Mapping##6963
	step
		.talk Alchemist Polovic##278156
		..turnin Trespasser##6953 |goto Celestion 2228,-2553,-942
		..accept Further Analysis##6957 |goto Celestion 2228,-2553,-942
		..accept Seeking the Source##6955 |goto Celestion 2228,-2553,-942
	step
		.kill Mistborn Lifeglider##893129, Mistborn Lifeglider##889834
		.' Collect samples from Wildlife |q Further Analysis##6957/2 |goto Celestion 2189,-2561,-946
	step
		.'  Press _T_ to:
		.' Release a mapjabbit in Puddlejump Pools |q Indigenous Mapping##6963/2 |goto Celestion 2214,-2691,-932
	step
		.' Press _T_ to:
		.' Release a mapjabbit in the Verdant Sanctuary |q Indigenous Mapping##6963/1 |goto Celestion 2214,-2483,-938
	step
		.kill Torine Liferender##494095, Torine Sentinel##998661, Torine Bladesister##1117473
		.' Collect blood samples from Torine |q Further Analysis##6957/1 |goto Celestion 2117,-2474,-938
	step
		.' Press _C_ to use your Communicator:
		..turnin Further Analysis##6957
	step
		.click Monument to Tresayne##278184
		.' Investigate the Monument to Tresayne |q Seeking the Source##6955/1 |goto Celestion 2066,-2442,-929
	step
		.' _Follow_ the path |goto Celestion 2071,-2495,-937 <5
		.'  Press _T_ to:
		.' Release a mapjabbit in Rushing Glen |q Indigenous Mapping##6963/3 |goto Celestion 1972,-2541,-951
	step
		.click Monument to Vitara##278183
		.' Investigate the Monument to Vitara |q Seeking the Source##6955/2 |goto Celestion 1884,-2759,-925
	step
		.' Press _C_ to use your Communicator:
		..turnin Seeking the Source##6955
		..accept The Lifeblood Pool##6956
	step
		.talk Alchemist Polovic##278239
		.' Meet Alchemist Polovic |q The Lifeblood Pool##6956/1 |goto Celestion 2081,-2970,-901
		.' Defend against Liferoot Guardians |q The Lifeblood Pool##6956/3 |goto Celestion 2081,-2970,-901
	step
		.talk Alchemist Polovic##278246
		..turnin The Lifeblood Pool##6956 |goto Celestion 1973,-2998,-881
		..accept Horizon##6959
		..accept Spilling Lifeblood##6964
	step
		.kill Lifeglade Glider##1240724
		.' Kill Lifeglade Gliders in Lifeglade Hills |q Spilling Lifeblood##6964/1 |goto Celestion 1903,-3097,-871
	step
		.' Press _C_ to use your Communicator:
		..turnin Spilling Lifeblood##6964
	step
		.' Begin the ascent to Horizon Plateau |q Horizon##6959/1 |goto Celestion 1997,-3267,-853
	step
		.' Press _T_ to:
		.' Release a mapjabbit on the Horizon Plateau |q Indigenous Mapping##6963/4 |goto Celestion 1953,-3308,-829
	step
		.' Press _C_ to use your Communicator:
		..turnin Indigenous Mapping##6963
	step
		.' _Go up_ the path |goto Celestion 1927,-3307,-825
		.' _Jump up_ the rock formation |goto Celestion 1927,-3356,-780
		.' Climb to the top of Horizon Plateau |q Horizon##6959/2 |goto Celestion 1901,-3405,-738
	step
		.talk Alchemist Polovic##278155
		.' Speak to Alchemist Polovic |q Horizon##6959/3 |goto Celestion 1900,-3413,-738
	step
		.click Materials##278233
		.' Assemble the materials to build a Teleporter |q Horizon##6959/4 |goto Celestion 1892,-3410,-738
	step
		.' Wait as the Teleporter is constructed |q Horizon##6959/5
	step
		.talk Alchemist Polovic##278155
		..turnin Horizon##6959 |goto Celestion 1899,-3413,-738
		..accept Revealing the Source##6960 |goto Celestion 1899,-3413,-738
	step
		.' Use the teleporter |q Revealing the Source##6960/1 |goto Celestion 1892,-3409,-738
	step
		.talk Victor Lazarin##278867
		..turnin Revealing the Source##6960 |goto Celestion 2422,-2488,-921
		..accept Botched Negotiations##6909 |goto Celestion 2422,-2488,-921
	step
		.talk Lucy Lazarin##278865 // Added
		..accept Alchemy Hunt##6954 |goto Celestion 2429,-2492,-921  //Added
	step
		.' _Go down_ the ramp |goto Celestion 2392,-2546,-926 < 10
		.' _Go up_ the ramp |goto Celestion 2401,-2598,-930 < 10
		.' Enter the Pools of Vitara |q Botched Negotiations##6909/1 |goto Celestion 2445,-2709,-918
	step
		.' Press _C_ to use your Communicator:	
		..accept Primal Blades##6952 |goto Celestion 2445,-2709,-918
	step
		'Around the Area:
		.' Search for Darkwhisper Prisoners |q Botched Negotiations##6909/2
		.' Kill the Torine |q Primal Blades##6952/1 |goto Celestion 2363,-2796,-919
		.' Collect Torine Weapon Fragments |q Primal Blades##6952/2 |goto Celestion 2363,-2796,-919
		.' Collect _Gnasher Glands_ from _Steelscale Gnasher_ |q Alchemy Hunt##6954/1 |goto Celestion 2445,-2747,-921
		.' Collect Manstalker Whiskers |q Alchemy Hunt##6954/2 |goto Celestion 2368,-2790,-920
	step
		.' Press _C_ to use your Communicator:	
		..turnin Botched Negotiations##6909
	
	step
		.' _Follow_ the path up |goto Celestion 2556,-2788,-913 <25
		.' _Continue_ along the path |goto Celestion 2677,-2836,-912
		.click Grand Forge##278785
		.' Melt the Torine Weapon Fragments at the Grand Forge |q Primal Blades##6952/3 |goto Celestion 2713,-2784,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Primal Blades##6952
		..accept Auger Enhancements##6978 |tip It may take some seconds to show up
	step
		.' _Go down_ the hill |goto Celestion 2730,-2866,-909
		.' _Follow_ the stream |goto Celestion 2737,-3072,-924
		.' Ride a Waterspout |q Auger Enhancements##6978/1 |goto Celestion 2685,-3017,-910
	step
		.' Press _C_ to use your Communicator:	
		..accept Sapwork##6966
	step
		.kill Mossy Vinecreeper##2909134
		.' Collect Vinecreeper Spores |q Alchemy Hunt##6954/3 |count 50 |goto Celestion 2647,-2996,-868
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 25 |goto Celestion 2620,-3010,-877
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 50 |goto Celestion 2599,-3060,-869
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 75 |goto Celestion 2568,-3052,-868
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 100 |goto Celestion 2551,-3068,-868
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 25 |goto Celestion 2636,-3095,-860
	step
		.kill Mossy Vinecreeper##2909134
		.' Collect Vinecreeper Spores |q Alchemy Hunt##6954/3 |count 100 |goto Celestion 2685,-3074,-858
	step
		.' Press _C_ to use your Communicator:
		..turnin Alchemy Hunt##6954
		..turnin Sapwork##6966
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 50 |goto Celestion 2644,-3222,-859
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 75 |goto Celestion 2516,-3293,-848
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |goto Celestion 2392,-3318,-856
	step
		.' Press _C_ to use your Communicator:	
		..turnin Auger Enhancements##6978
		..accept Godwood Ascension##6979 |tip It will take a moment for this quest to ring in.
	step
		.' Follow the hill up |goto Celestion 2421,-3304,-853
		.' Ascend to Godsbreath Terrace |q Godwood Ascension##6979/1 |goto Celestion 2471,-3286,-852 |tip Jump into the water stream.
	step
		.' Press _C_ to use your Communicator:	
		..accept Surf's Way Up##7028
	step
		.' Use the waterspout to reach the floating Isle |goto Celestion 2484,-3238,-799 <5
		.' Once on the Isle, _Sprint_ and _Jump_ into the right arrow and:
		.' Reach the Northern floating island |q Surf's Way Up##7028/2 |goto Celestion 2339,-3158,-725 <5
	step
		.' _Sprint_ and _Jump_ using the right arrow in the floating Isle to:
		.' Reach the Southern floating island |q Surf's Way Up##7028/4 |goto Celestion 2451,-3022,-709 <5
	step
		.' _Sprint_ and _Jump_ using the right arrow in the floating Isle to:
		.' Reach the Eastern floating island |q Surf's Way Up##7028/3 |goto Celestion 2599,-3172,-710 <5
	step
		.' Press _C_ to use your Communicator:
		..turnin Surf's Way Up##7028
		..accept Thayd Awaits##5312 |tip This one is available at level 14
	step
		.' _Jump down_ to the water |goto Celestion 2562,-3183,-799 <5
		.kill Vitara's Bloom##1239794
		.' Collect Vitara Petals |q Godwood Ascension##6979/2 |count 25 |goto Celestion 2562,-3207,-793
	step
		.kill Vitara's Bloom##1239794
		.' Collect Vitara Petals |q Godwood Ascension##6979/2 |count 50 |goto Celestion 2501,-3192,-797
	step
		.kill Vitara's Bloom##1239794
		.' Collect Vitara Petals |q Godwood Ascension##6979/2 |count 75 |goto Celestion 2526,-3172,-797
	step
		.kill Vitara's Bloom##1239794
		.' Collect Vitara Petals |q Godwood Ascension##6979/2 |count 100 |goto Celestion 2512,-3126,-789
	step
		.click Alchemist's Fire##278741
		.' Ignite the Alchemist's Fires |q Godwood Ascension##6979/3 |count 50 |goto Celestion 2493,-3145,-785
	step
		.click Alchemist's Fire##278741
		.' Ignite the Alchemist's Fires |q Godwood Ascension##6979/3 |goto Celestion 2486,-3139,-786
	step
		.click Gate to the Heart of the Godwood##278777
		.' Enter the Gate to the Heart of the Godwood |q Godwood Ascension##6979/4 |goto Celestion 2483,-3150,-784
	step
		.' Press _C_ to use your Communicator:
		..turnin Godwood Ascension##6979
		..accept Primal Extraction##6995
	step
		.' Follow the path down |goto Celestion 1842,-3389,-1074
		.' _Continue_ going down the path |goto Celestion 1857,-3426,-1083
		.' Press _C_ to use your Communicator:
		..accept Protective Weaves##9073 |goto Celestion 1857,-3426,-1083
	step
		.' Jump through the Weave Knots |q Protective Weaves##9073/1 |count 33 |goto Celestion 1863,-3451,-1083
	step
		.click Godwood Node##278727
		.' Locate a Godwood Node |q Primal Extraction##6995/1 |goto Celestion 1913,-3434,-1084
		.' Defend the Primal Siphoning Drill |q Primal Extraction##6995/2 |goto Celestion 1913,-3434,-1084
	step
		.' Jump through the Weave Knots |q Protective Weaves##9073/1 |count 66 |goto Celestion 1970,-3513,-1084
	step
		.click Godwood Node##278724
		.' Locate a Godwood Node |q Primal Extraction##6995/3 |goto Celestion 2012,-3443,-1098
		.' Defend the Primal Siphoning Drill |q Primal Extraction##6995/4 |goto Celestion 2012,-3443,-1098
	step
		.' Jump through the Weave Knots |q Protective Weaves##9073/1 |goto Celestion 2025,-3430,-1090
	step
		.' Press _C_ to use your Communicator:
		..turnin Protective Weaves##9073
	step
		.' _Enter_ the tunnel |goto Celestion 1974,-3403,-1100
		.' _Continue down_ the tunnel path |goto Celestion 1947,-3492,-1119
		.click Godwood Node##278723
		.' Locate a Godwood Node |q Primal Extraction##6995/5 |goto Celestion 2038,-3520,-1133
		.' Defend the Primal Siphoning Drill |q Primal Extraction##6995/6 |goto Celestion 2038,-3520,-1133
	step
		.' Press _C_ to use your Communicator:
		..turnin Primal Extraction##6995
		..accept The Reaper Beckons##7065
	step
		.click Gate to the Pools of Vitara##278721
		.' _Go through_ the portal |goto Celestion 1963,-3509,-1122 <5
		.' _Go down_ the path |goto Celestion 2400,-2635,-919 <5
		.' _Go up_ through the doorway |goto Celestion 2530,-2571,-923 <10
		.' _Continue_ along the path |goto Celestion 2951,-2801,-930 <10 |c |q 7065
	step
		'_Captain Milo_ offers a _Expedition_.  Expeditions are solo instances.  Give good XP, a blue reward, and a random epic drop.  This one is for level 13-16 players.  |goto Celestion 3035,-2938,-933
		|confirm |q 7065
	step
		.' _Enter_ the gates |goto Celestion 3079,-2936,-931 <10
		.talk Harrower Krimzon##277089
		..turnin The Reaper Beckons##7065 |goto Celestion 3108,-2884,-928
		..accept Decontamination##6897
	step
		.click Quarantine Cage##278538
		.' Release Mortalus in Quarantine Cages |q Decontamination##6897/1 |count 40 |goto Celestion 3136,-2860,-928
	step
		.click Quarantine Cage##278538
		.' Release Mortalus in Quarantine Cages |q Decontamination##6897/1 |goto Celestion 3166,-2858,-928
	step
		.talk Harrower Krimzon##277089
		..turnin Decontamination##6897 |goto Celestion 3109,-2883,-928
		..accept On Chernobog's Trail##6898 |goto Celestion 3109,-2883,-928
		..accept Ravenous Reaping##6902 |goto Celestion 3109,-2883,-928
	step
		.talk Weaponsmaster Daxag##277087
		..accept Sparks##6903 |goto Celestion 3201,-2906,-932
	step
		.click Weapons Crate##278388
		.' Pick up Explosive Flares |q Sparks##6903/1 |goto Celestion 3199,-2905,-932
	step
		.' Use the Hazmat Suit FIlter in your inventory |use Hazmat Suit Filter##28719 |goto Celestion 3255,-2843,-932
		.' _Go up_ the stairs |goto Celestion 3270,-2833,-932
		.kill Ravenous Ghoul##3144907 |tip They drop suits in case you need them
		.' Kill Ravenous Mordesh |q Ravenous Reaping##6902/1 |goto Celestion 3315,-2801,-906
		.' Press _T_ to:
		.' Use Explosive Flares on Ravenous |q Sparks##6903/2 |goto Celestion 3315,-2801,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Ravenous Reaping##6902
		..turnin Sparks##6903
		..accept Tinder##6904
	step
		.' Press _C_ to use your Communicator:
		..accept Vital Recovery##6905 |goto Celestion 3496,-2657,-845
	step
		'Keep an eye on Hazmat Suit aura while doing quest
		.click Datachron##2655637
		.' Collect the Datachron |q On Chernobog's Trail##6898/2 |goto Celestion 3543,-2651,-845
		.click Vial of Vitalus##3067259
		.' Recover Vials of Vitalus |q Vital Recovery##6905/1 |goto Celestion 3665,-2644,-840
	step
		.' Press _C_ to use your Communicator:
		..turnin On Chernobog's Trail##6898
		..accept Ring of Fire##6899
		..turnin Vital Recovery##6905
	step
		.click Reaper Noubakov's Corpse##278516
		.' Search Reaper Noubakov's Corpse for Hellfire Explosives |q Ring of Fire##6899/1 |goto Celestion 3546,-2655,-845
	step
		.click Plant Hellfire Explosives##278494
		.' Plant Hellfire Explosives in Grimhold Sector One |q Ring of Fire##6899/2 |goto Celestion 3618,-2703,-841
	step
		.click Plant Hellfire Explosives##278489
		.' Plant Hellfire Explosives in Grimhold Sector Two |q Ring of Fire##6899/3 |goto Celestion 3747,-2606,-841
	step
		.' _Follow_ the path |goto Celestion 3663,-2524,-845 <10
		.click Plant Hellfire Explosives##278488
		.' Plant Hellfire Explosives in Grimhold Sector Three |q Ring of Fire##6899/4 |goto Celestion 3593,-2541,-844
	step
		.click Daxag's Weapons Crate##278385
		.' Access the Weapons Crate |q Tinder##6904/1 |goto Celestion 3546,-2453,-837
	step
		.' Press _T_ to:
		.' Torch Ravenous Mordesh with an Inferno Reaper |q Tinder##6904/2 |goto Celestion 3525,-2490,-841
	step
		.' Press _C_ to use your Communicator:
		..turnin Tinder##6904
	step
		.kill Ravenous Otokar Vosmara |goto Celestion 3554,-2554,-844
		.' Press _I_ to open your inventory and right click the _Vosmara Family Heirloom_
		..accept Grim Reality##6907
	step
		.' _Jump up_ the pipe |goto Celestion 3568,-2545,-826 <5
		.' _Jump down_ to the pipes below |goto Celestion 3506,-2513,-819 <5
		.click Plant Hellfire Explosives##278493
		.' Plant Hellfire Explosives in Grimhold Sector Four |q Ring of Fire##6899/5 |goto Celestion 3493,-2500,-816
	step
		.talk Grim Reaper Lukov##278485
		..turnin Ring of Fire##6899 |goto Celestion 3856,-2447,-838
		..accept Ravenous Dusk##6900
	step
		.click Chernobog's Last Charge##278484
		.' Arm Chernobog's Last Charge |q Ravenous Dusk##6900/1 |goto Celestion 3846,-2457,-838
	step
		.talk Grim Reaper Lukov##277074
		..turnin Ravenous Dusk##6900 |goto Celestion 3857,-2446,-838
		..accept The Reaper's Harvest##6901 |goto Celestion 3857,-2446,-838
	step
		.click Lukov's Speeder##278394
		.' Embark on Lukov's Speeder |q The Reaper's Harvest##6901/1 |goto Celestion 3825,-2487,-845
	step
		.talk Nadia Vosmara##277080
		..turnin Grim Reality##6907 |goto Celestion 3163,-2923,-932
	step
		.talk Harrower Krimzon##277089
		..turnin The Reaper's Harvest##6901 |goto Celestion 3110,-2883,-928
		..accept To the City of Thayd##8750 |goto Celestion 3094,-2893,-928
	step
		'Press _C_ to open your Comuunicator:
		..accpet Alpha Sanctum Expedition##10096
	step
		.'You must be level 15 to be able to do all quests in Thayd
		.'An Expedition or group quest should be enough
		|confirm |q 8750
	step
		.' _Exit_ the gates |goto Celestion 3079,-2936,-931 <10
		.click Grimhold Taxi Kiosk##270814
		.' Take the taxi to Thayd |q To the Walls of Thayd##8750/1 |goto Celestion 3077,-2986,-921
	]]
)	