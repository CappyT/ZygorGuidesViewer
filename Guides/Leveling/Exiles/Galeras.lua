if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Galeras (15-23)",
	{
	faction="Exiles",
	startlevel=15,
	endlevel=23,
	image="ZygorUIGuides:Galeras", 
	nextguide="Exiles\\Whitevale (23-29)",
	description="Galeras is a zone in northeastern Alizar in WildStar. It is a massive wind-swept prairie, and is home to The Exiles' capital, Thayd. Galeras is also a region suited for levels 14-25.",
	},
	[[
	step
		.talk Sergeant Renzig##274948 |goto Thayd 4108,-2340,-804
		..turnin Galeras Deployment##4964
		..accept Unlikely Heroes##4944
	step
		.talk Potential Recruit##6016764
		.' Speak with Potential Recruits |q Unlikely Heroes##4944/1 |count 1 |goto Thayd 4254,-2284,-804
	step
		.talk Potential Recruit##6148359
		.' Speak with Potential Recruits |q Unlikely Heroes##4944/1 |count 2 |goto Thayd 4213,-2271,-807
	step
		.talk Potential Recruit##5703824
		.' Speak with Potential Recruits |q Unlikely Heroes##4944/1 |count 3 |goto Thayd 4193,-2229,-811
	step
		.' _Leave_ Thayd |goto Thayd 4276,-2175,-811 <10
		'Press _C_ to open your Communicator:
		..accept Out on a Whim##5183 |goto Galeras 4296,-2170,-813 <5
	step
		.talk Sergeant Renzig##6396735
		.' Report to Sergeant Renzig |q Unlikely Heroes##4944/3 |goto Galeras 4302,-2164,-814
	step
		.'Click _Potential Recruit_, press _T_ to:
		.' Use the Roll Call Sheet to muster recruits |q Unlikely Heroes##4944/4 |tip You'll have to select each Recruit individually. |goto Thayd 4297,-2161,-812
	step
		.talk Sergeant Renzig##6396735
		.' Speak to Sergeant Renzig |q Unlikely Heroes##4944/5 |goto Galeras 4302,-2164,-814
	step
		.talk Communication Tower##270538
		.' Signal Kriton's Command Post |q Unlikely Heroes##4944/6 |goto Galeras 4347,-2147,-822
	step
		'Press _C_ to use your communicator:
		..turnin Unlikely Heroes##4944
		..accept Crash Site Caos##4947
	step
		'Press _C_ to use your communicator:
		..accept Sim Core: A Remarkable Discovery##8834 |goto 4423,-2105,-833
	step
		.talk Junior Scientist Barkberry##286376
		.' Speak with Junior Scientist Barkberry |q Sim Core: A Remarkable Discovery##8834/1 |goto 4407,-2098,-838
	step
		.' _Step into_ the teleporter. |goto Galeras 4397,-2096,-835 < 5
		.talk Technician Kagger##286385
		.' Speak with Technician Kagger |q Sim Core: A Remarkable Discovery##8834/2 |goto Thayd 4390,-2105,-955
	step
		.click Sim Core Processor##286384
		.' Activate the Sim Core Processors |count 33 |q Sim Core: A Remarkable Discovery##8834/3 |goto 4390,-2104,-955
	step
		.click Sim Core Processor##286384
		.' Activate the Sim Core Processors |count 66 |q Sim Core: A Remarkable Discovery##8834/3 |goto 4377,-2123,-955
	step
		.click Sim Core Processor##286384
		.' Activate the Sim Core Processors |count 100 |q Sim Core: A Remarkable Discovery##8834/3 |goto 4418,-2124,-955
	step
		.click Transimulator Interface##263065
		.' Activate the Transimulator Interface |q Sim Core: A Remarkable Discovery##8834/4 |goto 4402,-2117,-955
		.' Destroy the Dominion Holograms |q Sim Core: A Remarkable Discovery##8834/5
	step
		.talk The Caretaker##263059
		..turnin Sim Core: A Remarkable Discovery##8834 |goto 4399,-2119,-954
	step
		'Use the green portal and _teleport out_ |goto Thayd 4398,-2095,-953
		.' Jump through flying Whimfibers |tip They look like gold orbs floating through the air around this area.  |q Out on a Whim##5183/1 |goto 4391,-2152,-830
		.' There are more at |goto 4522,-2123,-866 <10
	step
		'Press _C_ to use your communicator:.
		..turnin Out on a Whim##5183
	step
		'Press _C_ to use your communicator:
		..accept A Sticky Situation##5101 |goto Galeras 4522,-2123,-866 <10
	step
		.click Sticky Honey##5246304
		.' Follow the tank, killing the enemies and clicking the honey to remove it.
		.' Clear the Sticky Honey |q A Sticky Situation##5101/2 |goto Galeras 4588,-2100,-881
		.' Escort the Exile Tank |q A Sticky Situation##5101/3 |goto 4588,-2114,-880
	step
		'Press _C_ to use your communicator:
		..turnin A Sticky Situation##5101
	step
		.click Broken Dominion Spiderbot##274788
		..accept Dominion Crash Data##5182 |goto 4490,-2232,-851
	step
		.click Wounded Trooper##5806066
		.' Heal Wounded Troopers |q Crash Site Chaos##4947/2 |goto Galeras 4501,-2237,-854
	step
		.kill Crimson Clanker##5996229
		.kill Crimson Spiderbot##5751151
		.' Kill Crimson bots |q Crash Site Chaos##4947/1 |goto 4483,-2263,-849
		.' Collect Dominion Data Caches |q Dominion Crash Data##5182/1 |goto 4483,-2263,-849
	step
		'Press _C_ to use your communicator:.
		..turnin Dominion Crash Data##5182
	step
		.talk Daniel Bronson##274796 |goto 4464,-2320,-832
		..turnin Crash Site Chaos##4947
		..accept Battlefield Promotion##4967
	step
		.talk Corporal Brooks##269010
		.' Report to Corporal Brooks |q Battlefield Promotion##4967/1 |goto Galeras 4594,-2345,-848
	step
		.talk Commander Kriton##269030
		..turnin Battlefield Promotion##4967 |goto 4599,-2343,-847
		..accept Last-Second Support##4759 |goto 4599,-2343,-847
	step
		.talk Kit Brinny##270487
		..accept Defend the Gate##4954 |goto 4628,-2367,-848
	step
		.' Repel Crimson Legion soldiers |q Defend the Gate##4954/1 |goto 4656,-2379,-855
	step
		.talk Kit Brinny##270487
		..turnin Defend the Gate##4954 |goto Galeras 4628,-2367,-848
	step
		.talk Leara Seaspray##269034
		..accept The Medical Station##4760 |goto 4552,-2431,-832
	step
		.' In this medical camp:
		.' Use Medspray on Wounded Patients and Shock Paddles on Critical Patients.
		.' Treat patients at the Medical Station |q The Medical Station##4760/1 |goto 4549,-2419,-832
	step
		.talk Leara Seaspray##269034
		..turnin The Medical Station##4760 |goto 4553,-2431,-832
	step
		.talk Matthias Black##269006
		..accept Power Restoration##4955 |goto 4542,-2439,-828
	step
		.' Click and activate the 3 Generator Consoles.
		.' Activate the primary Generator Controls |q Power Restoration##4955/1 |goto 4533,-2431,-828
	step
		.' Activate the secondary Generator Controls |q Power Restoration##4955/2 |goto 4525,-2439,-828
	step
		.' Activate the tertiary Generator Controls |q Power Restoration##4955/3 |goto 4534,-2448,-828
	step
		.talk Matthias Black##269006
		..turnin Power Restoration##4955 |goto 4543,-2442,-828
	step
		' _Go up_ the ramp here. |goto 4599,-2408,-835 < 10  //sramp to ramp
		.talk Daniel Bronson##270554
		..accept Anti-Air Support##4761 |goto 4584,-2465,-795
	step
		.click Automated Targeting Console##270547
		.' Activate the Automated Targeting Console |q Anti-Air Support##4761/1 |goto 4587,-2466,-795
	step
		.talk Daniel Bronson##270554
		..turnin Anti-Air Support##4761 |goto 4586,-2465,-795
	step
		.talk Commander Kriton##269030
		..turnin Last-Second Support##4759 |goto Galeras 4598,-2343,-847
		..accept Helping Hand##4765 |goto 4598,-2343,-847
		..accept Capturing Intel##4925 |goto 4598,-2343,-847
	step
		.talk Kit Brinny##270487
		..accept Breathing Room##5306 |goto 4629,-2367,-848
	step
		.' All around this battlefield area:
		.click Wounded Exile Soldier##6509668
		.' Provide first aid to Wounded Exile Soldiers |q Helping Hand##4765/1 |goto Galeras 4676,-2505,-848
		.' Kill Crimson Legion troops |q Breathing Room##5306/1 |goto 4676,-2505,-848
	step
		'Press _C_ to use your communicator:.
		..turnin Helping Hand##4765
		..accept Thorn in Our Side##4945
		..turnin Breathing Room##5306
	step
		.kill 1 Crimson Airman##6731623
		.' Capture the Crimson Airman |q Capturing Intel##4925/1 |goto 4765,-2247,-878
	step
		.talk Exile Field Agent##270276
		.' Meet with the Exile Field Agent |q Thorn in Our Side##4945/1 |goto Galeras 4908,-2342,-898
	step
		.' Follow the Exile Field Agent to this spot. |q Thorn in Our Side##4945/2 |goto Galeras 4825,-2622,-853
	step
		'Press _C_ to use your communicator:.
		..turnin Thorn in Our Side##4945
		..accept Change of Plans##4950
	step
		.kill Crimson Claymore##6702212+, Crimson Legionnaire##6486787+, Crimson Sentinel##6446612+
		.' Retrieve the Deactivation Sequence Card |q Change of Plans##4950/1 |goto Galeras 4789,-2603,-842
		.' Kill Crimson reserves |q Change of Plans##4950/3 |goto Galeras 4789,-2603,-842
	step
		.click Crimson Mobile AA Cannon##270293
		.' Disable the Crimson Mobile AA Cannon |q Change of Plans##4950/2 |goto 4782,-2573,-841
	step
		.click Crate of Antitank Mines##269366
		..accept This Little Land of Mines##4762 |goto 4806,-2631,-844
	step
		.click Antitank Mine##269394
		.' Plant Antitank Mines |q This Little Land of Mines##4762/1 |goto 4723,-2658,-842
		.' Take cover on the nearby Cliffs |q This Little Land of Mines##4762/2 |goto Galeras 4651,-2664,-802
		.' Wait for a Crimson Siege Tank to arrive |q This Little Land of Mines##4762/3 |goto 4650,-2665,-802
	step
		'Press _C_ to use your communicator:.
		..turnin This Little Land of Mines##4762
	step
		.click Severed Cable##269017
		..accept Keeping the Lights On##4814 |goto 4658,-2732,-784
	step
		.kill Dominion Operative##6449546
		.kill Dominion Saboteur##6196024
		.' Kill Dominion Saboteurs |q Keeping the Lights On##4814/1 |goto Galeras 4713,-2822,-758
	step
		'Press _C_ to use your communicator:.
		..turnin Keeping the Lights On##4814
	step
		.talk Commander Kriton##269030
		..turnin Capturing Intel##4925 |goto Galeras 4600,-2343,-847
		..turnin Change of Plans##4950 |goto 4600,-2343,-847
		..accept Show and Tell##4766 |goto 4600,-2343,-847
	step
		.talk Mesmer Radu##6452460
		.' Speak with Mesmer Radu |q Show and Tell##4766/1 |goto Galeras 4553,-2264,-858
	step
		.click Captured Crimson Airman##6757966
		.' Use the new skills on your second skill bar to use Radu's illusions on the Captured Crimson Airman |q Show and Tell##4766/2 |goto 4555,-2255,-858
	step
		.click Honeysting Hivebomber##6184569
		.' Press _T_ use the Buzzbing Capture Device on a Honeysting buzzbing |q Show and Tell##4766/3 |goto Galeras 4573,-2184,-866
	step
		.' Return to Mesmer Radu |q Show and Tell##4766/4 |goto Galeras 4555,-2257,-858
	step
		.talk Commander Kriton##269030
		.' Listen to Mesmer Radu |q Show and Tell##4766/5
		..turnin Show and Tell##4766 |goto Galeras 4600,-2339,-847
		..accept Pack Your Bags##4767 |goto 4600,-2339,-847
	step
		.click Exile Stinger##6652980
		.' Get in the Stinger |q Pack Your Bags##4767/1 |goto 4616,-2296,-847
	step
		.talk Mayor Crofton##269057
		..turnin Pack Your Bags##4767 |goto Galeras 5182,-2305,-888
		..accept Evacuate Tempest Refuge##5207 |goto 5182,-2305,-888
	step
		.talk Widow Starwick##269305
		..accept In Memoriam##4980 |goto 5318,-2358,-869
	step
		.' Follow the _stairs up_ |goto 5320,-2414,-864 <10
		.click Starstem Plant##6756040
		.' Collect Starstem Flowers |q In Memoriam##4980/1 |goto Galeras 5216,-2498,-794
		.' Go back down the stairs. |goto 5245,-2522,-803 <10
	step
		.talk Widow Starwick##269305
		..turnin In Memoriam##4980 |goto Galeras 5319,-2360,-869
	step
		.click Tempest Refuge Citizen##6894996
		.' Press _T_ to shout at Tempest Refuge Citizens  |q Evacuate Tempest Refuge##5207/1 |goto Galeras 5112,-2357,-902
	step
		'Press _C_ to use your communicator:.
		..turnin Evacuate Tempest Refuge##5207
		..accept Beyond the Barricades##5124
	step
		.click Transmat Terminal##270842
		.' Click _Yes_ to set your Recall to Tempest Refuge. |goto 5092,-2309,-902
		|confirm
	step
		.' _Leave_ Tempest Refuge through the gate. |goto 5121,-2282,-904 < 10
		.talk Scout Cooper##269922
		.' Speak to Scout Cooper |q Beyond the Barricades##5124/1 |goto Galeras 5078,-2281,-904
	step
		.kill Groundswell Demolitionist##5682557
		.kill Groundswell Surgeshot##6488150
		.' Kill Groundswell Chua near the North Barricade |q Beyond the Barricades##5124/2 |goto 5029,-2329,-906
	step
		'Press _C_ to use your communicator:.
		..turnin Beyond the Barricades##5124
		..accept Defense Breach##4753
	step
		.' _Jump over_ the barricades here. |goto 5039,-2346,-903 <10
		.kill Groundswell Sapper##6379066
		.kill Groundswell Operative##6539655
		.' Kill Groundswell Operatives, Medics, and Sappers |q Defense Breach##4753/1 |goto Galeras 5063,-2375,-906
		.click Chua Tunnel Entrance##270209
		.' Destroy Chua Tunnel Entrances |q Defense Breach##4753/2 |goto 5050,-2375,-904
	step
		.talk Mayor Crofton##269055
		..turnin Defense Breach##4753 |goto 5181,-2303,-888
		..accept Calling the Arkship##4926 |goto 5181,-2303,-888
	step
		.talk Provisioner Clayfield##269050
		..accept Trouble at Nibben's Ranch##4744 |goto Galeras 5192,-2324,-886
	step
		.talk Technician Nanci##6920799
		.' Speak with Technician Nanci |q Calling the Arkship##4926/1 |goto Galeras 5244,-2348,-883
	step
		.click Target Dummy##269493
		..accept Target This##4758 |goto Galeras 5286,-2351,-868
	step
		.' _Go up_ the stairs |goto 5320,-2414,-864 < 10
		.' As you walk up and across the wooden stairs:
		.click Target Dummy##269413
		.' Plant Target Dummies |q Target This##4758/1 |goto 5242,-2519,-803
	step
		.' Follow the _stairs up_ |goto 5261,-2504,-803
		'Press _C_ to use your communicator:.
		..turnin Target This##4758
	step
		.click Radio Transmitter##269962
		.' Use the Town's Backup Transmitter |q Calling the Arkship##4926/2 |goto 5237,-2409,-772
	step
		.click Secret Door##266762 |goto Galeras 5249,-2408,-771 < 1
		.' Use the Secret door to travel back down |goto 5294,-2418,-862 < 10 |noway
		.talk Sergeant Kara##269956
		..turnin Calling the Arkship##4926 |goto Galeras 5191,-2319,-886
		..accept Aggressive Reconnaissance##4755 |goto 5191,-2319,-886
	step
		.talk Firefighter Wardell##269036
		..accept Fire Brigade##4757 |goto Galeras 5170,-2326,-888
	step
		.' Press _T_ to extinguish fires on citizens and buildings |q Fire Brigade##4757/1 |goto Galeras 5110,-2368,-902
	step
		.talk Firefighter Wardell##269036
		..turnin Fire Brigade##4757 |goto 5167,-2328,-888
	step
		.click Groundswell Project Log##270125 |tip You can find more sitting on equipment around this area.
		.' Download data from Groundswell Project Logs |q Aggressive Reconnaissance##4755/2 |goto Galeras 5096,-2589,-895
		.click Groundswell Data Terminal##270131
		.' Access the Groundswell Data Terminal |q Aggressive Reconnaissance##4755/1 |goto 5125,-2620,-893
		.click Holoprojector##270103
		.' View the holo conversation |q Aggressive Reconnaissance##4755/3 |goto 5117,-2597,-895
	step
		'Press _C_ to use your communicator:.
		..turnin Aggressive Reconnaissance##4755
		..accept Sabotage##4756
	step
		.kill Groundswell Watchguard##6471043
		.kill Dominion Turret##6872041
		.kill Groundswell Sapper##7067023
		.' Kill Groundswell troops |q Sabotage##4756/2 |goto 5074,-2609,-897
		.click Groundswell Drillbomb##7015574
		.' Sabotage Groundswell Drillbombs |q Sabotage##4756/1 |goto 5089,-2629,-895
	step
		'Press _C_ to use your communicator:.
		..turnin Sabotage##4756
		..accept Double Trouble##4961
	step
		.click Drill Configuration Panel##269888
		.' Sabotage the Groundswell Extreme Driller |q Double Trouble##4961/1 |goto 5100,-2637,-894
		.kill 1 Inventor Mogi##6962290
		.kill 1 Inventor Migo##7219406
		.' Kill Inventor Mogi and Inventor Migo |q Double Trouble##4961/2 |goto 5090,-2626,-894
	step
		'Press _C_ to use your communicator:.
		..turnin Double Trouble##4961
		..accept Onward!##5259
	step
		'Press _C_ to use your communicator:.
		..accept Check on Windward Notch##5136 |goto Galeras 5199,-2698,-934
	step
		.kill Dominion Looter##6868294
		.kill Crimson Sentry##6648612
		.kill Dominion Pillager##6766379
		.' Retrieve Stolen Goods from Dominion forces in Windward Notch |q Check on Windward Notch##5136/2 |goto 5219,-2653,-922
	step
		.kill Dominion Looter##6868294
		.collect 1 Foriana's Brooch##12539 |goto 5219,-2653,-922
		.' Use Foriana's Brooch in your bags |use Foriana's Brooch##12539
		..accept The Lost Bauble##4877
	step
		.talk Foriana Reedwhisper##264332 |tip She is inside this small house.
		..turnin The Lost Bauble##4877 |goto Galeras 5147,-2369,-896
	step
		.talk Mayor Crofton##269057
		..turnin Check on Windward Notch##5136 |goto Galeras 5182,-2303,-888
	step
		.talk Jed Nibben##269025
		..turnin Trouble at Nibben's Ranch##4744 |goto Galeras 5134,-2019,-910
		..accept Chemical Warfare##4745 |goto 5134,-2019,-910
	step
		.' Around the field:
		.click Poison Gas Canister##269772
		.' Seal Poison Gas Canisters |q Chemical Warfare##4745/1 |goto 5066,-2022,-907
	step	
		.' Around the field:
		.click Poisoned Farmer##7006524
		.' Click Poisoned Farmers from the field and bring them back to this spot.
		.' Lead Poisoned Farmers to safety |q Chemical Warfare##4745/2 |goto 5135,-1997,-907
	step
		.talk Clyde Nibben##269028
		..turnin Chemical Warfare##4745 |goto 5143,-1985,-907
	step
		.talk Jed Nibben##269025
		..accept Roan, Roan on the Range##4748 |goto 5134,-2017,-910
		..accept Ravenous Ravenok##5159 |goto 5134,-2017,-910
	step
		.talk Fannie Nibben##269502
		..accept Honey Haulin'##4747 |goto 5109,-1963,-909
	step
		.talk Mack Elkhart##269024
		..accept Buzzbing Beatdown##4746 |goto 5052,-2036,-907
	step
		.kill Honeysting Impaler##7042922
		.kill Honeysting Hiveguard##6431013
		.click Buzzbing Honey##6932441
		.' Kill Buzzbings |q Buzzbing Beatdown##4746/1 |goto Galeras 4908,-2061,-886
		.' Collect Buzzbing Honey |q Honey Haulin'##4747/1 |goto 4908,-2061,-886
	step
		.kill Razorbeak Chick##6911857
		.kill Razorbeak Forager##6929480
		.' Kill Razorbeak Ravenok |q Ravenous Ravenok##5159/1 |goto 4894,-1973,-874
	step
		'Press _C_ to use your communicator:.
		..turnin Ravenous Ravenok##5159
	step
		.kill Razorbeak Chick##6911857
		.kill Razorbeak Forager##6929480
		.collect 1 Ravenok Drumstick##13270 |goto 4894,-1973,-874
		.' Use the Ravenok Drumstick in your inventory |use Ravenok Drumstick##13270
		..accept Delectable Drumsticks##5307
	step
		.click Galehorn Roamer##6856114
		.' Press _T_ to use the Roan Prod on Galehorn Roan |q Roan, Roan on the Range##4748/1 |goto Galeras 4819,-2152,-871
	step
		.kill Razorbeak Thrasher##6786065
		.kill Razorbeak Forager##5590323
		.kill Razorbeak Chick##7041684
		.' Gather Ravenok Drumsticks |q Delectable Drumsticks##5307/1 |goto Galeras 5037,-2196,-878
	step
		.talk Jed Nibben##269025
		..turnin Roan, Roan on the Range##4748 |goto Galeras 5132,-2021,-910
	step
		.talk Fannie Nibben##269502
		..turnin Honey Haulin'##4747 |goto 5107,-1964,-909
		..turnin Delectable Drumsticks##5307 |goto 5107,-1964,-909
	step
		.talk Mack Elkhart##269024
		..turnin Buzzbing Beatdown##4746 |goto 5052,-2039,-907
	step
		.talk Jed Nibben##269025
		..accept Deliver the Supplies##4749 |goto 5132,-2018,-910
	step
		.click Pack Kurg##7240013 |goto 5123,-2044,-910
		.' Escort the Pack Kurg to Tempest Refuge |q Deliver the Supplies##4749/1 |goto Galeras 5126,-2041,-910
	step
		.talk Provisioner Clayfield##269051
		..turnin Deliver the Supplies##4749 |goto 5192,-2323,-886
	step
		.talk Sergeant Kara##264353
		..turnin Onward!##5259 |goto Galeras 5082,-2921,-876
		..accept Setting Up Shop##4791 |goto 5082,-2921,-876
	step
		.talk Jonah Skyreach##264331
		..accept XAS in Distress##4905 |goto Galeras 5073,-2933,-877
	step
		.kill Crimson Skitterbot##7131292
		.kill Crimson Advance Scout##6602052
		.' Kill Crimson Legion Soldiers and Crimson Skitterbots around Windspire Vigil |q Setting Up Shop##4791/1 |goto Galeras 5049,-2860,-907
	step
		.talk Sergeant Kara##264353
		..turnin Setting Up Shop##4791 |goto Galeras 5083,-2921,-876
	step
		.talk Trooper Rowe##264349
		..accept One by One##4974 |goto 5083,-2922,-876
	step
		.talk Agent Ostrow##264350
		..accept Advance Recon: Fuel Depot##5168 |goto 5083,-2936,-876
	step
		'Press _C_ to use your communicator:.
		..accept Security Breach##5172 |goto 5181,-3097,-894
		..accept Dominion Downsizing##4956 |goto 5189,-3116,-894
	step
		.' All around this Dominion camp:
		.click Satellite Transmitter##264265
		.' Hack the Satellite Transmitter |q Advance Recon: Fuel Depot##5168/2 |goto 5219,-3131,-894
		.click Fuel Control Panel##264258
		.' Access Control Panels to disable Fuel Cells  |q Security Breach##5172/1 |goto 5237,-3086,-894
		.click Security Station##264215
		.' Hack the Security Station |q Security Breach##5172/2 |goto 5178,-3141,-894
	step
		'Press _C_ to open your Communicator:
		..turnin Advance Recon: Fuel Depot##5168
		..turnin Security Breach##5172
	step
		.kill Fuelfuze Operations Overseer##7063382
		.kill Fuelfuze Sentry##6874379
		.kill Fuelfuze Gunnery Mech##7007169
		.' Kill Dominion forces |q One by One##4974/1 |goto 5205,-3133,-894
		.kill Fuelfuze Technician##7470548
		.kill Fuelfuze Supply Operator##7106032
		.' Kill Crimson Legion Chua |q Dominion Downsizing##4956/1 |goto 5238,-3089,-894
	step
		'Press _C_ to use your communicator:
		..turnin Dominion Downsizing##4956
		..turnin One by One##4974
		..accept The Big Bang##4812
	step
		.click Cargo Lifter##264220
		..accept Resourceful Reallocation##4808 |goto 5211,-3082,-894
	step
		.click Filled Fuel Canister##6951199
		.' Gather Filled Fuel Canisters |q Resourceful Reallocation##4808/1 |goto Galeras 5207,-3079,-894
		.click Fuel Control Panel##264256
		.' Sabotage the Fuel Control Panels |q The Big Bang##4812/1 |goto 5187,-3190,-894
		.click Cargo Lifter##7478524
		.' Place Fuel Canisters on the Cargo Lifter |q Resourceful Reallocation##4808/2 |goto 5197,-3111,-894
	step
		'Press _C_ to use your communicator:
		..turnin Resourceful Reallocation##4808
		..turnin The Big Bang##4812
		..accept Advance Recon: Central Base##5167 |goto Galeras 5155,-3170,-893
	step
		.' Scout the Crimson Base of Operations |q Advance Recon: Central Base##5167/1 |goto Galeras 4923,-3034,-919
	step
		'Press _C_ to use your communicator:
		..accept Important Personnel##4795 |goto 4922,-3017,-917
	step
		.kill 1 Chief Medical Officer Terentius##7466306
		.' Kill Chief Medical Officer Terentius |q Important Personnel##4795/1 |goto 4865,-2982,-906
	step
		.click Poison Canister##264179
		..accept Taste of Their Own Medicine##4792 |goto 4868,-2990,-908
	step
		.click Medical Station##6841773 |tip More can be found around this area.
		.' Sabotage Medical Stations |q Taste of Their Own Medicine##4792/1 |goto 4874,-2981,-908
	step
		'Press _C_ to use your communicator:
		..turnin Taste of Their Own Medicine##4792
	step
		.kill 1 Chief Arms Officer Voski##7376807
		.' Kill Chief Arms Officer Voski |q Important Personnel##4795/2 |goto 4838,-3077,-903
	step
		.click Satellite Transmitter##264155
		.' Hack the Satellite Transmitter |q Advance Recon: Central Base##5167/2 |goto 4800,-2965,-897
	step
		'Press _C_ to use your communicator:
		..turnin Advance Recon: Central Base##5167
	step
		.kill 1 Chief Engineer Fippi##7226314
		.' Kill Chief Engineer Fippi |q Important Personnel##4795/3 |goto 4962,-3209,-916
	step
		'Press _C_ to use your communicator:
		..turnin Important Personnel##4795
		..accept Crash Reprogramming Course##4794
	step
		.kill 1 Crimson Intrusion Turret##10821777+, Crimson Regimental Recruit##9282879+, Crimson Executioner##10360741+, Crimson Centurion##8217342+
		.collect 1 Cargo Lifter Remote##13096
		.' Use the Cargo Lifter Remote in your inventory |use Cargo Lifter Remote##13096
  		..accept Explosive Ammunition##4793 |goto Galeras 4981,-3177,-916
	step
		.kill Crimson Spiderbot##711019
		.kill Crimson Battlebot##785280
		.kill Crimson Slaughtershot##792832
		.' Collect Crimson Bot Circuitry |q Crash Reprogramming Course##4794/1 |goto Galeras 4920,-3200,-921
	step
		.click Sentrybot Control Panel##264183
		.' Hack the Sentrybot Control Panel |q Crash Reprogramming Course##4794/2 |goto Galeras 4949,-3198,-919
	step
		'Press _C_ to use your communicator:
		..turnin Crash Reprogramming Course##4794
		..accept Turn Their Guns##4796
	step
		.click Galeras Cargo Lifter##595586 |tip You can find more around this area.
		.' Push Galeras Cargo Lifters |q Explosive Ammunition##4793/1 |goto 4831,-3045,-905
	step
		'Press _C_ to use your communicator:
		..turnin Explosive Ammunition##4793
	step
		.kill 1 Chief Cannoneer Nox##862951
		.' Kill Chief Cannoneer Nox to collect the Cannon Activation Code |q Turn Their Guns##4796/1 |goto Galeras 4992,-3316,-911
		.click Cannon Control Panel##264178
		.' Reprogram the Cannon Control Panel |q Turn Their Guns##4796/2 |goto 4991,-3316,-911
	step
		'Press _C_ to use your communicator:
		..turnin Turn Their Guns##4796
		..accept Advance Recon: Prison Camp##5169
	step
		.' Scout Noxbane Prison Camp |q Advance Recon: Prison Camp##5169/1 |goto Galeras 4765,-3044,-894
	step
		'Press _C_ to use your communicator:
		..accept Find Corporal Fellrock##4798
	step
		.click Satellite Transmitter##753112
		.' Hack the Satellite Transmitter |q Advance Recon: Prison Camp##5169/2 |goto Galeras 4624,-3066,-878
		..turnin Advance Recon: Prison Camp##5169
		..accept The Time to Strike##4803
	step
		.talk Corporal Fellrock##264350
		..turnin Find Corporal Fellrock##4798 |goto Galeras 4707,-3002,-872
		..accept Leave No Man Behind##4799 |goto 4707,-3002,-872
		..accept Prison Break##4800 |goto 4707,-3002,-872
	step
		.click Fence Control Panel##264128 |tip More captives can be found in the cages around this area.
		.' Free captive Exiles |q Leave No Man Behind##4799/1 |goto 4688,-3116,-882
	step
		.click Prison Cage##264155
		.' Rescue Kendra Fellrock |q Leave No Man Behind##4799/2 |goto 4744,-3183,-882
	step
		'Press _C_ to use your communicator:
		..turnin Leave No Man Behind##4799
		..accept Deadly Gas##4801
	step
		.click Containment Dome Console##264105 |tip More domes can be found around this area.
		.' Deactivate Containment Dome Consoles |q Deadly Gas##4801/2 |goto 4626,-3074,-878
	step
		.kill Noxbane Tracker##922590+, Noxbane Sentry##923382+, Noxbane Dreadbot##890961+, Noxbane Toxicologist##924557+
		.' Kill Noxbane forces |q Prison Break##4800/1 |goto 4690,-3096,-882
	step
		'Press _C_ to use your communicator:
		..turnin Prison Break##4800
	step
		.kill Noxbane Biotech##852002
		.' Press _C_ to use your communicator
		..accept The Warden##4802 |goto 4627,-3099,-878
	step
		'Press _C_ to use your communicator:
		..turnin Deadly Gas##4801
	step
		.click Poison Gas Canister##264104
		.' Collect a sample from a Poison Gas Canister |q The Warden##4802/1 |goto 4617,-3050,-878
	step
		.click Air Supply Unit##264106
		.' Poison the Air Supply Unit |q The Warden##4802/2 |goto 4695,-3156,-882
	step
		.kill 1 Warden Ranix##952787
		.' Kill Warden Ranix |q The Warden##4802/3 |goto 4696,-3154,-882
	step
		.talk Corporal Fellrock##264350
		..turnin The Warden##4802 |goto Galeras 4707,-3002,-872
	step
		.talk Sergeant Kara##264352
		..turnin The Time to Strike##4803 |goto Galeras 5075,-3239,-876
		..accept Striking Morale##4805 |goto 5075,-3239,-876
	step
		.talk Agent Ostrow##264349
		..accept Focused Intel: Eldan Recovery##5293 |goto 5086,-3234,-874
	step
		.talk Xenoarchaeologist Blackhedge##264362
		..accept Eldan Artifact Fragments##5279 |goto 5080,-3221,-874
	step
		.click Core Systems Panel##263887
		.' Download data from the Core Systems Panel |q Focused Intel: Eldan Recovery##5293/3 |goto 5184,-3311,-866
	step
		.click Crimson Battle Standard##264085 |tip Click both Battle Standards at this location.
		.' Replace the first pair of Crimson Battle Standards |q Striking Morale##4805/1 |goto 5115,-3392,-866
	step
		.click Crimson Battle Standard##264082 |tip Click both Battle Standards at this location.
		.' Replace the second pair of Crimson Battle Standards |q Striking Morale##4805/2 |goto 5133,-3493,-866
	step
		.click Filtration Systems Panel##263890
		.' Download data from the Filtration Systems Panel |q Focused Intel: Eldan Recovery##5293/2 |goto 5213,-3454,-863
	step
		.click Poison Barrel##263958
		..accept Little Barrels of Death##5265 |goto 5195,-3490,-866
	step
		.click Crimson Battle Standard##264081 |tip Click both Battle Standards at this location.
		.' Replace the third pair of Crimson Battle Standards |q Striking Morale##4805/3 |goto 5164,-3520,-860
	step
		.click Crimson Battle Standard##264076 |tip Click both Battle Standards at this location.
		.' Replace the fourth pair of Crimson Battle Standards |q Striking Morale##4805/4 |goto 5206,-3562,-837
	step
		.click Crimson Legion Battle Flag##264073
		.' Replace the Crimson Legion Battle Flag |q Striking Morale##4805/5 |goto 5281,-3492,-834
		.' Kill the enemies that attack in waves
		.' Hold out against Crimson forces |q Striking Morale##4805/6 |goto 5279,-3489,-835
	step
		.click Power Systems Panel##263889
		.' Download data from the Power Systems Panel |q Focused Intel: Eldan Recovery##5293/1 |goto 5086,-3597,-866
	step
		'Press _C_ to use your communicator:
		..turnin Focused Intel: Eldan Recovery##5293
	step
		.click Eldan Artifact Fragment##992848
		.' Collect Eldan Fragments |q Eldan Artifact Fragments##5279/1 |goto 5150,-3416,-866
		.click Poison Barrel##263947
		.' Inspect Poison Barrels |q Little Barrels of Death##5265/1 |goto Galeras 5323,-3447,-820
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Artifact Fragments##5279
		..turnin Little Barrels of Death##5265
		..accept The Toxin Mastermind##5267
	step
		.talk Trooper Rowe##264047
		..turnin Striking Morale##4805 |goto 5294,-3502,-821
		..accept Confront Colonel Audax##4806 |goto 5294,-3502,-821
	step
		.kill 1 Toxicologist Poxic##1086872 |q The Toxin Mastermind##5267/1 |goto 5383,-3393,-819
	step
		'Press _C_ to use your communicator:
		..turnin The Toxin Mastermind##5267
	step
		.kill 1 Colonel Audax##1096258 |q Confront Colonel Audax##4806/1 |goto Galeras 5301,-3620,-810
	step
		'Press _C_ to use your communicator:
		..turnin Confront Colonel Audax##4806
	step
		.talk Scientist Linden##263829
		..accept Eldan Circuitry##5308 |goto Galeras 5205,-3734,-876
	step
		.click Eldan Switch##263838
		.' Use the first Eldan Switch |q Eldan Circuitry##5308/1 |goto 5202,-3730,-875
		.click Damaged Eldan Circuit##263834
		.' Repair the first Damaged Eldan Circuit |q Eldan Circuitry##5308/2 |goto 5141,-3705,-875
		.click Eldan Switch##263835
		.' Use the second Eldan Switch |q Eldan Circuitry##5308/3 |goto 5134,-3683,-875
	step
		.talk Sue Digstone##264000
		..accept Anomalous Augmentation##4847 |goto Galeras 4983,-3774,-872
	step
		.kill Augmented Gustclaw Burrower##1120441+, Augmented Gustclaw Shredder##1187390+
		.' Collect Augmented Canimid Tissue from Gustclaw canimid |q Anomalous Augmentation##4847/1 |goto Galeras 5056,-3766,-861
		.kill Augmented Sickleswarm Hivedrone##1186061
		.' Collect Augmented Buzzbing Tissue from Sickleswarm buzzbings |q Anomalous Augmentation##4847/2 |goto 5048,-3748,-860
	step
		.talk Sue Digstone##264000
		..turnin Anomalous Augmentation##4847 |goto Galeras 4982,-3775,-872
		..accept The Hidden Excavation##4846 |goto 4982,-3775,-872
	step
		.' _Follow the road_ up the side of the mountain |goto 4928,-3825,-857 <10
		.' Travel to the XAS Excavation Site |q The Hidden Excavation##4846/1 |goto Galeras 5067,-3971,-762
	step
		.talk Sue Digstone##264342
		..turnin The Hidden Excavation##4846 |goto 5134,-3918,-745
		..accept The Plot Thickens##5003 |goto 5134,-3918,-745
	step
		.talk Researcher Sara##264018
		.' Talk to Researcher Sara |q The Plot Thickens##5003/1 |goto 5153,-3913,-741
		.talk Excavator Jayk##264025
		.' Talk to Excavator Jayk |q The Plot Thickens##5003/2 |goto 5108,-3951,-756
		.talk Watchguard Pancor##264024
		.' Talk to Watchguard Pancor |q The Plot Thickens##5003/4 |goto 5062,-3969,-763
		.talk Watchguard Ferrita##264026
		.' Talk to Watchguard Ferrita |q The Plot Thickens##5003/3 |goto 5142,-4004,-759
	step
		.talk Sue Digstone##264342
		..turnin The Plot Thickens##5003 |goto 5134,-3918,-745
		..accept Spurious Logic##4850 |goto 5134,-3918,-745
	step
		.click Excavator Jayk##264032
		.click Excavator Jane##264035 |goto 5111,-3957,-756 < 10
		.click Researcher Sara##264041
		.click Researcher Riko##264037
		.click Excavator Jora##264033 |goto 5150,-3913,-741 < 10
		.click Researcher Senya##264036
		.click Watchguard Ferrita##264044
		.' Press _T_ to zap XAS Personnel with the CSP Disruptor |q Spurious Logic##4850/1 |goto 5141,-4007,-759
	step
		.talk Sue Digstone##264342
		..turnin Spurious Logic##4850 |goto 5134,-3918,-745
		..accept The Eldan Augmentor##4851 |goto 5134,-3918,-745
	step
		.' Enter Exo-Lab 83 |q The Eldan Augmentor##4851/1 |goto 5120,-3946,-756
		.kill 1 Damaged Eldan Augmentor##1229844
		.kill 1 Professor Digstone##1231281
		.' Defeat the Damaged Eldan Augmentor and Professor Digstone |q The Eldan Augmentor##4851/2 |goto Galeras 5157,-3996,-836
		.click Eldan Transmitter##263985
		.' Deactivate the Eldan Transmitter |q The Eldan Augmentor##4851/3 |goto 5173,-3996,-837
	step
		.' Step into the teleporter to _return to the Excavation Site_ |goto 5137,-3996,-834
		.talk Sue Digstone##264342
		..turnin The Eldan Augmentor##4851 |goto Galeras 5136,-3919,-745
	step
		.' _Follow the road_ back down the side of the mountain |goto Galeras 5015,-3985,-777 <10
		.' _Go up_ the ramp |goto 5033,-3685,-843 <10
		.click Eldan Switch##263832
		.' Use the third Eldan Switch near the central ramp |q Eldan Circuitry##5308/4 |goto 5142,-3492,-866
	step
		.click Damaged Eldan Circuit##263833
		.' Repair the second Damaged Eldan Circuit |q Eldan Circuitry##5308/5 |goto 5159,-3378,-866
	step
		'Press _C_ to use your communicator:
		..turnin Eldan Circuitry##5308
	step
		.' Use your Recall ability to return to Tempest Riefuge |goto Galeras 5090,-2304,-902 < 100
	step
		'_Go up_ the stairs and follow the path |goto Galeras 5267,-2346,-872 < 10
		.talk Lead Researcher Highmarsh##290259
		..turnin XAS in Distress##4905 |goto Galeras 5381,-2770,-997 
		..accept Scientific Recovery##4515 |goto 5381,-2770,-997
	step
		.talk Belle Walker##290253
		..accept Power of Air##4907 |goto 5402,-2784,-997
	step
		.click Transmat Terminal##270840
		.' Click _Yes_ to set your Recall ability to Camp Dustdevil |goto 5395,-2792,-996
		|confirm
	step
		.talk Trooper Tarog##270516
		..accept Darkspur Payback##4514 |goto 5429,-2807,-998
	step
		.talk Field Researcher Mikhah##289967
		..accept Delicious Datachron##4929 |goto 5432,-2793,-997
	step
		.talk Scientist Sabbatha##289966
		..accept High Cliff Research##4928 |goto 5431,-2789,-997
	step
		.click Gribbon Egg##1288954 |tip more eggs can be found along these rock ledges.
		.' Gather Gribbon Eggs |q High Cliff Research##4928/1 |goto Galeras 5475,-2896,-993
	step
		.click Sick Gribbon##1282062
		.' The Gribbon starts to throw up, avoid the puke and grab the Datachron fragments when they appear
		.' Collect Datachron Fragments |q Delicious Datachron##4929/2 |goto 5529,-2885,-962
		.click Sick Gribbon##1282062
		.' Capture the Sick Gribbon |q Delicious Datachron##4929/1 |goto 5524,-2882,-960
	step
		.click Stolen Eldan Relic##1105215
		.click Stolen Eldan Relic Cache##1309345
		.click Abandoned Scanbot##1368628
		.' Recover Stolen Eldan Relics |q Scientific Recovery##4515/1 |goto 5476,-2994,-1012
		.' Activate Abandoned Scanbots |q Scientific Recovery##4515/2 |goto 5476,-2994,-1012
	step
		'Press _C_ to use your communicator:
		..turnin Scientific Recovery##4515
	step
		.click Eldan Switch##269720
		.' Rotate the Eldan Switches |q Power of Air##4907/1 |count 1 |goto 5529,-3019,-1008
		.click Eldan Switch##289848
		.' Rotate the Eldan Switches |q Power of Air##4907/1 |count 2 |goto 5636,-3002,-1005
		.click Eldan Switch##289847
		.' Rotate the Eldan Switches |q Power of Air##4907/1 |count 3 |goto 5702,-3104,-997
	step
		.kill Darkspur Bladegrinder##1364954+, Darkspur Nibbler##1294405+, Darkspur Splitshot##1304356+, Darkspur Lieutenant##1072056+, Darkspur Strongarm##1072859+
		.' Kill Darkspur Cartel members |q Darkspur Payback##4514/1 |goto Galeras 5603,-3028,-1004
		.' Kill Darkspur Lieutenants and Darkspur Strongarms |q Darkspur Payback##4514/2 |goto Galeras 5603,-3028,-1004
	step
		'Press _C_ to use your communicator:
		..turnin Darkspur Payback##4514
		..accept Boss Xagg's Due##4516
	step
		.talk Belle Walker##290255
		.' Speak to Belle Walker |q Power of Air##4907/2 |goto 5657,-3170,-984
		.' Wait for Belle Walker to activate the Control Panel |q Power of Air##4907/3 |goto 5656,-3169,-984
	step
		.talk Belle Walker##290255
		..turnin Power of Air##4907 |goto 5657,-3170,-984
		..accept If It Ain't Broke, Break It##4908 |goto 5657,-3170,-984
	step
		.click Dust Stalker's Access Panel##269811 |tip It is at the top of the ramp going up to the ship.
		.' Enter the Dust Stalker |q Boss Xagg's Due##4516/1 |goto 5544,-3104,-982
		.kill 1 Boss Xagg##264968
		.' Kill Boss Xagg |q Boss Xagg's Due##4516/2 |goto Galeras -1,244,6
		.click Dust Stalker's Bridge Controls##264922
		.' Use the Dust Stalker's Bridge Controls to destroy the Dust Stalker |q Boss Xagg's Due##4516/3 |goto -1,251,6
		.click Dust Stalker's Access Panel##264921
		.' Get out of Boss Xagg's ship |q Boss Xagg's Due##4516/4 |goto 4,-14,0
	step
		.' Gain a jump boost from an Eldan Power Converter |q If It Ain't Broke, Break It##4908/1 |goto Galeras 5707,-3088,-997
		.' Jump through Primal Air Anomalies |tip These are blue swirling air bubbles high up in the air. If you lose your jump buff run back to the Power Converter. |q If It Ain't Broke, Break It##4908/2 |goto 5689,-3097,-982
	step
		.talk Belle Walker##270507
		..turnin If It Ain't Broke, Break It##4908 |goto 5656,-3165,-985
		..accept Balancing Power##4909 |goto 5656,-3165,-985
	step
		.click Control Panel
		.' Interact with the Control Panel to assist Belle |q Balancing Power##4909/2 |goto 5657,-3171,-983
		.' Kill the enemies that attack in waves
		.' Defend Belle Walker |q Balancing Power##4909/1 |goto 5654,-3167,-985
	step
		.talk Belle Walker##270507
		..turnin Balancing Power##4909 |goto 5656,-3164,-985
	step
		.talk Trooper Tarog##270516
		..turnin Boss Xagg's Due##4516 |goto Galeras 5432,-2809,-998
		..accept Moving Forward##4717 |goto 5432,-2809,-998
	step
		.talk Field Researcher Mikhah##289936
		..turnin Delicious Datachron##4929 |goto 5433,-2793,-997
	step
		.talk Scientist Sabbatha##297568
		..turnin High Cliff Research##4928 |goto 5430,-2791,-997
	step
		.talk Vera Thinbranch##290258
		..accept Clearing the Canyon##4531 |goto Galeras 5494,-2633,-1010
		..accept Blow Them Away##4532 |goto 5494,-2633,-1010
	step
		.kill Stonespike Needler##1395422+, Stonespike Tusker##1085129+, Shaleclaw Broodmother##1451617+, Razorbeak Riptalon##1420475
		.' Kill Gribbons, Scrab, and Rockhordes |q Clearing the Canyon##4531/1 |goto 5576,-2671,-1015
		.kill Sandstorm Elemental##1461478
		.' Destroy air elementals |q Blow Them Away##4532/1 |goto 5573,-2707,-1010
	step
		'Press _C_ to use your communicator:
		..turnin Blow Them Away##4532
		..turnin Clearing the Canyon##4531
	step
		.' _Follow the path_ around |goto 5445,-2654,-1003 < 10
		.' Scout the Gale Canyon Path |q Moving Forward##4717/1 |goto Galeras 5420,-2524,-1000
		.click Thundercall Clan Banner##289843
		.' Inspect the Thundercall Clan Banner |q Moving Forward##4717/2 |goto 5454,-2452,-999
		.click Thundercall Clan Banner##269710
		.' Inspect the next Thundercall Clan Banner |q Moving Forward##4717/3 |goto 5583,-2288,-1008
		.click Thundercall Clan Banner##289842
		.' Inspect the final Thundercall Clan Banner |q Moving Forward##4717/4 |goto 5606,-2360,-1009
	step
		.talk Lead Scientist Armin##290261
		..turnin Moving Forward##4717 |goto Galeras 5612,-2435,-1013
		..accept Missing Scientists##4506 |goto 5612,-2435,-1013
	step
		.click Riena Khorich's Tent##290032
		.' Search for clues in Riena Khorich's Camp |q Missing Scientists##4506/2 |goto Galeras 5572,-2243,-1009
	step
		.click Scientific Equipment##269961
		..accept Equipment Recovery##4534 |goto 5576,-2249,-1009
	step
		.click Aryn Zimm's Equipment##270060
		.' Search for clues in Aryn Zimm's Camp |q Missing Scientists##4506/3 |goto Galeras 5442,-2287,-995
		.click Doctor Varen's Tent##290033
		.' Search for clues in Doctor Varen's Camp |q Missing Scientists##4506/1 |goto Galeras 5424,-2459,-1000
	step
		.click Scientific Equipment##1688791 |tip These can be found all around this area.
		.' Recover Scientific Equipment |q Equipment Recovery##4534/1 |goto Galeras 5441,-2431,-1000
	step
		.talk Lead Scientist Armin##290261
		..turnin Equipment Recovery##4534 |goto Galeras 5612,-2434,-1013
		..turnin Missing Scientists##4506 |goto 5612,-2434,-1013
		..accept Establish a Perimeter##4507 |goto 5612,-2434,-1013
	step
		.click Motion Sensor Alarm##290017 |tip More of these can be found around the camp.
		.' Activate the Motion Sensors |q Establish a Perimeter##4507/1 |goto 5591,-2433,-1013
	step
		.talk Lead Scientist Armin##290261
		..turnin Establish a Perimeter##4507 |goto 5612,-2434,-1013
		..accept Taken Away##4508 |goto 5612,-2434,-1013
	step
		.' Investigate the Eastern Perimeter Breach |q Taken Away##4508/1 |goto 5662,-2461,-1008
		.' Investigate the Northern Perimeter Breach |q Taken Away##4508/2 |goto 5614,-2504,-1012
		.' Investigate the Western Perimeter Breach |q Taken Away##4508/3 |goto 5583,-2469,-1014
		.' Check on Research Assistant Jayna |q Taken Away##4508/4 |goto 5602,-2424,-1013
		.kill Thundercall Arcanist##1690946 |tip More can be found all around the camp.
		.' Kill Thundercall Pell |q Taken Away##4508/5 |goto 5573,-2477,-1012
	step
		..accept Taken Away##4508 |goto 5629,-2469,-1013
		..accept Training the XAS##4621 |goto 5629,-2469,-1013
	step
		.talk Weapons Instructor##270419
		.' Speak to the Weapons Instructor |q Training the XAS##4621/1 |goto 5628,-2475,-1013
		.click XAS Researcher##270421
		.' Use the new abilities on your second skill bar to train XAS Researchers |q Training the XAS##4621/2 |goto 5618,-2480,-1013
	step
		.talk Trainer Jaryd##290208
		..turnin Training the XAS##4621 |goto 5628,-2466,-1014
	step
		.talk Lead Scientist Armin##290257
		..turnin Taken Away##4508 |goto 5613,-2434,-1013
		..accept Rescuing the Taken##4510 |goto 5613,-2434,-1013
	step
		.talk Corporal Morrik##290256
		..accept All's Well that Ends Pell##4617 |goto 5597,-2439,-1013
	step
		.click Captive Pell##297640
		..accept Pell Interrogation##5500 |goto 5626,-2458,-1014
	step
		.talk Lead Scientist Armin##290257
		..turnin Pell Interrogation##5500 |goto 5613,-2434,-1013
	step
		.' _Follow_ the road south. |goto Galeras 5507,-2235,-1010 < 20
		.kill Thundercall Wind-Weaver##1714160+, Thundercall Warrior##1785220+, Thundercall Wind-Speaker##1797597+
		.' Kill Thundercall Pell |q All's Well that Ends Pell##4617/1 |goto Galeras 5515,-2017,-1013
	step
		.click Koryn Surne##270511
		..accept To Pell and Back##4606 |goto Galeras 5633,-2121,-1011
	step
		.' _Go to_ this spot |goto Galeras 5624,-2114,-1007 < 10
		.' _Climb the pipe_ to this spot |goto Galeras 5640,-2123,-997 < 10
		.' _Jump up_ onto the rock ledge |goto 5644,-2126,-992 < 10
		.' _Jump onto_ the structure here |goto 5638,-2130,-988 < 10
		.click Koryn Surne's Datachron##1779195
		.' Find Koryn Surne's Datachron |q To Pell and Back##4606/1 |goto 5625,-2125,-988
	step
		.' _Follow_ the road north. |goto Galeras 5502,-2066,-1012 <10
		.' Find the Thundering Grotto |q Rescuing the Taken##4510/1 |goto Galeras 5701,-2204,-1009
		.' Locate captive Scientists |q Rescuing the Taken##4510/2 |goto Galeras 5753,-2148,-1029
		.kill 1 Wind-Wail the Storm-Shaman##1827663
		.' Kill the Wind-Wail the Storm-Shaman |q Rescuing the Taken##4510/3 |goto 5783,-2156,-1032
	step
		.click Ritual Mixture##289991
		..accept Mysterious Mixture##4615 |goto 5790,-2156,-1032
	step
		.collect 1 Blood Drenched Tome##12299
		.' Use the Blood Drenched Tome in your inventory |use Blood Drenched Tome##12299
		..accept A Book of Blood##4513
	step
		.talk Alchemist Adair##290260
		..turnin Mysterious Mixture##4615 |goto Galeras 5629,-2420,-1012
		..accept Storm's Breath##4511 |goto 5629,-2420,-1012
	step
		.talk Archaeologist Knox##290254
		..turnin A Book of Blood##4513 |goto 5633,-2436,-1012
		..accept Trilogy of the Pell##5255 |goto 5633,-2436,-1012
	step
		.talk Lead Scientist Armin##290257
		..turnin Rescuing the Taken##4510 |goto 5613,-2434,-1013
		..turnin To Pell and Back##4606 |goto 5613,-2434,-1013
		..accept Urgent Rescue##4509 |goto 5613,-2434,-1013
	step
		.talk Corporal Morrik##290256
		..turnin All's Well that Ends Pell##4617 |goto 5597,-2439,-1013
	step
		.click Storm's Breath##1964660 |tip These can be found around the huts here.
		.' Collect Storm's Breath from Pell |q Storm's Breath##4511/1 |goto Galeras 5541,-2067,-1006
	step
		.' Kill Thundercall enemies to free nearby captives around these huts.
		.kill Thundercall Wind-Witch##1974613
		.' Rescue the captive XAS Researchers |q Urgent Rescue##4509/1 |goto 5494,-2046,-1012
		.kill Thundercall Warrior##1935815
		.' Rescue the captive XAS Researchers |q Urgent Rescue##4509/1 |goto 5647,-1971,-1010
	step
		'Press _C_ to use your communicator:
		..turnin Urgent Rescue##4509
		..accept Power Unleashed##4512
	step
		.click Eldan Switch##297620
		.' Deactivate Eldan switches |q Power Unleashed##4512/1 |count 50 |goto 5648,-1948,-1012
		.click Eldan Switch##289983
		.' Deactivate Eldan switches |q Power Unleashed##4512/1 |goto 5540,-1968,-1012
		.kill 1 High Priest Storm-Render##1469387
		.' Kill High Priest Storm-Render |q Power Unleashed##4512/2 |goto Galeras 5589,-1980,-1011
	step
		.click 1 Stormtalon Tome-Binder##1330643
		.' Collect the Tome of Stormtalon |q Trilogy of the Pell##5255/2 |goto Galeras 5510,-1968,-1008
		.kill 1 Air Tome-Binder##1998185
		.' Collect the Tome of Air |q Trilogy of the Pell##5255/1 |goto 5668,-1928,-1004
		.kill 1 Summoning Tome-Binder##2004770
		.' Collect the Tome of Summoning |q Trilogy of the Pell##5255/3 |goto 5673,-2010,-1012  //Fixed Collect
	step
		.' _Follow the road_ |goto 5504,-2058,-1012 <10
		.talk Alchemist Adair##290260
		..turnin Storm's Breath##4511 |goto Galeras 5629,-2420,-1012
	step
		.talk Archaeologist Knox##290254
		..turnin Trilogy of the Pell##5255 |goto 5633,-2436,-1012
	step
		.talk Lead Scientist Armin##290257
		..turnin Power Unleashed##4512 |goto 5613,-2434,-1013
	step
		.talk XAS Radio Operator##297480
		..accept Signal after the Storm##4963 |goto 5615,-2445,-1013
	step
		.' _Follow the stone pathway_ here |goto Galeras 5543,-2347,-1009 < 20
		.' _Continu_e on the stone path |goto Galeras 5573,-2431,-977 < 20
		.' _Follow this path_ up and around |goto Galeras 5546,-2432,-957 < 10
		.' _Cross_ the huge stone bridge here |goto 5534,-2470,-873 < 20
		.talk Sergeant Royce##297294
		..turnin Signal after the Storm##4963 |goto Galeras 5754,-2534,-869
		..accept The Dominion Is Coming!##4665 |goto 5754,-2534,-869
	step
		.click Supplier Merribell##288210
		.' Click _Yes_ to set your Recall point to Skywatch |goto 5771,-2556,-867
		|confirm
	step
		.talk Farmer Amos##289007
		..accept Hostile Harvest##4993 |goto 5736,-2590,-855
	step
		.' In this field:
		.talk Clearfield Farmer##2079231
		.' Use the new set of temporary skills on your second skill bar to convince Clearfield Farmers to leave |q The Dominion Is Coming!##4665/1 |goto Galeras 5942,-2511,-897
		.click Cirque Zucchini##2096092
		.' Harvest Cirque Zucchini |q Hostile Harvest##4993/1 |goto 5942,-2511,-897
	step
		'Press _C_ to use your communicator:
		..turnin The Dominion Is Coming!##4665
		..accept Emergency Rescue##4663
	step
		.kill Dominion Shocktrooper##2153559+, Dominion Forward Drudger##2156374+, Dominion Advance Scout##2093384+
		.' Kill Dominion Soldiers |q Emergency Rescue##4663/2 |goto Galeras 5992,-2648,-893
		.click Wounded Trooper##1756440
		.' Heal Wounded Farmers |q Emergency Rescue##4663/1 |goto 5990,-2648,-893
	step
		'Press _C_ to use your communicator:
		..turnin Emergency Rescue##4663
		..accept Under Attack##4664
	step
		.click Terrestrial Colewort##2031576
		.' Harvest Terrestrial Colewort |q Hostile Harvest##4993/3 |goto Galeras 6050,-2689,-893
	step
		.' Travel to Redstone Farm |q Under Attack##4664/1 |goto Galeras 5868,-2870,-910
	step
		.' In this field:
		.click Dead Dominion Hunter##289230
		.' Inspect dead bodies |q Under Attack##4664/2 |goto 5861,-2871,-911
		.click Xariot Flowerfruit##1463662
		.' Harvest Xariot Flowerfruit |q Hostile Harvest##4993/2 |goto 5841,-2888,-909
	step
		'Press _C_ to use your communicator:
		..turnin Under Attack##4664
		..turnin Hostile Harvest##4993
		..accept Take the Fight to Them##4666
	step
		.click Falkrin Idol##289213
		..accept Strange Idol##5323 |goto Galeras 5818,-2945,-904
		.' Survive the Falkrin ambush |q Strange Idol##5323/1 |goto Galeras 5820,-2936,-905
	step
		'Press _C_ to use your communicator:
		..turnin Strange Idol##5323
	step
		.talk Archaeologist Wyn##288978
		..accept The Chompacabra Menace##5492 |goto Galeras 5922,-2918,-900
	step
		.click Dirt Mound##2215694
		.kill Windyburrow Biter##2189859
		.' Collect Eldan Artifacts |q The Chompacabra Menace##5492/1 |goto 5900,-2934,-901
	step
		.talk Archaeologist Wyn##288978
		..turnin The Chompacabra Menace##5492 |goto 5922,-2917,-900
	step
		.talk Trooper Vog##289220
		.' Speak to Trooper Vog |q Take the Fight to Them##4666/1 |goto 6182,-2911,-881
	step
		.' _Enter the Temple_ of Osiric |goto Galeras 6233,-2944,-875 <10
		.click Talon of Osiric##268008
		..accept Talon of Osiric##9093 |goto 6280,-3084,-868
	step
		.' Rendezvous with Durek in the Temple of Osiric |q Take the Fight to Them##4666/2 |goto 6229,-3098,-839
	step
		.talk Commander Durek##289222
		..turnin Take the Fight to Them##4666 |goto 6239,-3099,-839
		..accept Burn It Down##4667 |goto 6239,-3099,-839
	step
		.click Satellite Scrambler##268504
		.' Deactivate the Satellite Scramblers |q Burn It Down##4667/1 |count 1 |goto 6196,-3116,-841
	step
		.click Satellite Scrambler##289214
		.' Deactivate the Satellite Scramblers |q Burn It Down##4667/1 |count 2 |goto 6337,-3140,-839
	step
		.click Satellite Scrambler##268506
		.' Deactivate the Satellite Scramblers |q Burn It Down##4667/1 |goto 6351,-3007,-847
	step
		.kill Dominion Forward Drudger##2261758+, Dominion Advance Sharpshooter##2247702+, Dominion Advance Scout##2150857+, Dominion Front Gunner##1871240+,
		.' Kill Dominion forces |q Burn It Down##4667/2 |goto 6245,-3122,-837
	step
		.talk Commander Durek##289222
		..turnin Burn It Down##4667 |goto 6240,-3099,-839
		..accept Leaving the Temple of Osiric##4696 |goto 6240,-3099,-839
	step
		.kill Stormwing Vanquisher##2297042
		.' Help Skywatch Troopers retreat |q Leaving the Temple of Osiric##4696/1 |goto 6191,-3059,-841
		.' Meet Corporal Darby |q Leaving the Temple of Osiric##4696/2 |goto Galeras 6208,-2824,-889
	step
		.talk Corporal Darby##289171
		..turnin Leaving the Temple of Osiric##4696 |goto 6204,-2812,-889
		..accept Hold the Line##4694 |goto 6204,-2812,-889
	step
		.talk Trooper Vog##268432
		.' Speak with Trooper Vog to assist Exile troopers |q Hold the Line##4694/1 |goto Galeras 6204,-2818,-889
		.' Kill incoming Stormwing Falkrin |q Hold the Line##4694/2 |goto 6206,-2821,-889
	step
		.talk Corporal Darby##289171
		..turnin Hold the Line##4694 |goto 6204,-2811,-889
		..accept Skywatch Must Hold##4733 |goto 6204,-2811,-889
	step
		.' Fall back to Skywatch |q Skywatch Must Hold##4733/1 |goto Galeras 5861,-2629,-893
		.click Exile AA Cannon##299690
		.' Repair Exile AA Cannons |q Skywatch Must Hold##4733/3 |count 1 |goto 5826,-2536,-878
		step
		.click Exile AA Cannon##299604
		.' Repair Exile AA Cannons |q Skywatch Must Hold##4733/3 |count 2 |goto 5828,-2562,-877
	step
		.click Exile AA Cannon##299552
		.' Repair Exile AA Cannons |q Skywatch Must Hold##4733/3 |goto 5807,-2603,-879
	step
		.kill Stormwing Warrior##5249533+, Stormwing Eviscerator##5231891+, Stormwing Murgh##5099062
		.' Kill the Stormwing Falkrin and Murg |q Skywatch Must Hold##4733/2 |goto 5810,-2549,-881
	step
		.talk Sergeant Royce##297294
		..turnin Skywatch Must Hold##4733 |goto 5756,-2534,-869
		..accept More Firepower Needed##4726 |goto 5756,-2534,-869
	step
		.talk Mechanic Grumshot##289598
		..turnin More Firepower Needed##4726 |goto 5836,-2595,-890
		..accept Storm the Gates##4670 |goto 5836,-2595,-890
	step
		.click Mark IX Rocket Bike##288941
		.' Press _T_ to mount the Mark IX Rocket Bike |q Storm the Gates##4670/1 |goto Galeras 5845,-2578,-893
	step
		.' Press _1_ to use the bike's rocket ability
		.kill Mudraker Berserker##4676500
		.kill Mudraker Smasher##4223320
		.' Use rockets to kill Murgh |q Storm the Gates##4670/2 |goto Galeras 6395,-2741,-895
		.' Use rockets to destroy Murgh huts |q Storm the Gates##4670/3 |goto 6419,-2780,-891
	step
		.talk Corporal Dax##289600
		..turnin Storm the Gates##4670 |goto Galeras 6661,-2824,-838
		..accept Status Report##5331 |goto 6661,-2824,-838
		..accept Clip Their Wings##4674 |goto 6661,-2824,-838
	step
		'Press _C_ to use your communicator:
		..accept In Our Sights##4675
	step
		'_Follow_ the path up |goto Galeras 6673,-2916,-831 < 20
		.' Press _T_ to mark Stormwing Catapults for artillery strikes |q In Our Sights##4675/1 |count 33 |goto Galeras 6576,-2872,-804
	step
		'_'Run_ up the hill |goto Galeras 6707,-2800,-822 < 30
		.' Press _T_ to mark Stormwing Catapults for artillery strikes |q In Our Sights##4675/1 |count 66 |goto 6585,-2782,-787
	step
		.talk Trooper Riverbend##269283
		..accept Broodlord of the Stormwing##5332 |goto 6612,-2655,-765
		..accept Playing With Fire##5333 |goto 6612,-2655,-765
	step
		.' Press _T_ to mark Stormwing Catapults for artillery strikes |q In Our Sights##4675/1 |goto 6748,-2773,-787
	step
		'Press _C_ to use your communicator:
		..turnin In Our Sights##4675
	step
		.click Stormwing Torch##289047
		.' Grab a Stormwing Torch |q Playing With Fire##5333/1 |goto 6769,-2767,-784
	step
		.click Stormwing Bomb Casing##289040
		.' Burn Stormwing Bomb Casings |q Playing With Fire##5333/2 |goto 6790,-2788,-781 |tip They are all around this area.
	step
		.kill Broodlord Taran Stormwing##5396001
		.kill Stormwing Guardian##5204734
		.' Kill Broodlord Taran Stormwing |q Broodlord of the Stormwing##5332/1 |goto 6804,-2750,-783
	step
		.talk Trooper Riverbend##269283
		..turnin Broodlord of the Stormwing##5332 |goto 6613,-2655,-765
		..turnin Playing With Fire##5333 |goto 6613,-2655,-765
	step
		.talk Trooper Argoz##266873
		..accept Forward Operation##4679 |goto 6723,-2944,-830
	step
		'Press _C_ to use your communicator:
		..turnin Status Report##5331
	step
		.talk Researcher Danella##268153
		..accept Reading the Bones##5334 |goto 6751,-2904,-828
	step
		.click Falkrin Bones##5669688 |tip These are found around this area.
		.' Collect Falkrin Bones |q Reading the Bones##5334/1
		.kill 1 Breog the Bonebreaker##5667290
		.' Kill Breog the Bonebreaker |q Forward Operation##4679/1 |goto Galeras 6570,-2915,-803
	step
		'Press _C_ to use your communicator:
		..turnin Forward Operation##4679
	step
		.talk Researcher Danella##268153
		..turnin Reading the Bones##5334 |goto Galeras 6751,-2904,-828
	step
		.' Found all around the Fortress:
		.kill Stormwing Cloudstriker##5366381
		.kill Stormwing Warrior##5274194
		.kill Stormwing Guardian##5640130
		.kill Stormwing Protector##5473241
		.' Kill Stormwing Falkrin |q Clip Their Wings##4674/1 |goto 6751,-2838,-834
	step
		'Press _C_ to use your communicator:
		..turnin Clip Their Wings##4674
		..accept Secure Landing##4676 |goto 6617,-2758,-794
	step
		.click Landing Flare Location##289060
		.' Place Landing Flares at the drop zone |q Secure Landing##4676/1 |count 33 |goto 6542,-2647,-788
		.click Landing Flare Location##268207
		.' Place Landing Flares at the drop zone |q Secure Landing##4676/1 |count 66 |goto 6528,-2619,-787
		.click Landing Flare Location##289061
		.' Place Landing Flares at the drop zone |q Secure Landing##4676/1 |goto 6505,-2647,-783
	step
		.' Move to a safe spot |q Secure Landing##4676/2 |goto Galeras 6528,-2634,-786
	step
		.talk Sergeant Kara##289599
		..turnin Secure Landing##4676 |goto 6525,-2618,-787
		..accept Demise of the Stormwing##4678 |goto 6525,-2618,-787
	step
		.click Stormwing Banner##268185
		.' Burn Stormwing Banners |q Demise of the Stormwing##4678/1 |goto 6617,-2615,-781 |tip You will find more banners as you run up the hill.
	step
		.kill 1 Bride Osprea##5679580
		.' Kill Bride Osprea |q Demise of the Stormwing##4678/2 |goto Galeras 6616,-2456,-742
	step
		'Press _C_ to use your communicator:
		..turnin Demise of the Stormwing##4678
		..accept Getting Out Alive##4930
	step
		.' Meet Sergeant Kara |q Getting Out Alive##4930/1 |goto Galeras 6547,-2620,-787
		.click Stinger Transport##5279216
		.' Ride the Stinger Transport |q Getting Out Alive##4930/2 |goto 6516,-2641,-785
	step
		.talk Sergeant Royce##297294
		..turnin Getting Out Alive##4930 |goto Galeras 5755,-2534,-869
	step
		'Press _C_ to use your communicator:
		..accept Peril at Crosswind Post##5491 |goto Galeras 5967,-2312,-903
	step
		'Press _C_ to use your communicator:
		..accept Cold and Getting Colder##8800  ---- Quest to next zone.
	step
		.talk Scout Grekka##288976
		..turnin Peril at Crosswind Post##5491 |goto Galeras 5882,-2224,-864
		..accept Set Them Free##5324 |goto 5882,-2224,-864
		..accept Suffering of the Soulrotted##5325 |goto 5882,-2224,-864
	step
		'Press _C_ to use your communicator:
		..accept The Interloper##4937 |goto Galeras 5949,-2110,-887
	step
		.click Soulrot Elixir##4937470
		.' Destroy supplies of Soulrot Elixir |q Suffering of the Soulrotted##5325/2 |goto 5802,-1894,-881
		.click Binding Chain
		.' Free groups of Osun Prisoners |q Set Them Free##5324/1 |goto 5931,-1979,-886
	step
		.kill Vishal-Thun Oppressor##5221536
		.kill Soulrot Slave##5663826
		.' Kill Soulrot Slaves |q Suffering of the Soulrotted##5325/1 |goto Galeras 5853,-1892,-887
	step
		'Press _C_ to use your communicator:
		..turnin Set Them Free##5324
		..turnin Suffering of the Soulrotted##5325
//		..accept Coming to Heel##7351     --  Quest not available	
	step
		.click Remains of Cale Stone##269289
		..accept Summoning the Ravager##4731 |goto Galeras 6089,-2268,-900
	step
		.kill Whimthorn Sawtooth##5608045
		.' Collect Stemdragon Hearts |q Summoning the Ravager##4731/1 |goto Galeras 6171,-2229,-910
		.kill Whimwood Mender##532270+, Whimwood Bladewing##5720800+, Whimwood Stinger##5249193+
		.' Collect Envenomed Buzzbing Stingers |q Summoning the Ravager##4731/3 |goto 6171,-2229,-910
	step
		.kill Razorbeak Riptalon##5441408+, Razorbeak Render##5663584+
		.' Collect Pristine Gribbon Feathers |q Summoning the Ravager##4731/2 |goto Galeras 5956,-2190,-884
	step
		.click Ravager Idol##297291
		..turnin Summoning the Ravager##4731 |goto 6085,-2258,-900
		..accept Defeating the Ravager##4732 |goto 6085,-2258,-900
	step
		.click Vishal Thun Ritual Drum##289011
		.kill 1 The Ravager##5713501
		.' Summon and kill The Ravager |q Defeating the Ravager##4732/1 |goto 6081,-2240,-900
	step
		'Press _C_ to use your communicator:
		..turnin Defeating the Ravager##4732
	step
		.' Follow the _ramps up_ |goto Galeras 6147,-1969,-893 < 20
		.' _Jump off_ here |goto 6190,-1793,-836 < 20
		.talk Researcher Loren##289596
//		..turnin Coming to Heel##7351 |goto Galeras 6322,-1884,-836    --QUEST NOT AVAILABLE
		..accept Sic 'Em!##7346 |goto 6322,-1884,-836
		..accept Sniffing Out Poul##7347 |goto 6322,-1884,-836
	step
		.kill Vishal-Dagh Pup##5465590+, Vishal-Dagh Howler##5633518+, Vishal-Dagh Tracker##5568266+
		.kill Vishal-Dagh Packmatron##5419594
		.' Kill Vishal-Dagh Osun and their warhounds |q Sic 'Em!##7346/1 |goto 6361,-1977,-826
	step
		'Press _C_ to use your communicator:
		..turnin Sic 'Em!##7346
	step
		.' Search for Explorer Poul  |q Sniffing Out Poul##7347/1 |goto 6447,-2120,-806
	step
		.talk Explorer Poul##267920
		..turnin Sniffing Out Poul##7347 |goto 6450,-2118,-806
		..accept Freeing Feathers##7348 |goto 6450,-2118,-806
	step
		.kill 1 Vishal-Dagh Packmatron##5500340 |tip She walks around this area, you may need to search for her.
		.' Kill the Vishal-Dagh Packmatron for a Spell Ward |q Freeing Feathers##7348/1 |goto 6366,-1999,-824
	step
		.click Binding Post##267922
		.' Use the Spell Ward on the Binding Post |q Freeing Feathers##7348/2 |goto 6446,-2123,-806
	step
		.' Find Explorer Poul |q Freeing Feathers##7348/3 |goto 6433,-2305,-838
		.kill 1 Feathers##5649960 |q Freeing Feathers##7348/4 |goto 6440,-2353,-840
	step
		'Press _C_ to use your communicator:
		..turnin Freeing Feathers##7348
		..accept Dog Eat Dog##7350
	step
		.kill 1 Vishal-Dagh Alpha##4176727 |q Dog Eat Dog##7350/1 |goto 6390,-1877,-837
	step
		'Press _C_ to use your communicator:
		..turnin Dog Eat Dog##7350
	step
		.kill Vishal-Dagh Pup##4950073+
		.collect Warhound Scent##2047
		.' Use the Warhound Scent in your inventory |use Warhound Scent##2047
		..accept Scent of the Warhound##7349
	step
		.click Warhound Scent##5673528 |tip These are found around the huts and other structures in this small camp.
		.' Collect Warhound Scent |q Scent of the Warhound##7349/1 |goto 6454,-2062,-814
	step
		'Press _C_ to use your communicator:
		..turnin Scent of the Warhound##7349
	step
		.talk Game Hunter Joresh##289048
		..turnin The Interloper##4937 |goto Galeras 6026,-2128,-888
		..accept Exotic Game##4683 |goto 6026,-2128,-888
		..accept One Last Haircut##4938 |goto 6026,-2128,-888
	step
		.kill Vishal-Thun Oppressor##4347642
		.kill Vishal-Thun Soul Slaver##5538008
		.' Collect Osun "Hair" from Vishal-Thun Osun |q One Last Haircut##4938/1 |goto Galeras 5830,-1842,-887
	step
		.kill 1 Kuriktalon##5660500 |q Exotic Game##4683/1 |goto 6141,-1800,-861
	step
		.talk Game Hunter Joresh##289048
		..turnin Exotic Game##4683 |goto Galeras 6025,-2126,-888
		..turnin One Last Haircut##4938 |goto 6025,-2126,-888
	]]
)
