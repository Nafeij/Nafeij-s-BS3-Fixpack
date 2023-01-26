{
	"data": {
		"initial": "_Amobofdanger",
		"stitches": {
			"_Amobofdanger": {
				"content": [
					"[convoy] A mob of dangerous size is gathering ahead, at the harbor. You can see the bobbing masts of ships lurching from the harbor, heavy with people. Petrus swears. \"If sailing away was an option, we would have done it by now.\"",
					{
						"divert": "_Theseasarepo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theseasarepo": {
				"content": [
					"[petrus] \"The seas are poisoned like everything else around here,\" spits Petrus. No doubt the serpent's blood. \"It chews away the wood, and the fish are dead. There's nothing out there but death.\"",
					{
						"linkPath": "_Petrusfrowns",
						"option": "\"You're just going to let them?\""
					},
					{
						"linkPath": "_Youpleadandt",
						"option": "Break up the crowd of deserters."
					},
					{
						"linkPath": "_Petrusreluct",
						"option": "Force Petrus to stop the ships and take them apart for lumber."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Petrusfrowns": {
				"content": [
					"[petrus] Petrus frowns. \"I had guards keeping these ships locked down, but we had to pull them to the walls,\" he says. \"Not much we can do to stop it now.\" You don't waste any more time or energy trying.",
					{
						"divert": "__close_trave"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__close_trave": {
				"content": [
					{
						"divert": "nidhog"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "close_travel_timer+=.1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youpleadandt": {
				"content": [
					"[petrus] You plead and threaten those heading toward the docks, asserting there's nothing out there. Some listen, but most ignore you. \"Can't reason with a rainstorm,\" Petrus laments after some time. \"And we're needed elsewhere!\"",
					{
						"divert": "__close_trave0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__close_trave0": {
				"content": [
					{
						"divert": "nidhog"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "close_travel_timer+=.25"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Petrusreluct": {
				"content": [
					"[petrus] Petrus reluctantly gives the order. Many hopeful passengers, desperate or drunk, unwillingly back down to the city guards. Eventually Petrus' men give up trying to stop all the ships from departing, but manage to pull aside a few for lumber to help reinforce the walls.",
					{
						"divert": "__close_trave1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__close_trave1": {
				"content": [
					{
						"divert": "nidhog"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "close_travel_timer+=.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nidhog": {
				"content": [
					"[$hero] You move on, worried that you've already taken too much time here.",
					{
						"linkPath": "heylooknid",
						"ifConditions": [
							{
								"ifCondition": "nid_state=1"
							}
						],
						"option": "{branch}"
					},
					{
						"ifConditions": [
							{
								"ifCondition": "nid_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"heylooknid": {
				"content": [
					"[nid] Just then, a woman catches your eye amongst the crowds. Her gold cloak stands out. \"Nid?\" you ask.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
