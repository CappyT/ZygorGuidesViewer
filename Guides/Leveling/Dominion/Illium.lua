if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Illium (15)",
	{
	faction="Dominion",
	startlevel=15,
	endlevel=15,
	nextguide="Dominion\\Auroria (15-23)",
	image="ZygorUIGuides:Illium",
	description="Illium is the Dominion capital.  Here you will find crafting stations, PvP and PvE vendors, Auction House, Banks among other things.  This guide covers quests given to players at level 15."
	},
	[[
	step
		.talk Tour Guide Aexa##2193 |goto Illium -3363,-674,-890
		..turnin Traveling to Illium##9876 |only if completedquest(5907)	// Deradune gives this
		..turnin To the City of Illium##9877 |only if completedquest(6641)	// Ellevar gives this
		..turnin Illium Awaits##9878
		..accept Illium Tour: Travel and Trade##9902
	step
		'Press _C_ to open your Communicator:
		..accept Runes, Crafting, and You##9100 |only if minlevel(15)	// Only available to level 15+
		..accept Housing of the Future##9159
		..accept Chromatic Magnificence##9102
	step
		.click Battered Protostar Dye Crate |goto Illium -3362,-746,-890
		.' Find the Battered Protostar Dye Crate |q Chromatic Magnificence##9102/1
	step
		.click Aexa's Tour Hot Rod |goto Illium -3359,-676,-890
		.' Hop on Aexa's Tour Hot Rod |q Illium Tour: Travel and Trade##9902/1
	step
		.talk Protostar Appearance Modificator##264392 |goto Illium -3193,-613,-910 |tip Don't turn quest to Vector yet
		..turnin Chromatic Magnificence##9102 |tip This rewards a chest.  Open chest to get dye, and use dye to learn it.
	step
		.talk Craftmaster Tiberia Marcela##264405 |goto Illium -3198,-738,-913 |tip Don't turn quest to Vector yet
		..turnin Runes, Crafting, and You##9100
		..accept Crafting Your First Rune##9101
		|only if minlevel(15)
	step
		' Click _Runecrafting Station_
		' Click _Life_ to the left, then _Search_
		' Click recipe _Lesser Life Rune: Health_ and click _Craft_
		.' Craft a Lesser Life Rune: Health for a Life Runeslot |q Crafting Your First Rune##9101/1 |goto Illium -3234,-764,-908
		|only if minlevel(15)
	step
		.talk Craftmaster Tiberia Marcela##264405 |goto Illium -3199,-740,-913
		..turnin Crafting Your First Rune##9101
		|only if minlevel(15)
	step
		.talk Protostar Housing Representative##263529 |goto Illium -3267,-840,-905
		.' Speak to a Protostar Housing Representative |q Housing of the Future##9159/1
	step
		.' _Enter_ the Housing Building |goto Illium -3264,-837,-905 <5
		.click Zen Pond##263505 |goto Illium -3309,-862,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 1
	step
		.click Power Generator##263502 |goto Illium -3329,-879,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 2
	step
		.click Windmill##263503 |goto Illium -3308,-901,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 3
	step
		.click Storage Unit##263499 |goto Illium -3289,-883,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 4
	step
		.' _Leave_ the Housing Building |goto Illium -3263,-837,-905 <10
		.click Housing Model##263524 |goto Illium -3268,-826,-905 <5
		.' Activate the Housing Model hologram |q Housing of the Future##9159/4
	step
		'Press _C_ to open your Communicator:
		..turnin Housing of the Future##9159 |tip You can optionally click Yes to teleport to your Home and start building it
	step
		.talk Tour Guide Vector##2195 |goto Illium -3173,-722,-913
		..turnin Illium Tour: Travel and Trade##9902
		..accept Illium Tour: Equipment and Education##9903
	step
		.click Vector's Tour Hot Rod | goto Illium -3173,-719,-913
		. ' Hop on Vector's Tour Hot Rod |q Illium Tour: Equipment and Education##9903/1
	step
		.talk Tour Guide Crydax |goto Illium -2986,-980,-896 |tip If you need bank or mail, visit them now.  They are in the large building to your left.
		..turnin Illium Tour: Equipment and Education##9903
		..accept Illium Tour: Seat of the Empire##9904
	step
		.click Crydax's Tour Hot Rod |goto Illium -2985,-985,-896
		. ' Hop on Crydax's Tour Hot Rod |q Illium Tour:Seat of the Empire##9904/1
	step
		'Press _C_ to open your Communicator:
		..turnin Illium Tour: Seat of the Empire##9904
		..accept Auroria Deployment##9905
	step
		'Press _I_ to open your inventory.
		'Right-click the _Illium Transmat Coordinates_ in your inventory.
		'You can teleport to Illium every 30 minutes.
		|confirm |q 9905
	]]
)
