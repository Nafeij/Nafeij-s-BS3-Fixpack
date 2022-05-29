{
	"data": {
		"initial": "_Youleadagrou",
		"stitches": {
			"_Youleadagrou": {
				"content": [
					"[$hero] You lead a group of Zefr's menders toward the gates, where the fighting is worst. The darkness is already drawing close, throwing soot into the air. You push into the fray to clear space for the menders to do their work.",
					{
						"linkPath": "no_dredge",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "yas_dredge",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&(20_hero_killed||oddleif_state==0)"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "yas_dredge",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&!20_hero_killed&&hero_alette&&20_baby_alone==1&&oddleif_state&&10_alette_mender"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "savedbybastion",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&!20_hero_killed&&20_baby_alone==2"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"no_dredge": {
				"content": [
					"[convoy] The bedlam storms over you like bad weather. \"Lower your weapons!\" shouts Petrus, who is overruled by a din of angry blades and cudgels.",
					{
						"pageNum": 0
					}
				]
			},
			"yas_dredge": {
				"content": [
					"[convoy] Men fight dredge. Men fight men. The fighting curls around you like wildfire, until you are engulfed in it, despite your best efforts. One bare-chested, shrieking madman charges at you, but is crushed into the dirt by the heavy stone bludgeon of a nearby colossus.",
					{
						"divert": "_Thestoneguar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thestoneguar": {
				"content": [
					"[dredge_stoneguard_ally_1] The stoneguard stares at you. Past you. Bloodied men encircle you like vultures, screeching trill insults: Traitors! Raven-starvers! The stoneguard nods some kind of understanding. It seems to recognize you, too.",
					{
						"pageNum": 0
					}
				]
			},
			"savedbybastion": {
				"content": [
					"[convoy] Men fight dredge. Men fight men. The fighting curls around you like wildfire, until you are engulfed in it, despite your best efforts. One bare-chested, shrieking madman charges at you, but is crushed into the dirt by the heavy stone bludgeon of a nearby colossus.",
					{
						"divert": "_Thestoneguar0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thestoneguar0": {
				"content": [
					"[dredge_stoneguard_ally_1] The stoneguard stares at you, and something makes you think it may be the same one who shielded you from the spear, earlier. Bloodied men encircle you like vultures, screeching trill insults: Traitors! Raven-starvers! The stoneguard nods some kind of understanding. It seems to recognize you, too.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
