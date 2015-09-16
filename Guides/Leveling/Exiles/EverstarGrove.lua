if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Everstar Grove (3-6)",
	{
	faction="Exiles",
	startlevel=3,
	endlevel=6,
	nextguide="Exiles\\Celestion (6-15)",
	image="ZygorUIGuides:EverstarGrove",
	description="Everstar Grove is a zone in northern Alizar in WildStar. Everstar Grove is a beginner zone for The Exiles, and is suited for characters level 3-6. ",
	},
	[[
	step
		.click Departures Terminal: Everstar Grove
		.' Travel to Everstar Grove as Nexus landing point |q Nexus, Ho!##6760/2 |goto ExileArkShipTutorial -855,806,78
		|only if havequest(6760) // will not show for players who skipped arkship
	step
		.talk Scout Frostfield##263162 |goto EverstarGrove -769,-2274,-905
		..turnin Nexus, Ho!##6760
		..accept Welcome to Everstar Grove##9113
		|only if completedquest(8913) // will not show for players who skipped arkship
	step
		.talk Professor Rhoda Wellspring |goto EverstarGrove -768,-2266,-904
		..turnin Crazy Experiments##10137
	step
		.talk Explorer Wennie |goto EverstarGrove -762,-2283,-905
		..turnin Explorers Union##10075
		|only Explorer
	step
		.talk Scientist Mikael |goto EverstarGrove -762,-2283,-905
		..turnin Exile Academy of Science##10076
		|only Scientist
	step
		.talk Settler Vales |goto EverstarGrove -762,-2283,-905
		..turnin The Pioneering League##10077
		|only Settler
	step
		.talk Soldier Benzaga |goto EverstarGrove -762,-2283,-905
		..turnin Free Companies of Nexus##10078
		|only Soldier
	step
		.talk Fenra Skytree##263175 |goto EverstarGrove -742,-2290,-909
		..turnin Welcome to Everstar Grove##9113 |only if havequest(9113) // only arkship players have this
		..accept Nature's Uprising##6296
	step
		.'Click _Trapped Mordesh_ |tip They are scattered around the path.
		.' Rescue Exiles from Bramble Traps |q Nature's Uprising##6296/2 |goto EverstarGrove -741,-2506,-942
		.' Kill Mystwing Shredders and Mystwing Boomers |q Nature's Uprising##6296/1 |goto EverstarGrove -774,-2406,-928
	step
		.talk Lucy Lazarin##263170
		..turnin Nature's Uprising##6296 |goto EverstarGrove -476,-2716,-990
		..accept The Arboretum##7499 |goto EverstarGrove -476,-2716,-990 |only Mordesh
		..accept The Arboretum##8804 |goto EverstarGrove -476,-2716,-990 |only Human, Aurin, Granok
	step
		.' Follow the hill _up_ |goto EverstarGrove -402,-2833,-982 <10
		.' _Go up_ the ramp |goto EverstarGrove -233,-2965,-949 <10
		.' Gain access to Exo-Lab 71 |q The Arboretum##8804/1 |goto EverstarGrove -209,-3003,-938 |only Human, Aurin, Granok
		.' Gain access to Exo-Lab 71 |q The Arboretum##7499/1 |goto EverstarGrove -209,-3003,-938 |only Mordesh
	step
		tip Kill monsters and gather mushrooms on your way
		.' _Go through_ the round door |goto EverstarGrove -183,-3093,-1118
		.' _Go through_ another round door |goto EverstarGrove -172,-3162,-1118
		.talk Dead Alchemist##263070
		..accept The Serum is the Life##6438 |goto EverstarGrove -174,-3177,-1119
	step
		'Click _Psygill Mushroom_ or Kill _Elderoot Deathcap_
		.' Gather Psygill Mushrooms |q The Arboretum##8804/2 |goto EverstarGrove -143,-3112,-1122 |only Human, Aurin, Granok
		.' Gather Psygill Mushrooms |q The Arboretum##7499/2 |goto EverstarGrove -143,-3112,-1122 |only Mordesh
		.click Dead Alchemist##263069
		.' Extract Vitalus Serum |q The Serum is the Life##6438/1
	step
		.' _Go through_ the round door |goto EverstarGrove -183,-3093,-1118
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
		.talk Crafting Trainer Thorpe |goto EverstarGrove -534,-3294,-909
		..turnin Rune Runedown##10162
	step	// need follow up coords
		' Press _I_ to open your inventory
		' _Ctrl_ + _Right Click_ shoulders, select _Edit Runes_
		' Click the Spiral button, select the Rune
		' Equip the shoulders
		.'When done hit the road |goto EverstarGrove -493,-3298,-911 <10 |c |q 6438
	step
		.talk Victor Lazarin##263178 |goto EverstarGrove -422,-3270,-893
		..turnin The Arboretum##8804 |only Human, Aurin, Granok
		..turnin The Arboretum##7499 |only Mordesh
		..turnin The Serum is the Life##6438
		..accept Living Batteries##6298
	step
		'Kill 4 _Grove Guardian_
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
		.' _Go up_ the ramp |goto EverstarGrove -415,-3220,-912 <5
		.talk Victor Lazarin##263178 |goto EverstarGrove -422,-3270,-893
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
		.talk Victor Lazarin##263178 |goto EverstarGrove -422,-3270,-893
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
		.' _Enter_ the cave |goto -604,-3778,-977 <5
		.' Follow the path _down_ |goto -501,-3710,-1007 <5
		.' _Go around_ the corner |goto EverstarGrove -412,-3748,-1016 <5
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
		.' _Go to_ the open passage |goto EverstarGrove -380,-3661,-1016 <5
		.' _Follow_ the narrow path |goto EverstarGrove -387,-3730,-1015 <5
		.' _Go around_ the corner |goto EverstarGrove -452,-3685,-1016 <5
		.' _Go up_ the hill |goto EverstarGrove -519,-3719,-995 <5
		.' _Leave_ the cave |goto EverstarGrove -609,-3784,-975 <5
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
		.' _Follow_ the path |goto EverstarGrove -429,-3287,-900 <15
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
		.' Collect Elderoot Seeds |q By the Throat##7539/1 |goto EverstarGrove -228,-3512,-919
	step
		.talk Arwick Redleaf##263177 |goto EverstarGrove -115,-3472,-927
		..turnin Taking the Offensive##6335
		..accept Arwick's Revenge##6310
	step
		.talk Victor Lazarin##263172
		..accept No Escape##6311 |goto EverstarGrove -113,-3476,-927
	step
		'This is an auto complete quest
		.talk Firestorm Scout  |goto EverstarGrove 163,-3427,-920
		..turnin For the Glory of the Dominion##8977
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |count 33 |goto EverstarGrove 244,-3476,-945
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |count 66 |goto EverstarGrove 385,-3520,-944
	step
		.click Firestorm Assault Deforester##262870
		.' Deactivate Firestorm Assault Deforesters |q By the Throat##7539/2 |count 100 |goto EverstarGrove 380,-3460,-945
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
		.' Use Gas Bombs on Firestorm Drilldozers |q No Escape##6311/1 |count 66 |goto EverstarGrove 490,-3529,-949
	step
		.click Firestorm Drilldozer##262938
		.' Use Gas Bombs on Firestorm Drilldozers |q No Escape##6311/1 |count 100 |goto EverstarGrove 477,-3460,-948
	step
		.' Press _C_ to use your Communicator:
		..turnin No Escape##6311
	step
		.kill Firestorm Tank##292693
		.' Destroy the Firestorm Tank |q Dominion's Demise##6312/1 |goto EverstarGrove 622,-3448,-949
	step
		.' _Enter_ the cave |goto EverstarGrove 670,-3345,-939
		.talk Queen Myala Everstar##262911
		..turnin Dominion's Demise##6312 |goto EverstarGrove 658,-3299,-958
		..accept The Path to Celestion##6844 |goto EverstarGrove 658,-3299,-958
	step
		'Click _Portal to Celestion_ then _Yes_
		.' Take the portal to Celestion |q The Path to Celestion##6844/1 |goto EverstarGrove 651,-3291,-958
	]]
)