if not ZGV then return end
ZGV:RegisterGuide("Dominion\\Cryo Awakening Protocol (1)",
	{
	faction="Dominion",
	startlevel=1,
	endlevel=1,
	nextguide="Dominion\\DominionArkShipTutorialCryogenics (1-3)",
	image="ZygorUIGuides:CryoAwakening", 
	description="Neural test performed by Noelia to see if you are apt for awakening.  Is a tutorial for players new to MMO."
	},
	[[
	step
		.' Walk into the scanner |goto PreTutorialDominion 4088,-32,-8 < 3
		.' Step on the circle |goto PreTutorialDominion 4080,-79,-2 < 3
		.' Step on the circle |goto PreTutorialDominion 4094,-72,-2 < 3
		.' Step on the circle |goto PreTutorialDominion 4088,-86,-2 < 3
		.click Display |goto PreTutorialDominion 4088,-122,5
		.talk Noelia |goto PreTutorialDominion 4088,-143,5
		..accept Cryo Awakening Protocol##10108
	step
		.Kill 10 Holobots
		.' _Destroy Holobots_ |q Cryo Awakening Protocol##10108/1
		'You can find a group to your right, and another to your left
	step
		.talk Noelia |goto PreTutorialDominion 4088,-143,5
		..turnin Cryo Awakening Protocol##10108
	step
		'Use Spacebar to jump the stairs
		.' Jump to reach the exit |goto PreTutorialDominion 4088,-231,-22 |c
	]]
)
