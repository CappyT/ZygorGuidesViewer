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
		..turnin Illium Awaits##9878
		..accept Illium Tour: Travel and Trade##9902
	step
		'Press _C_ to open your Communicator:
		..accept Runes, Crafting, and You##9100
		..accept Housing of the Future##9159
		..accept Chromatic Magnificence##9102
	step
		.click Battered Protostar Dye Crate |goto Illium -3362,-746,-890
		.' Find the Battered Protostar Dye Crate |q Chromatic Magnificence##9102/1
	step
		.' Salvage the Damaged Protostar Dye Collection in your bags |use Damaged Protostar Dye Collection##34057
		'Obtain Plurbinum Dye by salvaging Damaged Protostar Dye Collection |q Chromatic Magnificence##9102/2
	step
		.click Aexa's Tour Hot Rod |goto Illium -3359,-676,-890
		.' Hop on Aexa's Tour Hot Rod |q Illium Tour: Travel and Trade##9902/1
	step
		.talk Tour Guide Vector##2195 |goto Illium -3173,-722,-913
		..turnin Illium Tour: Travel and Trade##9902
		..accept Illium Tour: Equipment and Education##9903
	step
		.talk Craftmaster Tiberia Marcela##264405 |goto Illium -3198,-738,-913
		..turnin Runes, Crafting, and You##9100
		..accept Crafting Your First Rune##9101
	step
		 .click Engraving Station##264438 |goto Illium -3234,-764,-908
		.' Craft a Rune of Grit for an Earth Runeslot |q Crafting Your First Rune##9101/1
	step
		.talk Craftmaster Tiberia Marcela##264405 |goto Illium -3199,-740,-913
		..turnin Crafting Your First Rune##9101
		..accept Modification Station##9103
	step
		.click Engraving Station##264438 |goto  Illium -3234,-764,-908
		.' Visit the Engraving Station |q Modification Station##9103/1
	step
		.talk Craftmaster Tiberia Marcela##264405 |goto Illium -3197,-740,-913
		..turnin Modification Station##9103
	step
		.talk Protostar Housing Representative##263529 |goto Illium -3776,-688,-866
		.' Speak to a Protostar Housing Representative |q Housing of the Future##9159/1
	step
		.click Protostar Tram##263531
		.' Take the Protostar Tram |q Housing of the Future##9159/2 |goto Illium -3780,-683,-866
	step
		'Enter the Housing Building |goto Illium -3263,-837,-905 < 5
		.click Zen Pond##263505 |goto Illium -3309,-862,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 25
	step
		.click Power Generator##263502 |goto Illium -3329,-879,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 50
	step
		.click Windmill##263503 |goto Illium -3308,-901,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3 |count 75
	step
		.click Storage Unit##263499 |goto Illium -3289,-883,-906
		.' Check out the Housing of the Future displays |q Housing of the Future##9159/3
	step
		.click Housing Model##263524 |goto Illium -3268,-823,-905
		.' Activate the Housing Model hologram |q Housing of the Future##9159/4
	step
		'Click _Accept_ to teleport to your Home
		'Click the _Housing Bonus Board_ and get the _Questing Bonus_
		'Step on portal to leave home
		'Press _C_ to open your Communicator:
		..turnin Housing of the Future##9159
	step
		.talk Protostar Appearance Modificator##264392 |goto Illium -3193,-613,-910
		..turnin Chromatic Magnificence##9102 |tip This will reward a chest that will give you a dye.  Use dye from bag to learn it
	step
		.click Vector's Tour Hot Rod | goto Illium -3173,-719,-913
		. ' Hop on Vector's Tour Hot Rod |q Illium Tour: Equipment and Education##9903/1
	step
		.talk Tour Guide Crydax |goto Illium -2986,-980,-896
		..turnin Illium Tour: Equipment and Education##9903
		..accept Illium Tour: Seat of the Empire##9904
	step
		'If you need to visit bank, AH, or mail this is the best time
		.click Crydax's Tour Hot Rod |goto Illium -2985,-985,-896
		. ' Hop on Crydax's Tour Hot Rod |q Illium Tour:Seat of the Empire##9904/1
	step
		'Press _C_ to open your Communicator:
		..turnin Illium Tour: Seat of the Empire##9904
		..accept Auroria Deployment##9905
	step
		'Press _I_, and use _Illium Transmat Coordinates_
		.click Hot Rod to Hycrest | goto Illium -2803, -1409, -921
		.'Take the Hot Rod to Hycrest |q Auroria Deployment##9905/1
	]]
)
