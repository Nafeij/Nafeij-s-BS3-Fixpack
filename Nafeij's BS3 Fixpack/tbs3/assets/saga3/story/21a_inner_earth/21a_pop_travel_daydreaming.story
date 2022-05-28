{
	"data": {
		"initial": "_Anyofyouever",
		"stitches": {
			"_Anyofyouever": {
				"content": [
					"[sparr] \"Any of you ever tasted tistelberry mead?\" Sparr blurts out in the midst of a deep and oppressive silence. \"You're all some grim company lately. I could really go for some tistelberry right now.\"",
					{
						"divert": "_Othersmumble"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Othersmumble": {
				"content": [
					"[convoy_darkness] Others mumble in agreement, but someone passes around enough strong drink to spread around. Soon they're trying to one-up each other about what they plan to do when they return to Arberrang.",
					{
						"linkPath": "_YouknowwhatI",
						"option": "Tell them to stop drinking and be quiet."
					},
					{
						"linkPath": "_Theygoonfora",
						"option": "Tune them out and keep focused."
					},
					{
						"linkPath": "_Asyouallknow",
						"option": "Listen to all their stories."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknowwhatI": {
				"content": [
					"[iver] \"You know what I'm excited about?\" you interject. \"The rest of you shutting your mouths.\" Sour expressions roll off you like water over a duck.",
					{
						"divert": "__morale5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale5": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale-=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theygoonfora": {
				"content": [
					"[iver] They go on for a while, spinning bright yarns in dark places. Thankfully, it draws no attention, but it was right to stay vigilant just in case.",
					{
						"pageNum": 0
					}
				]
			},
			"_Asyouallknow": {
				"content": [
					"[oli] \"As you all know, I don't drink,\" Oli smirks to a couple laughs. \"But I knew a place back in Boersgard that'd make you glad to be sober.\"",
					{
						"linkPath": "sigbjorn_go",
						"ifConditions": [
							{
								"ifCondition": "sigbjorn_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "folka",
						"ifConditions": [
							{
								"ifCondition": "folka_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "valgard",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"sigbjorn_go": {
				"content": [
					"[sigbjorn] \"Then you haven't tasted Bjorulf's Blessing,\" Sigbjorn interjects. \"I'd kill anyone here for another swig...\" he trails off. \"Didn't you already get three Ravens killed over it?\" Sparr slings back, and Sigbjorn grows quiet.",
					{
						"linkPath": "folka",
						"ifConditions": [
							{
								"ifCondition": "folka_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "valgard",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folka": {
				"content": [
					"[folka] \"What about you, Folka?\", Dytch asks. \"Me?\" she thinks for a moment. \"I want to go to that place Oli was talking about.\" More laughter.",
					{
						"divert": "valgard"
					},
					{
						"pageNum": 0
					}
				]
			},
			"valgard": {
				"content": [
					"[valgard] \"Bunch of animals,\" Valgard sighs. \"I'm going to put Strand back together. See who finds their way back. I had a home there, and friends.\" He gives Oli a stern look.",
					{
						"linkPath": "eirik",
						"ifConditions": [
							{
								"ifCondition": "eirik_in_strand==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "mogun",
						"ifConditions": [
							{
								"ifCondition": "mogun_state==1 && (hogun_state==1 || 10_hogun_leaves==1 || 21_hogun_dies_arb==1)"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "mogunKnowsBroDead",
						"ifConditions": [
							{
								"ifCondition": "mogun_state==1 && hogun_state==0 && 10_hogun_leaves==0 && 21_hogun_dies_arb==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "krumr",
						"ifConditions": [
							{
								"ifCondition": "krumr_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dredge",
						"ifConditions": [
							{
								"ifCondition": "hurler_state==1||stonesinger_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dytch",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eirik": {
				"content": [
					"[eirik] Eirik chimes in. \"A home in Strand would be fine. My family, I still hope they've survived somehow. I can't be the only one here with family?\" Someone mentions they saw Dytch with a goat and he tries to laugh along with the others.",
					{
						"linkPath": "mogun",
						"ifConditions": [
							{
								"ifCondition": "mogun_state==1 && (hogun_state==1 || 10_hogun_leaves==1 || 21_hogun_dies_arb==1)"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "mogunKnowsBroDead",
						"ifConditions": [
							{
								"ifCondition": "mogun_state==1 && hogun_state==0 && 10_hogun_leaves==0 && 21_hogun_dies_arb==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "krumr",
						"ifConditions": [
							{
								"ifCondition": "krumr_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dredge",
						"ifConditions": [
							{
								"ifCondition": "hurler_state==1||stonesinger_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dytch",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"mogun": {
				"content": [
					"[mogun] \"I have a brother in Arberrang,\" says Mogun. \"My twin. Didn't have a chance to leave things right. Now I'm regretting it.\" The Ravens toast to regret.",
					{
						"linkPath": "krumr",
						"ifConditions": [
							{
								"ifCondition": "krumr_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dredge",
						"ifConditions": [
							{
								"ifCondition": "hurler_state==1||stonesinger_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dytch",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"mogunKnowsBroDead": {
				"content": [
					"[mogun] \"I have... had a brother,\" says Mogun. \"My twin. Didn't have a chance to leave things right, and I've been regretting it since.\" The Ravens toast to regret.",
					{
						"linkPath": "krumr",
						"ifConditions": [
							{
								"ifCondition": "krumr_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dredge",
						"ifConditions": [
							{
								"ifCondition": "hurler_state==1||stonesinger_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dytch",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"krumr": {
				"content": [
					"[krumr] Noticing his stoic silence, Sparr points at Krumr and starts shouting random guesses. \"I know what mighty Krumr needs. A feast! A longship! A throne made of fallen foes!\". Krumr snorts at this last one. \"No, but if you wrote a song about that, I wouldn't correct you!\"",
					{
						"linkPath": "dredge",
						"ifConditions": [
							{
								"ifCondition": "hurler_state==1||stonesinger_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "dytch",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"dredge": {
				"content": [
					"[iver] You don't think the dredge traveling with you understand what's being said, and that's probably for the best.",
					{
						"divert": "dytch"
					},
					{
						"pageNum": 0
					}
				]
			},
			"dytch": {
				"content": [
					"[dytch] Dytch manages to slip in an opinion between the bawdy chatter. \"I always wanted to...\" He quickly gets drowned out by others and slowly mumbles to a stop.",
					{
						"linkPath": "bersi",
						"ifConditions": [
							{
								"ifCondition": "bersi_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "eyvind",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bersi": {
				"content": [
					"[bersi] \"Give me a pile of coin when this is all over, big enough to sleep on,\" Bersi says. \"Been working for others my whole life, and it's wearing thin. Think I've earned some easy living.\" Several Ravens toast to this.",
					{
						"divert": "eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eyvind": {
				"content": [
					"[eyvind] Eyvind musters the courage to speak up. \"When this is done, I'll...\" \"Keep my FAEN mouth shut!\" Oli hollers over him, and the others roar with glee. Eyvind's smile vanishes, but even trying to relate may have bought him some good will.",
					{
						"linkPath": "bak",
						"ifConditions": [
							{
								"ifCondition": "bak_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "ekkill",
						"ifConditions": [
							{
								"ifCondition": "ekkill_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "iver",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bak": {
				"content": [
					"[bak] Bak says nothing, but everyone can tell he's thinking about spears.",
					{
						"linkPath": "ekkill",
						"ifConditions": [
							{
								"ifCondition": "ekkill_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "iver",
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ekkill": {
				"content": [
					"[ekkill] \"Think I'll find myself a bunch of young folk, train 'em to hold an axe,\" Ekkill adds. \"Seen a lot of kids who don't know how to stand up for themselves.\" A few Ravens exchange surprised looks at this.",
					{
						"divert": "iver"
					},
					{
						"pageNum": 0
					}
				]
			},
			"iver": {
				"content": [
					"[iver] \"And our silent protector?\" Sparr quips. He looks at you. \"What does the great Yngvar dream of in his sleep?\"",
					{
						"linkPath": "_Nobodywantst",
						"option": "\"You all know why I'm here and what I want.\""
					},
					{
						"linkPath": "_Ayetrueenoug",
						"option": "\"Waking up.\""
					},
					{
						"linkPath": "_Isittoolatet",
						"option": "\"Never meeting you bastards in the first place.\""
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nobodywantst": {
				"content": [
					"[sparr] \"Nobody wants to die alone, eh? Even if you're far from home.\" Sparr smiles. Satisfied, the caravan continues on, the tower growing ever closer.",
					{
						"divert": "__morale25"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale25": {
				"content": [
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
			"_Ayetrueenoug": {
				"content": [
					"[sparr] \"Aye, true enough,\" Sparr replies. On that somber note, the caravan continues on, the tower growing ever closer.",
					{
						"divert": "__morale250"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale250": {
				"content": [
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
			"_Isittoolatet": {
				"content": [
					"[oli] \"Is it too late to change my answer to that one?\" Oli chirps. The others snort and throws rocks at Oli as they continue on, the tower growing ever closer.",
					{
						"divert": "__morale251"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale251": {
				"content": [
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
			}
		}
	}
}
