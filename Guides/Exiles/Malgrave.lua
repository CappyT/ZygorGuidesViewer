ZGV:RegisterGuide("Exiles\\Malgrave (41-46)",
		{faction="Exiles",
		nextguide="Exiles\\Grimvault (46-50)",
		image="ZygorUIGuides:Malgrave", 
		description="Malgrave is a zone in southern Isigrol in WildStar. It is a sparse dry desert filled with bandits, rampaging elementals, and ancient Eldan ruins. Malgrave is a contested zone, and is intended for players level 40-46. There is also a Post-Cap Playspace intended for level 50 characters in the northern part of the zone.",
		startlevel=41,
		endlevel=46,
		},[[
	step
		'Press _C_ to use your communicator:
		..accept Journey to Malgrave##8972
	step
		.click Ship to Thayd##271200
		.' Click _Yes_ to travel to Thayd |q Journey to Malgrave##8972/1 -- |goto Malgrave 2070,-1647,-844
	step
		.talk Lulu Blackbush##274852
		..turnin Crimson Ore Shipment##9468 |goto Thayd 4033,-2379,-800
	step
		.click Ship to Malgrave##274912
		.' Click _Yes_ to travel to Redsand Station in Malgrave |q Journey to Malgrave##8972/2 |goto 4066,-2315,-804
	step
		.talk Kiris Whitefeather##277072
		..turnin Journey to Malgrave##8972 |goto Malgrave 1683,4061,-955
	step
		'Press _C_ to use your communicator:
		..accept Settler's Woe##7342
	step
		.talk Sally Kettleshaw##280506
		..turnin Settler's Woe##7342 |goto Malgrave 1877,4165,-945
		..accept Meet and Greet##7204 |goto 1877,4165,-945
	step
		.talk Sheriff Steambolt##280543
		.' Speak to Sheriff Steambolt |q Meet and Greet##7204/3 |goto Malgrave 1624,4214,-979
		..accept Checking on the Marshal##7142 |goto 1624,4214,-979
	step
		.talk Fry Cook Mohini##280567
		.' Speak to Fry Cook Mohini |q Meet and Greet##7204/2 |goto 1619,4235,-979
		..accept Deep-Fry Everything##7205 |goto 1619,4235,-979
		..accept Probably a Delicacy##7206 |goto 1619,4235,-979
	step
		.talk Chief Gorral##280599
		.' Speak to Chief Gorral |q Meet and Greet##7204/1 |goto 1594,4239,-979
		..accept Clear the Beach##7207 |goto 1594,4239,-979
	step
		.talk Far-Trader Sumana##280592
		.' Speak to Far-Trader Sumana |q Meet and Greet##7204/4 |goto 1586,4211,-978
		..accept The Town of Gravestone##7213 |goto 1586,4211,-978
	step
		'Press _C_ to use your communicator:
		..turnin Meet and Greet##7204
	step
		.' All along the beach:
		.kill Shinysand Digger##751054
		.kill Shinysand Burrower##751052
		.kill Shinysand Tunneler##752431
		.' Kill Shinysand spikehordes |q Clear the Beach##7207/1 |goto 1600,4361,-999
		.' Collect Shinysand Spikehorde Mandibles from Shinysand spikehordes |q Deep-Fry Everything##7205/2 |goto 1621,4367,-999
		.kill 1 Pelagic the Tidebreaker##852422 |tip He walks up and down the beach, you may need to look for him. He is big and green and looks similar to a crab.
		.' Collect Tidebreaker's Corpse from Pelagic the Tidebreaker |q Probably a Delicacy##7206/1 |goto Malgrave 1639,4650,-1000
	step
		'Press _C_ to use your communicator:
		..turnin Clear the Beach##7207
		..accept A Shiny Harvest##7210
		..accept Automated Security##7211 |tip This quest may take a few seconds to appear.
	step
		.' Approach the Wreck of the Novus |q A Shiny Harvest##7210/1 |goto 1522,4402,-1000
		.' Dive underwater and swim down
		.click Control Panel##277071
		.' Click _Yes_ to enter the Novus wreckage |goto 1543,4440,-1030
		|confirm
	step
		.' All around the inside of the Novus wreckage:
		.click Shiny Scrap##861068
		.' Collect Shiny Scrap |q A Shiny Harvest##7210/2 |goto Malgrave 1897,3987,-1038
		.kill 1 Securitybot##868997
		.' Destroy Securitybots |q Automated Security##7211/1 |goto 1896,3986,-1038
	step
		'Press _C_ to use your communicator:
		..turnin A Shiny Harvest##7210
		..turnin Automated Security##7211
		..accept Artificial Mastermind##7212
	step
		.click Security Terminal Alpha##278335
		.' Deactivate Security Terminal Alpha |q Artificial Mastermind##7212/1 |goto 1907,4008,-1040
		' Go up the ramp |goto 1925,3976,-1040
		.click Security Terminal Beta##278324
		.' Deactivate Security Terminal Beta |q Artificial Mastermind##7212/2 |goto 1963,4002,-1032
		.click Security Terminal Delta##278305
		.' Deactivate Security Terminal Delta |q Artificial Mastermind##7212/3 |goto Malgrave 2035,4058,-1046
		.click RIX-AI Backup Terminal##278294
		.' Download the RIX-AI Backup |q Artificial Mastermind##7212/4 |goto 2054,4095,-1053
	step
		'Press _C_ to use your communicator:
		..turnin Artificial Mastermind##7212
	step
		.click Control Panel##277865
		.' Leave the Novus wreckage |goto Malgrave 1916,3919,-1033
		.' Go up the path here |goto Malgrave 1655,4263,-970
		.kill Sandwisp Creeper##848603
		.kill Sandwisp Venom Spitter##852662
		.kill Sandwisp Crawler##530510
		.' Collect Sandwisp Spider Legs from Sandwisp spiders |q Deep-Fry Everything##7205/1 |goto Malgrave 1773,4412,-945
	step
		.kill 1 Mr. Chitters##923500
		.' Collect Mr. Chitter's Corpse from Mr. Chitters |q Probably a Delicacy##7206/2 |goto 1776,4546,-954
	step
		.talk Fry Cook Mohini##280567
		..turnin Deep-Fry Everything##7205 |goto Malgrave 1618,4235,-979
		..turnin Probably a Delicacy##7206 |goto 1618,4234,-979
	step
		.' Locate the South Gate of Gravestone |q The Town of Gravestone##7213/1 |goto Malgrave 1880,3900,-956
	step
		.talk Ol' Higgins##280639
		..turnin The Town of Gravestone##7213 |goto 1887,3888,-956
		..accept These Old Bones##7214 |goto 1887,3888,-956
	step
		.talk Ma Higgins##280631
		..accept Lousy Deadbeats##7223 |goto Malgrave 1876,3891,-956
	step
		.' All around Gravestone South Gate:
		.click Bone Pile##277183
		.' Bury Bone Piles |q These Old Bones##7214/1 |goto Malgrave 1874,3859,-956
		.kill Spectral Pillager##961898
		.kill Spectral Crackshot##958791
		.kill Spectral Raider##957763
		.kill Spectral Brigand##966328
		.' Destroy Spectral bandits |q Lousy Deadbeats##7223/1 |goto Malgrave 1869,3858,-956
	step
		.talk Ma Higgins##280631
		..turnin Lousy Deadbeats##7223 |goto 1876,3891,-956
	step
		.talk Ol' Higgins##280639
		..turnin These Old Bones##7214 |goto Malgrave 1886,3889,-956
		..accept Bret's Lackeys##7215 |goto 1887,3888,-956
	step
		.kill 1 Hard-Drinkin' Eberhart##971065
		.' Destroy the ghost of Hard-Drinkin' Eberhart |q Bret's Lackeys##7215/2 |goto Malgrave 1827,3865,-954
		.kill 1 Coal-Lung Carl##938463
		.' Destroy the ghost of Coal-Lung Carl |q Bret's Lackeys##7215/3 |goto 1827,3793,-956
		.kill 1 Tin-Ear Tatum##976276
		.' Destroy the ghost of Tin-Ear Tatum |q Bret's Lackeys##7215/4 |goto 1750,3751,-950
		.kill 1 Flint-Hearted Polly##973816
		.' Destroy the ghost of Flint-Hearted Polly |q Bret's Lackeys##7215/1 |goto 1733,3837,-955
	step
		.talk Ol' Higgins##280639
		..turnin Bret's Lackeys##7215 |goto Malgrave 1887,3889,-956
	step
		.talk Ma Higgins##280631
		..accept Busting Black Bret##7216 |goto 1877,3892,-956
	step
		.kill 1 Black Bret##978646
		.' Destroy Black Bret |q Busting Black Bret##7216/1 |goto Malgrave 1941,3606,-926
	step
		.talk Ma Higgins##280631
		..turnin Busting Black Bret##7216 |goto Malgrave 1877,3894,-956
	step
		.talk Ol' Higgins##280639
		..accept Permission Granted##7217 |goto 1886,3889,-956
	step
		.talk Far-Trader Sumana##280592
		..turnin Permission Granted##7217 |goto Malgrave 1586,4211,-979
	step
		.talk Chief Gorral##280599
		..accept Making the Rounds##7146 |goto 1594,4239,-979
	step
		.talk Deputy G0M3R##263519
		.' Speak with Deputy G0M3R |q Checking on the Marshal##7142/1 |goto Malgrave 1387,4230,-974
		.' Follow the path around |goto 1337,4292,-979
		.talk Deputy Bingsocket##265474
		.' Speak with Deputy Bingsocket |q Checking on the Marshal##7142/2 |goto 1154,4184,-969
	step
		.talk Deputy Whirlscrew##280498
		..accept So, Robo-Cultists are a Thing Now##7170 |goto Malgrave 1159,4175,-969
		..accept Desanctification##7171 |goto 1159,4175,-969
	step
		.' Enter the cave |goto 1199,4097,-982
		.' Inside this cave:
		.kill Robo-Cultist Initiate##999350
		.kill Robo-Cultist Acolyte##1003752
		.kill Robo-Cultist Fanatic##981996
		.' Destroy Robo-Cultists |q So, Robo-Cultists are a Thing Now##7170/1 |goto Malgrave 1249,4017,-1002
		.click Robocult Propagandatron##284077
		.' Destroy Robocult Propagandatrons |q Desanctification##7171/1 |goto 1246,4002,-1005
	step
		'Press _C_ to use your communicator:
		..turnin So, Robo-Cultists are a Thing Now##7170
		..turnin Desanctification##7171
		..accept That's About Enough of That##7172
	step
		.kill 1 Preacherbot v.6.6.6##1032052
		.' Destroy Preacherbot v.6.6.6 |q That's About Enough of That##7172/1 |goto Malgrave 1555,4032,-1019
	step
		.talk Deputy Whirlscrew##280498
		..turnin That's About Enough of That##7172 |goto Malgrave 1158,4176,-969
	step
		.talk Field Marketing Junior Assistant##278745
		.' Speak with the Field Marketing Junior Assistant |q Checking on the Marshal##7142/3 |goto Malgrave 1112,3952,-974
	step
		.talk Jr. Field Marketing Agent##280488
		..accept Canimid Nuisance##7165 |goto 1106,3927,-974
		..accept Hazard Pay##7166 |goto 1106,3927,-974
	step
		.talk Marshal Yatish##280624
		..turnin Checking on the Marshal##7142 |goto Malgrave 976,3800,-966
		..accept Freeing the Oppressed##7159 |goto 976,3801,-966
		..accept Dragging Down the Dreg##7160 |goto 976,3801,-966
	step
		.talk Assistant Jr. Field Marketing Agent##1024551
		.' Protect the Assistant Jr. Field Marketing Agent from canimid |q Hazard Pay##7166/1 |goto 954,3914,-964
	step
		.kill Witherdust Yearling##800897
		.kill Witherdust Burrower##1072879
		.kill Witherdust Tunneler##1031095
		.' Kill Witherdust canimid |q Canimid Nuisance##7165/1 |goto 973,4016,-972
	step
		.kill Foulflesh Windshaman##961501
		.kill Foulflesh Boneclaw##958526
		.kill Foulflesh Grappler##961365
		.kill Foulflesh Brute##1086405
		.' Kill Foulflesh Dreg |q Dragging Down the Dreg##7160/1 |goto Malgrave 822,3734,-948
		.click Prisoner Sack##265109
		.click Prisoner Pit##265061
		.' Free Lopp Prisoners |q Freeing the Oppressed##7159/1 |goto 820,3754,-949
	step
		'Press _C_ to use your communicator:
		..turnin Freeing the Oppressed##7159
		..turnin Dragging Down the Dreg##7160
		..accept Loppfoot's Justice##7161
	step
		.kill 1 Pitboss Loppfoot##1107642
		.' Kill Pitboss Loppfoot |q Loppfoot's Justice##7161/1 |goto Malgrave 541,3768,-974
	step
		.talk Marshal Yatish##280615
		..turnin Loppfoot's Justice##7161 |goto Malgrave 733,3922,-979
		..accept Burn Them Out##7162 |goto 733,3922,-979
		..accept Foot for a Foot##7163 |goto 733,3922,-979
	step
		.talk Jr. Field Marketing Agent##280488
		..turnin Hazard Pay##7166 |goto Malgrave 1105,3927,-974
		..turnin Canimid Nuisance##7165 |goto 1105,3927,-974
	step
		.talk Assistant Jr. Field Marketing Agent##278761
		..accept Untapped Demographics##7167 |goto 1107,3937,-974
	step
		.click Protostar Marketing Kit##279124 |tip More can be found to the north. Look for orange cogs on your minimap.
		.' Set up Protostar Marketing Kits |q Untapped Demographics##7167/1 |goto Malgrave 1034,3942,-972
	step
		.talk Assistant Jr. Field Marketing Agent##278761
		..turnin Untapped Demographics##7167 |goto Malgrave 1107,3937,-974
	step
		.click Flammable Dreg belongings##271762 |tip There are points at the bottom and the top of this tower.
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |goto Malgrave 622,4145,-958
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |goto 524,4208,-975
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |goto 441,4030,-971
	step
		'Press _C_ to use your communicator:
		..turnin Burn Them Out##7162
		..accept Shinysand Savior##7164
	step
		.kill 1 Fleshrender##1221296
		.' Kill Fleshrender |q Shinysand Savior##7164/1 |goto 454,4090,-973
	step
		.' All around Fleshfouler Village:
		.kill Foulflesh Brute##1163541
		.kill Foulflesh Boneclaw##1153353
		.kill Foulflesh Grappler##1035284
		.' Collect Dreg Feet |q Foot for a Foot##7163/1 |goto 528,4143,-974
	step
		'Press _C_ to use your communicator:
		..turnin Foot for a Foot##7163
	step
		.click Cracked Dreg Skull##277032
		..accept Cracked Dreg Skull##9142 |goto 408,3971,-979
	step
		'Press _C_ to use your communicator:
		..accept Surprise Prohibition##7179 |goto 1225,3958,-939
		..accept Burn Them Out##7162 |goto 1225,3958,-939
		..accept Rescuing the Advance Scouts##7178 |goto 1225,3958,-939
	step
		.click Scout Lockwood##277785
		.' Rescue Scout Lockwood |q Rescuing the Advance Scouts##7178/2 |goto Malgrave 1305,4040,-909
		.click Scout Millden##277775
		.' Rescue Scout Millden |q Rescuing the Advance Scouts##7178/3 |goto 1307,4191,-915
	step
		.' All around Slushstill Plateau:
		.kill Gargleblast Irongut##1190892
		.kill Gargleblast Shooter##1229665
		.kill Gargleblast Striker##1230060
		.kill Gargleblast Scrapper##1220783
		.kill Gargleblast Manipulator##1023626
		.' Kill Gargleblast Marauders |q Run 'Em off##7177/1 |goto 1321,4167,-915
		.click Slush Still##1203019
		.' Detonate Slush Stills |q Surprise Prohibition##7179/1 |goto 1321,4167,-915
	step
		'Press _C_ to use your communicator:
		..turnin Run 'Em off##7177
		..turnin Surprise Prohibition##7179
	step
		.click Scout Swifton##277797
		.' Rescue Scout Swifton |q Rescuing the Advance Scouts##7178/1 |goto 1459,3898,-904
	step
		'Press _C_ to use your communicator:
		..turnin Rescuing the Advance Scouts##7178
		..accept Revenge on the Rocks##7180
	step
		.talk Marshal Yatish##280608
		..turnin Shinysand Savior##7164 |goto Malgrave 1601,4217,-979
	step
		.' Jump up the rocks here |goto Malgrave 1482,4089,-950
		.' Follow the narrow path up |goto Malgrave 1455,4090,-934
		.click Secret Rock##277502
		.' Activate the Secret Rock |q Revenge on the Rocks##7180/1 |goto 1288,4265,-920
		.' Jump across the newly-formed rock bridge |goto Malgrave 1280,4281,-928
		.kill 1 Merciless Mek##1770125
		.' Kill Merciless Mek |q Revenge on the Rocks##7180/2 |goto 1244,4372,-946
	step
		'Press _C_ to use your communicator:
		..turnin Revenge on the Rocks##7180
	step
		'Press _C_ to use your communicator:
		..accept Boring But Vital Data##7219 |goto Malgrave 1961,4166,-938
		..accept Scrab Menace##7218 |goto 1961,4166,-938
	step
		.kill Sandsnapper Vermin##1674134
		.kill Sandsnapper Stinger##1679839
		.kill Orius the Scrab King##1678488
		.' Kill Scrab |q Scrab Menace##7218/1 |goto 2002,4143,-930
		.click Data Module##280601
		.' Activate Data Modules |q Boring But Vital Data##7219/1 |goto 2024,4125,-932
	step
		'Press _C_ to use your communicator:
		..turnin Boring But Vital Data##7219
		..turnin Scrab Menace##7218
	step
		.kill 1 Red Shaleback Bull##1717153
		..accept Shaleback Hooves##7186
	step
		.' Around this area:
		.kill Red Shaleback Bull##415882
		.kill Red Shaleback##857923
		.' Collect Shaleback Hooves from Red Shaleback |q Shaleback Hooves##7186/1 |goto Malgrave 1451,3474,-918
	step
		.talk Game Hunter Joresh##280562
		..turnin Shaleback Hooves##7186 |goto Malgrave 1656,3747,-953
		..accept Vulcarrion Problems##7184 |goto 1656,3747,-953
		..accept Sweet, Sweet Cactus Apples##7185 |goto 1656,3747,-953
	step
		.' Around this area:
		.kill Fruitful Cactus##1862906
		.' Bash Fruitful Cactus to collect Cactus Apples |q Sweet, Sweet Cactus Apples##7185/1 |goto Malgrave 1715,3592,-925
		.click Sandswept Roan##1872630
		.kill Blightwing Circler##1758198
		.' Press _T_ to kill Sandswept Roan to attract and kill Blightwing vulcarrion |q Vulcarrion Problems##7184/1 |goto 1686,3587,-926
	step
		.talk Game Hunter Joresh##280562
		..turnin Sweet, Sweet Cactus Apples##7185 |goto Malgrave 1656,3748,-953
		..turnin Vulcarrion Problems##7184 |goto 1656,3748,-953
		..accept Stomping Chompacabra##7187 |goto 1656,3748,-953
		..accept Hit 'Em Where They Live##7188 |goto 1656,3748,-953
	step
		.click Chompacabra Mound##281961
		.' Plant explosives inside Chompacabra Mounds |q Hit 'Em Where They Live##7188/1 |goto Malgrave 1528,3598,-925
		.kill Grizzled Chomper##1413139
		.kill Bloodthirsty Chompling##1838164
		.' Kill Chompacabras |q Stomping Chompacabra##7187/1 |goto 1469,3593,-924
	step
		.talk Game Hunter Joresh##280562
		..turnin Stomping Chompacabra##7187 |goto Malgrave 1656,3747,-953
		..turnin Hit 'Em Where They Live##7188 |goto 1656,3747,-953
	step
		.' Check on Rancher Rishka |q Making the Rounds##7146/1 |goto 2235,4189,-905
	step
		.talk Rancher Rishka##280487
		..accept Defending the Herd##7189 |goto Malgrave 2241,4190,-905
		..accept Can't Make an Omelet Without Eggs##7190 |goto 2241,4190,-905
		..accept Get Along Little Dawngrazer##7191 |goto 2241,4190,-905
	step
		.click Roughback Grazer##1922959
		.' Press _T_ to use the "Friendmaker" tazer on Roughback Grazers |q Get Along Little Dawngrazer##7191/1 |goto Malgrave 2352,4155,-890
		.kill Snapjaw Mauler##1931140
		.kill Snapjaw Prowler##1931335
		.' Kill Snapjaw Girrok |q Defending the Herd##7189/1 |goto 2386,4145,-894
	step
		.kill Sunbeak Striker##1926872
		.click Sunbeak Egg##1930203
		.' Collect Ravenok Eggs from Sunbeak Striders |q Can't Make an Omelet Without Eggs##7190/1 |goto 2497,4224,-894
	step
		.talk Rancher Rishka##280487
		..turnin Defending the Herd##7189 |goto Malgrave 2242,4188,-905
		..turnin Can't Make an Omelet Without Eggs##7190 |goto 2242,4188,-905
		..turnin Get Along Little Dawngrazer##7191 |goto 2242,4188,-905
	step
		.' Follow the path around |goto Malgrave 2722,4219,-904
		.click Burned Journal##278217
		..accept The Burned Journal##7192 |goto Malgrave 2950,4173,-898
	step
		.click Singed Page##1914775
		.' Collect any Singed Pages in the immediate area in Bleachbone Gulley |tip Don't worry about getting enough the complete the quest, just grab any that are nearby. |goto Malgrave 2831,4137,-887
		|confirm
	step
		.' Check on Shaman Arokya |q Making the Rounds##7146/2 |goto Malgrave 3061,4252,-881
	step
		.talk Shaman Arokya##283884
		..accept Rocks Fall, Everyone Dies##7143 |goto 3061,4253,-881
		..accept Rocks on the March##7144 |goto 3061,4253,-881
	step
		.kill Rockshell Blitzer##1936506
		.kill Rockshell Skitter##1792465
		.' Kill Rockshell spikehordes |q Rocks on the March##7144/1 |goto 3175,4289,-865
		.kill Sandstone##1881699
		.click Dead Lopp##1968351
		.' Recover Dead Lopp from beneath Sandstones |q Rocks Fall, Everyone Dies##7143/1 |goto 3187,4247,-868
	step
		.talk Shaman Arokya##283884
		..turnin Rocks Fall, Everyone Dies##7143 |goto 3061,4255,-881
		..turnin Rocks on the March##7144 |goto 3061,4255,-881
		..accept The Underground Evil##7145 |goto 3061,4255,-881
	step
		.click Thumper##283428
		.' Activate the Thumper |q The Underground Evil##7145/1 |goto 3124,4205,-880
		.' Kill the enemies that attack in waves
		.' Vanquish the underground evil |q The Underground Evil##7145/2 |goto 3122,4208,-880
	step
		.talk Shaman Arokya##283884
		..turnin The Underground Evil##7145 |goto 3062,4254,-881
	step
		.click Singed Page##1914775
		.' Collect any Singed Pages in the immediate area in Bleachbone Gulley |tip Don't worry about getting enough the complete the quest, just grab any that are nearby. |goto Malgrave 2831,4137,-887
		|confirm
	step
		.' Check on Treasure Hunter Pallavi |q Making the Rounds##7146/3 |goto Malgrave 3309,4508,-808
	step
		'Press _C_ to use your communicator:
		..turnin Making the Rounds##7146
	step
		.talk Treasure Hunter Pallavi##280609
		..accept Operation: Drivebreaker##7147 |goto 3311,4507,-808
	step
		.talk Treasure Hunter Agni##280602
		..accept Laying the Loaders Low##7169 |goto 3310,4510,-808
	step
		.kill Darkspur Loader##1830431
		.kill Darkspur Supervisor##1888561
		.kill Darkspur Dockhand##1923701
		.kill Darkspur Mechanic##1940868
		.' Kill Darkspur Laborers |q Laying the Loaders Low##7169/1 |goto Malgrave 3255,4548,-807
		.click Mining Explosive##1931097
		.' Collect Mining Explosives |q Operation: Drivebreaker##7147/1 |goto 3247,4553,-805
	step
		'Press _C_ to use your communicator:
		..turnin Laying the Loaders Low##7169
	step
		.click Main Engine##284781
		.' Toss the Mining Explosives into the Hauler's Main Engine |q Operation: Drivebreaker##7147/2 |goto 3178,4590,-810
	step
		'Press _C_ to use your communicator:
		..turnin Operation: Drivebreaker##7147
		..accept Lucido's Last Nap##7148
	step
		.kill 1 Carmine Lucido##1953903
		.' Kill Carmine Lucido |q Lucido's Last Nap##7148/4 |goto Malgrave 3076,4577,-809
	step
		.talk Treasure Hunter Pallavi##280609
		..turnin Lucido's Last Nap##7148 |goto Malgrave 3311,4508,-808
		..accept Buried Shinies! Exploding Mines!##7149 |goto 3311,4508,-808
	step
		.click Dirt Pile##1886009
		.click Darkspur Treasure##2014518
		.' Collect Darkspur Treasure |q Buried Shinies! Exploding Mines!##7149/1 |goto Malgrave 3124,4461,-806
	step
		.talk Treasure Hunter Pallavi##280587
		..turnin Buried Shinies! Exploding Mines!##7149 |goto Malgrave 3035,4466,-806
		..accept Darkspur Enforcers##7150 |goto 3035,4466,-806
	step
		.talk Treasure Hunter Agni##280577
		..accept These Belong in a Museum!##7152 |goto 3037,4468,-807
		..accept Playing the Markets##7153 |goto 3037,4468,-807
	step
		.kill Darkspur Enforcer##2083826
		.' Kill Darkspur Enforcers |q Darkspur Enforcers##7150/1 |goto Malgrave 2920,4366,-811
		.click Eldan Artifacts##1858318
		.' Collect Eldan Artifacts in Swindler's End |q These Belong in a Museum!##7152/1 |goto 2912,4393,-810
		.click Halon Ring Market Terminal##282439
		.' Hack the Halon Ring Market Terminals |q Playing the Markets##7153/1 |goto 2924,4385,-810
	step
		'Press _C_ to use your communicator:
		..turnin Darkspur Enforcers##7150
		..turnin These Belong in a Museum!##7152
		..turnin Playing the Markets##7153
		..accept Anything That Isn't Nailed Down!##7151
	step
		.click Treasure Pile##284565
		.' Place a Lopp Homing Beacon at the first Treasure Pile |q Anything That Isn't Nailed Down!##7151/1 |goto 2780,4361,-814
		.click Treasure Pile##284550
		.' Place a Lopp Homing Beacon at the second Treasure Pile |q Anything That Isn't Nailed Down!##7151/2 |goto Malgrave 2802,4249,-812
	step
		.' Jump up here |goto Malgrave 2824,4238,-809
		.click Karaoke Song Book##282541
		..accept Darkspur Karaoke##7154 |goto 2820,4230,-803
	step
		.click Darkspur Microphone##282560
		.' Use the Darkspur Microphone and rock the house |q Darkspur Karaoke##7154/1 |goto 2816,4218,-802
		.' Survive the bar brawl |q Darkspur Karaoke##7154/2 |goto 2816,4218,-802
	step
		.click Karaoke Song Book##282541
		..turnin Darkspur Karaoke##7154 |goto 2819,4231,-803
	step
		.click Treasure Pile##284533
		.' Place a Lopp Homing Beacon at the third Treasure Pile |q Anything That Isn't Nailed Down!##7151/3 |goto Malgrave 2875,4295,-811
		.click Treasure Pile##284516
		.' Place a Lopp Homing Beacon at the fourth Treasure Pile |q Anything That Isn't Nailed Down!##7151/4 |goto Malgrave 2935,4370,-810
		.click Treasure Pile##284501
		.' Place a Lopp Homing Beacon at the final Treasure Pile |q Anything That Isn't Nailed Down!##7151/5 |goto 2915,4349,-811
	step
		'Press _C_ to use your communicator:
		..accept Green with Concern##7230 |goto Malgrave 2977,4543,-807
	step
		.' Go down the green set of stairs |goto 2969,4558,-811
		.' Find Exo-Lab X1-BB |q Green with Concern##7230/1 |goto 2961,4568,-837
	step
		'Press _C_ to use your communicator:
		..turnin Green with Concern##7230
		..accept Eldan Deconstruction##7156
	step
		.click Eldan Fuel Rod##280754
		..accept Eldan Power Source##7155 |goto 2928,4480,-999
	step
		.' Go through the doorway |goto 2881,4482,-999
		.click Eldan Fuel Rod Alpha##280720
		.' Activate Eldan Fuel Rod Alpha |q Eldan Power Source##7155/1 |goto Malgrave 2756,4433,-1008
	step
		.' Go back to the main room |goto 2816,4482,-1007
		.' Go through the door |goto Malgrave 3039,4482,-998
		.click Eldan Fuel Rod Beta##280735
		.' Activate Eldan Fuel Rod Beta |q Eldan Power Source##7155/2 |goto Malgrave 3162,4440,-1007
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Power Source##7155
	step
		.' All around Exo-Lab X1-BB:
		.kill Eldan Interrogator##2235081
		.kill Eldan Executioner##2214563
		.kill Eldan Defense Construct##2198767
		.kill Eldan Exterminator##2224111
		.' Destroy Eldan constructs |q Eldan Deconstruction##7156/1 |goto Malgrave 3010,4466,-999
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Deconstruction##7156
		..accept Finishing the Job##7157
	step
		.' Go through the doorway |goto Malgrave 2959,4419,-998
		.kill 1 Facility X1-BB Administrator##2233194
		.' Destroy Facility X1-BB Administrator |q Finishing the Job##7157/1 |goto Malgrave 2960,4320,-991
	step
		'Press _C_ to use your communicator:
		..turnin Finishing the Job##7157
	step
		.' Leave Exo-Lab X1-BB |goto Malgrave 2960,4516,-993
		.' Go up the green stairs |goto Malgrave 2955,4576,-834
		.click Singed Page##1914775
		.' Collect any remaining Singed Pages |q The Burned Journal##7192/1 |goto Malgrave 2831,4137,-887
	step
		.talk Rancher Rishka##280487
		..turnin The Burned Journal##7192 |goto Malgrave 2242,4188,-905
	step
		.talk Treasure Hunter Pallavi##279121
		..turnin Anything That Isn't Nailed Down!##7151 |goto 1580,4188,-975
	step
		'Press _C_ to use your communicator:
		..accept They Got What We Need##7417
	step
		.talk Shinysand Oasis Taxi Kiosk##276331
		.' Take a taxi to Area 77 |q They Got What We Need##7417/1 |goto 1591,4146,-972
	step
		.talk Safety and Security Supervisor##265241
		..turnin They Got What We Need##7417 |goto Malgrave 1647,2882,-820
		..accept On Record##7419 |goto 1647,2882,-820
	step
		.talk PSPN Producer##286271
		..accept Prepping the Broadcast##7422 |goto 1679,2897,-820
	step
		.talk Protostar Formbot##265231
		.' Talk to the Protostar Formbot |q On Record##7419/1 |goto 1689,2905,-820
		.' Complete the Protostar Formbot's security safety quiz |q On Record##7419/2 |goto 1689,2905,-820
		.click Busted Protostar Secure-A-Lock 3000##2302559
		.' Pick up Protostar Equipment |q Prepping the Broadcast##7422/1 |goto 1682,2896,-820
	step
		.talk Safety and Security Supervisor##265241
		..turnin On Record##7419 |goto 1647,2882,-820
		..accept Checks and Measures##7420 |goto 1647,2882,-820
	step
		.click Loftite Safety Sign##265155
		.' Fix the Loftite Safety Sign |q Checks and Measures##7420/5 |goto 1620,2785,-820
		.click Loftite-Tipped Vertical Rocksaw##265210
		.' Fix the Loftite-Tipped Vertical Rocksaw |q Checks and Measures##7420/2 |goto 1618,2852,-821
		.click Loftite-Tipped Horizontal-Rocksaw##265199
		.' Fix the Loftite-Tipped Horizontal-Rocksaw |q Checks and Measures##7420/3 |goto 1595,2873,-820
		.click Sprinkler System##265134
		.' Fix the Sprinkler System |q Checks and Measures##7420/4 |goto 1585,2931,-818
		.click Loftite-Tipped Rockgrinder##265221
		.' Fix the Loftite-Tipped Rockgrinder |q Checks and Measures##7420/1 |goto 1648,2960,-814
	step
		.click Transmat Terminal##280531
		.' Set _Area 77_ Transmat Terminal as your Recall |goto 1647,2945,-815
		|confirm
	step
		.talk Safety and Security Supervisor##265241
		..turnin Checks and Measures##7420 |goto 1647,2882,-820
		..accept A Hiccup in Harvesting##7421 |goto 1647,2882,-820
	step
		.talk Product Research Analyst##284340
		..accept A Deadly Demographic##8562 |goto 1639,2874,-820
	step
		.' Cross the bridge |goto 1643,2770,-838
		.talk Product Research Assistant##284362
		..turnin A Deadly Demographic##8562 |goto Malgrave 1644,2630,-838
		..accept Captured Clones##7395 |goto 1644,2630,-838
		..accept The Eyes Have It!##7396 |goto 1644,2630,-838
		..accept Natural Predators##7397 |goto 1644,2630,-838
	step
		.' All around this area:
		.click Webbed Covering##2289609
		.' Clear the Webbed Covering from burrows |q Natural Predators##7397/1 |goto Malgrave 1790,2666,-835
		.click Webbed Protostar Researcher##2318563
		.' Free Webbed Protostar Researchers from spider cocoons |q Captured Clones##7395/1 |goto 1786,2656,-836
		.kill Skittering Spinner##2350187+
		.kill Skittering Flayer##2339842+
		.kill Skittering Spinner##2340591+
		.' Collect Spider Eyes from Skittering spiders |q The Eyes Have It!##7396/1 |goto 1797,2688,-837
	step
		.click Faulty Beacon Prototype##2032053
		..accept Bringing Home the Beacon##7387 |goto 1757,2593,-834
	step
		.click Faulty Beacon Prototype##2374417
		.' Collect Faulty Beacon Prototypes |q Bringing Home the Beacon##7387/1 |goto 1741,2657,-836
	step
		.talk Product Research Assistant##284362
		..turnin Captured Clones##7395 |goto Malgrave 1645,2629,-838
		..turnin The Eyes Have It!##7396 |goto 1645,2629,-838
		..turnin Natural Predators##7397 |goto 1645,2629,-838
		..turnin Bringing Home the Beacon##7387 |goto 1645,2629,-838
		..accept Spider Surveillance ##7386 |goto 1645,2629,-838
		..accept Daddy Long Legs##7398 |goto 1645,2629,-838
	step
		.click Protostar Surveillancebot##263099
		.' Repair the first Protostar Surveillancebot |q Spider Surveillance ##7386/1 |goto Malgrave 1705,2623,-833
		.click Protostar Surveillancebot##263091
		.' Repair the second Protostar Surveillancebot |q Spider Surveillance ##7386/2 |goto 1861,2591,-818
		.click Protostar Surveillancebot##263075
		.' Repair the third Protostar Surveillancebot |q Spider Surveillance ##7386/3 |goto 1959,2684,-826
		.click Protostar Surveillancebot##263084
		.' Repair the fourth Protostar Surveillancebot |q Spider Surveillance ##7386/4 |goto 1909,2807,-835
	step
		'Press _C_ to use your communicator:
		..accept The Late Delivery##7399 |goto Malgrave 2050,2774,-826
	step
		.' Kill Dreadfang |q Daddy Long Legs##7398/1 |goto 2040,2602,-815
	step
		'Press _C_ to use your communicator:
		..turnin Daddy Long Legs##7398
	step
		.talk Product Research Assistant##284362
		..turnin Spider Surveillance##7386 |goto Malgrave 1646,2630,-838
	step
		.talk PSPN Associate Producer##286266
		..turnin Prepping the Broadcast##7422 |goto Malgrave 1407,2443,-831
	step
		.' Go up the dirt path |goto Malgrave 1460,2894,-904
		.talk Shardspire Foreman##265495
		..turnin A Hiccup in Harvesting##7421 |goto Malgrave 1433,2955,-890
		..accept Labor Issues##7423 |goto 1433,2955,-890
	step
		.talk Personal Assist-O-Bot##265081
		..accept Up the Creek, Ready for Battle##7424 |goto 1434,2958,-890
	step
		.click Laser Pickaxe##264684
		..accept Highbed Samples##7425 |goto Malgrave 1455,2896,-903
	step
		.' All around this area:
		.kill Creekwater Primordial##2430400
		.' Kill Creekwater Primordials |q Up the Creek, Ready for Battle##7424/1 |goto 1429,2822,-902
		.kill Moisture Sapper##2408335
		.kill Dew Grabber##2456449
		.' Kill Moisture Sappers and Dew Grabbers |q Up the Creek, Ready for Battle##7424/2 |goto 1460,2864,-904
		.click Protostar Minebot##2432659
		.' Teleport malfunctioning Protostar Minebots |q Labor Issues##7423/1 |goto 1454,2884,-903
		.click Highbed Mineral Sample##2314467
		.' Mine and collect Highbed Mineral Samples |q Highbed Samples##7425/1 |goto 1355,2855,-906
	step
		'Press _C_ to use your communicator:
		..turnin Up the Creek, Ready for Battle##7424
		..turnin Highbed Samples##7425
	step
		.talk Shardspire Foreman##265117
		..turnin Labor Issues##7423 |goto Malgrave 1463,2975,-883
		..accept Rescuing the Chief Mineralogist##7426 |goto 1463,2975,-883
	step
		.' Use the Maintenance Lift |q Rescuing the Chief Mineralogist##7426/1 |goto Malgrave 1450,3002,-882
		.talk Shardspire Security Officer##265469
		.' Speak to the Shardspire Security Officer |q Rescuing the Chief Mineralogist##7426/2 |goto 1484,3033,-965
		.click Chief Mineralogist##1872455
		.' Save the Chief Mineralogist from attackers |q Rescuing the Chief Mineralogist##7426/3 |goto 1514,3050,-965
		.' Cover the Chief Mineralogist's escape |q Rescuing the Chief Mineralogist##7426/4 |goto 1463,3048,-965
	step
		.talk Chief Mineralogist##265456
		..turnin Rescuing the Chief Mineralogist##7426 |goto Malgrave 1366,3086,-967
		..accept An Explosive Situation##7427 |goto 1366,3086,-967
	step
		.talk Shardspire Security Officer##264660
		..accept Eco-Terrorism##7428 |goto 1367,3092,-967
		..accept Small Parts Hazard##7430 |goto 1367,3092,-967
	step
		'Press _C_ to use your communicator:
		..accept An Unexpected Enemy##9070
	step
		.' All around this area:
		.kill Sandthorne Malverine##266636
		.' Collect Malverine Fangs from Sandthorne Malverines |q Small Parts Hazard##7430/1 |goto 1223,3136,-964
		.kill Sandthorne Leafblade##266674
		.kill Sandthorne Reaper##267043
		.' Kill Sandthorne eco-terrorists |q Eco-Terrorism##7428/1 |goto 1195,3154,-964
		.click Timed Explosive##265303
		.' Disarm the Timed Explosives |q An Explosive Situation##7427/1 |goto 1198,3152,-963
	step
		'Press _C_ to use your communicator:
		..turnin An Explosive Situation##7427
		..turnin Eco-Terrorism##7428
		..turnin Small Parts Hazard##7430
		..accept Seismic Disruption##7431
	step
		.talk Shardspire Security Officer##264658
		..accept Workers' Compensation##7433 |goto Malgrave 1368,3092,-967
	step
		.' Around this area: |tip More of all of these can be found to the south.
		.kill Sandthorne Sandshifter##308591
		.' Collect Sandshifter Staves from Sandthorne Sandshifters |q Seismic Disruption##7431/1 |goto 1410,3109,-967
		.kill Oilsand Gronyx##308593
		.' Kill Oilsand Gronyx |q Seismic Disruption##7431/2 |goto 1416,3109,-967
		.click Wounded Shardspire Worker##264405
		.' Heal Wounded Shardspire Workers |q Workers' Compensation##7433/1 |goto Malgrave 1436,3097,-967
	step
		'Press _C_ to use your communicator:
		..turnin Seismic Disruption##7431
		..turnin Workers' Compensation##7433
		..accept Upstairs Management##7432
	step
		.' Follow the path back around |goto 1403,3166,-968
		.' Take the ramps up |goto 1434,3096,-967
		.' Jump into one of the floating blue crystals in this area
		'Press _C_ to use your communicator:
		..accept A Purer Form##7434 |goto 1533,3236,-946
	step
		.' _Jump_ into a _blue loftite crystal_ to gain the _Loftite Aura_ jumping buff
		.' _Jump up_ onto the first platform |goto 1529,3243,-946
		.' _Jump_ to the second platform |goto 1534,3242,-899
		.' _Continue up_ to the third platform |goto 1538,3214,-882
		.' _Double-jump straight up_ to get to the fourth platform goto 1549,3210,-854
		.' _Jump up_ to the last platform |goto 1559,3190,-835
		.' Use loftite crystals to reach the floating rock plateau |q Upstairs Management##7432/1 |goto 1582,3144,-822
	step
		.' Kill Lady Briarthorn |q Upstairs Management##7432/2 |goto 1606,3126,-819
	step
		.' Collect Pure Loftite Crystals by jumpuing into them |q A Purer Form##7434/1 |goto Malgrave 1557,3180,-833
	step
		'Press _C_ to use your communicator:
		..turnin A Purer Form##7434
	step
		.' Jump into one of the floating blue loftite crystals and then jump off this high platform
		|confirm
	step
		.talk Chief Mineralogist##265460
		..turnin Upstairs Management##7432 |goto Malgrave 1365,3088,-967
	step
		.' _Take the elevator_ back up |goto Malgrave 1461,3015,-956
		.' _Follow the path_ up to Area 77 |goto Malgrave 1543,2864,-847
		.' _Follow this road_ east all the way to the Caravan |goto 1719,2814,-824
		.' Find the missing Lopp caravan |q The Late Delivery##7399/1 |goto Malgrave 2458,2980,-856
	step
		.talk Marshal Yatish##286242
		..turnin The Late Delivery##7399 |goto Malgrave 2468,2982,-857
		..accept Cause and Effect##7400 |goto 2468,2982,-857
		..accept Leaving Our Mark##7403 |goto 2468,2982,-857
	step
		.talk Deputy Whirlscrew##286241
		..accept You've Been Served!##7402 |goto 2462,2984,-856
	step
		.click Falkrin War Banner##285806
		.' Burn Falkrin War Banners |q Leaving Our Mark##7403/1 |goto 2513,3016,-846
		.click Scourwind Mudrunner##347130
		.click Scourwind Shambler##277036
		.click Scourwind Herald##277092
		.' Press _T_ to serve subpoenas to Falkrin and Murgh |q You've Been Served!##7402/1 |goto 2519,3072,-825
		.kill Scourwind Mudrunner##276901
		.kill Scourwind Shambler##277036
		.kill Scourwind Herald##277092
		.' Kill Scourwind Falkrin and Murgh |q Cause and Effect##7400/1 |goto 2516,3068,-825
	step
		'Press _C_ to use your communicator:
		..turnin Cause and Effect##7400
		..turnin Leaving Our Mark##7403
		..turnin You've Been Served!##7402
		..accept Yatish's Ultimatum##7404
	step
		'Press _C_ to use your communicator:
		..accept Perps Everywhere!##7406 |goto Malgrave 2315,3078,-813
	step
		.click Enemy Ground##290514
		.' Plant and defend the Lopp Banner |q Yatish's Ultimatum##7404/1 |goto 2203,3069,-781
		.' Find Marshal Yatish |q Yatish's Ultimatum##7404/2 |goto 2292,3059,-804
	step
		.talk Marshal Yatish##286239
		..turnin Yatish's Ultimatum##7404 |goto 2292,3059,-804
		..accept Fancy Meeting You Here##7409 |goto 2292,3059,-804
		..accept Over Easy##7405 |goto 2292,3059,-804
		..accept Burn the Brides##7411 |goto 2292,3059,-804
	step
		'Press _C_ to use your communicator:
		..accept Evidence Gathering Techniques##7407
	step
		.click Potentially Valuable Evidence##385647 |tip These appear as orange cogs on your minimap.
		.' Collect Potentially Valuable Evidence |q Evidence Gathering Techniques##7407/1 |goto 2276,3086,-797
	step
		'Press _C_ to use your communicator:
		..turnin Evidence Gathering Techniques##7407
	step
		.kill Scourwind Stormspeaker##434299
		.kill Scourwind Challenger##434298
		.' Kill Scourwind Falkrin |q Perps Everywhere!##7406/1 |goto 2143,3120,-766
		.click Falkrin Egg##285320
		.' Press _T_ to roast Falkrin Eggs with the Lopp Egg Cooker |q Over Easy##7405/1 |goto 2143,3241,-762
	step
		'Press _C_ to use your communicator:
		..turnin Perps Everywhere!##7406
		..turnin Over Easy##7405
	step
		.talk Whirlygig##284341
		..turnin Fancy Meeting You Here##7409 |goto Malgrave 2071,3161,-743
		..accept A Windy Ascent##7408 |goto 2071,3161,-743
		..accept Windy Things##7652 |goto 2071,3161,-743
	step
		.click Scourwind Feather Banner##284615
		..accept Casual Desecration##7410 |goto 2086,3232,-760
	step
		.' Click and replace Scourwind Banners as you follow this path |goto 2104,3256,-763
		.' Continue following the path around to get to the very top of Scourwind Peak
		.' Ride Dust Devil tornadoes as you go |q Windy Things##7652/2 |goto 1812,3381,-775
	step
		.' Found all around Scourwind Peak:
		.kill Crackling Stormgust##2305297
		.kill Roaring Stormgust##2406055
		.' Destroy Crackling Stormgusts |q Windy Things##7652/1 |goto 1927,3058,-697
		.kill Scourwind Priestess##2302397
		.click Scourwind Priestess##2302397
		.' Press _T_ to burn the bodies of Scourwind Priestesses |q Burn the Brides##7411/1 |goto 1928,3060,-697
		.click Scourwind Feather Banner##284768
		.' Replace Scourwind Banners |q Casual Desecration##7410/1 |goto Malgrave 2010,3202,-676
	step
		'Press _C_ to use your communicator:
		..turnin Burn the Brides##7411
		..turnin Windy Things##7652
		..turnin Casual Desecration##7410
		..accept The Sound of Judgment##7412
	step
		.click Challenge Horn##284607
		.' Blow the Challenge Horn |q The Sound of Judgment##7412/1 |goto Malgrave 2045,3275,-676
		.' Kill Broodlord Morkhel |q The Sound of Judgment##7412/2 |goto 2022,3258,-676
	step
		'Press _C_ to use your communicator:
		..turnin The Sound of Judgment##7412
	step
		.' Follow this path to the top of Scourwind Peak |goto 1942,3219,-670
		.' Continue up this dirt path |goto Malgrave 1790,3257,-565
		.' Reach the summit of Scourwind Peak |q A Windy Ascent##7408/1 |goto 1837,3154,-384
	step
		'Press _C_ to use your communicator:
		..turnin A Windy Ascent##7408
		..accept The Windscourge##7413
	step
		.kill 1 Windscourge##2616501
		.' Destroy the Windscourge |q The Windscourge##7413/2 |goto 1864,3169,-390
	step
		.talk Whirlygig##2669443
		..turnin The Windscourge##7413 |goto Malgrave 1823,3180,-386
		..accept What Goes Up...##7414 |goto 1823,3180,-386
	step
		.' Leap from the top of Scourwind Peak |tip You won't die. |q What Goes Up...##7414/1 |goto 1797,3165,-383
	step
		.talk Whirlygig##284350
		..turnin What Goes Up...##7414 |goto Malgrave 1662,2916,-819
]])
