{
	"data": {
		"initial": "_Youjerkinter",
		"stitches": {
			"_Youjerkinter": {
				"content": [
					"[juno] You jerk in terror at Juno's voice in your head, and her hand lightly squeezing your shoulder.",
					{
						"divert": "_Shebreathess"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shebreathess": {
				"content": [
					"[juno] She breathes softly, \"Well done. You can put me down.\"",
					{
						"linkPath": "folka_alive",
						"ifConditions": [
							{
								"ifCondition": "folka_state=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "folka_dead",
						"ifConditions": [
							{
								"ifCondition": "folka_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folka_alive": {
				"content": [
					"[folka] Nerves get the best of even the bravest. \"Stop,\" blurts Folka. \"Not another step!\". She pushes her way to Juno. \"You died. Not another damned step, till you tell us what is happening! All of it!\" A chorus of voices concur, echoing off the pillars themselves.",
					{
						"divert": "_Junosagsupon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Junosagsupon": {
				"content": [
					"[juno] Juno sags upon her staff. She looks at Eyvind, but his stare is leagues from here. \"All will be well,\" she starts, but jerks back from Folka's spear-point at her neck. \"No magic tricks,\" Folka hisses.",
					{
						"linkPath": "_YouknockFolk",
						"option": "Step in before things spiral out of control."
					},
					{
						"linkPath": "_SoftlyFolkas",
						"option": "Wait to see what happens."
					},
					{
						"linkPath": "_Yourerightsa",
						"option": "Encourage Juno to answer the question."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknockFolk": {
				"content": [
					"[juno] You knock Folka's spear aside, but Juno interjects. \"You're right, Folka. It's time you all knew.\"",
					{
						"pageNum": 0
					}
				]
			},
			"_SoftlyFolkas": {
				"content": [
					"[juno] \"Softly Folka,\" says Juno. \"You're right. It's time you all knew.\"",
					{
						"pageNum": 0
					}
				]
			},
			"_Yourerightsa": {
				"content": [
					"[juno] \"You're right,\" says Juno. \"It's time you all knew.\"",
					{
						"pageNum": 0
					}
				]
			},
			"folka_dead": {
				"content": [
					"[oli] Nerves get the best of even the bravest. \"Not another step!\" shouts Oli. He pushes his way to Juno. \"You died. Not another step, til you spill it. All of it!\" A chorus of voices concur, echoing off the pillars themselves.",
					{
						"divert": "_Junosagsupon0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Junosagsupon0": {
				"content": [
					"[juno] Juno sags upon her staff. She looks at Eyvind, but his stare is leagues from here. \"All will be well,\" she starts, but jerks back from Oli's axe blade at her neck. \"No more magic tricks,\" Oli hisses.",
					{
						"linkPath": "_YouknockOlis",
						"option": "Step in before things spiral out of control."
					},
					{
						"linkPath": "_SoftlyOlisay",
						"option": "Wait to see what happens."
					},
					{
						"linkPath": "_Yourerightsa0",
						"option": "Encourage Juno to answer the question."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknockOlis": {
				"content": [
					"[juno] You knock Oli's axe aside, but Juno interjects. \"It's time you all knew,\" Juno says.",
					{
						"pageNum": 0
					}
				]
			},
			"_SoftlyOlisay": {
				"content": [
					"[juno] \"Softly Oli,\" says Juno. \"You're right. It's time you all knew.\"",
					{
						"pageNum": 0
					}
				]
			},
			"_Yourerightsa0": {
				"content": [
					"[juno] \"You're right,\" says Juno. \"It's time you all knew.\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
