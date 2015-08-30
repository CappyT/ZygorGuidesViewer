if not ZGV then return end

ZGV:RegisterGuide("Exiles\\Everstar Grove (3-6)",
	{
		faction="Exiles",
		startlevel=3,
		endlevel=6,
		nextguide="Exiles\\Celestion (6-15)",
		image="ZygorUIGuides:EverstarGrove",
		description="Everstar Grove is a zone in northern Alizar in WildStar. Everstar Grove is a beginner zone for The Exiles, and is suited for characters level 3-6. ",
	},[[
	step
		.' _Go through_ the doorway into the long hallway |goto ExileArkShipTutorial -998,812,83
		.' _Leave_ the long hallway |goto ExileArkShipTutorial -998,729,85
		.' _Go through_ the doorway Towards the Departure Terminal |goto -961,695,83 	
		.click Departures Terminal:Greenleaf Glade##262599
		.' Travel to Everstar Grove on Nexus |q Never Thayd Away##6760/3 |goto -920,698,88
		|only Human 
	step
		.' Travel to Everstar Grove on Nexus |q Never Thayd Away##6761/3 |goto -920,698,88
		|only Aurin
	step
		.click Departures Terminal: Whisperwind Hollow##262599
		.' Travel to Everstar Grove on Nexus |q The Ravenous Grove##6762/2 |goto -922,587,83
		|only Mordesh
	step
		.' _Go through_ the door |goto -962,946,83
		.' _Follow the path_ through the open room |goto -997,870,83
		.' _Go through_ the door |goto -998,720,83
		.' _Enter_ the docking area |goto -963,694,83
		.click Departures Terminal:Everstar Grove##262600
		.' Travel to Everstar Grove on Nexus  |q Base Drop##6759/3 |goto ExileArkShipTutorial -920,698,88
		|only Granok
//Mordesh
	step
		.talk Alchemist Kossvak##263160 |goto EverstarGrove -285,-2362,-937
		..turnin The Ravenous Grove##6762
		..accept Welcome to Everstar Grove##9124
		|only Mordesh
	step
		.talk Lukas Piotrev##263176 |goto -312,-2344,-942
		..turnin Welcome to Everstar Grove##9124
		..accept Combating the Contagion##6297
		|only Mordesh
	step
		.' Kill Ravenous Mordesh |q Combating the Contagion##6297/1 |goto EverstarGrove -418,-2355,-951
		.click Infected Alchemist##436657
		.' Put Infected Alchemists out of their misery |q Combating the Contagion##6297/2 |goto EverstarGrove -418,-2355,-951
		|only Mordesh
	step
		.talk Scout Frostfield##263162 |goto EverstarGrove -769,-2274,-905
		..turnin Never Thayd Away##6760
		..accept Welcome to Everstar Grove##9113
		|only Human
	step
		.talk Keeper Shyroot##263161 |goto EverstarGrove -769,-2275,-905
		..turnin Everstar Grove##6761
		..accept Welcome to Everstar Grove##9115
		|only Aurin
	step
		.talk Trooper Takag##263163 |goto EverstarGrove -770,-2274,-905
		..turnin Base Drop##6759
		..accept Welcome to Everstar Grove##9072
		|only Granok
	step
		.talk Fenra Skytree##263175
		..turnin Welcome to Everstar Grove##9113 |goto EverstarGrove -761,-2274,-905 |only Human
		..turnin Welcome to Everstar Grove##9115 |goto EverstarGrove -761,-2274,-905 |only Aurin
		..turnin Welcome to Everstar Grove##9072 |goto EverstarGrove -761,-2274,-905 |only Granok
		..accept Nature's Uprising##6296 |goto EverstarGrove -761,-2274,-905
		|only Human, Aurin, Granok
	step
		.' Kill Mystwing Shredders and Mystwing Boomers |q Nature's Uprising##6296/1 |goto EverstarGrove -774,-2406,-928
		.click Trapped Mordesh##272816 |tip More of these can be found around the crash site.
		.' Rescue Exiles from Bramble Traps |q Nature's Uprising##6296/2 |goto EverstarGrove -741,-2506,-942
		|only Human, Aurin, Granok
	step
		.talk Lucy Lazarin##263170
		..turnin Combating the Contagion##6297 |goto EverstarGrove -474,-2715,-989 |only Mordesh 
		..turnin Nature's Uprising##6296 |goto EverstarGrove -476,-2716,-990 |only Human, Aurin, Granok
		..accept The Arboretum##7499 |goto EverstarGrove -476,-2716,-990 |only Mordesh
		..accept The Arboretum##8804 |goto EverstarGrove -476,-2716,-990 |only Human, Aurin, Granok
	step
		.' Follow the hill _up_ |goto EverstarGrove -402,-2833,-982 <10
		.' _Go up_ the ramp |goto EverstarGrove -233,-2965,-949 <10
		.' Gain access to Exo-Lab 71 |q The Arboretum##8804/1 |goto -209,-3003,-938 |only Human, Aurin, Granok
		.' Gain access to Exo-Lab 71 |q The Arboretum##7499/1 |goto -209,-3003,-938 |only Mordesh
	step
		.click Psygill Mushroom##277130
		.kill Elderoot Deathcap##278643
		.' Gather Psygill Mushrooms |q The Arboretum##8804/2 |goto -143,-3112,-1122 |only Human, Aurin, Granok
		.' Gather Psygill Mushrooms |q The Arboretum##7499/2 |goto -143,-3112,-1122 |only Mordesh
	step
		.talk Dead Alchemist##263070
		..accept The Serum is the Life##6438 |goto EverstarGrove -174,-3177,-1119
	step
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1 |count 20 |goto EverstarGrove -195,-3179,-1119
	step
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1 |count 40 |goto EverstarGrove -142,-3154,-1122
	step
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1 |count 60 |goto EverstarGrove -136,-3111,-1122
	step
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1 |count 80 |goto EverstarGrove -164,-3120,-1122
	step
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1 |count 100 |goto EverstarGrove -148,-3091,-1122
	step
		.' _Go through_ the green circle |goto EverstarGrove -241,-3016,-1119
		.' Head toward Elderoot Refuge |q The Arboretum##8804/3 |goto -469,-2811,-993 |only Human, Aurin, Granok
		.' Head toward Elderoot Refuge |q The Arboretum##7499/3 |goto -469,-2811,-993 |only Mordesh
	step
		.talk Tender Choshi##263045
		.accept Trampled Under Hoof##8978 |goto -511,-3051,-945
	step
		.talk Queen Myala Everstar##263179 |goto EverstarGrove -516,-3312,-906 
		.' Check in with Queen Myala Everstar |q The Arboretum##8804/4 |only Human, Aurin, Granok
		.' Check in with Queen Myala Everstar |q The Arboretum##7499/4 |only Mordesh
	step
		.talk Victor Lazarin##263178
		..turnin The Arboretum##8804 |goto EverstarGrove -425,-3268,-893|only Human, Aurin, Granok
		..turnin The Arboretum##7499 |goto EverstarGrove -425,-3268,-893|only Mordesh
		..turnin The Serum is the Life##6438 |goto EverstarGrove -425,-3268,-893
		..accept Living Batteries##6298 |goto EverstarGrove -425,-3268,-893
	step
		.kill Grove Guardian##280243
		.' Collect Living Cores |q Living Batteries##6298/1 |goto EverstarGrove -305,-3178,-912
	step
		.' Press _C_ to use your Communicator:
		..turnin Living Batteries##6298
		..accept Root Resuscitation##6301
	step
		.click Lifebranch Controller##263080
		.' Power Lifebranch Controller |q Root Resuscitation##6301/2 |goto EverstarGrove -265,-3116,-910
	step
		.click Livingroot Controller##263079
		.' Power the Livingroot Controller |q Root Resuscitation##6301/1 |goto EverstarGrove -215,-3176,-911
	step
		.' Follow the path |goto EverstarGrove -354,-3205,-912 <20
		.' _Go up_ the hill |goto -379,-3296,-905 <20
		.talk Victor Lazarin##263178 |goto -425,-3269,-893
		..turnin Root Resuscitation##6301
		..accept Waking Elderoot##6302
	step
		.click Espernetic Interface##263159
		.' Access the Espernetic Interface |q Waking Elderoot##6302/1 |goto -397,-3260,-886
	step
		.talk Elderoot##263164 |goto EverstarGrove -397,-3260,-886
		..turnin Waking Elderoot##6302
		..accept Elderoot's Request##7540
	step
		.talk Queen Myala Everstar##263173 |goto EverstarGrove -400,-3262,-886
		..accept Save the Keepers##6304
	step
		.talk Victor Lazarin##263178 |goto EverstarGrove -424,-3267,-893
		..accept A Plagued Forest##6303
	step
		.kill Barkblight Feeder##283576 |tip They are located all around this area.
		.' Collect Barkblight Glands |q A Plagued Forest##6303/1 |goto EverstarGrove -634,-3701,-949
		.click Livingroot Keeper##279959 |tip They are located all around this area.
		.' Rescue Livingroot Keepers |q Save the Keepers##6304/1 |goto -634,-3701,-949
	step
		.kill 1 Barkblight Horror##270238 |goto EverstarGrove -669,-3855,-962
		.collect Barkblight Horror's Skull##15961
		.' Use the Darkblight Horror's Skull in your inventory |use Barkblight Horror's Skull##15961
		..accept A Lurking Threat##6309
	step
		.' Press _C_ to use your Communicator:
		..turnin A Plagued Forest##6303
		..accept Queen of the Blight##6305
		..turnin Save the Keepers##6304
		..accept Mender Bender##6306
	step
		.' Follow the path _down_ |goto EverstarGrove -656,-3766,-964
		.' _Enter_ the cave |goto -604,-3778,-977
		.' Follow the path _down_ |goto -501,-3710,-1007
		.' _Go around_ the corner |goto EverstarGrove -412,-3748,-1016
		.click Livingroot Mender##263007
		.' Revive the first Livingroot Mender |q Mender Bender##6306/1 |goto -406,-3593,-1017
	step
		.click Livingroot Mender##263006
		.' Revive the second Livingroot Mender |q Mender Bender##6306/2 |goto EverstarGrove -312,-3580,-1014
	step
		.kill 1 Barkblight Queen##288492
		.' Kill the Barkblight Queen |q Queen of the Blight##6305/1 |goto EverstarGrove -387,-3549,-1017
	step
		.' Press _C_ to use your Communicator:
		..turnin Queen of the Blight##6305
	step
		.click Livingroot Mender##263008
		.' Revive the final Livingroot Mender |q Mender Bender##6306/3 |goto -398,-3505,-1015
	step
		.' Press _C_ to use your Communicator:
		..turnin Mender Bender##6306
	step
		.' _Go to_ the open passage |goto EverstarGrove -380,-3661,-1016
		.' _Follow_ the narrow path |goto -387,-3730,-1015
		.' _Go around_ the corner |goto -452,-3685,-1016
		.' _Go up_ the hill |goto -519,-3719,-995
		.' _Leave_ the cave |goto EverstarGrove -609,-3784,-975
		.talk Livingroot Keeper##263175
		..accept Replanting Campaign##6308 |goto EverstarGrove -626,-3813,-965
	step
		.' Summon Livingroot Keepers at Fertile Ground |q Replanting Campaign##6308/1 |count 33 |goto -549,-3614,-948
	step
		.' Summon Livingroot Keepers at Fertile Ground |q Replanting Campaign##6308/1 |count 66 |goto -495,-3590,-949
	step
		.' Summon Livingroot Keepers at Fertile Ground |q Replanting Campaign##6308/1 |count 100 |goto -554,-3533,-947
	step
		.' Press _C_ to use your Communicator:
		..turnin Replanting Campaign##6308
	step
		.' _Follow_ the path |goto -429,-3287,-900 <15
	step
		.talk Victor Lazarin##263179 |goto EverstarGrove -423,-3267,-893
		..turnin A Lurking Threat##6309
	step
		.talk Elderoot##263164 |goto -396,-3259,-886
		..turnin Elderoot's Request##7540
		..accept Everything You Ever Wanted to Know##8784
	step
		.talk Queen Myala Everstar##263171 |goto EverstarGrove -516,-3312,-906
		..turnin Everything You Ever Wanted to Know##8784
		..accept Taking the Offensive##6335
	step
		.talk Vengeful Mender##263165
		..accept By the Throat##7539 |goto EverstarGrove -367,-3393,-910
	step
		.click Elderoot Seed##285092 |tip They can be found around this area.
		.' Collect Elderoot Seeds |q By the Throat##7539/1 |goto -228,-3512,-919
	step
		.talk Arwick Redleaf##263177 |goto EverstarGrove -115,-3472,-927
		..turnin Taking the Offensive##6335
		..accept Arwick's Revenge##6310
	step
		.talk Victor Lazarin##263172
		..accept No Escape##6311 |goto -113,-3476,-927
	step
		'This is an auto complete quest
		.talk Firestorm Scout  |goto 163,-3427,-920
		..turnin For the Glory of the Dominion##8977
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |count 33 |goto EverstarGrove 244,-3476,-945
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |count 66 |goto EverstarGrove 385,-3520,-944
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |goto EverstarGrove 380,-3460,-945
	step
		.kill Firestorm Bomber##292465
		.kill Firestorm Sentry##292747
		.' Kill Firestorm forces |q Arwick's Revenge##6310/1 |goto EverstarGrove 409,-3473,-947
	step
		.' Press _C_ to use your Communicator:
		..turnin Arwick's Revenge##6310
		..turnin By the Throat##7539
		..accept Dominion's Demise##6312
	step
		.click Firestorm Drilldozer##262938
		.' Use Gas Bombs on Firestorm Drilldozers |q No Escape##6311/1 |count 33 |goto EverstarGrove 400,-3539,-947
	step
		.click Firestorm Drilldozer##262938
		.' Use Gas Bombs on Firestorm Drilldozers |q No Escape##6311/1 |count 66 |goto 490,-3529,-949
	step
		.click Firestorm Drilldozer##262938
		.' Use Gas Bombs on Firestorm Drilldozers |q No Escape##6311/1 |count |goto EverstarGrove 477,-3460,-948
	step
		.' Press _C_ to use your Communicator:
		..turnin No Escape##6311
	step
		.kill Firestorm Tank##292693
		.' Destroy the Firestorm Tank |q Dominion's Demise##6312/1 |goto EverstarGrove 622,-3448,-949
	step
		.' _Enter_ the cave |goto EverstarGrove 670,-3345,-939
		.talk Queen Myala Everstar##262911
		..turnin Dominion's Demise##6312 |goto 658,-3299,-958
		..accept The Path to Celestion##6844 |goto 658,-3299,-958
	step
		.click Portal to Celestion##262907
		.' Take the portal to Celestion |q The Path to Celestion##6844/1 |goto EverstarGrove 651,-3291,-958
]])