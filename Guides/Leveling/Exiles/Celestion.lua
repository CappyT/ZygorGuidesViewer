if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Celestion (6-15)",
	{
	faction="Exiles",
	startlevel=6,
	endlevel=15,
	nextguide="Exiles\\Galeras (15-23)", 
	image="ZygorUIGuides:Celestion",
	description="Celestion is a zone in northern Alizar in WildStar. It is large forest region, and is a major foothold for The Exiles. Celestion is heavily influenced by the Aurin and Mordesh, and is intended for players levels 6-15.",
	},
	[[
	step
		.' _Leave_ the cave |goto Celestion 924,-3095,-890
		.talk Arwick Redleaf##292806
		..turnin The Path to Celestion##6844 |goto 1028,-3054,-907
		..accept Reclaiming Greenbough##6670 |goto 1028,-3054,-907
		..accept A Fiery Escape##6671 |goto 1028,-3054,-907
	step
		.talk Yalum Soulbark##284785
		..accept From the Ashes of Greenbough##6675 |goto Celestion 1058,-3080,-906
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 8 |goto Celestion 1087,-2972,-925
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 16 |goto Celestion 1131,-2974,-928
	step
		.click Dead Jabbit##284428
		..accept Catch and Release##6674 |goto Celestion 1140,-3004,-927
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 25 |goto Celestion 1281,-2962,-925
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 33 |goto Celestion 1384,-2961,-919
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 41 |goto Celestion 1476,-2975,-913
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 50 |goto Celestion 1441,-3008,-911
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 58 |goto Celestion 1403,-3073,-905
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 66 |goto Celestion 1362,-3108,-906
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 75 |goto Celestion 1300,-3080,-908
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 83 |goto Celestion 1218,-3069,-913
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 91 |goto Celestion 1174,-3096,-912
	step
		.' Plant new flora in Loose Dirt |q From the Ashes of Greenbough##6675/1 |count 100 |goto Celestion 1126,-3109,-911
	step
		.kill Fallen Tree##5989084
		.' Destroy debris blocking the Western Embertree |q A Fiery Escape##6671/1 |goto Celestion 1199,-3088,-909
	step
		.' _Go down_ the path |goto Celestion 1199,-3102,-913
		.click Trapped Aurin##6268829
		.' Rescue Trapped Aurin |q A Fiery Escape##6671/2 |goto 1176,-3082,-934
	step  //Step
		.' _Go up_ the ramp |goto 1192,-3097,-921
		.' _Exit_ the tree |goto 1198,-3086,-910 <15
		.' Press _T_ to:
		.' Rally Scorched Tangleroots to your side |q Reclaiming Greenbough##6670/1 |tip Stand next to them |goto 1188,-3083,-912
		.kill Firestorm Pyroslinger##6063114, Firestorm Embermancer##6218794
		.' Kill Firestorm troops |q Reclaiming Greenbough##6670/2 |goto 1177,-3029,-924
		.click Singed Splorg##6258088, Singed Vind##6387458
		.' Catch Singed critters in Emberwood |q Catch and Release##6674/1 |goto Celestion 1197,-3013,-926
	step
		.' Press _T_ to:
		.' Release Saved critters in a safe place |q Catch and Release##6674/2 |goto Celestion 1186,-2941,-932
	step
		.' Press _C_ to use your Communicator:
		..turnin Reclaiming Greenbough##6670
		..turnin Catch and Release##6674
	step
		.kill Scorched Ashthorn##5531068
		.' Destroy debris blocking the Eastern Embertree |q A Fiery Escape##6671/3 |goto Celestion 1380,-2990,-914
	step
		.' _Go down_ the path |goto Celestion 1394,-2994,-917
		.click Trapped Aurin##4459737
		.' Rescue Trapped Aurin |q A Fiery Escape##6671/4 |goto 1374,-3023,-930
	step
		.' _Go up_ the path |goto 1385,-3002,-925
		.' _Exit_ the tree |goto 1382,-2991,-913
		.kill Fallen Tree##4735958
		.' Destroy debris blocking the Northeastern Embertree |q A Fiery Escape##6671/5 |goto 1406,-3102,-902
	step
		.' Press _C_ to use your Communicator:
		..turnin A Fiery Escape##6671
		..accept Greenbough Guardian##6672
	step
		.' _Go down_ the path |goto Celestion 1401,-3126,-905
		.talk Fenosha Longbranch##292786
		..accept Dear to My Heart##6678 |goto 1396,-3129,-906
	step
		.' _Go down_ the path |goto Celestion 1388,-3096,-933
		.' _Continue down_ and to the right |goto Celestion 1373,-3127,-942
		.' Find Chesh |q Dear to My Heart##6678/1 |goto Celestion 1376,-3138,-941
		.click Chesh##292205
	step
		.' _Go up_ the ramp |goto Celestion 1392,-3120,-911
		.talk Fenosha Longbranch##292786
		..turnin Dear to My Heart##6678 |goto 1396,-3129,-906
	step
		.' _Exit_ the tree |goto Celestion 1405,-3103,-901
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |count 33 |goto Celestion 1497,-3064,-887
	step
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |count 66 |goto Celestion 1542,-3025,-891
	step
		.' Press _T_ to:
		.' Call a Greenbough Guardian to destroy Firestorm Flingatrons |q Greenbough Guardian##6672/1 |goto Celestion 1598,-3108,-873
	step
		.' Press _C_ to use your Communicator:
		..turnin Greenbough Guardian##6672
		..accept Firefighting##6673
	step
		.click Fire Suppressor##6171007
		.' Steal a Dominion Fire Suppressor |q Firefighting##6673/1 |goto Celestion 1564,-3146,-871
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
		..accept Flower Brigade##6679 |goto 1233,-2571,-949
	step
		.talk Hunter Chiath##283929
		..accept The Protectors of Celestion##8860 |goto Celestion 1230,-2568,-947
	step
		.kill Greenbark Spewer##6374718, Greenbark Slurper##6149589
		.' Collect Greenbark Chlorospores from Greenbark creatures |q Flower Brigade##6679/1 |goto Celestion 1301,-2571,-948
		.' Hunt an animal near an Aurin Hunter |q The Protectors of Celestion##8860/1 |tip Keep an eye on the _"Hunter Varann Proximity"_ on the top left of the screen.
	step
		.' Press _C_ to use your Communicator:
		..accept A Salvageable Situation##9036 |goto Celestion 1349,-2679,-927
	step
		.talk Venra Dewflower##284797
		..turnin Flower Brigade##6679 |goto Celestion 1234,-2571,-949
	step
		.' _Cross_ the bridge |goto Celestion 1178,-2504,-941
		.talk Arwick Redleaf##284803
		..turnin Journey to Woodhaven##6805 |goto 1098,-2447,-951
		..accept Sanctuary Enshrined##6618 |goto 1098,-2447,-951
	step
		.talk Tender Kaiya##284301
		.' Talk to Tender Kaiya |q Sanctuary Enshrined##6618/1 |goto Celestion 1107,-2423,-950
	step
		.talk Rogum##284794
		..accept Touring Woodhaven##9087 |goto Celestion 1094,-2472,-950
	step
		.click Woodhaven Mailbox##275273
		.' Open the Woodhaven Mailbox |q Touring Woodhaven##9087/1 |goto 1101,-2440,-951
	step
		.click Woodhaven Taxi Kiosk##270820
		.' Use the Woodhaven Taxi Stand |q Touring Woodhaven##9087/2 |goto 1111,-2491,-944
	step
		.click Transmat Terminal##275393
		.' Select the Transmat Terminal |q Touring Woodhaven##9087/3 |goto 1067,-2481,-950
	step
		.talk Rogum##284794
		..turnin Touring Woodhaven##9087 |goto 1093,-2472,-950
	step
		.talk Weaponsmith Redfire##275179
		..turnin A Salvageable Situation##9036 |goto Celestion 1091,-2478,-951
		..accept Breaking it Down##9035 |goto Celestion 1091,-2478,-951
	step
		.' Press _"I"_ to open you inventory
		.' Salvage the Unusable Crafting Prototype to get a Dusty Power Core |q Breaking it Down##9035/1
	step
		.talk Supplier Whispwick Moonsong##275387
		..turnin Breaking it Down##9035 |goto Celestion 1086,-2477,-951
	step
		.talk Serra Nightbright##292803
		..accept Nature's Nightlight##6680 |goto Celestion 1025,-2406,-949
	step
		.talk Provisioner Grayfur##275383
		..turnin The Protectors of Celestion##8860 |goto 1027,-2404,-948
	step
		.click Western Spirit Protector##284303
		.' Help Kaiya bind with the Western Spirit Protector |q Sanctuary Enshrined##6618/4 |goto Celestion 928,-2458,-950 |tip Kill the attackers that come.
	step
		.' _Jump_ onto the giant mushrooms to launch through the air in order to reach the Firefly clouds 
		.' Collect Fireflies by jumping through them |q Nature's Nightlight##6680/1 |goto Celestion 756,-2474,-928
	step
		.' Press _C_ to use your Communicator:
		..turnin Nature's Nightlight##6680
	step
		.click Southern Spirit Protector##284304
		.' Help Kaiya bind with the Southern Spirit Protector |q Sanctuary Enshrined##6618/3 |goto 1078,-2297,-954 |tip Kill the attackers that come.
	step
		.click Eastern Spirit Protector##284305
		.' Help Kaiya bind with the Eastern Spirit Protector |q Sanctuary Enshrined##6618/2 |goto Celestion 1227,-2437,-949 |tip Kill the attackers that come.
	step
		.talk Arwick Redleaf##284803
		..turnin Sanctuary Enshrined##6618 |goto Celestion 1100,-2446,-951
		..accept The Watcher's Way##6619 |goto Celestion 1100,-2446,-951
	step

		step
		.click Transmat Terminal##265407
		.' Click _Yes_ to set _Woodhaven_ as your Recall point |goto Celestion 1066,-2484,-950
		|confirm
	step
		.' _Cross_ the river |goto Celestion 870,-2275,-957
		.talk Watcher Yalesh Sageroot##284806
		.' Find Watcher Yalesh Sageroot |q The Watcher's Way##6619/1 |goto 771,-2202,-941
	step
		.' Press _T_ to:
		.' Commune with Watcher Yalesh Sageroot |q The Watcher's Way##6619/2 |goto Celestion 771,-2202,-941
 	step
		.talk Watcher Yalesh Sageroot##284806
		..accept A Heralded Horn##6628 |goto Celestion 770,-2202,-941
	step
		.click Clarionberry Limb##6500405
		.' Gather Clarionberry Bark |q A Heralded Horn##6628/1 |goto Celestion 805,-2284,-943 |tip They are located around vegetation in the area.
	step
		.' _Go up_ the hill |goto Celestion 767,-2304,-940
		.' _Go through_ the narrow passage |goto Celestion 714,-2337,-923
		.kill Lightkeeper##5929002
		.' Harvest Lightkeeper's Horn |q A Heralded Horn##6628/3 |goto 604,-2249,-917
	step
		.' _Leave_ the passage |goto Celestion 655,-2309,-914
		.' _Go up_ the hill |goto 712,-2389,-915
		.click Primal Matrix##6657608
		.' Retrieve the Primal Matrix |q A Heralded Horn##6628/2 |goto 670,-2583,-913
	step
		.' Use the mushroom to _jump up_ the large hill |goto Celestion 675,-2556,-870
		.' _Go down_ the path |goto 680,-2413,-897
		.talk Watcher Yalesh Sageroot##284806
		..turnin A Heralded Horn##6628 |goto 771,-2201,-941
		..accept Watcher's Warning##6629 |goto 771,-2201,-941
	step
		.' _Follow the path_ along the mountain |goto Celestion 881,-2138,-957
		.' _Go to_ the right fork in the road |goto 902,-2008,-944
		.' Press _T_ to:
		.' Awaken hypnotized Dawngrazers and Jabbits |q Watcher's Warning##6629/1 |goto Celestion 815,-1965,-942
		.kill  Dazeroot Hiveguard##3178654, Enhanced Dazeroot Hiveguard##6650452
		.' Kill Dazeroot buzzbings |q Watcher's Warning##6629/2 |goto Celestion 815,-1965,-942
	step
		.' Press _C_ to use your Communicator:
		..turnin Watcher's Warning##6629
	step
		.' _Follow_ the path |goto Celestion 917,-2067,-950
		.' _Cross_ the water |goto 944,-2317,-955
		.talk Arwick Redleaf##284802
		..turnin The Watcher's Way##6619 |goto 1105,-2374,-952
		..accept Predators and Prey##6620 |goto 1105,-2374,-952
	step
		.talk Viralist Katoff##292811 |q Predators and Prey##6620/1 |goto Celestion 1286,-2361,-950
	step
		.talk Viralist Katoff##292811
		..accept Composing a Toxoid##6624 |goto Celestion 1286,-2361,-950
		..accept Flush the Ambush##6625 |goto Celestion 1286,-2361,-950
	step
		.talk Professor Papovich##284791
		..accept Stitched Together##6623 |goto Celestion 1290,-2338,-949
	step
		.' _Go along_ the path |goto Celestion 1306,-2227,-944
		.' Press _T_ on Suspicious Bushes to:
		.' Use Decloaking Grenades to search Suspicious Bushes |q Flush the Ambush##6625/1 |goto Celestion 1299,-2013,-902 |tip They are all around this area.
		.click Suspicious Bush##6182808
		.' Kill Bonerazer Ambushers |q Flush the Ambush##6625/2 |goto Celestion 1258,-1890,-907
	step
		.' Press _C_ to use your Communicator:
		..turnin Flush the Ambush##6625
	step
		.' Press _C_ to use your Communicator:
		..accept Tools of the Trade##6621 |goto Celestion 1274,-1827,-900
	step
		.' Press _T_ to Inject Bonerazer Draken with Bloodbane Toxoid
		.' Collect Draken Blood Samples |q Composing a Toxoid##6624/1 |	goto 1287,-1849,-904
		.kill Bonerazer Bloodspiller##6916402, Bonerazer Bloodmauler##6511664, Bonerazer Firewalker##6861247
		.' Kill Bonerazer Draken |q Predators and Prey##6620/4 |goto Celestion 1283,-1813,-898
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 25 |goto Celestion 1309,-1846,-901
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 10 |goto Celestion 1315,-1870,-904 |tip Collect Aurin Remains as you make your way through the area.
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 50 |goto 1267,-1832,-900
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 23 |goto Celestion 1266,-1843,-902 |tip Collect Aurin Remains as you make your way through the area.
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 36 |goto 1254,-1804,-895
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |count 75 |goto Celestion 1277,-1760,-891
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 49 |goto Celestion 1279,-1750,-889 |tip Collect Aurin Remains as you make your way through the area.
	step
		.click Bonerazer Cage##284277
		.' Open Bonerazer Cages |q Predators and Prey##6620/3 |goto 1336,-1714,-888 
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 62 |goto 1282,-1753,-890 |goto Celestion 1313,-1719,-887 |tip Collect Aurin Remains as you make your way through the area.
	step
		.' Press _C_ to use your Communicator:
		..turnin Predators and Prey##6620
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 75 |goto Celestion 1422,-1708,-886 |tip Collect Aurin Remains as you make your way through the area.
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |count 87 |goto Celestion 1415,-1614,-876 |tip Collect Aurin Remains as you make your way through the area.
	step
		.click Weapon Rack##284260
		.' Destroy Weapon Racks |q Tools of the Trade##6621/1 |goto Celestion 1358,-1591,-870 |tip Collect Aurin Remains as you make your way through the area.
	step
		.' Press _C_ to use your Communicator:
		..turnin Tools of the Trade##6621
		..accept End of the Elders##6626
	step
		.' Press _C_ to use your Communicator:
		..accept Tampered Signals##6797
	step
		.click Bonerazer Huntstalker##3304717, Bonerazer Bloodmauler##3324231
		.' Press _T_ to Inject Bonerazer Draken with Bloodbane Toxid
		.' Inject Bonerazer Draken with Bloodbane Toxoid |q Composing a Toxoid##6624/2 |goto Celestion 1233,-1529,-892
		.click Aurin Remains##1086927
		.' Collect Aurin Body Parts |q Stitched Together##6623/1
	step
		.' Press _C_ to use your Communicator:
		..turnin Composing a Toxoid##6624
	step
		.' _Go up_ the ramp |goto Celestion 1213,-1474,-891
		.click Communication Controls##284125
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |count 25 |goto 1177,-1462,-880
	step
		.' _Follow_ the path down |goto Celestion 1211,-1484,-896
		.' _Go up_ the ramp |goto Celestion 1132,-1529,-900
		.click Communication Controls##284124
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |count 50 |goto 1116,-1542,-882
	step
		.' _Go down_ the hill |goto Celestion 1082,-1563,-899
		.' _Enter_ the hut |goto Celestion 1057,-1583,-899  //Fixed
		.' Kill Elder Marok |q End of the Elders##6626/1 |goto 1055,-1606,-901
	step
		
		.' _Follow_ the path up |goto 980,-1523,-899
		.click Communication Controls##284123
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |count 75 |goto 1010,-1485,-886
	step
		.' _Follow_ the path |goto Celestion 999,-1440,-895
		.' _Go up_ the stairs |goto 1039,-1326,-891
		.click Communication Controls##284126
		.' Deactivate Communication Controls |q Tampered Signals##6797/1 |goto 1083,-1320,-880
	step
		.' Press _C_ to use your Communicator:
		..turnin Tampered Signals##6797
	step
		.' _Go down_ the hill |goto Celestion 1107,-1297,-897
		.' _Enter_ the hut |goto 1168,-1374,-894
		.' Kill Elder Dakkar |q End of the Elders##6626/2 |goto 1191,-1363,-895
	step
		.' Press _C_ to use your Communicator:
		..turnin End of the Elders##6626
		..accept Preyfinder's Demise##6622
	step
		.' _Go up_ the hill |goto Celestion 1013,-1458,-901
		.' Kill Razen the Preyfinder |q Preyfinder's Demise##6622/1 |goto 992,-1369,-881
	step
		.' Press _C_ to use your Communicator:
		..turnin Preyfinder's Demise##6622
	step
		.' _Go down_ the path |goto 1029,-1483,-907
		.' _Follow_ the path up |goto 1223,-1536,-894
		.' _Go through_ the archway |goto 1325,-1608,-871
		.' Press _C_ to use your Communicator:
		..accept A Visit to the Doctor##6659 |goto 1360,-1599,-872
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Woodhaven - Transmat |goto 1065,-2487,-949 < 100 |c |noway |q 6623
	step
		.click Recombinator##284185
		.' Activate the Recombinator |q Stitched Together##6623/3 |goto Celestion 1281,-2341,-949
	step
		.talk Professor Papovich##284804
		..turnin Stitched Together##6623 |goto Celestion 1289,-2338,-949
	step
		.' _Follow the path_ out of town |goto Celestion 1324,-2261,-942
		.' _Travel through_ the hills |goto 1417,-2109,-928
		.' _Go up_ the large hill |goto 1536,-2005,-926
		.talk Fenosh Nightfern##284808
		..accept Moodoo Voodoo##6667 |goto 1631,-1963,-921
	step
		.talk Physician Boravic##292853
		..turnin A Visit to the Doctor##6659 |goto Celestion 1666,-1858,-911
		..accept Information Extraction##6660
	step
		.click Moodie Test Subject##284048
		.' Press _T_ to:
		.' Burn a Moodie Test Subject |q Information Extraction##6660/1 |goto Celestion 1689,-1868,-912
	step
		.click Moodie Test Subject##284048
		.' Press _T_ to:
		.' Freeze a Moodie Test Subject |q Information Extraction##6660/2 |goto Celestion 1689,-1868,-912
	step
		.click Moodie Test Subject##284048
		.' Press _T_ to:
		.' Electrocute a Moodie Test Subject |q Information Extraction##6660/3 |goto Celestion 1689,-1868,-912
	step
		.click Moodie Test Subject##284048
		.' Press _T_ to:
		.' Cut a Moodie Test Subject |q Information Extraction##6660/4 |goto Celestion 1689,-1868,-912
	step
		.talk Physician Boravic##292853
		..turnin Information Extraction##6660 |goto Celestion 1666,-1858,-911
		..accept Moodie Necropsy##6661 |goto 1666,-1858,-911
	step
		.talk Mesmerist Ozliam##292849
		..accept Science Lesson##6668 |goto 1675,-1921,-914
	step
		.talk Alchemist Vinkov##2848095
		..accept Bad Vibes##6666 |goto 1680,-1943,-916
//Search Vegging Out and possibly place it here
	step
		.click Ozliam's Body Scanner##283943
		.' Activate the Body Scanner |q Science Lesson##6668/1 |goto Celestion 1677,-1920,-914
	step
		.click Ozliam's Tissue Sample##283945
		.' Collect Ozliam's Tissue Sample |q Science Lesson##6668/2 |goto Celestion 1686,-1923,-914
	step
		.click Ozliam's Cloner Console##283946
		.' Choose _Yes_, you completed a full body scan of the subject to be cloned.
		.' Activate Ozliam's Cloner Console |q Science Lesson##6668/3 |goto Celestion 1663,-1927,-914
	step
		.click Ozliam's Cloner##283947
		.' Repeat the pattern shown:
		.' Activate Ozliam's Cloner |q Science Lesson##6668/4 |goto Celestion 1660,-1929,-914
	step
		.talk Mesmerist Ozliam##292849
		..turnin Science Lesson##6668 |goto Celestion 1672,-1920,-914
	step
		.click Life Force Anomaly##3828153
		.' Scan a Life Force Anomaly |q Bad Vibes##6666/1 |goto Celestion 1582,-2119,-953
	step
		.kill Darkloam Necroshaman##2839353, Darkloam Shadowroot##2783410, Darkloam Gatherer##3862804
		.' Collect Shadowroot Wood |q Moodoo Voodoo##6667/2 |goto 1584,-2191,-957
	step
		.kill Muddybrook Razortooth##3851155, Darkloam Spirit Kin##3814177, Darkloam Bonecaller##3806604
		.' Collect Mudcrawler Bones |q Moodoo Voodoo##6667/1 |goto Celestion 1629,-2209,-958
		.' Harvest Darkloam Moodie Organs |q Moodie Necropsy##6661/1
	step
		.click Life Force Anomaly##3696813
		.' Scan a second Life Force Anomaly |q Bad Vibes##6666/2 |goto Celestion 1585,-2320,-954
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
		.' Enter Darkloam Hole |q Grave Robbery##6662/1 |goto Celestion 1836,-2264,-985
	step
		.click Darkloam Grave##3334510
		.' Dig up Moodie Graves to steal Moodie Ritual Relics |q Grave Robbery##6662/2 |count 16 |goto 1734,-2263,-1001
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
		.click Discovery##2744783 |goto Celestion 1660,-2353,-1020
		.click Enhancement Field Generator##3911895
		.click Moodie Focus Reliquary##291947
		.' Summon Life and Death Essence |q Relic Calling##6663/1
		.kill Summoned Death Essence##3170815
		.' Defeat the Summoned Death Essence |q Relic Calling##6663/2 |goto 1648,-2362,-1020
	step
		.' _Go up_ the ramp |goto Celestion 1692,-2285,-1006
		.' _Follow_ the path up |goto 1751,-2253,-999
		.' _Exit_ the cave |goto 1841,-2265,-985
		.' _Go up_ the winding path |goto Celestion 1881,-2250,-974
		.' _Continue up_ the winding path |goto Celestion 1853,-2326,-959
		.' _Cross_ the grass |goto Celestion 1771,-2268,-953
		.' _Go up_ the hill |goto Celestion 1755,-2123,-951
		.' _Follow the hill up_ to the path |goto 1725,-2004,-956
		.' _Enter_ the Grimveil Enclave |goto 1722,-1915,-917
		.talk Physician Boravic##292853
		..turnin Relic Calling##6663 |goto Celestion 1666,-1857,-911
	step
		..accept Back to Woodhaven##6627 |goto Celestion 1741,-1796,-902
	step
		.talk Ashrynn Strongstem##284810
		..accept Vegging Out##6665 |goto Celestion 1528,-2026,-940
	step
		.click Aurin Transmorph Shroom##291932
		.' Commune with Aurin Transmorph Shroom |q Vegging Out##6665/1 |goto 1517,-2039,-941
	step
		.click Veggie Burrow##283989
		.' Hide in a Veggie Burrow |q Vegging Out##6665/2 |goto 1518,-2042,-942
	step
		.click Stewing Radish Sprout##283992
		.' Rescue the Veggies |q Vegging Out##6665/3
	step
		.' _Leave_ Darkloam Hollow |goto Celestion 1585,-2127,-955
		.talk Ashrynn Strongstem##284810
		..turnin Vegging Out##6665 |goto 1528,-2027,-940
	step
		'Press the icon on the bottom right of your action bar to:
		.' Recall to Woodhaven - Transmat |goto 1065,-2487,-949 < 100 |c |noway |q 6627
	step
		.talk Arwick Redleaf##284801
		..turnin Back to Woodhaven##6627 |goto 1106,-2375,-952
		..accept Wayfarer's Passage##6997 |goto 1106,-2375,-952
	step
		.click Hoverbike##3134064
		.' Ride the Hoverbike |q Wayfarer's Passage##6997/1 |goto Celestion 1255,-2346,-949
	step
		.' Ride the Hoverbike to its destination |q Wayfarer's Passage##6997/2 |goto Celestion 1983,-1854,-912
	step
		.' _Go to_ the bridge. |goto Celestion 2040,-1892,-919
		.talk Chief Chugach##280660
		..turnin Wayfarer's Passage##6997 |goto 2071,-1923,-915
		..accept Gargantuan Tale##6998 |goto 2071,-1923,-915
	step
		.' _Go up_ the ramp |goto Celestion 2073,-1951,-909
		.' _Continue up_ the ramp |goto 2124,-1950,-892
		.talk Immuyak##281952
		.' Talk to Immuyak |q Gargantuan Tale##6998/2 |goto 2146,-1931,-884
	step
		.' _Go down_ the ramp |goto 2096,-1964,-893
		.' _Continue up_ the ramp |goto Celestion 2199,-2040,-856
		.talk Arrluk##281953 |q Gargantuan Tale##6998/3
	step
		.' _Jump down_ to the ground |goto Celestion 2147,-1982,-923
		.talk Trader Lukadat##281954 |q Gargantuan Tale##6998/1 |goto Celestion 2147,-1982,-923
	step
		.talk Chief Chugach##280660
		..turnin Gargantuan Tale##6998 |goto Celestion 2071,-1924,-915
		..accept Hijunga Defenses##6999
		..accept Rowsdower at Stake##7000
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 12 |goto Celestion 2146,-1828,-920
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 25 |goto Celestion 2171,-1786,-915
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 37 |goto 2156,-1748,-914
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 50 |goto 2166,-1710,-910
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 62 |goto 2211,-1723,-910
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 75 |goto 2230,-1660,-902
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |count 87 |goto 2291,-1642,-900
	step
		.click Hijunga Trap##281940
		.' Arm Hijunga Traps |q Hijunga Defenses##6999/1 |goto 2260,-1576,-885 |tip Kill Tangleclaw enemies as you disarm traps
	step
		.kill Tangleclaw Slasher##4071034
		.' Kill Tangleclaw pumera |q Hijunga Defenses##6999/2 |goto Celestion 2216,-1690,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Hijunga Defenses##6999
	step
		.click Amorous Rowsdower##4022199
		.' Press _T_ to:
		.' Round up some Rowsdowers |q Rowsdower at Stake##7000/1 |goto Celestion 2245,-1721,-912
	step
		.' _Go up_ the hill |goto Celestion 2198,-1606,-873
		.click Hitching Post##281932
		.' Secure Rowsdowers to the post |q Rowsdower at Stake##7000/2 |goto 2213,-1489,-879
	step
		.' Press _C_ to use your Communicator:
		..turnin Rowsdower at Stake##7000
		..accept Breaking Free##7002
	step
		.' Enter Tanglemore Den |q Breaking Free##7002/1 |goto Celestion 2096,-1426,-869
	step
		.talk Trader Lukadat##280659
		..accept Swapping Troubles##7003 |goto 2101,-1396,-869
		..accept Biting Back##7004 |goto 2101,-1396,-869
	step
		.click Cargo Lifter##281883
		.' Take Eggs from the cart |q Swapping Troubles##7003/1 |goto 2104,-1393,-869
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
		.' Rescue trapped Lopp |q Breaking Free##7002/2 |goto 2156,-1158,-870 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.click Burgaska Nest##281885
		.' Place the Eggs back in the Denmother's nests |q Swapping Troubles##7003/2 |goto Celestion 2151,-1154,-870 |tip Kill Tanglemore chompacabras as you make your way through the cave.
	step
		.' Kill Tanglemore chompacabras |q Biting Back##7004/1 |goto Celestion 2119,-1162,-872
	step
		.' Press _C_ to use your Communicator:
		..turnin Swapping Troubles##7003
		..turnin Biting Back##7004
	step
		.talk Treasure Hunter Tuwawi##285767
		..accept Risky Riches##7005 |goto 2098,-1163,-872
	step
		.click Loose Rocks##4058794
		.' Dig for Shiny Baubles beneath Loose Rocks |q Risky Riches##7005/1 |goto Celestion 2161,-1193,-869
	step
		.talk Treasure Hunter Tuwawi##285767
		..turnin Risky Riches##7005 |goto Celestion 2100,-1163,-872
	step
		.' _Go towards_ the cave exit |goto Celestion 2106,-1228,-869
		.' _Continue following_ the path out of the cave |goto 2136,-1307,-869
		.' _Leave_ the cave |goto 2098,-1423,-869
		.' _Follow_ the path |goto 2118,-1644,-895
		.' _Continue along_ the path |goto 2149,-1765,-916
		.talk Chief Chugach##280660
		..turnin Breaking Free##7002 |goto 2071,-1922,-915
		..accept On to Sylvan Glade##7006
	step
		.talk Kurg Caravan Dealer##281444
		.' Talk to the Kurg Caravan Dealer |q On to Sylvan Glade##7006/1 |goto Celestion 2172,-1986,-923
	step
		.' _Enter_ the giant shell |goto Celestion 2737,-2447,-899
		.' _Go down_ the ramp |goto 2722,-2471,-922
		.talk Consort Yaenna##280652
		..accept Herbal Remedy##7022 |goto 2763,-2457,-934
	step
		.talk Queen Myala Everstar##280653
		..turnin On to Sylvan Glade##7006 |goto Celestion 2770,-2451,-933
	step
		.' _Go up_ the ramp |goto 2742,-2476,-931
		.' _Leave_ the building |goto 2737,-2446,-899
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 12 |goto 2662,-2452,-923
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 25 |goto 2592,-2436,-934
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 37 |goto 2581,-2575,-923
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 50 |goto 2578,-2613,-919
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 62 |goto 2615,-2595,-930
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 75 |goto 2645,-2563,-935
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |count 87 |goto 2693,-2629,-936
	step
		.click Sylvan Bulb##4064442
		.' Collect Sylvan Bulbs |q Herbal Remedy##7022/1 |goto 2739,-2639,-927
	step
		.' _Go up_ the hill |goto Celestion 2799,-2545,-890
		.' _Go down_ the hill |goto 2800,-2450,-888
		.' _Cross_ the giant roots |goto Celestion 2741,-2419,-902
		.' _Enter_ the building |goto 2736,-2445,-899
		.' _Go down_ the path |goto 2722,-2472,-921
		.talk Queen Myala Everstar##280653
		..turnin Herbal Remedy##7022 |goto 2769,-2451,-933
		..accept Trials of a Matria##7357
	step
		.talk Consort Yaenna##280652
		.' Speak to Consort Yaenna |q Trials of a Matria##7357/1 |goto Celestion 2763,-2457,-934
	step
		.' _Go up_ the ramp |goto Celestion 2746,-2475,-933
		.' _Leave_ the tree |goto 2737,-2446,-899
		.talk Consort Yaenna##281474
		..turnin Trials of a Matria##7357 |goto 2670,-2436,-925
		..accept Sylvan Test of Spirit##7023
	step
		.' Use the abilities on my hotbar:
		.' _Dig_ when you reach this spot |goto Celestion 2629,-2619,-932
		.' _Dig_ when you reach this spot |goto 2738,-2628,-926
		.' _Dig_ when you reach this spot |goto 2840,-2602,-921
		.' Use the Vind's Tracking Sense |q Sylvan Test of Spirit##7023/1 
	step
		.' Press _C_ to use your Communicator:
		..turnin Sylvan Test of Spirit##7023
		..accept Sylvan Test of Courage##7024
	step
		.' _Go up_ the hill |goto Celestion 2799,-2538,-887
		.' _Go down_ the hill |goto 2801,-2454,-887
		.' _Jump down_ the ledge and enter the cave |goto 2648,-2305,-967
		.talk Consort Yaenna##281471
		.' Meet with Consort Yaenna |q Sylvan Test of Courage##7024/1 |goto 2679,-2355,-970
	step
		.click Stone of Courage##281472
		.' Commune with the Stone of Courage |q Sylvan Test of Courage##7024/2
		.' Kill Spirit Guardian Bohumir |q Sylvan Test of Courage##7024/3
	step
		.' Press _C_ to use your Communicator:
		..turnin Sylvan Test of Courage##7024
		..accept Sylvan Test of Heart##7025
	step
		.' _Leave_ the cave |goto Celestion 2652,-2308,-967
		.' _Go up_ the path |goto 2633,-2325,-950
		.' _Climb up_ the large roots |goto 2729,-2429,-904
		.' _Go through_ the doorway |goto 2800,-2450,-888
		.talk Consort Yaenna##281470
		.' Meet Consort Yaenna |q Sylvan Test of Heart##7025/1 |goto 2812,-2502,-882
	step
		.' _Jump_ into the Green Orbs floating around the area 
		.' Deliver Primal Life Energy to the Elder Wisdom Tree's Roots |q Sylvan Test of Heart##7025/3 |goto Celestion 2814,-2520,-885
	step
		.' _Go through_ the gates |goto Celestion 2800,-2449,-889
		.' _Cross_ the large tree roots |goto 2742,-2418,-902
		.' _Enter_ the building |goto 2736,-2445,-899
		.' _Go down_ the ramp |goto 2725,-2474,-922
		.talk Queen Myala Everstar##280653
		..turnin Sylvan Test of Heart##7025 |goto 2770,-2451,-933
	step
		.talk Consort Yaenna##280650
		..accept Meet the Explorers Union##7590 |goto Celestion 2763,-2457,-934
		..accept Crowning Ceremony##8759 |goto Celestion 2763,-2457,-934
	step
		.' _Go up_ the hill |goto 2746,-2475,-933
		.' _Leave_ the building |goto 2736,-2445,-899
		.' _Go down_ the giant tree root |goto 2685,-2458,-912
		.talk Ashella Sunfell##281856
		..turnin Meet the Explorers Union##7590 |goto 2656,-2507,-932
	step
		.talk Tomas Borgoli##281857
		..accept Gather the Crew##6968 |goto Celestion 2659,-2507,-932
	step
		.click XAS Field Gear##4254629
		.' Collect XAS Field Gear |q Gather the Crew##6968/1 |count 33 |goto Celestion 2681,-2516,-930
	step
		.click XAS Field Gear##4254629
		.' Collect XAS Field Gear |q Gather the Crew##6968/1 |count 66 |goto Celestion 2676,-2543,-929
	step
		.click XAS Field Gear##4254629
		.' Collect XAS Field Gear |q Gather the Crew##6968/1 |goto 2694,-2512,-930
	step
		.talk Sylvan Explorer##4172745
		.' Recruit Sylvan Explorers |q Gather the Crew##6968/3 |goto 2690,-2530,-930 |tip THey are all around this room.
	step
		.click Cargo Lifter##281872
		.' Set travel coordinates on Cargo Lifters to 7319 |q Gather the Crew##6968/2 |goto Celestion 2617,-2474,-931
	step
		.talk Ashella Sunfell##4189178 |q Gather the Crew##6968/4 |goto Celestion 2656,-2506,-932
	step
		.' _Follow_ the path |goto Celestion 2660,-2421,-927
		.' Attend the Crowning Ceremony |q Crowning Ceremony##8759/2 |goto 2765,-2319,-928
	step
		.talk Matria Yaenna##280651
		..turnin Crowning Ceremony##8759 |goto Celestion 2762,-2324,-928
	step
		.' _Cross_ the bridge |goto Celestion 2749,-2282,-933
		.' _Follow the fork in the road_ to the left |goto 2610,-2105,-947
		.' _Continue_ along the path |goto 2634,-1923,-935
		.talk Tomas Borgoli##280667
		..turnin Gather the Crew##6968 |goto 2650,-1664,-954
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
		.' Meet with Augmentation Avatar |q Making Contact##6969/4 |goto 2810,-1478,-1305
	step
		.' Kill the attacking Augmentors |q Making Contact##6969/5 |goto Celestion 2810,-1473,-1305
	step
		.' Return to Camp Viridian |q Making Contact##6969/6 |goto 2809,-1434,-1303
	step
		.talk Tomas Borgoli##280667
		..turnin Making Contact##6969 |goto Celestion 2651,-1664,-954
		..accept Follow the Data##6970 |goto Celestion 2651,-1664,-954
	step
		.' _Follow_ the path back |goto 2613,-1614,-951
		.' _Continue_ along the path |goto Celestion 2715,-1490,-966
		.click Eldan Prismatic Lens##281553
		..accept Eldan Prismatic Lens##9137 |goto 2838,-1418,-958
	step
		.' Follow the path back towards the camp |goto Celestion 2733,-1478,-967
		.' _Continue_ along the path |goto 2617,-1619,-951
		.' _Go towards_ the facility |goto 2678,-1676,-955
		.' Press _C_ to use your Communicator:
		..accept Careful Pickings##6973 |goto Celestion 2748,-1691,-955
	step
		.' _Ride_ the elevator down |goto Celestion 2735,-1653,-955
		.click GOOP Cannon##280661
		..accept GOOPed!##6975 |goto 2785,-1665,-987
	step
		.' Press _C_ to use your Communicator:
		..accept Of Augmentation and Aggression##6974 |goto Celestion 2853,-1705,-994 |tip You may have to kill a few enemies for this to show up.
	step
		.kill N22 Protector##334748
		.' Press _T_ to:
		.' GOOP Augmented Creatures and Constructs |q GOOPed!##6975/1 |goto Celestion 2981,-1674,-987
		.' Kill Eldan constructs |q GOOPed!##6975/2 |tip They are all over the area.
		.click Eldan Artifact##332175
		.' Collect Eldan Artifacts |q Careful Pickings##6973/1
		.kill Augmented Researcher Clone##343605, Augmented Scientist Clone##345694, Augmented Archaeologist Clone##282511, Augmented Celestial Razortusk##282400
		.' Kill Augmented Aurin and Mordesh |q Of Augmentation and Aggression##6974/1 |goto 2962,-1661,-987
	step
		.' Press _C_ to use your Communicator:
		..turnin Careful Pickings##6973
		..turnin Of Augmentation and Aggression##6974
		..turnin GOOPed!##6975
	step
		.' Explore the Repository Access Column |q Follow the Data##6970/2 |goto 2847,-1821,-988
	step
		.' Enter the Nanite Repository |q Follow the Data##6970/3 |goto 2856,-1836,-984
	step
		.click Nanite Release Controller##281826
		.' Deactivate Nanite Release Controllers |q Follow the Data##6970/4 |count 50 |goto 2774,-1470,-1504
		//Need to check, should be count 25
	step
		.click Nanite Release Controller##281827
		.' Deactivate Nanite Release Controllers |q Follow the Data##6970/4 |count 75 |goto Celestion 2627,-1470,-1504
	step
		.click Nanite Release Controller##281827
		.' Deactivate Nanite Release Controllers |q Follow the Data##6970/4 |goto Celestion 2623,-1386,-1504
	step
		.' Go through the tunnel |goto Celestion 2700,-1358,-1503 < 10
		.click Identity Module##281823 
		.' Reload the Identity Module |q Follow the Data##6970/5 |goto 2701,-1259,-1495
	step
		.talk Safety Avatar##281825
		.' Talk to Safety Avatar |q Follow the Data##6970/6 |goto Celestion 2700,-1241,-1490
	step
		.' Press _C_ to use your Communicator:
		..turnin Follow the Data##6970
	step
		.talk Safety Avatar##281825
		..accept A Taste of Augmentation##6971 |goto Celestion 2700,-1241,-1490
	step
		.' _Go through_ the tunnel |goto Celestion 2701,-1302,-1494
		.' _Use the teleporter_ to leave the facility |goto 2700,-1459,-1498
		.' Explore the Essential Access Column |q A Taste of Augmentation##6971/1 |goto 3015,-1656,-987
	step
		.' Enter the Essential Reactor Exo-Lab |q A Taste of Augmentation##6971/2 |goto Celestion 3046,-1642,-984
	step
		.' Enter the Essential Reactor Room |q A Taste of Augmentation##6971/3 |goto Celestion 2544,-1640,-1206
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |count 33 |goto 2512,-1636,-1207
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |count 66 |goto Celestion 2509,-1588,-1206
	step
		.click Essential Core##281822
		.' Deactivate Essential Cores |q A Taste of Augmentation##6971/4 |goto 2582,-1590,-1206
	step
		.click Essential Reactor##281819
		.' Reload the Essential Reactor |q A Taste of Augmentation##6971/5 |goto Celestion 2547,-1566,-1209
	step
		.talk Safety Avatar##281818
		..turnin A Taste of Augmentation##6971 |goto 2545,-1552,-1204
		..accept Caretaker Showdown##6972 |goto 2545,-1552,-1204
	step
		.' _Exit_ the facility through the teleporter |goto Celestion 2545,-1702,-1205
		.' Find the elevator to the Annihilator Silo |q Caretaker Showdown##6972/1 |goto 3141,-1787,-987
	step
		.' _Ride_ the elevator up |goto 3153,-1784,-983
		.' _Jump up_ the platform |goto 3197,-1735,-914
		.' _Climb up_ the giant tree root |goto 3205,-1711,-892
		.' _Jump onto_ the platform |goto 3229,-1690,-891
		.' Get to Annihilator Silo N22 |q Caretaker Showdown##6972/2 |goto 3226,-1641,-886
	step
		.kill Power Core##829596
		.' Destroy the Power Cores |q Caretaker Showdown##6972/4 |count 50 |goto Celestion 3182,-1608,-881
	step
		.kill Power Core##829596
		.' Destroy the Power Cores |q Caretaker Showdown##6972/4
	step
		.talk Augmentation Avatar##829872
		.' Talk to Augmentation Avatar |q Caretaker Showdown##6972/5 |goto 3224,-1584,-881
	step
		.talk Safety Avatar##859735
		.' Talk to Safety Avatar |q Caretaker Showdown##6972/6 |goto Celestion 3221,-1587,-881
	step
		.' Press _C_ to use your Communicator:
		..turnin Caretaker Showdown##6972
	step
		.' _Jump_ onto the platform |goto Celestion 3228,-1687,-891
		.' _Follow_ the giant tree root down to the next platform |goto 3197,-1735,-914
		.' _Cross_ the long walkway |goto 3159,-1848,-931
		.' _Jump down_ the hill here |goto 3068,-2044,-940
		.' _Follow_ the path up goto Celestion 3129,-2287,-940
		.' _Continue_ along the path |goto Celestion 3188,-2217,-907
		.talk Recruiter Nakita##280666
		..accept Ghost Intel##6981 |goto 3189,-2169,-899
	step
		.click Thayd Dispatches##281758
		.' Find the Thayd Courier |q Ghost Intel##6981/1 |goto 3157,-2344,-938
	step
		.' Retrieve the Thayd Dispatches |q Ghost Intel##6981/2
		.' Defend against ICI Operatives |q Ghost Intel##6981/3 |goto 3153,-2345,-939
	step
		.click Thayd Courier##281759
		.' Defend against ICI Operatives |q Ghost Intel##6981/3 |goto Celestion 3154,-2347,-939
	step
		.click Thayd Courier##281759
		.' Burn the Thayd Courier's corpse |q Ghost Intel##6981/4 |goto Celestion 3152,-2348,-939
	step
		.talk Director Romavek##280671
		..turnin Ghost Intel##6981 |goto Celestion 3202,-2159,-899
		..accept Reprogramming Interrogation##6982 |goto Celestion 3202,-2159,-899
	step
		.click Deactivated Zeta Agent##896548
		.' Hack the Deactivated Zeta Agent |q Reprogramming Interrogation##6982/1 |goto Celestion 3180,-2155,-897
	step
		.talk Director Romavek##280671
		..turnin Reprogramming Interrogation##6982 |goto Celestion 3201,-2160,-899
		..accept Sum Zero Aggressor##6983 |goto Celestion 3201,-2160,-899
	step
		.' _Follow_ the path up |goto Celestion 3196,-2129,-898
		.talk Minebot##285739
		.' Speak to Marksman Mikhail |q Sum Zero Aggressor##6983/1 |goto 3122,-2079,-861
	step
		.talk Operative Viktovich##280669
		..accept Listen Like Shadows##6989 |goto Celestion 3120,-2082,-861
	step
		.' _Go down_ the giant tree root |goto 3188,-2094,-891
		.' _Follow_ the path down |goto 3222,-2054,-964
		.' _Go to_ the camp |goto Celestion 3211,-1901,-984
		.' _Go through_ the opening |goto 3207,-1849,-978
		.click ICI Datachron##281591
		.' Plant Surveillance Bugs |count 71 |q Listen Like Shadows##6989/1 |goto Celestion 3246,-1848,-966
	step  //Added
		.click ICI Datachron##281587
		.' Plant Surveillance Bugs |count 85 |q Listen Like Shadows##6989/1 |goto Celestion 3267,-1804,-960
	step  //Added Soldier mission
		.click Captured Operative##3536663
		.' Rescue Black Hood Operatives |mission RESCUE OP: Black Hood Operatives##1844 |goto Celestion 3271,-1801,-961 |count 6
		|only Soldier
	step  //Added
		.click ICI Datachron##281588
		.' Plant Surveillance Bugs |count 100 |q Listen Like Shadows##6989/1 |goto Celestion 3320,-1827,-956
	step  //Added
		.kill Zeta Equalizer##692673
		.' Kill ICI Zeta Mechari |q Sum Zero Aggressor##6983/2
	step
		.kill Zeta Warbot##282566
		.collect Death Mechanism##20476
		.' Use the Death Mechanism in your inventory |use Death Mechanism##20476
		..accept Mechanisms of War##7385 |goto Celestion 3278,-1881,-958
	step
		.' Find the Junction Zeta Bunker |q Sum Zero Aggressor##6983/3 |goto 3326,-1832,-958
	step
		.' Press _C_ to use your Communicator:
		..accept Divert Attention##6984
		..turnin Sum Zero Aggressor##6983
		..turnin Listen Like Shadows##6989
	step
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
		.' Collect Crates of Eldan Components |q Research and Development##6990/1 |goto 3501,-1754,-972
		.kill 1 Zeta Cycler##1035340
		.' Collect Cycler Cores |q Research and Development##6990/2
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |count 50 |goto 3510,-1730,-971
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |count 75 |goto Celestion 3530,-1706,-969
	step
		.click ICI Aegis Interface##281625
		.' Hack ICI Aegis Interfaces |q Invasive Intelligence##6987/1 |count 83 |goto Celestion 3528,-1694,-968
	step
		.click Munition Barrel##281703	
		.' Plant Explosives |q Divert Attention##6984/1 |goto 3481,-1656,-969
	step
		.' Climb up the ramp |goto 3531,-1752,-970
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
		.' _Leave_ the tunnel |goto Celestion 3434,-1682,-934  //Fixed _Leave
		.' _Jump down_ onto the pipe, then to the groun |goto 3458,-1758,-947
		.' _Go up_ the tunnel path |goto 3412,-1796,-961
		.' Get out of ICI Junction Zeta |q Going Out with a Blast##6985/2 |goto 3334,-1832,-957
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
		.' _Jump down_ the ledge |goto Celestion 3294,-1925,-958
		.' _Jump up_ the rocks |goto 3219,-2073,-948
		.talk Director Romavek##280671
		..turnin Shoot for the Stars##6986 |goto 3203,-2158,-899
		..turnin Mechanisms of War##7385 |goto 3203,-2158,-899
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
		.' _Cross_ the bridge |goto Celestion 3073,-2275,-956
		.' _Go up_ the root |goto 2806,-2362,-912
		.' _Cross_ the giant tree root |goto 2742,-2422,-902
		.' _Enter_ the building |goto 2737,-2446,-899
		.' _Go down_ the path |goto Celestion 2723,-2473,-921
		.' Meet with Arwick Redleaf |q A Meeting of Minds##6961/1 |goto 2766,-2460,-933
	step
		.' _Go up_ the path |goto Celestion 2748,-2473,-933
		.' _Exit_ the building |goto Celestion 2737,-2446,-899
		.' _Follow_ the path |goto 2562,-2477,-936
		.' _Go up_ the ramp |goto 2466,-2509,-937
		.talk Arwick Redleaf##1182412
		..turnin A Meeting of Minds##6961 |goto 2423,-2488,-921
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
		..turnin A Caring Nurturer##6962 |goto 2383,-2568,-937
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
		.kill Torine Liferender##494095, Torine Sentinel##998661, Torine Bladesister##1117473
		.' Collect blood samples from Torine |q Further Analysis##6957/1 |goto 2117,-2474,-938
	step
		.' Press _C_ to use your Communicator:
		..turnin Further Analysis##6957
	step
		.' Press _T_ to:
		.' Release a mapjabbit in the Verdant Sanctuary |q Indigenous Mapping##6963/1 |goto 2214,-2483,-938
	step
		.click Monument to Tresayne##278184
		.' Investigate the Monument to Tresayne |q Seeking the Source##6955/1 |goto Celestion 2066,-2442,-929
	step
		.' _Follow_ the path |goto Celestion 2071,-2495,-937
		.'  Press _T_ to:
		.' Release a mapjabbit in Rushing Glen |q Indigenous Mapping##6963/3 |goto 1972,-2541,-951
	step
		.'  Press _T_ to:
		.' Release a mapjabbit in Puddlejump Pools |q Indigenous Mapping##6963/2 |goto Celestion 2214,-2691,-932
	step
		.click Monument to Vitara##278183
		.' Investigate the Monument to Vitara |q Seeking the Source##6955/2 |goto 1884,-2759,-925
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
		.' Begin the ascent to Horizon Plateau |q Horizon##6959/1 |goto 1997,-3267,-853
	step
		.' Press _T_ to:
		.' Release a mapjabbit on the Horizon Plateau |q Indigenous Mapping##6963/4 |goto Celestion 1953,-3308,-829
	step
		.' Press _C_ to use your Communicator:
		..turnin Indigenous Mapping##6963
	step
		.' _Go up_ the path |goto Celestion 1927,-3307,-825
		.' _Jump up_ the rock formation |goto 1927,-3356,-780
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
		..turnin Revealing the Source##6960 |goto 2422,-2488,-921
		..accept Botched Negotiations##6909 |goto 2422,-2488,-921
	step
		.talk Lucy Lazarin##278865 // Added
		..accept Alchemy Hunt##6954 |goto Celestion 2429,-2492,-921  //Added
	step
		.' _Go down_ the ramp |goto Celestion 2392,-2546,-926 < 10
		.' _Go up_ the ramp |goto Celestion 2401,-2598,-930 < 10
		.' Enter the Pools of Vitara |q Botched Negotiations##6909/1 |goto 2445,-2709,-918
	step
		.' Press _C_ to use your Communicator:	
		..accept Primal Blades##6952 |goto 2445,-2709,-918
	step
		.kill Steelscale Gnasher##1869593  //Added
		.' Collect Gnasher Glands |q Alchemy Hunt##6954/1 |goto 2445,-2747,-921  //Added
	step
		.kill Torine Stormcaller##1244358, Torine Huntress##1243658 |tip They are all around the area.
		.' Kill the Torine |q Primal Blades##6952/1 |goto Celestion 2363,-2796,-919
		.' Collect Torine Weapon Fragments |q Primal Blades##6952/2 |goto Celestion 2363,-2796,-919
		.click Darkwhisper Prisoner##1251182
		.' Search for Darkwhisper Prisoners |q Botched Negotiations##6909/2
	step
		.kill Vicious Manstalker##3452618
		.' Collect Manstalker Whiskers |q Alchemy Hunt##6954/2 |goto Celestion 2368,-2790,-920
	step
		.' _Jump_ into the water spout |goto Celestion 2253,-3049,-904 |tip Land on top of the plateau
		.kill Mossy Vinecreeper##2909134
		.' Collect Vinecreeper Spores |q Alchemy Hunt##6954/3 |goto 2314,-3027,-857
	step
		.' _Swim down_ the waterfall to safely reach the ground |goto Celestion 2407,-2964,-869 <15
		.' Press _C_ to use your Communicator:	
		..turnin Botched Negotiations##6909
		..turnin Alchemy Hunt##6954
	step
		.' _Follow_ the path up |goto Celestion 2556,-2788,-913 <25
		.' _Continue_ along the path |goto 2677,-2836,-912
		.click Grand Forge##278785
		.' Melt the Torine Weapon Fragments at the Grand Forge |q Primal Blades##6952/3 |goto 2713,-2784,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Primal Blades##6952
		..accept Auger Enhancements##6978
	step
		.' _Go down_ the hill |goto 2730,-2866,-909
		.' _Follow_ the stream |goto 2737,-3072,-924
		.' Ride a Waterspout |q Auger Enhancements##6978/1 |goto 2743,-3178,-924
	step
		.' Press _C_ to use your Communicator:	
		..accept Sapwork##6966 |goto 2676,-3193,-866
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 33 |goto Celestion 2660,-3165,-867
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 25 |goto 2639,-3102,-860
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 50 |goto Celestion 2650,-3223,-859
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |count 66 |goto Celestion 2556,-3291,-860
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |count 75 |goto Celestion 2516,-3293,-848
	step
		.kill Infused Lifewood##1262362
		.' Press _T_ to:
		.' Extract primal life from Infused Lifesplinter and Infused Lifewood corpses |q Sapwork##6966/1 |goto Celestion 2477,-3295,-852
	step
		.click Primal Siphoning Drill##278668
		.' Upgrade the Primal Siphoning Drills |q Auger Enhancements##6978/2 |goto Celestion 2397,-3318,-855
	step
		.' Press _C_ to use your Communicator:	
		..turnin Sapwork##6966
		..turnin Auger Enhancements##6978
		..accept Godwood Ascension##6979 |tip It will take a moment for this quest to ring in.
	step
		.' Follow the hill down |goto Celestion 2323,-3184,-860
		.' _Continue_ along the path |goto 2320,-3112,-860
		.' Ascend to Godsbreath Terrace |q Godwood Ascension##6979/1 |goto 2422,-3018,-861 |tip Jump into the water stream.
	step
		.' Press _C_ to use your Communicator:	
		..accept Surf's Way Up##7028 |goto 2465,-3107,-798
	step
		.kill Vitara's Bloom##1239794
		.' Collect Vitara Petals |q Godwood Ascension##6979/2 |count 25 |goto Celestion 2587,-3124,-783
	step
		.click Alchemist's Fire##278741
		.' Ignite the Alchemist's Fires |q Godwood Ascension##6979/3 |count 50 |goto Celestion 2493,-3145,-785
	step
		.click Alchemist's Fire##278741
		.' Ignite the Alchemist's Fires |q Godwood Ascension##6979/3 |goto 2486,-3139,-786
	step
		.' Use the waterspout to reach the floating Isle |goto Celestion 2490,-3239,-797
		.' Once on the Isle, _Sprint_ and _Jump_ into the right arrow and:
		.' Reach the Northern floating island |q Surf's Way Up##7028/2 |goto 2339,-3158,-725
	step
		.' _Sprint_ and _Jump_ using the right arrow in the floating Isle to:
		.' Reach the Southern floating island |q Surf's Way Up##7028/4 |goto Celestion 2451,-3022,-709
	step
		.' _Sprint_ and _Jump_ using the right arrow in the floating Isle to:
		.' Reach the Eastern floating island |q Surf's Way Up##7028/3 |goto Celestion 2604,-3170,-710
	step
		.' Press _C_ to use your Communicator:
		..turnin Surf's Way Up##7028
	step
		.' Use either arrow on the floating isle to reach the ground.
		.click Gate to the Heart of the Godwood##278777
		.' Enter the Gate to the Heart of the Godwood |q Godwood Ascension##6979/4 |goto Celestion 2483,-3150,-784
	step
		.' Press _C_ to use your Communicator:
		..turnin Godwood Ascension##6979
		..accept Primal Extraction##6995
	step
		.' Follow the path down |goto Celestion 1842,-3389,-1074
		.' _Continue_ going down the path |goto 1857,-3426,-1083
		.' Press _C_ to use your Communicator:
		..accept Protective Weaves##9073 |goto 1857,-3426,-1083
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
		.' Locate a Godwood Node |q Primal Extraction##6995/3 |goto 2012,-3443,-1098
		.' Defend the Primal Siphoning Drill |q Primal Extraction##6995/4 |goto 2012,-3443,-1098
	step
		.' Jump through the Weave Knots |q Protective Weaves##9073/1 |goto Celestion 2025,-3430,-1090
	step
		.' Press _C_ to use your Communicator:
		..turnin Protective Weaves##9073
	step
		.' _Enter_ the tunnel |goto Celestion 1974,-3403,-1100
		.' _Continue down_ the tunnel path |goto 1947,-3492,-1119
		.click Godwood Node##278723
		.' Locate a Godwood Node |q Primal Extraction##6995/5 |goto 2038,-3520,-1133
		.' Defend the Primal Siphoning Drill |q Primal Extraction##6995/6 |goto 2038,-3520,-1133
	step
		.' Press _C_ to use your Communicator:
		..turnin Primal Extraction##6995
		..accept The Reaper Beckons##7065
	step
		.click Gate to the Pools of Vitara##278721
		.' _Go through_ the portal |goto Celestion 1963,-3509,-1122
		.' _Go down_ the path |goto 2400,-2635,-919
		.' _Go up_ through the doorway |goto Celestion 2530,-2571,-923
		.' _Continue along_ the path |goto 2705,-2604,-933
		.click Spider Burrow##279882 |goto Celestion 2824,-2675,-915
		//Needs to be moved to a level 10 area
		.' Press _C_ to use your Communicator:
		..accept Silk Prison##8853
		..accept Invading Arachnids##8842
	step
		.kill  Thrashing Cocoon##1434624
		.' Free Trapped Exiles |q Silk Prison##8853/1 |goto Celestion 2443,-1974,-1031
		.kill Shadow Brute##1486835, Shadow Skulker##1486789, Shadow Defiler##1487089
		.' Kill Shadow Spiders |q Invading Arachnids##8842/1
		.kill Shadow Hatchling##1488573
		.' Kill Shadow Hatchlings |q Invading Arachnids##8842/2 
	step
		.' Press _C_ to use your Communicator:
		..turnin Invading Arachnids##8842
		..turnin Silk Prison##8853
	step
		.click Burrow to Sylvan Glade##284565
		.' _Exit_ the Burrow to Sylvan Glade |goto Celestion 2348,-1905,-1032
		.' _Continue_ along the path |goto 2951,-2801,-930
		.' _Enter_ the gates |goto 3079,-2936,-931
		.talk Harrower Krimzon##277089
		..turnin The Reaper Beckons##7065 |goto 3108,-2884,-928
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
		.' _Go up_ the stairs |goto Celestion 3270,-2833,-932
		.kill Ravenous Ghoul##3144907
		.collect Hazmat Suit Filter##28719
		.' Use the Hazmat Suit FIlter in your inventory |use Hazmat Suit Filter##28719
		.' Kill Ravenous Mordesh |q Ravenous Reaping##6902/1 |goto 3315,-2801,-906
		.' Press _T_ to:
		.' Use Explosive Flares on Ravenous |q Sparks##6903/2 |goto 3315,-2801,-906
	step
		.' Press _C_ to use your Communicator:
		..turnin Ravenous Reaping##6902
		..turnin Sparks##6903
		..accept Tinder##6904
	step
		.' Press _C_ to use your Communicator:
		..accept Vital Recovery##6905 |goto Celestion 3496,-2657,-845
	step
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
		.' _Follow_ the path |goto Celestion 3647,-2532,-845
		.click Plant Hellfire Explosives##278488
		.' Plant Hellfire Explosives in Grimhold Sector Three |q Ring of Fire##6899/4 |goto 3593,-2541,-844
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
		.' Press _I_ to open your inventory and right click the _Vosmara Family Heirloom_
		..accept Grim Reality##6907
	step
		.' _Jump up_ the pipe |goto 3568,-2545,-826
		.' _Jump down_ to the pipes below |goto 3506,-2513,-819
		.click Plant Hellfire Explosives##278493
		.' Plant Hellfire Explosives in Grimhold Sector Four |q Ring of Fire##6899/5 |goto 3493,-2500,-816
	step
		.' _Follow_ the path back |goto Celestion 3682,-2455,-845
		.' Press _C_ to use your Communicator:
		..accept Helping Hamhorn##7118 |goto 3789,-2451,-844
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
		..accept The Reaper's Harvest##6901
	step
		.' Head to District Falls |q Helping Hamhorn##7118/1 |goto 3695,-2285,-844
	step	
		.' _Go through_ the gates |goto Celestion 3639,-2234,-845
		.talk Mayor Hamhorn##2676088
		..turnin Helping Hamhorn##7118 |goto 3497,-2235,-840
	step
		.' _Follow the path_ towards Lukov |goto Celestion 3666,-2237,-845
		.' _Continue_ along the path |goto 3738,-2369,-845
		.click Lukov's Speeder##278394
		.' Embark on Lukov's Speeder |q The Reaper's Harvest##6901/1 |goto 3825,-2487,-845
	step
		.talk Harrower Krimzon##277089
		..turnin The Reaper's Harvest##6901 |goto Celestion 3110,-2883,-928
	step
		..accept To the Walls of Thayd##8750 |goto Celestion 3094,-2893,-928
	step
		.talk Nadia Vosmara##277080
		..turnin Grim Reality##6907 |goto Celestion 3163,-2923,-932
	step
		.click Grimhold Taxi Kiosk##270814
		.' Take the taxi to Thayd |q To the Walls of Thayd##8750/2 |goto Celestion 3077,-2986,-921
//After landing in Thayd	
	step
		.' Press _C_ to use your Communicator:
		..accept Galeras Deployment##4964
		..accept Chromatic Magnificence##9083
		..accept Thayd Tours##9367
	step
		.talk Thayd Logistics Officer##274830
		..turnin To the Walls of Thayd##8750 |goto Thayd 3925,-2385,-777
	step
		.' Press _C_ to use your Communicator:
		..accept Runes, Crafting, and You##9096
	step
		.' _Travel along_ the dirt path |goto Thayd 4142,-2487,-821 < 20
		.' _Go up_ the ramp into the tunnel |goto 4028,-2644,-803 < 20
		.' _Continue down_ the ramp to the left |goto 4147,-2876,-833 < 20
		.click Thayd Tour Holoprojector##274743
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |count 1 |goto 3885,-3066,-897
	step
		.' Press_C_ to use your Communicator:
		..accept Sim Core: A Remarkable Discovery##8834 |goto Thayd 4096,-2911,-858
	step
		'_Go up_ the ramp and follow it in |goto Thayd 3986,-2979,-890 < 10
		.' _Enter_ Thayd |goto 4036,-2655,-801 < 10
		.click Thayd Tour Holoprojector##274748
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |count 2 |goto Thayd 4208,-2455,-815
	step
		.' Press _I_ to open your inventory and salvage the _Damaged Protostar Dye Collection_. |tip Drag it into the button with circular arrows on the bottom of your inventory panel.
		.' Obtain Plurbinum Dye by salvaging Damaged Protostar Dye Collection |q Chromatic Magnificence##9083/2 |goto 4271,-2445,-815
	step
		.talk Protostar Appearance Modificator##270792
		..turnin Chromatic Magnificence##9083 |goto 4268,-2331,-804
	step
		.' _Follow the path_ up and around. |goto 4325,-2361,-796 < 10
		.click Thayd Tour Holoprojector##274735
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto 4335,-2398,-788 |count 3
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Runes, Crafting, and You##9096
		..accept Crafting Your First Rune##9097 |goto Thayd 4361,-2353,-789
	step
		.click Engraving Station##273730
		.' Craft a Rune of Grit for an Earth Runeslot |q Crafting Your First Rune##9097/1 |goto 4373,-2334,-788
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Crafting Your First Rune##9097 |goto Thayd 4361,-2353,-789
		..accept Modification Station##9098 |goto Thayd 4361,-2353,-789
	step
		.click Engraving Station##273730
		.' Visit the Engraving Station |q Modification Station##9098/1 |goto 4373,-2333,-788
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Modification Station##9098 |goto Thayd 4361,-2353,-789
	step
		.click Thayd Tour Holoprojector##274747
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 4261,-2202,-811 |count 4
	step
		.talk Sergeant Renzig##274948
		..turnin Galeras Deployment##4964 |goto Thayd 4108,-2340,-804
		..accept Unlikely Heroes##4944 |goto 4108,-2340,-804
	step
		.click Thayd Tour Holoprojector##274736
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto 4059,-2318,-804 |count 5
	step
		.' _Go through_ the tunnel. |goto Thayd 3990,-2299,-804 < 10
		.' _Continue through_ the Court. |goto Thayd 3953,-2081,-799 < 10
		.click Thayd Tour Holoprojector##274752
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 3887,-1832,-843 |count 6
	step
		.click Thayd Tour Holoprojector##274752 
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 4010,-1812,-843 |count 7
	step
		.' _Mounts_
		.' If you are atleast level 15 with 10 gold and 68 silver, you can buy a mount. Otherwise just skip this step.
		.talk Shopkeeper Vic##275008 |goto Thayd 3921,-1758,-843
		.' Buy the level 15 mount of your choice.
		|confirm
	step
		.' _Go through_ the doorway here. |goto 3827,-1829,-843 < 10
		.' _Pass through_ the second doorway. |goto Thayd 3837,-1928,-843 < 10
		.click Thayd Tour Holoprojector##274742
		.' Find Thayd Tours Holoprojectors |q Thayd Tours##9367/1 |goto Thayd 3673,-1959,-845 |count 8
	step
		.' Press _C_ to use your communicator:
		..turnin Thayd Tours##9367
	step
		.' Press _I_ to open your inventory.
		.' Right-click the _Teleport: Thayd_ in your inventory.
		.' You can now teleport to Thayd once every 24 hours.
		|confirm
	step
		.' _Re-enter_ Thayd |goto 3835,-1929,-843 <10
		.' _Go up_ the stairs |goto Thayd 3994,-1861,-843 <10
		.' _Proceed up_ another flight of stairs |goto Thayd 4122,-1889,-816 < 10
		.' _Pass through_ the gates here |goto Thayd 4265,-1822,-800 < 10
		.' _Head through_ another gate |goto Thayd 4313,-1786,-783 < 10
		.' _Follow the path_ around |goto Thayd 4368,-1830,-782 < 10
		.' _Leave Thayd_ |goto Thayd 4445,-1889,-786 < 10
		'Press _C_ to use your communicator:
		..accept Migrant Mootation##4876 |goto Galeras 4477,-1885,-781
	step
		.kill Contaminated Galehorn##6054533
		.kill Contaminated Galehorn Charger##6284897
		.' Kill contaminated Roan |q Migrant Mootation##4876/1 |goto Galeras 4539,-1844,-776
	step
		.' Press _C_ to use your communicator:
		..turnin Migrant Mootation##4876
	]]
)	