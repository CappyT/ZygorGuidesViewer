if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Thayd (15)",
	{
	faction="Exiles",
	startlevel=15,
	endlevel=15,
	nextguide="Exiles\\Galeras (15-23)",
	image="ZygorUIGuides:Thayd",
	description="Thayd is the Exiles capital.  Here you will find crafting stations, PvP and PvE vendors, Auction House, Banks among other things.  This guide covers quests given to players at level 15."
	},
	[[
	step
		.talk Tour Guide Jakke
		..turnin Travelin' to Thayd##5270 |only if completedquest(4829)		// Algoric gives this
		..turnin To the City of Thayd##8750 |only if completedquest(6901)	// Celestion gives this
		..turnin Thayd Awaits##5312 |goto Thayd 3927,-2388,-777
		..accept Thayd Tour: Spaceships and Science##9898
	step
		.' Press _C_ to use your Communicator:
		..accept Housing of the Future##9160
		..accept Runes, Crafting, and You##9096 |only if minlevel(15)	// Only available to level 15+
		..accept Chromatic Magnificence##9083
	step
		.click Jakke's Tour Grinder
		.' Hop on Jakke's Tour Grinder |q 9898/1 |goto Thayd 3927,-2388,-777
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Runes, Crafting, and You##9096
		..accept Basic Rune Crafting##9097 |goto Thayd 4361,-2353,-789
		|only if minlevel(15)
	step
		' Click _Runecrafting Station_
		' Click _Life_ to the left, then _Search_
		' Click recipe _Lesser Life Rune: Health_ and click _Craft_
		.' Craft a _Lesser Life Rune: Health_ for a Life Runeslot |q Basic Rune Crafting##9097/1 |goto Thayd 4373,-2334,-788
		|only if minlevel(15)
	step
		.talk Crafting Trainer Thorpe##273763
		..turnin Basic Rune Crafting##9097 |goto Thayd 4361,-2353,-789
		|only if minlevel(15)
	step
		.' Press_C_ to use your Communicator:
		..accept Sim Core: A Remarkable Discovery##8834 |goto Thayd 4096,-2911,-858
		|only if minlevel(15)
	step
		.click Battered Protostar Dye Crate
		.' Find the Battered Protostar Dye Crate |q Chromatic Magnificence##9083/1 |goto Thayd 4269,-2448,-815
		 |tip If you need bank or mail, visit them now
	step
		.talk Protostar Appearance Modificator##270792
		..turnin Chromatic Magnificence##9083 |goto Thayd 4268,-2331,-804 |tip This rewards a chest.  Open chest to get dye, and use dye to learn it.
	step
		.' _Follow the path_ up. |goto Thayd 4325,-2361,-796 <15
		.talk Tour Guide Beraxa |goto Thayd 4341,-2323,-790
		..turnin Thayd Tour: Spaceships and Science##9898
		..accept Thayd Tour: Justice and Jungles##9899
	step
		.click Beraxa's Tour Grinder
		.'Hop on Beraxa's Tour Grinder |q Thayd Tour: Justice and Jungles##9899/1 |goto Thayd 4342,-2322,-790 <5
	step
		.' _Enter_ the Housing Building |goto Thayd 4040,-1688,-820 <10
		.click Zen Pond##263505 |goto Thayd 4078,-1653,-821
		.' Check out the Housing of the Future displays |q Housing of the Future##9160/3 |count 1
	step
		.click Power Generator##263502 |goto Thayd 4092,-1630,-821
		.' Check out the Housing of the Future displays |q Housing of the Future##9160/3 |count 2
	step
		.click Windmill##263503 |goto Thayd 4067,-1615,-821
		.' Check out the Housing of the Future displays |q Housing of the Future##9160/3 |count 3
	step
		.click Storage Unit##263499 |goto Thayd 4052,-1637,-821
		.' Check out the Housing of the Future displays |q Housing of the Future##9160/3 |count 4
	step
		.' _Leave_ the Housing Building |goto Thayd 4040,-1688,-820 <10
		.click Housing Model |goto Thayd 4047,-1699,-821 <5
		.' Activate the Housing Model hologram |q Housing of the Future##9160/4
	step
		'Press _C_ to open your Communicator:
		..turnin Housing of the Future##9160 |tip You can optionally click Yes to teleport to your Home and start building it
	step
		.talk Tour Guide Darak |goto Thayd 4083,-1734,-821
		..turnin Thayd Tour: Justice and Jungles##9899
		..accept Thayd Tour: Gate to Galeras##9900
	step
		.click Darak's Tour Grinder |goto Thayd 4089,-1728,-821
		.'Hop on Darak's Tour Grinder |q Thayd Tour: Gate to Galeras##9900/1
	step
		'Press _C_ to open your Communicator:
		..turnin Thayd Tour: Gate to Galeras##9900
		..accept Galeras Deployment##4964
	step
		'Press _I_ to open your inventory.
		'Right-click the _Thayd Transmat Coordinates_ in your inventory.
		'You can teleport to Thayd every 30 minutes.
		|confirm |q 4964
	]]
)
