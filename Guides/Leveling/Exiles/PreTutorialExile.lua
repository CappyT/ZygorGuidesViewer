if not ZGV then return end
ZGV:RegisterGuide("Exiles\\Cryo Awakening Protocol (1)",
	{
	faction="Exiles",
	startlevel=1,
	endlevel=1,
	nextguide="Exiles\\The Gambler's Ruin (1-3)",
	image="ZygorUIGuides:CryoAwakening", 
	description="Neural test performed by Noelia to see if you are apt for awakening.  Is a tutorial for players new to MMO."
	},
	[[
	step
		.' Walk into the scanner |goto PreTutorialExile 4605,468,-8 < 3
		.' Step on the circle |goto PreTutorialExile 4597,419,-2 < 3
		.' Step on the circle |goto PreTutorialExile 4612,427,-2 < 3
		.' Step on the circle |goto PreTutorialExile 4605,411,-2 < 3
		.click Display |goto PreTutorialExile 4605,376,5
		.talk Noelia |goto PreTutorialExile 4605,356,5
		..accept Cryo Awakening Protocol##10045
	step
		.Kill 10 Holobots
		.' _Destroy Holobots_ |q Cryo Awakening Protocol##10045/1
		'You can find a group to your right, and another to your left
	step
		.talk Noelia |goto PreTutorialExile 4605,356,5
		..turnin Cryo Awakening Protocol##10045
	step
		'Use Spacebar to jump the stairs
		.' Jump to reach the exit |goto PreTutorialExile 4605,265,22 |c
	]]
)
