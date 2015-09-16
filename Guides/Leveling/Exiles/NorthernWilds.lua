if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Northern Wilds (3-6)",
	{
	faction="Exiles",
	startlevel=3,
	endlevel=6,
	nextguide="Exiles\\Algoroc (6-15)",
	image="ZygorUIGuides:NorthernWilds", 
	description="Northern Wilds is a zone in northern Alizar in WildStar. Northern Wilds is a beginner zone for The Exiles, and is suited for characters level 3-6. ",
	},
	[[
	step
		.click Departures Terminal: The Northern Wilds
		.' Travel to Northern Wilds as Nexus landing point |q Nexus, Ho!##6760/2 |goto ExileArkShipTutorial -855,806,78
		|only if havequest(6760) // will not show for players who skipped arkship
	step
		.talk Scout Frostfield##263025 |goto NorthernWilds 4099,-5163,-666
		..turnin Nexus, Ho!##6760
		..accept Welcome to Northern Wilds##9112
		|only if completedquest(8913) // will not show for players who skipped arkship
	step
		.talk Commander Durek##263106 |goto NorthernWilds 4124,-5245,-687
		..turnin Welcome to Northern Wilds##9112 |only if havequest(9112) // only arkship players have this
		..accept Reporting for Duty##3480
	step
		.talk Explorer Wennie |goto NorthenWilds 4112,-5253,-688
		..turnin Explorers Union##10065
		|only Explorer
	step
		.talk Scientist Mikael |goto NorthenWilds 4112,-5253,-688
		..turnin Exile Academy of Science##10066
		|only Scientist
	step
		.talk Settler Vales |goto NorthenWilds 4112,-5253,-688
		..turnin The Pioneering League##10067
		|only Settler
	step
		.talk Soldier Benzaga
		..turnin Free Companies of Nexus##10068 |goto NorthenWilds 4112,-5253,-688
		|only Soldier
	step
		.talk Professor Rhoda Wellspring
		..turnin Stormy Weather##10138 |goto NorthenWilds 4113,-5258,-689
	step
		.click Trapped Survivor##417970
		.' Rescue Trapped Survivors |q Repoting for Duty##3480/1 |count 33 |goto NorthernWilds 4186,-5316,-705 |tip Kill Yeti on your way
	step
		.click Trapped Survivor##417970
		.' Rescue Trapped Survivors |q Reporting for Duty##3480/1 |count 66 |goto NorthernWilds 4144,-5379,-722 |tip Kill Yeti on your way
	step
		.click Trapped Survivor##417970
		.' Rescue Trapped Survivors |q Reporting for Duty##3480/1 |count 100 |goto NorthernWilds 4199,-5408,-732 |tip Kill Yeti on your way
	step
		.' Kill Yeti |q Reporting for Duty##3480/2 |goto NorthernWilds 4190,-5384,-726
	step
		.' _Jump into_ the burning wreckage |goto NorthernWilds 4196,-5590,-746
		.talk Nooks Barkbiter##262948
		..turnin Wreckage Refuge##8961 |goto NorthernWilds 4209,-5593,-747
	step
		.click Nooks' Warm Brew##262947
		.' Get Nooks' buff |goto NorthernWilds 4205,-5592,-747
		|confirm |q 3480
	step
		.talk Deadeye Brightland##263109
		..turnin Reporting for Duty##3480 |goto NorthernWilds 4185,-5694,-723
		..accept The Tower##3667 |goto NorthernWilds 4185,-5695,-723
	step
		.' Investigate the Ancient Tower |q The Tower##3667/1 |goto NorthernWilds 4152,-5719,-722
	step
		.click Master Control Panel##262893
		..turnin The Tower##3667 |goto NorthernWilds 4147,-5729,-723
		..accept Empowered Tower##3486 |goto NorthernWilds 4147,-5729,-723
	step
		.' _Exit_ the tower |goto NorthernWilds 4155,-5714,-722 <10
		.' _Go up_ the stairs |goto NorthernWilds 4192,-5731,-721 < 20
		.' Follow the second set of _stairs up_ |goto NorthernWilds 4157,-5800,-702 <15
		.' Gather Loftite Crystals by jumping through them or killing Crystal Guardians |tip They are floating above the ground around this area.
		.kill Crystal Guardian##759084
		.' Collect Loftite Crystal Fragments |q Empowered Tower##3486/Collect Loftite Crystal Fragments##2 |goto NorthernWilds 4106,-5837,-699
	step
		.' _Go through_ the mechanical door |goto NorthernWilds 4112,-5897,-686 <10
		.click Primal Disruptor##262314
		..accept Finding the Primal Disruptor##8960 |goto NorthernWilds 4115,-5931,-690
	step
		.' _Go back down_ the stairs |goto NorthernWilds 4157,-5801,-702 <15
		.' _Re-enter_ the tower |goto NorthernWilds 4154,-5716,-722 <10
		.click Master Control Panel##262893
		..turnin Empowered Tower##3486 |goto NorthernWilds 4147,-5728,-723
	step
		.' Press _C_ to accept the next quest
		..accept Setting Up Camp##3671
	step
		.talk Deadeye Brightland##262218
		..turnin Setting Up Camp##3671 |goto NorthernWilds 4340,-5684,-752
		..accept Indigenous Intelligence##3668
	step
		.talk Commander Durek##262217 |goto NorthernWilds 4338,-5680,-752
		..accept Scattered Supplies##3741
		..accept Securing the Area##3797
	step
		.talk Crafting Trainer Thorpe |goto NorthenWilds 4360,-5709,-752
		..turnin Rune Runedown##10162
	step
		' Press _I_ to open your inventory
		' _Ctrl_ + _Right Click_ shoulders, select _Edit Runes_
		' Click the Spiral button, select the Rune
		' Equip the shoulders
		.' When done leave the camp |goto NorthernWilds 4396,-5685,-749 <5 |c |q 3797
	step
		.' _Go to_ this spot
		.' Press _C_ to use your communicator:
		..accept Spatial Anomaly##4526 |goto NorthernWilds 4506,-5713,-741 <5
	step
		.talk Trooper Renzo##263111
		..accept Final Farewell##3712 |goto NorthernWilds 4539,-5723,-733
	step

		.' Kill Rootbrutes Grimspore and Yeti |q Securing the Area##3797/Kill Rootbrutes and yeti##1 |goto NorthernWilds 4525,-5719,-737
		.' Gather Exile Supplies |q Scattered Supplies##3741/Gather Exile Supplies##1 |tip Small crates on the ground.
	step
		.' Press _C_ to turn in Securing the Area
		..turnin Securing the Area##3797
	step
		.' _Go up_ the snowy hill |goto NorthernWilds 4512,-5764,-733 < 20
		.' _Follow the anomaly_ to this spot |goto NorthernWilds 4559,-5830,-709 < 10
		.' _Jump up_ onto the snowy ledge above you |goto NorthernWilds 4572,-5810,-691 < 10
		.' _Jump across_ the gap and to the further ledge |goto NorthernWilds 4573,-5779,-672 < 10
		.' Follow the Spatial Anomaly |q Spatial Anomaly##4526/Follow the Spatial Anomaly##2
	step
		.' Press _C_ to turn in Spatial Anomaly
		..turnin Spatial Anomaly##4526
	step
		.talk Scientist Lusk##766726
		.' Find Scientist Lusk |q Indigenous Intelligence##3668/Find Scientist Lusk##1 |goto NorthernWilds 4799,-5654,-712
	step
		.' _Enter_ the cave |goto NorthernWilds 4822,-5671,-709 < 10
		.click Imprisoned Survivor##767606 |tip They look like sacs suspended between two poles.
		.' Rescue Exile Prisoners |q Indigenous Intelligence##3668/2 |goto NorthernWilds 4964,-5667,-706
		.' Kill Skeech |q Indigenous Intelligence##3668/3
	step
		.' Press _C_ to accept the next quest
		..accept Fiery Distraction##3886
	step
		.kill 1 Coldburrow Xenobreeder##317106
		.collect Xenobreeder's Head##6954
		.' Use the Xenobreeder's Head in your Inventory |use Xenobreeder's Head##6954
		..accept Off with Her Head!##3783 |goto 5056,-5788,-713
	step
		.' _Leave_ the cave |goto NorthernWilds 4831,-5674,-709
		.click Burning Torch##262663
		.' Grab a burning torch |q Fiery Distraction##3886/Grab a Burning Torch##1 |goto NorthernWilds 4806,-5662,-711
	step
		.click Skeech Hut##262687 |tip They are a brown huts with a grassy roof.
		.' Burn Skeech Huts |q Fiery Distraction##3886/2 |goto NorthernWilds 4732,-5629,-731
	step
		.' _Leave_ Coldburrow Cavern area |goto NorthernWilds 4612,-5659,-725
		.talk Bartol Sunward##263038
		..turnin Indigenous Intelligence##3668 |goto NorthernWilds 4356,-5683,-751
	step
		.talk Commander Durek##262217
		..turnin Scattered Supplies##3741 |goto NorthernWilds 4337,-5681,-752
		..turnin Fiery Distraction##3886 |goto NorthernWilds 4337,-5681,-752
		..turnin Off with Her Head!##3783 |goto NorthernWilds 4337,-5681,-752
	step
		.talk Deadeye Brightland##262218
		..accept Contact with Thayd##3673 |goto NorthernWilds 4339,-5684,-752
	step
		.click Signal Flare##262952
		.' Light the Signal Flares |q Contact with Thayd##3673/2 |count 1 |goto NorthernWilds 4386,-5638,-745
		.click Signal Flare##262953
		.' Light the Signal Flares |q Contact with Thayd##3673/3 |count 2 |goto NorthernWilds 4366,-5641,-744
		.click Signal Flare##262951
		.' Light the Signal Flares |q Contact with Thayd##3673/4 |goto NorthernWilds 4348,-5639,-745
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
		..accept Captives of the Dominion##3781 |goto NorthernWilds 4496,-5340,-723
	step
		.talk Captive Exile Soldier##297652 |tip There are more around this area.
		.' Free captive Exile Soldiers |q Captives of the Dominion##3781/1 |count 33 |goto NorthernWilds 4440,-5337,-723
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 25 |goto NorthernWilds 4389,-5314,-718 
	step
		.talk Captive Exile Soldier##297652 |tip There are more around this area.
		.' Free captive Exile Soldiers |q Captives of the Dominion##3781/1 |count 66 |goto NorthernWilds 4421,-5298,-721
	step
		.talk Captive Exile Soldier##297652 |tip There are more around this area.
		.' Free captive Exile Soldiers |q Captives of the Dominion##3781/1 |count 100 |goto NorthernWilds 4392,-5283,-720
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 50 |goto NorthernWilds 4405,-5233,-706
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 75 |goto NorthernWilds 4461,-5290,-714
	step
		.click Dominion Cannon##262651 |tip Click and rapidly tap F.
		.' Overload Dominion Cannons |q Shellshock!##3487/1 |count 100 |goto NorthernWilds 4527,-5263,-721
	step
		'Press _C_ to use your communicator:
		..turnin Captives of the Dominion##3781
	step
		.kill Dominion Blasterbot##297552
		.kill Dominion Swordsman##297562
		.kill Dominion Scout##297520
		.' Kill Dominion Forces |q Shellshock!##3487/2 |goto NorthernWilds 4498,-5314,-725
	step
		.kill 1 Dominion Ultrabot##297876
		.' Destroy the Dominion Ultrabot |q Shellshock!##3487/3 |goto NorthernWilds 4435,-5165,-701
	step
		'Press _C_ to use your communicator:
		..turnin Shellshock!##3487
		..accept More Important Than Revenge##3963
	step
		.' _Go up_ the small hill and _onto the rock_ |goto NorthernWilds 4387,-5171,-700 < 10
		.click Lone Flower##262248
		..accept A Banner Day##8962 |goto NorthernWilds 4395,-5183,-693
	step
		.click Barrier Control Panel##262625
		.' Disable the barrier |goto NorthernWilds 4485,-5182,-702 <5
		.' Go up the ship's ramp |goto NorthernWilds 4527,-5172,-701 <5
		.click Ship Controls##262197
		.' Activate the ship's controls to depart for Algoroc |q More Important Than Revenge##3963/1 |goto NorthernWilds 4519,-5165,-695
	]]
)