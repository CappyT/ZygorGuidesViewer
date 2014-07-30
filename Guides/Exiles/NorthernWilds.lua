if not ZGV then return end

ZGV:RegisterGuide("Exiles\\Northern Wilds (3-6)",
		{faction="Exiles",
		nextguide="Exiles\\Algoroc (6-15)",
		image="ZygorUIGuides:NorthernWilds", 
		description="Northern Wilds is a zone in northern Alizar in WildStar. Northern Wilds is a beginner zone for The Exiles, and is suited for characters level 3-6. ",
		startlevel=3,
		endlevel=6,
		},[[
	step
		.' _Go through_ the doorway |goto ExileArkShipTutorial -960,590,83
		.' _Go through_ the doorway into the long hall |goto ExileArkShipTutorial -998,719,83 < 10
		.' _Go through_ the doorway into Departures Alpha |goto ExileArkShipTutorial -998,818,83 < 10
		.' _Go through_ the doorway |goto ExileArkShipTutorial -960,841,83 < 10 
		.' _Follow the bridge_ to the ship |goto -916,821,84 < 10
		.click Departures Terminal: Thayd##312450 |tip It looks like a touchscreen workstation.
		.' Click _Yes_ to travel to the Northern Wilds on Nexus |q The Ravenous Grove##6762/3 |goto ExileArkShipTutorial -855,810,78
		|only Mordesh
	step
		.' _Go through_ the doorway |goto ExileArkShipTutorial -959,694,83
		.' _Go through_ the doorway into the long hall |goto ExileArkShipTutorial -998,719,83 < 10
		.' _Go through_ the doorway into Departures Alpha |goto ExileArkShipTutorial -998,818,83 < 10 
		.' _Go through_ the doorway |goto ExileArkShipTutorial -960,841,83 < 10 
		.' _Follow the bridge_ to the ship |goto -916,821,84 < 10
		.click Departures Terminal: Thayd##312450 |tip It looks like a touchscreen workstation.
		.' Click _Yes_ to travel to the Northern Wilds on Nexus |q Everstar Grove##6761/3 |goto -855,810,78 |only Aurin
		|only Aurin
	step
		.' _Follow the bridge_ to the ship |goto -916,821,84 < 10
		.click Departures Terminal: Thayd##312450 |tip It looks like a touchscreen workstation.
		.' Click _Yes_ to travel to the Northern Wilds on Nexus |nextguide Exiles\\Northern Wilds (3-6) |q Never Thayd Away##6760/2 |goto -854,810,78
		|only Human
	step
		.click Departures Terminal: Hammer of Gnox##262602
		.' Travel to the Northern Wilds on Nexus  |q Base Drop##6759/2 |goto ExileArkShipTutorial -925,935,85
		|only Granok
//NEW^^
	step
		.talk Scout Frostfield##263025
		..turnin Never Thayd Away##6760 |goto NorthernWilds 3843,-5279,-677
		..accept Welcome to Northern Wilds##9112 |goto NorthernWilds 3843,-5279,-677
		|only Human
	step
		.talk Keeper Shyroot##263017
		..turnin Everstar Grove##6761 |goto NorthernWilds 3842,-5280,-677
		..accept Welcome to Northern Wilds##9116 |goto NorthernWilds 3843,-5280,-677
		|only Aurin
	step
		.talk Trooper Takag##263099
		..turnin Base Drop##6759 |goto NorthernWilds 4108,-5169,-668 |only Granok
		..accept Welcome to Northern Wilds##9071 |goto NorthernWilds 4107,-5168,-667
		|only Granok
	step
		.talk Alchemist Kossvak##262847
		..turnin The Ravenous Grove##6762 |goto NorthernWilds 3842,-5279,-677
		..accept Welcome to Northern Wilds##9125 |goto 3842,-5279,-677
		|only Mordesh
	step
		.talk Bosun Redmark##263106
		..turnin Welcome to Northern Wilds##9112 |goto NorthernWilds 3912,-5336,-700 |only Human
		..turnin Welcome to Northern Wilds##9125 |goto NorthernWilds 3912,-5335,-700 |only Mordesh
		..turnin Welcome to Northern Wilds##9116 |goto NorthernWilds 3912,-5335,-700 |only Aurin
		..accept From the Wreckage##3479 |goto 3912,-5336,-700
		|only Human, Mordesh, Aurin
	step
		.talk Commander Durek##263106
		..turnin Welcome to Northern Wilds##9071 |goto NorthernWilds 4124,-5245,-687
		..accept Reporting for Duty##3480 |goto 4124,-5245,-687
		|only Granok
	step
		.click Trapped Survivor##756626 |tip More of these can be found around the crash site.
		.' Rescue Trapper Survivors |q From the Wreckage##3479/Rescue Trapped Survivors##1 |goto NorthernWilds 3977,-5372,-715
		.kill Yeti Snowstalker##753690
		.kill Yeti Frostclaw##306461 |tip More yeti can be found around the crash site.
		.' Kill yeti |q From the Wreckage##3479/Kill yeti##2 |goto NorthernWilds 3977,-5372,-715
		|only Human, Mordesh, Aurin
	step
		.click Trapped Survivor##417970
		.' Rescue Trapped Survivors |q Reporting for Duty##3480/1 |goto NorthernWilds 4142,-5382,-723
		.kill Yeti Snowstalker##418086
		.kill Yeti Frostclaw##417981
		.' Kill yeti |q Reporting for Duty##3480/2 |goto 4190,-5384,-726
		|only Granok
	step
		.' Jump into the burning wreckage |goto 4196,-5590,-746
		.talk Nooks Barkbiter##262948
		.' Rescue Trapped Survivors |q From the Wreckage##3479/1 |goto NorthernWilds 4194,-5586,-746
	step
		.talk Deadeye Brightland##263109
		..turnin From the Wreckage##3479 |goto NorthernWilds 4185,-5695,-723 |only Human, Mordesh, Aurin
		..turnin Reporting for Duty##3480 |goto NorthernWilds 4185,-5694,-723 |only Granok
		..accept The Tower##3667 |goto NorthernWilds 4185,-5695,-723
	step
		.' Investigate the Ancient Tower |q The Tower##3667/1 |goto NorthernWilds 4152,-5719,-722
	step
		.click Master Control Panel##262893
		..turnin The Tower##3667 |goto NorthernWilds 4147,-5729,-723
		..accept Empowered Tower##3486 |goto NorthernWilds 4147,-5729,-723
	step
		.' _Exit_ the tower |goto NorthernWilds 4155,-5714,-722
		.' _Go up_ the stairs |goto 4192,-5731,-721 < 20
		.' Follow the second set of _stairs up_ |goto 4157,-5800,-702 < 20
		.' Gather Loftite Crystals by jumping through them or killing Crystal Guardians |tip They are floating above the ground around this area.
		.kill Crystal Guardian##759084
		.' Collect Loftite Crystal Fragments |q Empowered Tower##3486/Collect Loftite Crystal Fragments##2 |goto NorthernWilds 4106,-5837,-699
	step
		.' _Go through_ the mechanical door |goto 4112,-5897,-686
		.click Primal Disruptor##262314
		.' _Turn in_ Finding the Primal Disruptor |goto 4115,-5931,-690
		|confirm
	step
		.' _Go back down_ the stairs |goto NorthernWilds 4157,-5801,-702
		.' _Re-enter_ the tower |goto 4154,-5716,-722
		.click Master Control Panel##262893
		..turnin Empowered Tower##3486 |goto NorthernWilds 4147,-5728,-723
	step
		.' Press _C_ to accept the next quest
		..accept Setting Up Camp##3671
	step
		.talk Deadeye Brightland##262218
		..turnin Setting Up Camp##3671 |goto NorthernWilds 4340,-5684,-752
		..accept Indigenous Intelligence##3668 |goto NorthernWilds 4340,-5684,-752
	step
		.talk Commander Durek##262217
		..accept Scattered Supplies##3741 |goto 4338,-5680,-752
		..accept Securing the Area##3797 |goto 4338,-5680,-752
	step
		.' _Go to_ this spot
		.' Press _C_ to use your communicator:
		..accept Spatial Anomaly##4526 |goto NorthernWilds 4506,-5713,-741
	step
		.talk Trooper Renzo##263111
		..accept Final Farewell##3712 |goto 4539,-5723,-733
	step
		.kill Yeti Frostclaw##761470
		.kill Rootbrute Grimspore##760278
		.' Kill Rootbrutes and yeti |q Securing the Area##3797/Kill Rootbrutes and yeti##1 |goto 4525,-5719,-737
	step
		.' Press _C_ to turn in Securing the Area
		..turnin Securing the Area##3797
	step
		.click Exile Supply Crate##757431 |tip These are small crates laying on the ground around this area. They are glowing and marked with an orange cog.
		.' Gather Exile Supplies |q Scattered Supplies##3741/Gather Exile Supplies##1 |goto NorthernWilds 4564,-5584,-735
	step
		.' _Go up_ the snowy hill |goto 4512,-5764,-733 < 20
		.' _Follow the anomaly_ to this spot |goto 4559,-5830,-709 < 10
		.' _Jump up_ onto the snowy ledge above you |goto 4572,-5810,-691 < 10
		.' _Jump across_ the gap and to the further ledge |goto 4573,-5779,-672 < 10
		.' Follow the Spatial Anomaly |q Spatial Anomaly##4526/Follow the Spatial Anomaly##2
	step
		.' Press _C_ to turn in Spatial Anomaly
		..turnin Spatial Anomaly##4526
	step
		.talk Scientist Lusk##766726
		.' Find Scientist Lusk |q Indigenous Intelligence##3668/Find Scientist Lusk##1 |goto NorthernWilds 4799,-5654,-712
	step
		.' _Enter_ the cave |goto NorthernWilds 4822,-5671,-709 < 10
		.kill Skeech Shaman##766058
		.kill Skeech Diviner##759564
		.' Kill Skeech |q Indigenous Intelligence##3668/Kill Skeech##3
		.click Imprisoned Survivor##767606 |tip They look like sacs suspended between two poles.
		.' Rescue Exile Prisoners |q Indigenous Intelligence##3668/2 |goto NorthernWilds 4964,-5667,-706
	step
		.' Press _C_ to accept the next quest
		..accept Fiery Distraction##3886
	step
		.kill 1 Coldburrow Xenobreeder##317106
		.collect Xenobreeder's Head##6954
		.' Use the Xenobreeder's Head in your Inventory |use Xenobreeder's Head##6954
		..accept Off with Her Head!##3783 |goto 5056,-5788,-713
	step
		.' _Leave_ the cave |goto 4831,-5674,-709
		.click Burning Torch##262663
		.' Grab a burning torch |q Fiery Distraction##3886/Grab a Burning Torch##1 |goto NorthernWilds 4806,-5662,-711
	step
		.click Skeech Hut##262687 |tip They are a brown huts with a grassy roof.
		.' Burn Skeech Huts |q Fiery Distraction##3886/Burn Skeech Huts##2 |goto 4732,-5629,-731
	step
		.' _Leave_ Coldburrow Cavern |goto 4612,-5659,-725
		.talk Bartol Sunward##263038
		..turnin Indigenous Intelligence##3668 |goto NorthernWilds 4356,-5683,-751
	step
		.talk Commander Durek##262217
		..turnin Scattered Supplies##3741 |goto 4337,-5681,-752
		..turnin Fiery Distraction##3886 |goto 4337,-5681,-752
		..turnin Off with Her Head!##3783 |goto 4337,-5681,-752
	step
		.talk Deadeye Brightland##262218
		..accept Contact with Thayd##3673 |goto 4339,-5684,-752
	step
		.click Signal Flare##262952
		.' Light the Signal Flares |q Contact with Thayd##3673/2 |count 1 |goto 4386,-5638,-745
		.click Signal Flare##262953
		.' Light the Signal Flares |q Contact with Thayd##3673/3 |count 2 |goto 4366,-5641,-744
		.click Signal Flare##262951
		.' Light the Signal Flares |q Contact with Thayd##3673/4 |goto 4348,-5639,-745
	step
		'Press _C_ to use your communicator:
		..turnin Contact with Thayd##3673
		..accept Calm Before the Storm##3670
	step
		.talk Deadeye Brightland##262213
		..turnin Calm Before the Storm##3670 |goto NorthernWilds 4486,-5393,-726
		..accept Shellshock!##3487 |goto NorthernWilds 4486,-5393,-726
	step
		.click Dead Exile Soldier##262269
		..accept Captives of the Dominion##3781 |goto 4496,-5340,-723
	step
		.talk Captive Exile Soldier##297652 |tip More Captive Soldiers can be found around this area.
		.' Free captive Exile Soldiers |q Captives of the Dominion##3781/##1 |goto 4440,-5337,-723
	step
		'Press _C_ to use your communicator:
		..turnin Captives of the Dominion##3781
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 25 |goto 4389,-5314,-718 
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 50 |goto NorthernWilds 4405,-5233,-706
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 75 |goto 4461,-5290,-714
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |goto 4527,-5263,-721
	step
		.kill Dominion Blasterbot##297552
		.kill Dominion Swordsman##297562
		.kill Dominion Scout##297520
		.' Kill Dominion Forces |q Shellshock!##3487/Kill Dominion forces##2 |goto 4498,-5314,-725
	step
		.kill 1 Dominion Ultrabot##297876
		.' Destroy the Dominion Ultrabot |q Shellshock!##3487/Destroy the Dominion Ultrabot##3 |goto 4435,-5165,-701
	step
		'Press _C_ to use your communicator:
		..turnin Shellshock!##3487
		..accept More Important Than Revenge##3963
	step
		.' _Go up_ the small hill and _onto the rock_ |goto 4387,-5171,-700 < 10
		.click Lone Flower##262248
		..accept A Banner Day##8962 |goto 4395,-5183,-693
	step
		.click Barrier Control Panel##262625
		.' Disable the barrier |goto 4485,-5182,-702
		|confirm |q 3963/1
	step
		.' Go up the ship's ramp |goto 4527,-5172,-701
		.click Ship Controls##262197
		.' Activate the ship's controls to depart for Algoroc |q More Important Than Revenge##3963/Activate the Ship Controls##1 |goto 4519,-5165,-695
]])