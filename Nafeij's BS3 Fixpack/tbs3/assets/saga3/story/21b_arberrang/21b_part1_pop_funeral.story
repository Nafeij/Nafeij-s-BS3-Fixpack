{
	"data": {
		"initial": "_Theycamefrom",
		"stitches": {
			"_Theycamefrom": {
				"content": [
					"[convoy] They came from all parts of Arberrang, carrying their dead. An enormous longship- the king won't be needing it anymore- was hoisted up to the black rock plateau. Never mind the hassle, this is tradition. Arranged within the longship many hundreds of bodies rest, ready for the afterlife, ready for peace amongst the stars. Their struggles are over. You hear all this from the orator declaring the last rites, preparing to set the longship ablaze.",
					{
						"linkPath": "rookdied",
						"ifConditions": [
							{
								"ifCondition": "20_hero_killed&&hero_was_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alettedied",
						"ifConditions": [
							{
								"ifCondition": "20_hero_killed&&hero_was_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "oddleifdied",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge&&oddleif_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "herolived",
						"ifConditions": [
							{
								"ifCondition": "!20_hero_killed&&oddleif_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "lastrites",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookdied": {
				"content": [
					"[rook] Rook looks at peace amongst them, almost fitting that here he is just one of many, though such a thing is heartbreaking. You breathe heavily, but refuse to cry. It would be a selfish sorrow.",
					{
						"divert": "lastrites"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alettedied": {
				"content": [
					"[alette] Alette looks beautiful amongst them. It seems right that here she is just one of many, though such a thing is heartbreaking. You breathe heavily, but refuse to cry. It would be a selfish sorrow.",
					{
						"divert": "lastrites"
					},
					{
						"pageNum": 0
					}
				]
			},
			"herolived": {
				"content": [
					"[$hero] You remember those who traveled with you to Arberrang. You've never seen so many dead in one place, and you hope to never see this many again. But despite the tragedy this is a reassuring moment, that there can still be dignity in death. Even in these circumstances.",
					{
						"divert": "lastrites"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifdied": {
				"content": [
					"[rook] Oddleif looks at peace amongst them, just one of many. Such a thing is heartbreaking. You wonder if sacrificing herself to protect you was part of her plan all along. You breathe heavily, but refuse to cry.",
					{
						"divert": "lastrites"
					},
					{
						"pageNum": 0
					}
				]
			},
			"lastrites": {
				"content": [
					"[convoy] The fires are lit, and special bundles laid along the ship's edge tint the flames in different colors, a gleaming rainbow rising toward the sky, and a bridge for brave souls. You imagine the ship drifting out to sea as the fire burns low. The solemn audience begins to pile stones and soil atop to form the traditional tumulus.",
					{
						"linkPath": "_Inalowvoicey",
						"option": "Say a quiet prayer to yourself."
					},
					{
						"linkPath": "_Tothosewhokn",
						"option": "Give a speech to your caravan."
					},
					{
						"linkPath": "_Onetradition",
						"option": "Raise a feast to honor the dead."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Inalowvoicey": {
				"content": [
					"[$hero] In a low voice you say all the things you wish you could have said, and somewhere down deep you know know that your prayers were heard and understood. It is some small comfort.",
					{
						"divert": "__doomsday_fu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_fu": {
				"content": [
					{
						"divert": "__morale5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_funeral+=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale5": {
				"content": [
					{
						"divert": "__renown10"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown10": {
				"content": [
					{
						"divert": "lifegoeson"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Tothosewhokn": {
				"content": [
					"[$hero] To those who knew and believed in your banner, you raise it high. The exact words drift from your thoughts as soon as they're said, but the rest of the caravan graciously cheers the ending: \"The gods would weep if we did not outlive them, and we outlive them still! Now it is we who speak for the dead, their names and their deeds, and gods-be-damned, they will not be forgotten!\"",
					{
						"divert": "__doomsday_fu0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_fu0": {
				"content": [
					{
						"divert": "__morale10"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_funeral+=4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale10": {
				"content": [
					{
						"divert": "__renown20"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown20": {
				"content": [
					{
						"divert": "lifegoeson"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=20"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onetradition": {
				"content": [
					"[$hero] One tradition deserves another. Even in these grim times, especially now, a celebration is needed. Drinking begins immediately, and the feast grows throughout the day, reminding you of older, happier times. Even the menders on the wall are given flagons.",
					{
						"divert": "__doomsday_fu1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_fu1": {
				"content": [
					{
						"divert": "__morale25"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_funeral+=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale25": {
				"content": [
					{
						"divert": "__21_funeral_"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=25"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_funeral_": {
				"content": [
					{
						"divert": "__renown40"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_funeral_feast=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown40": {
				"content": [
					{
						"divert": "lifegoeson"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=40"
					},
					{
						"pageNum": 0
					}
				]
			},
			"lifegoeson": {
				"content": [
					"[aleo] Aleo puts his hand on your shoulder. His eyes are red, some combination of drinking and grieving, but there is a smile on his lips.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
