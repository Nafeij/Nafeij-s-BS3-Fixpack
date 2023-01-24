{
	"data": {
		"initial": "_Splittingyou",
		"stitches": {
			"_Splittingyou": {
				"content": [
					"[$hero] Splitting your time between helping people and fighting dredge is taking its toll, but something else feels wrong. A different kind of wrong.",
					{
						"linkPath": "petruswarning",
						"ifConditions": [
							{
								"ifCondition": "18_wall_patch!=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "egildies",
						"ifConditions": [
							{
								"ifCondition": "18_wall_patch==1&&egil_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "stabbystab",
						"ifConditions": [
							{
								"ifCondition": "18_wall_patch==1&&egil_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"petruswarning": {
				"content": [
					"[petrus] Petrus slows you with a hand on your shoulder. \"Remember those powerful men in Arberrang we talked about? I think they've decided to make their move.\"",
					{
						"divert": "damnloyalists"
					},
					{
						"pageNum": 0
					}
				]
			},
			"egildies": {
				"content": [
					"[convoy] Too late, you realize you're being followed. A blade comes for your side, but Egil comes between you. He screams and drops to a knee, where another blade runs him through. Standing over him are armed men, not dredge.",
					{
						"divert": "__egil_state0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__egil_state0": {
				"content": [
					{
						"divert": "damnloyalists"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "egil_state=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"stabbystab": {
				"content": [
					"[convoy] Too late, you realize you've been followed. A blade sticks in your side, and you howl in pain. You turn to see armed men, not dredge.",
					{
						"divert": "__18_stabbyst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_stabbyst": {
				"content": [
					{
						"divert": "damnloyalists"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "18_stabbystabbed=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"damnloyalists": {
				"content": [
					"[cameo_eska] \"This is the one everyone's so afraid of?\" sneers a man with a face tattoo. You remember seeing him amongst Rugga's loyalists. A few dozen grizzled fighters have blades drawn, and you notice they wear the crests of many different houses.",
					{
						"divert": "_DogsLeavethe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DogsLeavethe": {
				"content": [
					"[petrus] \"Dogs! Leave them to me,\" Petrus says, mustering his guards. \"Rugga's stink is all over this. Go make him end this now, or it'll keep happening. Do whatever it takes!\"",
					{
						"linkPath": "_Ruggasnotthe",
						"option": "I'll get to Rugga after I deal with this, myself.",
						"flagName": "18_deal_with_loyalists=1"
					},
					{
						"linkPath": "_PetrusnodsOh",
						"option": "Don't go easy on them, Petrus.",
						"flagName": "18_deal_with_loyalists=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggasnotthe": {
				"content": [
					"[$hero] \"Rugga's not the only one who can deliver messages.\"",
					{
						"divert": "_PetrusnodsYo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_PetrusnodsYo": {
				"content": [
					"[petrus] Petrus nods. \"You're not wrong about that, but let's make it quick!\"",
					{
						"pageNum": 0
					}
				]
			},
			"_PetrusnodsOh": {
				"content": [
					"[petrus] Petrus nods. \"Oh, I won't, believe me. I've been waiting for this.\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
