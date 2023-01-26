{
	"data": {
		"initial": "_Imjustgoingt",
		"stitches": {
			"_Imjustgoingt": {
				"content": [
					"[convoy_darkness] \"I'm just going to say it,\" Sparr grouses. \"I'm starving, and I don't mean it as an expression. I'm so hungry I might die.\" The caravan is getting precariously low on food and nobody dares to drink the water that pools in dark crevices. You're feeling it yourself.",
					{
						"linkPath": "stonesingeronly",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "hurleronly",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state==0&&hurler_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nodredge",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state==0&&hurler_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"stonesingeronly": {
				"content": [
					"[dredge_stonesinger_ally_1] Though you've never seen them eat anything before, the stonesinger seems to understand, scraping a hard, bell-shaped object from the cliff walls and handing it to you with a motion like opening a book.",
					{
						"divert": "shrooms"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hurleronly": {
				"content": [
					"[dredge_hurler_ally_1] The stonehurler seems to understand, scraping a hard, bell-shaped object from the cliff walls and handing it to you. She motions to her mouth.",
					{
						"divert": "shrooms"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nodredge": {
				"content": [
					"[convoy_darkness] \"I found this. The quake knocked a bunch off the cliff walls,\" Dytch mentions. He holds out a hard, bell-shaped object that looks like stone, but you can see hints of color here and there.",
					{
						"divert": "shrooms"
					},
					{
						"pageNum": 0
					}
				]
			},
			"shrooms": {
				"content": [
					"[convoy_darkness] \"Huh. I thought that was just more craggy rock,\" says Sparr, taking the strange object. It has a hard, obsidian shell, but once cracked open a strikingly bright pink plant resides within, squishy to the touch.",
					{
						"divert": "_Itlookslikea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itlookslikea": {
				"content": [
					"[sparr] It looks like a mushroom. It doesn't smell strange or display the same warped weirdness that everything else does. There seem to be quite a few more still clinging on to the cliff side. \"So, who's gonna try it first?\" Sparr wonders aloud.",
					{
						"linkPath": "_Mushroomsare",
						"option": "Don't risk eating the plant."
					},
					{
						"linkPath": "_Goaheadbrave",
						"option": "\"Any volunteers?\""
					},
					{
						"linkPath": "_Ittasteslike",
						"option": "Step up and take a chance."
					},
					{
						"linkPath": "askvalka",
						"option": "Ask the Valka if it's safe."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Mushroomsare": {
				"content": [
					"[convoy_darkness] \"Mushrooms are risky at the best of times,\" you point out, and the rest make similar conclusions. The caravan leaves the thing behind, favoring hunger over poisoning, but you can tell the exhausted caravan has slowed considerably.",
					{
						"divert": "__timer_starv"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_starv": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_starving=0.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Goaheadbrave": {
				"content": [
					"[convoy_darkness] \"Go ahead, brave Valgard,\" Oli says. \"Children eat first,\" Valgard replies. \"I guess I'm not that hungry,\" concludes Sparr. You move on but can tell the exhausted and irritable caravan is flagging, and the pace suffers.",
					{
						"divert": "__timer_starv0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_starv0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_starving=0.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ittasteslike": {
				"content": [
					"[iver] It tastes like a mushroom, but slightly sweet. A couple minutes later you're actually feeling stronger, a bit more energized. The others cautiously gather handfuls, and eat as much as they dare. You swear the caravan moves a little faster than before.",
					{
						"divert": "__morale20"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale20": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=20"
					},
					{
						"pageNum": 0
					}
				]
			},
			"askvalka": {
				"content": [
					"[alfrun] Alfrun speaks up. \"I've eaten Inner Earth plants before,\" she says, \"But I can't say if the darkness has tainted it. I can help if it makes you sick, though. Probably.\"",
					{
						"linkPath": "_Mushroomsare0",
						"option": "Don't risk eating the plant."
					},
					{
						"linkPath": "_Despiteyourh",
						"option": "\"Any volunteers?\""
					},
					{
						"linkPath": "_Itdoesremind",
						"option": "Step up and take the chance."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Mushroomsare0": {
				"content": [
					"[convoy_darkness] \"Mushrooms are risky at the best of times,\" you point out, and the rest make similar conclusions. You leave the thing behind, favoring hunger over poisoning, but it's clear that the exhausted caravan has slowed considerably.",
					{
						"divert": "__timer_starv1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_starv1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_starving=0.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Despiteyourh": {
				"content": [
					"[convoy_darkness] Despite your hunger, everyone looks amongst each other but says nothing. \"I guess I'm not that hungry,\" Sparr concludes. You move on but can tell the exhausted caravan is flagging, and the pace suffers.",
					{
						"divert": "__timer_starv2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_starv2": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_starving=0.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itdoesremind": {
				"content": [
					"[iver] It does taste like a mushroom. A couple minutes later you're actually feeling a bit stronger, a bit more energized. The others cautiously gather handfuls and eat as much as they dare. You swear the caravan moves a little faster than before.",
					{
						"divert": "__morale200"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale200": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=20"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
