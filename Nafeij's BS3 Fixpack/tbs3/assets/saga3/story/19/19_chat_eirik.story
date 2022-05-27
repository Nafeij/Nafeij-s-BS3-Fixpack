{
	"data": {
		"initial": "_Eiriktherang",
		"stitches": {
			"_Eiriktherang": {
				"content": [
					"[iver] /=Eirik, the ranger you met at Strand, is awake. He's watching the distance from the edge of the light, talking quietly to Valgard.=/",
					{
						"divert": "_Worriedabout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Worriedabout": {
				"content": [
					"[iver] Worried about the warped?",
					{
						"divert": "_Wedbecrazyno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wedbecrazyno": {
				"content": [
					"[eirik] We'd be crazy not to be. Eirik, steward of Strand. Or what's left of it. You've met Valgard.",
					{
						"divert": "_Iverthearmle"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iverthearmle": {
				"content": [
					"[iver] Iver the armless.",
					{
						"divert": "_Hebarksalaug"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hebarksalaug": {
				"content": [
					"[eirik] /=He barks a laugh, and his tired gaze drifts some, ever vigilant.=/",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eirikchat": {
				"content": [
					"[eirik] /=You can tell he is listening.=/",
					{
						"divert": "_Youcantellhe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcantellhe": {
				"content": [
					"[eirik iver] /=You can tell he is listening.=/",
					{
						"linkPath": "_Nowtheresabi",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "So how did you become the steward of Strand?"
					},
					{
						"linkPath": "_Justabouteve",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What happened in Strand before the darkness came?"
					},
					{
						"linkPath": "_Theydontcall",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "How did you end up the only survivors?"
					},
					{
						"linkPath": "_LikewiseIver",
						"option": "Be well, you two. Stay vigilant."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowtheresabi": {
				"content": [
					"[eirik] Now there's a bit of a story.",
					{
						"divert": "_WhileIwasame"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhileIwasame": {
				"content": [
					"[eirik] While I was a member of the Governor's Guard, Valgard and I spotted a known thief tailing a boy and some varl.",
					{
						"divert": "_Welearnedthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Welearnedthe": {
				"content": [
					"[valgard] We learned they were being hunted by a powerful gang of slavers.",
					{
						"divert": "_Theywereafte"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theywereafte": {
				"content": [
					"[eirik] They were after something that would have helped them seize Strand.",
					{
						"divert": "_Alwayssomeon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Alwayssomeon": {
				"content": [
					"[valgard] Always someone trying to kill the governor. Keeping that guy alive was full-time work.",
					{
						"divert": "_Stillwebeatt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Stillwebeatt": {
				"content": [
					"[eirik] Still, we beat them, though not without cost. Steward Olvir died in battle.",
					{
						"divert": "_Andyouwerena"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andyouwerena": {
				"content": [
					"[iver] And you were named his successor?",
					{
						"divert": "_Unfortunatel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Unfortunatel": {
				"content": [
					"[eirik] Unfortunately.",
					{
						"divert": "_Thatswhatyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatswhatyou": {
				"content": [
					"[valgard] That's what you get for being so proactive.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justabouteve": {
				"content": [
					"[eirik] Just about every calamity you could imagine. Strand always had trouble with thieves, slavers and murderers... on both sides of the law.",
					{
						"divert": "_Butotherthan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butotherthan": {
				"content": [
					"[eirik] But other than a close call with the Skaflings clan, I like to think we were starting to turn the tide.",
					{
						"divert": "_Itakeitthedr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itakeitthedr": {
				"content": [
					"[iver] I take it the dredge arrived after that?",
					{
						"divert": "_PrettymuchFa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_PrettymuchFa": {
				"content": [
					"[eirik] Pretty much. Farmers poured into the city from Vedrfell and even Karlshus, seeking shelter behind our walls.",
					{
						"divert": "_Foodandspace"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Foodandspace": {
				"content": [
					"[eirik] Food and space got tight. Back then we could still fish Denglr's Bay...",
					{
						"divert": "_Whatdoyoumea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoyoumea": {
				"content": [
					"[iver] What do you mean?",
					{
						"divert": "_Thedarknessa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thedarknessa": {
				"content": [
					"[eirik] The darkness appeared on the horizon. And some of the fish we caught were... wrong.",
					{
						"divert": "_WarpedMissha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WarpedMissha": {
				"content": [
					"[eirik] Warped. Misshapen. Some gained a venomous bite.",
					{
						"divert": "_Wedestroyeda"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wedestroyeda": {
				"content": [
					"[eirik] We destroyed anything twisted, but people got sick anyway.",
					{
						"divert": "_Thenthedarkn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenthedarkn": {
				"content": [
					"[eirik] Then the darkness grew closer, and the dredge fled south. Most left for Arberrang.",
					{
						"divert": "_Andyouremain"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andyouremain": {
				"content": [
					"[iver] And you remained?",
					{
						"divert": "_Henods"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Henods": {
				"content": [
					"[eirik] /=He nods.=/",
					{
						"divert": "_BothValgarda"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BothValgarda": {
				"content": [
					"[eirik] Both Valgard and I did. Too many folks couldn't go, either too scattered, ill or unwilling to leave kin.",
					{
						"divert": "_Westayedbehi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Westayedbehi": {
				"content": [
					"[eirik] We stayed behind to get as many out as we could.",
					{
						"divert": "_Hesighsfromh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hesighsfromh": {
				"content": [
					"[eirik] /=He sighs from his nostrils, his gaze becoming distant.=/",
					{
						"divert": "_Toomanydieda"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Toomanydieda": {
				"content": [
					"[eirik] Too many died anyway. We'd have joined them if it wasn't for Alfrun.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theydontcall": {
				"content": [
					"[valgard] They don't call him the \"Iron Turtle\" for nothing.",
					{
						"divert": "_Lastonesstan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Lastonesstan": {
				"content": [
					"[eirik] Last ones standing before Alfrun came. The rest of the town was killed by dredge. We held the great hall.",
					{
						"divert": "_Thenthegover"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenthegover": {
				"content": [
					"[valgard] Then the governor went and died of a heart attack, damn him, when the warped showed up.",
					{
						"divert": "_Itwasadamnsh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwasadamnsh": {
				"content": [
					"[valgard] It was a damn shame we lost so many good fighters, but I won't miss those tournaments.",
					{
						"divert": "_Whatdoyoumea0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoyoumea0": {
				"content": [
					"[iver] What do you mean?",
					{
						"divert": "_Thetournamen"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thetournamen": {
				"content": [
					"[eirik] The tournaments in Strand were a \"brilliant\" plan to reduce street violence and turf wars.",
					{
						"divert": "_Itakeitfromy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itakeitfromy": {
				"content": [
					"[iver] I take it from your enthusiastic tone that they didn't work.",
					{
						"divert": "_Theystartedt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theystartedt": {
				"content": [
					"[eirik] They started the fights back when I was a watchman, but I never noticed much of an impact.",
					{
						"divert": "_Somethingalw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somethingalw": {
				"content": [
					"[valgard] Something always went wrong at those things. Still, we did use them for a ruse or two.",
					{
						"divert": "_Someofthetou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Someofthetou": {
				"content": [
					"[eirik] Some of the tournament fighters helped defend Strand in its death throes.",
					{
						"divert": "_Goodmen"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Goodmen": {
				"content": [
					"[iver] Good men?",
					{
						"divert": "_AndwomenInfa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndwomenInfa": {
				"content": [
					"[eirik] And women. In fact, one of the best was called \"The Stoic Mother.\"",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LikewiseIver": {
				"content": [
					"[eirik] Likewise, Iver.",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
