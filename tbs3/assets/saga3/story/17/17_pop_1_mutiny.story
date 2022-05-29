{
	"data": {
		"initial": "_Folkashudder",
		"stitches": {
			"_Folkashudder": {
				"content": [
					"[folka] Folka shudders, grabbing her head. \"Where... are we?\" she groans, no longer under Juno's spell.",
					{
						"divert": "_Trappedinthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Trappedinthe": {
				"content": [
					"[oli] \"Trapped in the dark with this treacherous witch.\" Oli snarls. \"I knew it, Folka. Her words have been coming out your mouth since we left Bolverk, at the old ford.\"",
					{
						"divert": "_Folkasfacetu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Folkasfacetu": {
				"content": [
					"[folka] Folka's face turns red enough to melt snow. She screams, and you only barely manage to turn aside her spear. Others are drawing weapons.",
					{
						"linkPath": "_YoubullrushF",
						"option": "Respond fast and hard, with a show of force."
					},
					{
						"linkPath": "_ItisntJunowh",
						"option": "\"Give me a hand, Juno!\""
					},
					{
						"linkPath": "_Whowillbefir",
						"option": "Intimidate the Ravens."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoubullrushF": {
				"content": [
					"[iver] You bull-rush Folka, knocking her to the ground, and take Oli in the chin with the butt of your axe. He staggers backward, mouth bloodied.",
					{
						"divert": "angry_ravens"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItisntJunowh": {
				"content": [
					"[eyvind] It isn't Juno who responds. Eyvind's eyes flash. \"Nobody touches her!\" he cries, and you can feel the air pressure change.",
					{
						"divert": "ravenfallout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whowillbefir": {
				"content": [
					"[iver] \"Who will be first?\" you roar. They flinch at your ferocity, but even moreso from the crackle of lightning from Eyvind behind you.",
					{
						"divert": "ravenfallout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"angry_ravens": {
				"content": [
					"[convoy_darkness] The rest hesitate, but they're trained warriors. They're not quick to back down from a fight.",
					{
						"linkPath": "ravenfallout",
						"ifConditions": [
							{
								"ifCondition": "ekkill_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "ravenfalloutfatality",
						"ifConditions": [
							{
								"ifCondition": "ekkill_state==1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ravenfalloutfatality": {
				"content": [
					"[ekkill] Ekkill suddenly shrieks, axe high above his head, \"Never a slave again!\" You side-step as it tears through your empty sleeve, and bring your weapon across his skull, cracking it open like an egg. Red yolk spills forth. The man doesn't move again.",
					{
						"divert": "__17_ekkill_d"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__17_ekkill_d": {
				"content": [
					{
						"divert": "_Apangofguilt"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "17_ekkill_dies=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Apangofguilt": {
				"content": [
					"[iver] A pang of guilt washes over you, but it's not the first time you've pushed the feeling aside. \"Who's next?\" you spit.",
					{
						"divert": "ravenfallout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ravenfallout": {
				"content": [
					"[juno] A velveteen dizziness washes over the group. Juno says, \"If this world is going to survive, everyone is needed.\"",
					{
						"divert": "_Folkastruggl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Folkastruggl": {
				"content": [
					"[folka] Folka struggles against the weariness, \"Who gives a flying faen about the world?\" But she makes no move. Nobody moves. \"When this is all over,\" slumps Folka, \"The Ravens will get what's owed. Count on that!\"",
					{
						"divert": "_Everybodyshu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everybodyshu": {
				"content": [
					"[sparr] \"Everybody shut up,\" hisses Sparr. \"You hear that?\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
