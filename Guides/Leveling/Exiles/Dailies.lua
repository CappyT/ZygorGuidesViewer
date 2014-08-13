ZGV:RegisterGuide("Exiles\\Dailies",{faction="Exiles"},[[
	step
		'Press _C_ to use your communicator:
		..accept The Crimson Dreg Threat##9522
	step
		.' Use your Teleport: Thayd ability to return to Thayd |goto Thayd 4260,-2208,-810
		.talk Gus Oakby##273847
		.' Click _Yes_ to travel to the Crimson Badlands |q The Crimson Dreg Threat##9522/1 |goto 3980,-2408,-789
	step
		.talk Lila Redkill##313036
		..turnin The Crimson Dreg Threat##9522 |goto PocketCapCrimsonIsle -21994,-28336,-972
------		..accept Scout the Island##7449 |goto -21994,-28336,-972
	step
		.talk The Caretaker##313023
		..accept Flip of a Switch##7439 |goto -21994,-28333,-972
	step
		.' Find Specialist Matthews |q Scout the Island##7449/1 |goto -22039,-28320,-973
		.' Find Specialist Matthews |q Flip of a Switch##7439/1 |goto -22035,-28324,-972
	step
		.talk Specialist Matthews##313021
		..accept Scarhide Extermination##7484 |goto -22041,-28322,-972
		..accept Equipment Under Siege##7486 |goto -22041,-28322,-972
		..accept Electrical Disturbance##7488 |goto -22041,-28322,-972
	step
		.' Go up the ramps |goto -22218,-28289,-950
		.' Jump up the rocks |goto -22197,-28306,-931
		.click Surge Beacon Placement##313396
		.' Place the first Surge Beacon |q Electrical Disturbance##7488/1 |goto -22167,-28303,-916
	step
		.click Exile Cannon##313418 |tip There's another southeast and southwest of here.
		.' Activate the Exile Cannons |q Equipment Under Siege##7486/1 |goto -22194,-28285,-932
	step
		.' Go up the rock ledge |goto -22362,-28327,-949
		.click Surge Beacon Placement##313397
		.' Place the second Surge Beacon |q Electrical Disturbance##7488/2 |goto -22445,-28442,-870
	step
		.' Go up the wooden ramp |goto -22436,-28503,-956
		.click Control Panel Alpha##313411
		.' Activate Radar Dish Alpha |q Equipment Under Siege##7486/2 |goto -22414,-28491,-942
	step
		.' Go up the wooden ramp |goto -22529,-28523,-950
		.click Control Panel Beta##313395
		.' Activate Radar Dish Beta |q Equipment Under Siege##7486/3 |goto -22517,-28547,-934
	step
		'Press _C_ to use your communicator:
		..turnin Equipment Under Siege##7486
	step
		.click Alpha Panel##313504
		.' Deactivate the Alpha Generator |q Flip of a Switch##7439/2 |goto -22604,-28412,-951
		.click Beta Panel##313505
		.' Deactivate the Beta Generator |q Flip of a Switch##7439/3 |goto -22561,-28574,-951
		.click Gamma Panel##313498
		.' Deactivate the Gamma Generator |q Flip of a Switch##7439/4 |goto -22699,-28580,-942
		.click Delta Panel##313499
		.' Deactivate the Delta Generator |q Flip of a Switch##7439/5 |goto -22728,-28451,-942
	step
		'Press _C_ to use your communicator:
		..turnin Flip of a Switch##7439
		..accept Intruder's Demise##7440
	step
		.click World Destroyer Control Panel##313392
		.' Use the World Destroyer Control Panel |q Electrical Disturbance##7488/3 |goto -22803,-28491,-936
		.' Defend against the Dreg assault |q Electrical Disturbance##7488/4 |goto -22798,-28489,-936
	step
		'Press _C_ to use your communicator:
		..turnin Electrical Disturbance##7488
	step
		.' Found all around the Megatech Station:
		.kill Scarhide Tank##389961
		.kill Scarhide Scalper##380734
		.kill Scarhide Butcher##380913
		.kill Scarhide Deadshot##380914
		.' Kill Scarhide Dreg |q Scarhide Extermination##7484/1 |goto -22541,-28486,-951
	step
		'Press _C_ to use your communicator:
		..turnin Scarhide Extermination##7484
	step
		.' Find Ludmil Borgos |q Intruder's Demise##7440/1 |goto -22032,-28159,-993
		.' Find Ludmil Borgos |q Scout the Island##7449/2 |goto -22032,-28159,-993
	step
		.talk Katya Brekarin##313022
		..accept Supply Drop##7443 |goto -22030,-28156,-993
		..accept BBQ Blast##7447 |goto -22030,-28156,-993
	step
		.talk Ludmil Borgos##313034
		..accept Persistent Problems##7445 |goto -22020,-28146,-993
		..accept Burning Waters##7455 |goto -22020,-28146,-993
	step
		.' Follow the ramp to the top of the tower |goto -21947,-28200,-996
		.click Eastern Torch##313204
		.' Burn the Eastern Tower |q Persistent Problems##7445/4 |goto -21959,-28193,-963
	step
		.' Around this area:
		.click Dreg Grill##388227
		.' Detonate Dreg Grills |q BBQ Blast##7447/1 |goto -21826,-28173,-993
	step
		'Press _C_ to use your communicator:
		..turnin BBQ Blast##7447
	step
		.' Found along the coast:
		.click Waterlogged Victim##392346
		.' Disarm booby-trapped corpses |q Burning Waters##7455/2 |goto -21770,-28114,-997
		.click Palehusk Skiff##391851
		.' Use the Targeting Laser on Palehusk Skiffs |q Burning Waters##7455/1 |goto -21674,-28158,-1000
	step
		'Press _C_ to use your communicator:
		..turnin Burning Waters##7455
	step
		.' Enter Exo-Lab 22 |q Intruder's Demise##7440/2 |goto -21865,-28157,-993
		.kill 1 Palehusk Dreglord##364280
		.' Kill the Palehusk Dreglord |q Intruder's Demise##7440/3 |goto -21797,-28117,-1049
	step
		'Press _C_ to use your communicator:
		..turnin Intruder's Demise##7440
		..accept Culling the Constructs##7441
	step
		.' Step into the teleporter |goto -21781,-28081,-1047
		.click Rations Flare##313116
		.' Light the Rations Flare |q Supply Drop##7443/1 |goto -22005,-27952,-995
		.click Daily Rations##313107
		.' Collect the Daily Rations |q Supply Drop##7443/2 |goto -21996,-27950,-994
	step
		'Press _C_ to use your communicator:
		..turnin Supply Drop##7443
	step
		.' Follow the ramp up to the top of the tower |goto -22056,-27962,-993
		.click Central Torch##313214
		.' Burn the Central Tower |q Persistent Problems##7445/3 |goto -22041,-27956,-967
	step
		.' Follow the ramp up to the top of the tower |goto -22155,-28008,-992
		.click Western Torch##313215
		.' Burn the Western Tower |q Persistent Problems##7445/2 |goto -22167,-28006,-969
	step
		.' Found all around the Palehusk Camp:
		.kill Palehusk Howler##399931
		.kill Palehusk Cutter##399930
		.kill Palehusk Devil##394701
		.kill Palehusk Scrapper##395351
		.kill Palehusk Reaver##404868
		.' Kill Palehusk Dreg |q Persistent Problems##7445/1 |goto -22083,-27965,-992
	step
		'Press _C_ to use your communicator:
		..turnin Persistent Problems##7445
	step
		.kill Crimson Augmentor##354629
		.' Destroy Crimson Augmentors |q Culling the Constructs##7441/2 |goto -22040,-27836,-995
	step
		.' Find Stara Galeweave |q Culling the Constructs##7441/1 |goto -22024,-27785,-991
		.' Find Stara Galeweave |q Scout the Island##7449/3 |goto -22024,-27785,-991
	step
		'Press _C_ to use your communicator:
		..turnin Scout the Island##7449
	step
		.click Summoning Construct##313489
		.' Deactivate the Summoning Construct |q Culling the Constructs##7441/3 |goto -22000,-27696,-999
	step
		'Press _C_ to use your communicator:
		..turnin Culling the Constructs##7441
	step
		.talk Explorer Rora##313017
		..accept Boulders to Pebbles##7572 |goto -22017,-27769,-991
	step
		.talk Stara Galeweave##313033
		..accept Slash And Burn##7453 |goto -22025,-27774,-991
	step
		.kill Toxic Weaver##410872
		.' Kill toxic spiders |q Slash And Burn##7453/1 |goto -22073,-27631,-995
		.click Toxic Egg##411957
		.' Burn Toxic Eggs |q Slash And Burn##7453/2 |goto -22082,-27644,-994
	step
		'Press _C_ to use your communicator:
		..turnin Slash And Burn##7453
	step
		.kill Shard of Aggregor##416800
		.' Collect Dusty Chips from Shards of Aggregor |q Boulders to Pebbles##7572/1 |goto -22192,-28156,-991
	step
		'Press _C_ to use your communicator:
		..turnin Boulders to Pebbles##7572

]])
