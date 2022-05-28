{
	"data": {
		"initial": "_Comequicksay",
		"stitches": {
			"_Comequicksay": {
				"content": [
					"[convoy] \"Come quick,\" says a bloodied guard. He leads you up the wall to the menders, worse for wear. The warped pouring out of the darkness are still mostly dredge, but now you recognize more and more of them as Arberrang's clansmen, turned into nightmarish creatures.",
					{
						"linkPath": "nobodyincharge",
						"ifConditions": [
							{
								"ifCondition": "21_hero_on_wall=0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "charlesincharge",
						"ifConditions": [
							{
								"ifCondition": "21_hero_on_wall>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nobodyincharge": {
				"content": [
					"[petrus] Petrus rushes to the side of his guards, who struggle through grievous wounds to protect a panicking mender. Too late. The mender falls, and the light around him blinks out. Petrus and the guards caught in the darkness scream in agony, until Yrsa ends them each with an arrow, out of mercy.",
					{
						"linkPath": "ludinalive",
						"ifConditions": [
							{
								"ifCondition": "ludin_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nobodyend",
						"ifConditions": [
							{
								"ifCondition": "ludin_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"flagName": "petrus_state=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ludinalive": {
				"content": [
					"[ludin] \"I could have prevented this!\" shouts Ludin at the darkness' edge, drawing the attention of emboldened warped and is cut down by a warped dredge's blade. Yrsa screams but is too late to reach him before his body is pulled into the darkness. \"Please, no!\" she sobs.",
					{
						"divert": "nobodyend"
					},
					{
						"flagName": "ludin_state=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nobodyend": {
				"content": [
					"[convoy] You retreat to the next nearest mender along the wall, warped on your heels! \"Fight for your future!\" you shout.",
					{
						"flagName": "doomsday_warpedallies+=0.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"charlesincharge": {
				"content": [
					"[$hero] \"Where is...\" you begin, noticing a pile of dead guards and a panicked mender holding his light against the approaching warped.",
					{
						"linkPath": "ludinincharge",
						"ifConditions": [
							{
								"ifCondition": "21_hero_on_wall=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "petrusincharge",
						"ifConditions": [
							{
								"ifCondition": "21_hero_on_wall=2"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "scathachincharge",
						"ifConditions": [
							{
								"ifCondition": "21_hero_on_wall=3"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ludinincharge": {
				"content": [
					"[ludin] \"Here!\" shouts Ludin. He approaches with armed men on the other side of the mender. \"Haven't lost any menders yet. We've been fighting them off all the way down the walls, but they're coming a lot faster now!\" He stabs through a lunging warped. \"And here's more!\" he shouts.",
					{
						"divert": "__doomsday_wa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wa": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_warpedallies+=1.3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"petrusincharge": {
				"content": [
					"[petrus] \"I'm still here,\" pants Petrus. He kicks a warped dredge over the side of the wall. \"Lost a couple menders, the warped are coming a lot faster now. Glad to see you, but I don't know how much longer we can hold out.\" Already a new horde approaches.",
					{
						"divert": "__doomsday_wa0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wa0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_warpedallies+=.7"
					},
					{
						"pageNum": 0
					}
				]
			},
			"scathachincharge": {
				"content": [
					"[scathach] You're drowned out by the cries of horseborn, and find the butchered corpse of Scathach amongst dozens of other horseborn bodies. They were poorly prepared for this fight and many deserted. The rampaging warped have turned toward the menders. \"Don't let them fall!\" you shout.",
					{
						"divert": "__scathach_st"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__scathach_st": {
				"content": [
					{
						"divert": "__doomsday_wa1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "scathach_state=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wa1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_warpedallies+=.4"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
