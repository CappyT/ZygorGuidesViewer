if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Malgrave (41-46)",
	{
	faction="Dominion",
	startlevel=41,
	endlevel=46,
	image="ZygorUIGuides:Malgrave",
	nextguide="Dominion\\Grimvault (46-50)",
	description="Malgrave is a dry desert zone located in southern Isigrol. It is best suited for characters level 41-46. "
	},
	[[
	step
		'Press _C_ to use your communicator:
		..accept Journey to Malgrave##8971
	step
		.' Travel to the new Portal in Illium |q Darkness Revealed##9085/1 |goto Illium -3684,-1035,-851
	step
		.' Enter the new Portal in Illium |q Darkness Revealed##9085/2 |goto Illium -3680,-1047,-851
	step
		.' Explore what lies beyond the new Portal |q Darkness Revealed##9085/3 |goto Illium -3680,-1047,-851

	step
		'_Go through_ the large gates |goto Illium -3562,-792,-881 < 20 |c |q 9085
	step
		.click Enigma Chamber Door##263162
		.' _Enter_ the Enigma Chamer |goto Illium -3461,-1054,-881 < 5 |c |q 9085
	step
		.click Elevator Control##263158
		.' Take the _Elevator down_ |goto Illium -3157,-1781,-1037 < 5 |c |q 9085
	step
		.talk Chancellor Juro Takigurian##263152 |goto Illium -3252,-1825,-1027
		..turnin Darkness Revealed##9085
	step
		.click Elevator Control##263158
		.' Take the _Elevator up_ |goto Illium -3157,-1781,-1037 < 5 |c |q 8971
	step
		.click Enigma Chamber Door##263162
		.' _Exit_ the Enigma Chamer |goto Illium -3461,-1054,-881 < 5 |c |q 8971
	step
		'_Go through_ the large gates |goto Illium -3603,-705,-882 < 20 |c |q 8971
	step
		.click Ship to Malgrave##265394
		.' Press _Yes_ to travel to Fort Dominus in Malgrave |q Journey to Malgrave##8971/2 |goto Illium -3626,-639,-878
	step
		'Press _C_ to use your communicator:
		..accept Urgent Business##7341 |goto Malgrave 1645,4079,-955
	step
		.talk Vigilant Acolyte Elzara##281374 |goto Malgrave 1651,4082,-955
		..turnin Journey to Malgrave##8971
	step
		.talk High Priestess Raumia##287876 |goto Malgrave 1578,3997,-963
		..turnin Urgent Business##7341
		..accept Assessing the Locals##7202
	step
		.talk Far-Trader Sumana##287919 |goto Malgrave 1587,4211,-979
		.' Speak to Far-Trader Sumana |q Assessing the Locals##7202/4
		..accept The Town of Gravestone##7213
	step
		.talk Chief Gorral##287922 |goto Malgrave 1594,4239,-979
		.' Speak to Chief Gorral |q Assessing the Locals##7202/1
		..accept Clear the Beach##7207
	step
		.talk Fry Cook Mohini##287906 |goto Malgrave 1618,4234,-979
		.' Speak to Fry Cook Mohini |q Assessing the Locals##7202/2
		..accept Deep-Fry Everything##7205
		..accept Probably a Delicacy##7206
	step
		.talk Sheriff Steambolt##287893 |goto Malgrave 1624,4214,-979
		.' Speak to Sheriff Steambolt |q Assessing the Locals##7202/3
		..accept Checking on the Marshal##7142
	step
		'Press _C_ to use your communicator:
		..turnin Assessing the Locals##7202
	step
		.' All along the beach:
		.' Kill Shinysand spikehordes |q Clear the Beach##7207/1 |goto Malgrave 1600,4361,-999
		.' Collect Shinysand Spikehorde Mandibles from Shinysand spikehordes |q Deep-Fry Everything##7205/2 |goto Malgrave 1621,4367,-999
		.' Collect Tidebreaker's Corpse from Pelagic the Tidebreaker |tip He's a green crab |q Probably a Delicacy##7206/1 |goto Malgrave 1639,4650,-1000
	step
		'Press _C_ to use your communicator:
		..turnin Clear the Beach##7207
		..accept A Shiny Harvest##7210
		..accept Automated Security##7211 |tip This quest may take a few seconds.
	step
		.' Approach the Wreck of the Novus |q A Shiny Harvest##7210/1 |goto Malgrave 1522,4402,-1000
	step
		.' _Dive underwater_ and swim down
		.click Control Panel##277071
		.' Click _Yes_ to enter the Novus wreckage |goto Malgrave 1543,4440,-1030
		|confirm
	step
		.click Shiny Scrap##861068
		.' Collect Shiny Scrap |q A Shiny Harvest##7210/2 |goto Malgrave 1897,3987,-1038
		.' Destroy Securitybots |q Automated Security##7211/1
	step
		'Press _C_ to use your communicator:
		..turnin A Shiny Harvest##7210
		..turnin Automated Security##7211
		..accept Artificial Mastermind##7212
	step
		.click Security Terminal Alpha##278335
		.' Deactivate Security Terminal Alpha |q Artificial Mastermind##7212/1 |goto Malgrave 1907,4008,-1040
	step
		' _Go up_ the ramp |goto Malgrave 1925,3976,-1040
		.click Security Terminal Beta##278324
		.' Deactivate Security Terminal Beta |q Artificial Mastermind##7212/2 |goto Malgrave 1963,4002,-1032
	step
		.click Security Terminal Delta##278305
		.' Deactivate Security Terminal Delta |q Artificial Mastermind##7212/3 |goto Malgrave 2035,4058,-1046
	step
		.click RIX-AI Backup Terminal##278294
		.' Download the RIX-AI Backup |q Artificial Mastermind##7212/4 |goto Malgrave 2054,4095,-1053
	step
		'Press _C_ to use your communicator:
		..turnin Artificial Mastermind##7212
	step
		.click Control Panel##277865
		.' _Leave_ the Novus wreckage |goto Malgrave 1916,3919,-1033 < 10 |c |q 7205
	step
		.' _Go up_ the path here |goto Malgrave 1655,4263,-970 < 10 |c |q 7205
	step
		.' Collect Sandwisp Spider Legs from Sandwisp spiders |q Deep-Fry Everything##7205/1 |goto Malgrave 1773,4412,-945
	step
		.kill 1 Mr. Chitters##923500
		.' Collect Mr. Chitter's Corpse from Mr. Chitters |q Probably a Delicacy##7206/2 |goto Malgrave 1776,4546,-954
	step
		.talk Fry Cook Mohini##280567 |goto Malgrave 1618,4235,-979
		..turnin Deep-Fry Everything##7205
		..turnin Probably a Delicacy##7206
	step
		.click Transmat Terminal
		.' Set _Shinysand Oasis_ Transmat Terminal as your Recall point |goto Malgrave 1675,4218,-962
		|confirm |q 7213
	step
		.' Locate the South Gate of Gravestone |q The Town of Gravestone##7213/1 |goto Malgrave 1880,3900,-956
	step
		.talk Ol' Higgins##280639 |goto Malgrave 1887,3888,-956
		..turnin The Town of Gravestone##7213
		..accept These Old Bones##7214
	step
		.talk Ma Higgins##280631 |goto Malgrave 1876,3891,-956
		..accept Lousy Deadbeats##7223
	step
		.' All around Gravestone South Gate: |goto Malgrave 1874,3859,-956
		.' Bury Bone Piles |q These Old Bones##7214/1
		.' Destroy Spectral bandits |q Lousy Deadbeats##7223/1
	step
		.talk Ma Higgins##280631 |goto Malgrave 1876,3891,-956
		..turnin Lousy Deadbeats##7223
	step
		.talk Ol' Higgins##280639 |goto Malgrave 1886,3889,-956
		..turnin These Old Bones##7214
		..accept Bret's Lackeys##7215
	step
		//Sweet, Sweet Cactus Apples popped, but I was unable to find any inside of the town
		.kill 1 Hard-Drinkin' Eberhart##971065
		.' Destroy the ghost of Hard-Drinkin' Eberhart |q Bret's Lackeys##7215/2 |goto Malgrave 1827,3865,-954
	step
		.kill 1 Coal-Lung Carl##938463
		.' Destroy the ghost of Coal-Lung Carl |q Bret's Lackeys##7215/3 |goto Malgrave 1827,3793,-956
	step
		.kill 1 Tin-Ear Tatum##976276
		.' Destroy the ghost of Tin-Ear Tatum |q Bret's Lackeys##7215/4 |goto Malgrave 1750,3751,-950
	step
		.kill 1 Flint-Hearted Polly##973816
		.' Destroy the ghost of Flint-Hearted Polly |q Bret's Lackeys##7215/1 |goto Malgrave 1733,3837,-955
	step
		.talk Ol' Higgins##280639 |goto Malgrave 1887,3889,-956
		..turnin Bret's Lackeys##7215
	step
		.talk Ma Higgins##280631 |goto Malgrave 1877,3892,-956
		..accept Busting Black Bret##7216
	step
		.kill 1 Black Bret##978646
		.' Destroy Black Bret |q Busting Black Bret##7216/1 |goto Malgrave 1941,3606,-926
	step
		.talk Ma Higgins##280631 |goto Malgrave 1877,3894,-956
		..turnin Busting Black Bret##7216
	step
		.talk Ol' Higgins##280639 |goto Malgrave 1886,3889,-956
		..accept Permission Granted##7217
	step
		.talk Far-Trader Sumana##280592 |goto Malgrave 1586,4211,-979
		..turnin Permission Granted##7217
	step
		.talk Chief Gorral##280599 |goto Malgrave 1594,4239,-979
		..accept Making the Rounds##7146
	step
		.talk Deputy G0M3R##263519 |goto Malgrave 1386,4233,-974
		.' Speak with Deputy G0M3R |q Checking on the Marshal##7142/1
	step
		.' Follow the path around |goto Malgrave 1336,4294,-978 < 20 |c |q 7142
	step
		.talk Deputy Bingsocket##265474 |goto Malgrave 1154,4184,-969
		.' Speak with Deputy Bingsocket |q Checking on the Marshal##7142/2
	step
		.talk Deputy Whirlscrew##280498 |goto Malgrave 1159,4175,-969
		..accept So, Robo-Cultists are a Thing Now##7170
		..accept Desanctification##7171
	step
		.' Enter the cave |goto Malgrave 1199,4097,-982 < 10 |c |q 7170
	step
		.' Destroy Robo-Cultists |q So, Robo-Cultists are a Thing Now##7170/1 |goto Malgrave 1249,4017,-1002
		.click Robocult Propagandatron##284077
		.' Destroy Robocult Propagandatrons |q Desanctification##7171/1 |goto Malgrave 1246,4002,-1005
	step
		'Press _C_ to use your communicator:
		..turnin So, Robo-Cultists are a Thing Now##7170
		..turnin Desanctification##7171
		..accept That's About Enough of That##7172
	step
		.kill 1 Preacherbot v.6.6.6##1032052
		.' Destroy Preacherbot v.6.6.6 |q That's About Enough of That##7172/1 |goto Malgrave 1555,4032,-1019
	step
		.talk Deputy Whirlscrew##280498 |goto Malgrave 1158,4176,-969
		..turnin That's About Enough of That##7172
	step
		.talk Field Marketing Junior Assistant##278745
		.' Speak with the Field Marketing Junior Assistant |q Checking on the Marshal##7142/3 |goto Malgrave 1112,3952,-974
	step
		.talk Jr. Field Marketing Agent##280488 |goto Malgrave 1106,3927,-974
		..accept Canimid Nuisance##7165
		..accept Hazard Pay##7166
	step
		.talk Assistant Jr. Field Marketing Agent##1024551 |goto 954,3914,-964
		.' Protect the Assistant Jr. Field Marketing Agent from canimid |q Hazard Pay##7166/1
	step
		.kill Witherdust Yearling##800897+
		.kill Witherdust Burrower##1072879+
		.kill Witherdust Tunneler##1031095+
		.' Kill Witherdust canimid |q Canimid Nuisance##7165/1 |goto 973,4016,-972
	step
		.talk Jr. Field Marketing Agent##280488 |goto Malgrave 1105,3927,-974
		..turnin Canimid Nuisance##7165
		..turnin Hazard Pay##7166
	step
		.talk Marshal Yatish##280624 |goto Malgrave 976,3800,-966
		..turnin Checking on the Marshal##7142
		..accept Freeing the Oppressed##7159
		..accept Dragging Down the Dreg##7160
	step
		-- Foulflesh here cannot be tied to next one later.  Is a chain.
		' Kill _Foulflesh Boneclaw_, _Brute_, _Grappler_ and _Windshaman_
		.' Kill Foulflesh Dreg |q Dragging Down the Dreg##7160/1 |goto Malgrave 822,3734,-948
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
		.talk Marshal Yatish##280615 |goto Malgrave 733,3922,-979
		..turnin Loppfoot's Justice##7161
		..accept Burn Them Out##7162
		..accept Foot for a Foot##7163
	step
		.talk Assistant Jr. Field Marketing Agent##278761 |goto Malgrave 1107,3937,-974
		..accept Untapped Demographics##7167
	step
		.click Protostar Marketing Kit##279124 |tip More can be found to the north. Look for orange cogs on your minimap.
		.' Set up Protostar Marketing Kits |q Untapped Demographics##7167/1 |goto Malgrave 1034,3942,-972
	step
		.talk Assistant Jr. Field Marketing Agent##278761 |goto Malgrave 1107,3937,-974
		..turnin Untapped Demographics##7167
	step
		.click Flammable Dreg belongings##271762 |tip Is a red target mark in the base
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |count 20 |goto Malgrave 606,4151,-959
	step
		.click Flammable Dreg belongings##271762 |tip Is a red target mark in the base
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |count 40 |goto Malgrave 620,4146,-957
	step
		.click Flammable Dreg belongings##271762 |tip Is half way up the tower ramp
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |count 60 |goto Malgrave 611,4140,-942
	step
		.click Flammable Dreg belongings##271762 |tip Last 2 at the top of the tower
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |count 80 |goto Malgrave 623,4145,-926
	step
		.click Flammable Dreg belongings##271762
		.' Set fires at the cliffside watchtower |q Burn Them Out##7162/2 |goto Malgrave 605,4151,-926
	step
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |count 20 |goto Malgrave 546,4209,-974
	step
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |count 40 |goto Malgrave 529,4228,-974
	step
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |count 60 |goto Malgrave 507,4235,-974
	step
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |count 80 |goto Malgrave 495,4199,-974
	step
		.click Flammable Dreg belongings##271590
		.' Set fires at storage tents |q Burn Them Out##7162/3 |goto Malgrave 526,4208,-974
	step
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |count 20 |goto Malgrave 474,4017,-965
	step
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |count 40 |goto Malgrave 442,3992,-970
	step
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |count 60 |goto Malgrave 438,4029,-970
	step
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |count 80 |goto Malgrave 426,4019,-970
	step
		.click Flammable Dreg belongings##271368
		.' Set fires at dwelling tents |q Burn Them Out##7162/1 |goto Malgrave 408,4037,-970
	step
		'Press _C_ to use your communicator:
		..turnin Burn Them Out##7162
		..turnin Foot for a Foot##7163
		..accept Shinysand Savior##7164
	step
		.kill 1 Fleshrender##1221296
		.' Kill Fleshrender |q Shinysand Savior##7164/1 |goto Malgrave 454,4090,-973
	step
		.' _Recall-Transmat_ to Shinysand Oasis |goto Malgrave 1676,4219,-962 < 20 |c |noway |q 7164
	step
		.talk Marshal Yatish##280608
		..turnin Shinysand Savior##7164 |goto Malgrave 1601,4217,-979
	step
		.' _Follow_ this path around the Exiles' base |goto Malgrave 1806,4071,-949 < 10 |c q 7146
	step
		'Press _C_ to use your communicator:
		..accept Boring But Vital Data##7219 |goto Malgrave 1944,4084,-945
		..accept Scrab Menace##7218
	step
		.kill 1 Orius the Scrab King##10925803 |tip He walks around
		.use Orius's Stinger##19306
		..accept Giant Enemy Scrab##7220 |goto Malgrave 2072,4146,-932
	step
		.talk Pilot Tenzo##287886
		..turnin Giant Enemy Scrab##7220 |goto Malgrave 2154,3946,-927
	step
		' Kill _Sandsnapper Vermin_, _Striker_, and _Orius the Scrab King_
		.' Kill Scrab |q Scrab Menace##7218/1 |goto Malgrave 2002,4143,-930
		.' Activate Data Modules |q Boring But Vital Data##7219/1 |goto Malgrave 2024,4125,-932
	step
		.' Press _C_ to use your communicator:
		..turnin Scrab Menace##7218
		..turnin Boring But Vital Data##7219
	step
		.' Check on Rancher Rishka |q Making the Rounds##7146/1 |goto Malgrave 2235,4189,-905
	step
		.talk Rancher Rishka##280487 |goto Malgrave 2241,4190,-905
		..accept Defending the Herd##7189
		..accept Can't Make an Omelet Without Eggs##7190
		..accept Get Along Little Dawngrazer##7191
	step
		.' _Follow_ this path around |goto Malgrave 2722,4219,-904 < 10 |c q 7146/2
	step
		.' Go around mountain, _don't_ use bridge |goto Malgrave 2775,4175,-897 < 10 |c q 7146/2
	step
		.click Burned Journal##278217 |goto Malgrave 2950,4173,-898 |tip You can do this with the other Rancher's quests
		..accept The Burned Journal##7192
	step
		'Click _Roughback Grazer_, then press _T_ to:
		.' Use the "Friendmaker" tazer on Roughback Grazers |q Get Along Little Dawngrazer##7191/1 |goto Malgrave 2352,4155,-890
		' Kill _Snapjaw Mauler_ and _Prowler_
		.' Kill Snapjaw Girrok |q Defending the Herd##7189/1 |goto Malgrave 2386,4145,-894
	step
		' Kill _Sunbeak Striker_ or click _Sunbeak Egg_:
		.' Collect Ravenok Eggs from Sunbeak Striders |q Can't Make an Omelet Without Eggs##7190/1 |goto Malgrave 2497,4224,-894
	step
		.' Collect any remaining Singed Pages |q The Burned Journal##7192/1 |goto Malgrave 2831,4137,-887
	step
		.talk Rancher Rishka##280487 |goto Malgrave 2242,4188,-905
		..turnin Defending the Herd##7189
		..turnin Can't Make an Omelet Without Eggs##7190
		..turnin Get Along Little Dawngrazer##7191
		..turnin The Burned Journal##7192
	step
		.' Check on Shaman Arokya |q Making the Rounds##7146/2 |goto Malgrave 3061,4252,-881
	step
		.talk Shaman Arokya##283884 |goto Malgrave 3061,4253,-881
		..accept Rocks Fall, Everyone Dies##7143
		..accept Rocks on the March##7144
	step
		' Kill _Rockshell Blitzer_, and _Skitter_
		.' Kill Rockshell spikehordes |q Rocks on the March##7144/1 |goto Malgrave 3175,4289,-865
		' Kill _Sandstone_, then click _Dead Lopp_
		.' Recover Dead Lopp from beneath Sandstones |q Rocks Fall, Everyone Dies##7143/1 |goto Malgrave 3187,4247,-868
	step
		.talk Shaman Arokya##283884 |goto Malgrave 3061,4255,-881
		..turnin Rocks Fall, Everyone Dies##7143
		..turnin Rocks on the March##7144
		..accept The Underground Evil##7145
	step
		' Click _Thumper_ and fight waves |goto Malgrave 3124,4205,-880
		.' Activate the Thumper |q The Underground Evil##7145/1
		.' Vanquish the underground evil |q The Underground Evil##7145/2
	step
		.talk Shaman Arokya##283884 |goto Malgrave 3062,4254,-881
		..turnin The Underground Evil##7145
	step
		'Press _C_ to use your communicator:
		..accept Surprise Prohibition##7175 |goto Malgrave 1230,3957,-937
		..accept Bad News Brewing##7173
		..accept Brewers in Bondage##7174
	step
		.' Rescue Marcella Vinos |q Brewers in Bondage##7174/2 |goto Malgrave 1306,4046,-909
	step
		.' Rescue Primo Vinos |q Brewers in Bondage##7174/3 |goto Malgrave 1306,4188,-915
	step
		.' Rescue Severus Vinos |q Brewers in Bondage##7174/1 |goto Malgrave 1465,3896,-908
	step
		'Press _C_ to use your communicator:
		..turnin Brewers in Bondage##7174
	step
		.' All around Slushstill Plateau:
		.' Kill Gargleblast Marauders |q Bad News Brewing##7173/1 |goto Malgrave 1437,3914,-906
		.click Slush Still##1203019
		.' Detonate Slush Stills |q Surprise Prohibition##7175/1 |goto Malgrave 1376,3980,-909
	step
		'Press _C_ to use your communicator:
		..turnin Bad News Brewing##7173
		..turnin Surprise Prohibition##7175
		..accept Blood for Brew##7176
	step
		.click Secret Rock##281769
		.' Find the Secret Rock to activate the hidden pathway |q Blood for Brew##7176/1 |goto Malgrave 1288,4266,-920
	step
		.' _Jump across_ the newly formed rock bridge |goto Malgrave 1281,4281,-927 < 10 |c |q 7176/2
	step
		.' Kill Merciless Mek |q Blood for Brew##7176/2 |goto Malgrave 1241,4372,-946
	step
		'Press _C_ to use your communicator:
		..turnin Blood for Brew##7176
	step
		.kill 1 Red Shaleback Bull##1717153
		..accept Shaleback Hooves##7186 |goto Malgrave 2099,4144,-936
	step
		.' Around this area:
		.kill Red Shaleback Bull##415882+
		.kill Red Shaleback##857923+
		.' Collect Shaleback Hooves from Red Shaleback |q Shaleback Hooves##7186/1 |goto Malgrave 1451,3474,-918
	step
		.talk Game Hunter Joresh##280562 |goto Malgrave 1656,3747,-953
		..turnin Shaleback Hooves##7186
		..accept Vulcarrion Problems##7184
		..accept Sweet, Sweet Cactus Apples##7185
	step
		.' Around this area:
		.kill Fruitful Cactus##1862906+
		.' Bash Fruitful Cactus to collect Cactus Apples |q Sweet, Sweet Cactus Apples##7185/1 |goto Malgrave 1715,3592,-925
		.click Sandswept Roan##1872630
		.kill Blightwing Circler##1758198+
		.' Press _T_ to kill Sandswept Roan to attract and kill Blightwing vulcarrion |q Vulcarrion Problems##7184/1 |goto Malgrave 1686,3587,-926
	step
		.talk Game Hunter Joresh##280562 |goto Malgrave 1656,3748,-953
		..turnin Sweet, Sweet Cactus Apples##7185
		..turnin Vulcarrion Problems##7184
		..accept Stomping Chompacabra##7187
		..accept Hit 'Em Where They Live##7188
	step
		.click Chompacabra Mound##281961
		.' Plant explosives inside Chompacabra Mounds |q Hit 'Em Where They Live##7188/1 |goto Malgrave 1528,3598,-925
		' Kill _Grizzled Chomper_ and _Bloodthirsty Chompling_
		.' Kill Chompacabras |q Stomping Chompacabra##7187/1 |goto Malgrave 1469,3593,-924
	step
		.talk Game Hunter Joresh##280562 |goto Malgrave 1656,3747,-953
		..turnin Stomping Chompacabra##7187
		..turnin Hit 'Em Where They Live##7188
	step
		.' Check on Treasure Hunter Pallavi |q Making the Rounds##7146/3 |goto Malgrave 3309,4508,-808
	step
		'Press _C_ to use your communicator:
		..turnin Making the Rounds##7146
	step
		.talk Treasure Hunter Pallavi##280609 |goto Malgrave 3311,4507,-808
		..accept Operation: Drivebreaker##7147
	step
		.talk Treasure Hunter Agni##280602 |goto Malgrave 3310,4510,-808
		..accept Laying the Loaders Low##7169
	step
		' Kill _Darkspur Loaders_, _Supervisor_, _Dockhand_, and _Mechanic_
		.' Kill Darkspur Laborers |q Laying the Loaders Low##7169/1 |goto Malgrave 3255,4548,-807
		.click Mining Explosive##1931097
		.' Collect Mining Explosives |q Operation: Drivebreaker##7147/1 |goto Malgrave 3247,4553,-805
	step
		'Press _C_ to use your communicator:
		..turnin Laying the Loaders Low##7169
	step
		.click Main Engine##284781
		.' Toss the Mining Explosives into the Hauler's Main Engine |q Operation: Drivebreaker##7147/2 |goto Malgrave 3178,4590,-810
	step
		'Press _C_ to use your communicator:
		..turnin Operation: Drivebreaker##7147
		..accept Lucido's Last Nap##7148
	step
		.' Kill Carmine Lucido |q Lucido's Last Nap##7148/4 |goto Malgrave 3076,4577,-809
	step
		.talk Treasure Hunter Pallavi##280609 |goto Malgrave 3311,4508,-808
		..turnin Lucido's Last Nap##7148
		..accept Buried Shinies! Exploding Mines!##7149
	step
		.click Dirt Pile##1886009
		.click Darkspur Treasure##2014518
		.' Collect Darkspur Treasure |q Buried Shinies! Exploding Mines!##7149/1 |goto Malgrave 3124,4461,-806 |tip Watch out for the small Land Mines on the ground.
	step
		.talk Treasure Hunter Pallavi##280587 |goto Malgrave 3035,4466,-806
		..turnin Buried Shinies! Exploding Mines!##7149
		..accept Darkspur Enforcers##7150
	step
		.talk Treasure Hunter Agni##280577 |goto Malgrave 3037,4468,-807
		..accept These Belong in a Museum!##7152
		..accept Playing the Markets##7153
	step
		.' Kill Darkspur Enforcers |q Darkspur Enforcers##7150/1 |goto Malgrave 2920,4366,-811
		.click Eldan Artifacts##1858318
		.' Collect Eldan Artifacts in Swindler's End |q These Belong in a Museum!##7152/1 |goto Malgrave 2912,4393,-810
		.click Halon Ring Market Terminal##282439
		.' Hack the Halon Ring Market Terminals |q Playing the Markets##7153/1 |goto Malgrave 2924,4385,-810
	step
		'Press _C_ to use your communicator:
		..turnin Darkspur Enforcers##7150
		..turnin These Belong in a Museum!##7152
		..turnin Playing the Markets##7153
		..accept Anything That Isn't Nailed Down!##7151
	step
		.click Treasure Pile##284565
		.' Place a Lopp Homing Beacon at the first Treasure Pile |q Anything That Isn't Nailed Down!##7151/1 |goto Malgrave 2780,4361,-814
		.click Treasure Pile##284550
		.' Place a Lopp Homing Beacon at the second Treasure Pile |q Anything That Isn't Nailed Down!##7151/2 |goto Malgrave 2802,4249,-812
	step
		.' _Jump up_ here |goto Malgrave 2824,4238,-809
		.click Karaoke Song Book##282541 |goto Malgrave 2820,4230,-803
		..accept Darkspur Karaoke##7154
	step
		.click Darkspur Microphone##282560
		.' Use the Darkspur Microphone and rock the house |q Darkspur Karaoke##7154/1 |goto Malgrave 2816,4218,-802
		.' Survive the bar brawl |q Darkspur Karaoke##7154/2 |goto Malgrave 2816,4218,-802
	step
		.click Karaoke Song Book##282541
		..turnin Darkspur Karaoke##7154 |goto Malgrave 2819,4231,-803
	step
		.click Treasure Pile##284533
		.' Place a Lopp Homing Beacon at the third Treasure Pile |q Anything That Isn't Nailed Down!##7151/3 |goto Malgrave 2875,4295,-811
	step
		.click Treasure Pile##284516
		.' Place a Lopp Homing Beacon at the fourth Treasure Pile |q Anything That Isn't Nailed Down!##7151/4 |goto Malgrave 2935,4370,-810
	step
		.click Treasure Pile##284501
		.' Place a Lopp Homing Beacon at the final Treasure Pile |q Anything That Isn't Nailed Down!##7151/5 |goto Malgrave 2915,4349,-811
	step
		'Press _C_ to use your communicator:
		..accept Green with Concern##7230 |goto Malgrave 2977,4543,-807
	step
		.' _Go down_ the green set of stairs |goto Malgrave 2969,4558,-811 |c |q 7230/1
	step
		.' Find Exo-Lab X1-BB |q Green with Concern##7230/1 |goto Malgrave 2961,4568,-837
	step
		'Press _C_ to use your communicator:
		..turnin Green with Concern##7230
		..accept Eldan Deconstruction##7156
	step
		.click Eldan Fuel Rod##280754
		..accept Eldan Power Source##7155 |goto Malgrave 2928,4480,-999
	step
		.' _Go through_ the doorway |goto Malgrave 2881,4482,-999  |c |q 7155/1
	step
		.click Eldan Fuel Rod Alpha##280720
		.' Activate Eldan Fuel Rod Alpha |q Eldan Power Source##7155/1 |goto Malgrave 2756,4433,-1008
	step
		.' _Go back_ to the main room |goto Malgrave 2816,4482,-1007 |c |q 7155/2
	step
		.' _Go through_ the opposite door |goto Malgrave 3039,4482,-998 |c |q 7155/2
	step
		.click Eldan Fuel Rod Beta##280735
		.' Activate Eldan Fuel Rod Beta |q Eldan Power Source##7155/2 |goto Malgrave 3162,4440,-1007
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Power Source##7155
	step
		.' All around Exo-Lab X1-BB:
		' Kill _Eldan Defense Construct_, _Executioner_, _Exterminator_, _Interrogator_
		.' Destroy Eldan constructs |q Eldan Deconstruction##7156/1 |goto Malgrave 3010,4466,-999
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Deconstruction##7156
		..accept Finishing the Job##7157
	step
		.' Go through the doorway |goto Malgrave 2959,4419,-998
		.' Destroy Facility X1-BB Administrator |q Finishing the Job##7157/1 |goto Malgrave 2960,4320,-991
	step
		'Press _C_ to use your communicator:
		..turnin Finishing the Job##7157
	step
		.' Leave Exo-Lab X1-BB |goto Malgrave 2960,4516,-993
		.' Go up the green stairs |goto Malgrave 2955,4576,-834
	step
		.' _Go around_ the Exile base |goto Malgrave 1902,4064,-945 < 10
		.talk Treasure Hunter Pallavi##279121 |goto Malgrave 1580,4188,-975
		..turnin Anything That Isn't Nailed Down!##7151
	step
		'Press _C_ to use your communicator:
		..accept War Profiteering##7418
	step
		.click Shinysand Oasis Taxi Kiosk##280563
		.' Take a taxi to Area 77 |q War Profiteering##7418/1 |goto Malgrave 1589,4145,-972
	step
		.talk Safety and Security Supervisor##265241 |goto Malgrave 1647,2882,-820
		..turnin War Profiteering##7418
		..accept On Record##7419
	step
		.talk PSPN Producer##286271
		..accept Prepping the Broadcast##7422 |goto Malgrave 1679,2897,-820
	step
		.talk Protostar Formbot##265231
		.' Talk to the Protostar Formbot |q On Record##7419/1 |goto Malgrave 1689,2905,-820
		.' Complete the Protostar Formbot's security safety quiz |q On Record##7419/2 |goto Malgrave 1689,2905,-820
	step
		.click Busted Protostar Secure-A-Lock 3000##2302559
		.' Pick up Protostar Equipment |q Prepping the Broadcast##7422/1 |goto Malgrave 1682,2896,-820
	step
		.talk Safety and Security Supervisor##265241 |goto Malgrave 1647,2882,-820
		..turnin On Record##7419
		..accept Checks and Measures##7420
	step
		.click Loftite Safety Sign##265155
		.' Fix the Loftite Safety Sign |q Checks and Measures##7420/5 |goto Malgrave 1620,2785,-820
		.click Loftite-Tipped Vertical Rocksaw##265210
		.' Fix the Loftite-Tipped Vertical Rocksaw |q Checks and Measures##7420/2 |goto Malgrave 1618,2852,-821
	step
		.click Loftite-Tipped Horizontal-Rocksaw##265199
		.' Fix the Loftite-Tipped Horizontal-Rocksaw |q Checks and Measures##7420/3 |goto Malgrave 1595,2873,-820
		.click Sprinkler System##265134
		.' Fix the Sprinkler System |q Checks and Measures##7420/4 |goto Malgrave 1585,2931,-818
	step
		.click Loftite-Tipped Rockgrinder##265221
		.' Fix the Loftite-Tipped Rockgrinder |q Checks and Measures##7420/1 |goto Malgrave 1648,2960,-814
	step
		.click Transmat Terminal##280531
		.' Set _Area 77_ Transmat Terminal as your Recall point |goto Malgrave 1647,2945,-815
		|confirm |q 7420
	step
		.talk Safety and Security Supervisor##265241 |goto Malgrave 1647,2882,-820
		..turnin Checks and Measures##7420
		..accept A Hiccup in Harvesting##7421
	step
		.talk Product Research Analyst##284340 |goto Malgrave 1639,2874,-820
		..accept A Deadly Demographic##8562
	step
		.' _Cross_ the bridge |goto Malgrave 1643,2770,-838
		.talk Product Research Assistant##284362 |goto Malgrave 1644,2630,-838
		..turnin A Deadly Demographic##8562
		..accept Captured Clones##7395
		..accept The Eyes Have It!##7396
		..accept Natural Predators##7397
	step
		' All around this area:
		.' Clear the Webbed Covering from burrows |q Natural Predators##7397/1 |goto Malgrave 1790,2666,-835
		.' Free Webbed Protostar Researchers from spider cocoons |q Captured Clones##7395/1 |goto Malgrave 1786,2656,-836
		' Kill _Skittering Flayer_, and _Spinner_'
		.' Collect Spider Eyes from Skittering spiders |q The Eyes Have It!##7396/1 |goto Malgrave 1797,2688,-837
	step
		.click Faulty Beacon Prototype##2032053
		..accept Bringing Home the Beacon##7387 |goto Malgrave 1757,2593,-834
	step
		.click Faulty Beacon Prototype##2374417
		.' Collect Faulty Beacon Prototypes |q Bringing Home the Beacon##7387/1 |goto Malgrave 1741,2657,-836
	step
		.talk Product Research Assistant##284362 |goto Malgrave 1645,2629,-838
		..turnin Captured Clones##7395
		..turnin The Eyes Have It!##7396
		..turnin Natural Predators##7397
		..turnin Bringing Home the Beacon##7387
		..accept Spider Surveillance##7386
		..accept Daddy Long Legs##7398
	step
		.click Protostar Surveillancebot##263099
		.' Repair the first Protostar Surveillancebot |q Spider Surveillance ##7386/1 |goto Malgrave 1705,2623,-833
	step
		.click Protostar Surveillancebot##263091
		.' Repair the second Protostar Surveillancebot |q Spider Surveillance ##7386/2 |goto Malgrave 1861,2591,-818
	step
		.click Protostar Surveillancebot##263075
		.' Repair the third Protostar Surveillancebot |q Spider Surveillance ##7386/3 |goto Malgrave 1959,2684,-826
	step
		.click Protostar Surveillancebot##263084
		.' Repair the fourth Protostar Surveillancebot |q Spider Surveillance ##7386/4 |goto Malgrave 1909,2807,-835
	step
		'Press _C_ to use your communicator:
		..accept The Late Delivery##7399 |goto Malgrave 2050,2774,-826
	step
		.' Kill Dreadfang |q Daddy Long Legs##7398/1 |goto Malgrave 2040,2602,-815
	step
		'Press _C_ to use your communicator:
		..turnin Daddy Long Legs##7398
	step
		.talk Product Research Assistant##284362 |goto Malgrave 1646,2630,-838
		..turnin Spider Surveillance##7386
	step
		.talk PSPN Associate Producer##286266 |goto Malgrave 1407,2443,-831
		..turnin Prepping the Broadcast##7422
	step
		.' _Go up_ the dirt path |goto Malgrave 1460,2894,-904 |c |q 7421
	step
		.talk Shardspire Foreman##265495 |goto Malgrave 1433,2955,-890
		..turnin A Hiccup in Harvesting##7421
		..accept Labor Issues##7423
	step
		.talk Personal Assist-O-Bot##265081
		..accept Up the Creek, Ready for Battle##7424 |goto Malgrave 1434,2958,-890
	step
		.click Laser Pickaxe##264684 |goto Malgrave 1455,2896,-903
		..accept Highbed Samples##7425
	step
		.' All around this area:
		.' Kill Creekwater Primordials |q Up the Creek, Ready for Battle##7424/1 |goto Malgrave 1429,2822,-902
		.' Kill Moisture Sappers and Dew Grabbers |q Up the Creek, Ready for Battle##7424/2 |goto Malgrave 1460,2864,-904
		.' Teleport malfunctioning Protostar Minebots |q Labor Issues##7423/1 |goto Malgrave 1454,2884,-903
		.' Mine and collect Highbed Mineral Samples |q Highbed Samples##7425/1 |goto Malgrave 1355,2855,-906
	step
		'Press _C_ to use your communicator:
		..turnin Up the Creek, Ready for Battle##7424
		..turnin Highbed Samples##7425
	step
		.talk Shardspire Foreman##265117 |goto Malgrave 1463,2975,-883
		..turnin Labor Issues##7423
		..accept Rescuing the Chief Mineralogist##7426
	step
		.' Use the _Maintenance Lift_ |q Rescuing the Chief Mineralogist##7426/1 |goto Malgrave 1450,3002,-882
	step
		.' Speak to the Shardspire Security Officer |q Rescuing the Chief Mineralogist##7426/2 |goto Malgrave 1484,3033,-965
	step
		.' Save the Chief Mineralogist from attackers |q Rescuing the Chief Mineralogist##7426/3 |goto Malgrave 1514,3050,-965
	step
		.' Cover the Chief Mineralogist's escape |q Rescuing the Chief Mineralogist##7426/4 |goto Malgrave 1463,3048,-965
	step
		.talk Chief Mineralogist##265456 |goto Malgrave 1366,3086,-967
		..turnin Rescuing the Chief Mineralogist##7426
		..accept An Explosive Situation##7427
	step
		.talk Shardspire Security Officer##264660 |goto Malgrave 1367,3092,-967
		..accept Eco-Terrorism##7428
		..accept Small Parts Hazard##7430
	step
		' Around this area:
		' Kill _Sandthorne Leafblade_ and _Reaper_
		.' Kill Sandthorne eco-terrorists |q Eco-Terrorism##7428/1 |goto Malgrave 1195,3154,-964
		.' Collect Malverine Fangs from Sandthorne Malverines |q Small Parts Hazard##7430/1 |goto Malgrave 1223,3136,-964
		.' Disarm the Timed Explosives |q An Explosive Situation##7427/1 |goto Malgrave 1198,3152,-963
	step
		'Press _C_ to use your communicator:
		..turnin An Explosive Situation##7427
		..turnin Eco-Terrorism##7428
		..turnin Small Parts Hazard##7430
		..accept Seismic Disruption##7431
	step
		.talk Shardspire Security Officer##264658 |goto Malgrave 1368,3092,-967
		..accept Workers' Compensation##7433
	step
		.' Around this area: |tip More of them can be found to the south.
		.' Collect Sandshifter Staves from Sandthorne Sandshifters |q Seismic Disruption##7431/1 |goto Malgrave 1410,3109,-967
		.' Kill Oilsand Gronyx |q Seismic Disruption##7431/2 |goto Malgrave 1416,3109,-967
		.' Heal Wounded Shardspire Workers |q Workers' Compensation##7433/1 |goto Malgrave 1436,3097,-967
	step
		'Press _C_ to use your communicator:
		..turnin Seismic Disruption##7431
		..turnin Workers' Compensation##7433
		..accept Upstairs Management##7432
	step
		.' _Take the ramps_ up |goto Malgrave 1434,3096,-967 < 10 |c |q 7432/1
	step
		.' _Jump into_ one of the floating blue crystals in this area
		'Press _C_ to use your communicator:
		..accept A Purer Form##7434 |goto Malgrave 1533,3236,-946
	step
		.' _Jump_ into a _blue loftite crystal_ to gain the _Loftite Aura_ jumping buff |tip Jump buff do not appy on mount.
		.' _Jump up_ onto the first platform |goto Malgrave 1529,3240,-922 |c |q 7432/1
	step
		.' _Jump_ to the second platform |goto Malgrave 1534,3242,-899 |c |q 7432/1
	step
		.' _Continue up_ to the third platform |goto Malgrave 1538,3214,-882 |c |q 7432/1
	step
		.' _Double-jump straight up_ to get to the fourth platform |goto Malgrave 1549,3210,-854 |c |q 7432/1
	step
		.' _Jump up_ to the last platform |goto Malgrave 1559,3190,-835 |c |q 7432/1
	step
		.' Use loftite crystals to reach the floating rock plateau |q Upstairs Management##7432/1 |goto Malgrave 1582,3144,-822
	step
		.' Kill Lady Briarthorn |q Upstairs Management##7432/2 |goto Malgrave 1606,3126,-819
	step
		.' Collect Pure Loftite Crystals by jumpuing into them |q A Purer Form##7434/1 |goto Malgrave 1557,3180,-833
	step
		'Press _C_ to use your communicator:
		..turnin A Purer Form##7434
	step
		.' Jump into one of the floating blue loftite crystals to get the _Loftite Aura_ buff and then jump off this high platform
		|confirm |q 7432
	step
		.talk Chief Mineralogist##265460
		..turnin Upstairs Management##7432 |goto Malgrave 1365,3088,-967
	step
		.' _Take the elevator_ back up |goto Malgrave 1461,3015,-956 |c |q 7399/1
	step
		.' _Follow the path_ up to Area 77 |goto Malgrave 1543,2864,-847 < 10 |c |q 7399/1
	step
		.' _Follow this road_ east all the way to the Caravan |goto Malgrave 1719,2814,-824 < 10 |c |q 7399/1
	step
		.' Find the missing Lopp caravan |q The Late Delivery##7399/1 |goto Malgrave 2458,2980,-856
	step
		.talk Marshal Yatish##286242 |goto Malgrave 2468,2982,-857
		..turnin The Late Delivery##7399
		..accept Cause and Effect##7400
		..accept Leaving Our Mark##7403
	step
		.talk Deputy Whirlscrew##286241 |goto Malgrave 2462,2984,-856
		..accept You've Been Served!##7402
	step
		.click Falkrin War Banner##285806
		.' Burn Falkrin War Banners |q Leaving Our Mark##7403/1 |goto Malgrave 2513,3016,-846
		Click _Scourwind Herald_, _Mudrunner_, or _Shambler_, then
		.' Press _T_ to serve subpoenas to Falkrin and Murgh |q You've Been Served!##7402/1 |goto Malgrave 2519,3072,-825
		.' Kill Scourwind Falkrin and Murgh |q Cause and Effect##7400/1 |goto Malgrave 2516,3068,-825
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
		.' Plant and defend the Lopp Banner |q Yatish's Ultimatum##7404/1 |goto Malgrave 2203,3069,-781
		.' Find Marshal Yatish |q Yatish's Ultimatum##7404/2 |goto Malgrave 2292,3059,-804
	step
		.talk Marshal Yatish##286239 |goto Malgrave 2292,3059,-804
		..turnin Yatish's Ultimatum##7404
		..accept Fancy Meeting You Here##7409
		..accept Over Easy##7405
		..accept Burn the Brides##7411
	step
		'Press _C_ to use your communicator:
		..accept Evidence Gathering Techniques##7407
	step
		.click Potentially Valuable Evidence##385647 |tip These appear as orange cogs on your minimap.
		.' Collect Potentially Valuable Evidence |q Evidence Gathering Techniques##7407/1 |goto Malgrave 2276,3086,-797
	step
		'Press _C_ to use your communicator:
		..turnin Evidence Gathering Techniques##7407
	step8
		' Kill _Scourwind Challenger_, and _Stormspeaker_
		.' Kill Scourwind Falkrin |q Perps Everywhere!##7406/1 |goto Malgrave 2143,3120,-766
		' Click _Falkrin Eggs_, then
		.' Press _T_ to roast Falkrin Eggs with the Lopp Egg Cooker |q Over Easy##7405/1 |goto Malgrave 2143,3241,-762
	step
		'Press _C_ to use your communicator:
		..turnin Perps Everywhere!##7406
		..turnin Over Easy##7405
	step
		.talk Whirlygig##284341 |goto Malgrave 2071,3161,-743
		..turnin Fancy Meeting You Here##7409
		..accept A Windy Ascent##7408
		..accept Windy Things##7652
	step
		.click Scourwind Feather Banner##284615 |goto Malgrave 2086,3232,-760
		..accept Casual Desecration##7410
	step
		.' Click and replace Scourwind Banners as you follow this path |goto Malgrave 2104,3256,-763
		.' _Continue following the path_ around to get to the very top of Scourwind Peak
		.' Ride Dust Devil tornadoes as you go |q Windy Things##7652/2 |goto Malgrave 1812,3381,-775
	step
		.' Found all around Scourwind Peak:
		.' Destroy Crackling Stormgusts |q Windy Things##7652/1 |goto Malgrave 1927,3058,-697
		.' Press _T_ to burn the bodies of Scourwind Priestesses |q Burn the Brides##7411/1 |goto Malgrave 1928,3060,-697
		.' Replace Scourwind Banners |q Casual Desecration##7410/1 |goto Malgrave 2010,3202,-676
	step
		'Press _C_ to use your communicator:
		..turnin Burn the Brides##7411
		..turnin Windy Things##7652
		..turnin Casual Desecration##7410
		..accept The Sound of Judgment##7412
	step
		.click Challenge Horn##284607 |goto Malgrave 2045,3275,-676
		.' Blow the Challenge Horn |q The Sound of Judgment##7412/1
		.' Kill Broodlord Morkhel |q The Sound of Judgment##7412/2
	step
		'Press _C_ to use your communicator:
		..turnin The Sound of Judgment##7412
		..accept A Strange Old Pell##8548
	step
		.' _Follow this path_ to the top of Scourwind Peak |goto Malgrave 1942,3219,-670 < 10 |c |q 7408/1
	step
		.' _Continue up_ this dirt path |goto Malgrave 1790,3260,-604 < 10 |c |q 7408/1
	step
		.' Reach the summit of Scourwind Peak |q A Windy Ascent##7408/1 |goto Malgrave 1837,3154,-384
	step
		'Press _C_ to use your communicator:
		..turnin A Windy Ascent##7408
		..accept The Windscourge##7413
	step
		.kill 1 Windscourge##2616501
		.' Destroy the Windscourge |q The Windscourge##7413/2 |goto Malgrave 1864,3169,-390
	step
		.talk Whirlygig##2669443 |goto Malgrave 1823,3180,-386
		..turnin The Windscourge##7413
		..accept What Goes Up...##7414
	step
		.' Leap from the top of Scourwind Peak |tip You won't die. |q What Goes Up...##7414/1 |goto Malgrave 1797,3165,-383
	step
		.talk Whirlygig##284350 |goto Malgrave 1662,2916,-819
		..turnin What Goes Up...##7414
	step
		.click Area 77 Taxi Kiosk##280558 |goto Malgrave 1684,2835,-820 < 10
		.' _Travel_ to the Shinysands Oasis |goto Malgrave 1592,4149,-972 < 20
		.' _Follow this road_ northeast |goto Malgrave 1786,4037,-955 < 10
		.click Flamedancer Scroll##290631 |goto Malgrave 2556,3928,-870
		..accept Scrolls of Flamedancer Lore##7380
	step
		.kill Flamedancer Zealot##14063652+
		.kill Flamedancer Guardian##13957478+
		.kill Flamedancer War-Blazer##14034463+
		.' Collect Flamedancer Scrolls from Flamedancer Pell |q Scrolls of Flamedancer Lore##7380/1 |goto Malgrave 2644,3903,-868
	step
		'Press _C_ to use your communicator:
		..turnin Scrolls of Flamedancer Lore##7380
	step
		.click Broken Protostar Cart##263529 |goto Malgrave 2736,3461,-853
		..accept Patch Job##7393
	step
		.talk Adomo##263683 |goto Malgrave 2726,3390,-850
		..accept Down with the Sweetness##7391
		..accept Stinging Reminder##7392
	step
		.click Glob of Honey##13228843
		.' Collect Buzzbing Honey from Globs of Honey |q Down with the Sweetness##7391/1 |goto Malgrave 2731,3431,-851
		.click Mechanical Debris##13581495
		.' Collect Spare Parts from Mechanical Debris |q Patch Job##7393/1 |goto Malgrave 2667,3409,-855
	step
		.kill Sandswarm Doomsting##13927872+
		.kill Sandswarm Impaler##14367400+
		.kill Sandswarm Stalker##14230173+
		.' Kill Sandswarm buzzbings |q Stinging Reminder##7392/1 |goto Malgrave 2683,3500,-861
	step
		.click Broken Protostar Cart##263529 |goto Malgrave 2735,3458,-854
		..turnin Patch Job##7393
	step
		.talk Adomo##263683 |goto Malgrave 2726,3390,-849
		..turnin Down with the Sweetness##7391
		..turnin Stinging Reminder##7392
	step
		.talk Flame-Watcher##290635 |goto Malgrave 3057,3382,-828
		..turnin A Strange Old Pell##8548
		..accept Illumination and Epiphany##8567
	step
		.click Sacred Fire##290659
		.' Stare into the Sacred Fires |q Illumination and Epiphany##8567/1 |count 25 |goto Malgrave 2953,3502,-851
		.click Sacred Fire##290660
		.' Stare into the Sacred Fires |q Illumination and Epiphany##8567/1 |count 50 |goto Malgrave 2865,3495,-849
	step
		.click Sacred Fire##290665
		.' Stare into the Sacred Fires |q Illumination and Epiphany##8567/1 |count 75 |goto Malgrave 2842,3559,-851
		.click Sacred Fire##290664
		.' Stare into the Sacred Fires |q Illumination and Epiphany##8567/1 |goto Malgrave 2895,3627,-852
	step
		'Press _C_ to use your communicator:
		..turnin Illumination and Epiphany##8567
		..accept Heresy Cubed##8568
	step
		' Click _Deactivated Probe_ and fight waves of mobs  |goto Malgrave 2985,3682,-843
		.' Investigate the head-shaped idol |q Heresy Cubed##8568/1
		.' Survive the attacking Probes! |q Heresy Cubed##8568/2
	step
		'Press _C_ to use your communicator:
		..turnin Heresy Cubed##8568
		..accept Divine Retribution##8569
	step
		.kill 1 Flamedancer War-Blazer##7762049 |goto Malgrave 2953,3670,-847
		'Press _C_ to use your communicator:
		..accept Combing the Archives##8549
	step
		'Press _C_ to use your communicator:
		..accept Prisoners of the Cube##7382 |goto Malgrave 2833,3815,-870
	step
		.click Flamedancer Terminal##290656
		.' Access the first Flamedancer Terminal |q Combing the Archives##8549/1 |goto Malgrave 2662,3797,-870
	step
		.click Flamedancer Cage##263279
		.' Free prisoners from Flamedancer Cages |q Prisoners of the Cube##7382/1 |goto Malgrave 2683,3824,-870
	step
		'Press _C_ to use your communicator:
		..turnin Prisoners of the Cube##7382
	step
		.click Flamedancer Terminal##290653
		.' Access the second Flamedancer Terminal |q Combing the Archives##8549/2 |goto Malgrave 2597,3904,-874
	step
		.click Flamedancer Terminal##290652
		.' Access the third Flamedancer Terminal |q Combing the Archives##8549/3 |goto Malgrave 2681,3998,-873
	step
		.click Flamedancer Terminal##290650
		.' Access the fourth Flamedancer Terminal |q Combing the Archives##8549/4 |goto Malgrave 2784,3902,-868
	step
		.click Flamedancer Mainframe##290649
		.' Hack the Flamedancer Mainframe |q Combing the Archives##8549/5 |goto Malgrave 2677,3873,-869
	step
		'Press _C_ to use your communicator:
		..turnin Combing the Archives##8549
		..accept Augmetic Evidence##8550
	step
		' Kill _Flamedancer Acolyte_, _Guardian_, _War-Blazer_, and _Zealot_
		.' Kill Flamedancer Pell |q Divine Retribution##8569/1 |goto Malgrave 2650,3876,-869
	step
		'Press _C_ to use your communicator:
		..turnin Divine Retribution##8569
		..accept Crushing the Pyre-Callers##8570
	step
		.kill Augmented Stonebound##14133929+
		.kill Augmented Sandwisp Crawler##14276430+
		.kill Enraged Augmented Bucktooth##14592935+
		.kill Augmented Sandswarm Stalker##13533131+
		.' Collect Augmetic Components from Augmented creatures |q Augmetic Evidence##8550/1 |goto Malgrave 2546,3723,-883
	step
		'Press _C_ to use your communicator:
		..turnin Augmetic Evidence##8550
	step
		.' _Cross_ the bridge |goto Malgrave 2530,3789,-874 < 10
		.kill Devout Flamedancer Pyre-Caller##14222997+
		.' Kill Flamedancer Pyre-Callers |q Crushing the Pyre-Callers##8570/1 |goto Malgrave 2420,3652,-863
	step
		'Press _C_ to use your communicator:
		..turnin Crushing the Pyre-Callers##8570
		..accept A Great Discovery##8551
	step
		.click Unstable Ground##290638
		.' Locate the Elder Cube's hiding place |q A Great Discovery##8551/1 |goto Malgrave 2233,3764,-868
	step
		'Press _C_ to use your communicator:
		..turnin A Great Discovery##8551
		..accept No Time to Lose##7377
	step
		.talk Augmented Human##262172 |goto Malgrave 117,191,-10
		..accept Defenders of the Cube##7384
	step
		.' Locate Artemis Zin |q No Time to Lose##7377/1 |goto Malgrave 69,123,-10
	step
		.' _Go through_ the doorway |goto Malgrave 16,58,1 < 10 |c |q 7377/2
	step
		.' Catch up to Artemis Zin |q No Time to Lose##7377/2 |goto Malgrave 17,-9,-1
	step
		.' Defeat Kevo |q No Time to Lose##7377/3 |goto Malgrave 17,-7,-1
		.' Learn the fate of the Elder Cube |q No Time to Lose##7377/4 |goto Malgrave 16,-4,-1
	step
		'Press _C_ to use your communicator:
		..turnin No Time to Lose##7377
		..accept The Elder Cube##7379
	step
		.kill Elder Cube Guardian##262167+
		.kill Elder Neutralization Module##262157+
		.kill Elder Cube Protector##262163+
		.' Destroy Eldan constructs |q Defenders of the Cube##7384/1 |goto Malgrave 16,124,-1
	step
		'Press _C_ to use your communicator:
		..turnin Defenders of the Cube##7384
	step
		.' _Recall-Transmat_ to Area 77 |goto Malgrave 1648,2943,-815 < 20 |c |noway |q 7379
	step
		.talk Artemis Zin##290620
		..turnin The Elder Cube##7379 |goto Malgrave 1658,2863,-820
	]]
)