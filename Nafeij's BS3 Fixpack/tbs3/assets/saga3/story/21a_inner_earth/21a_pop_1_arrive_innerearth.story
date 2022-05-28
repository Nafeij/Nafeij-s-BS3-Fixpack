{
	"data": {
		"initial": "_Thecaravanfe",
		"stitches": {
			"_Thecaravanfe": {
				"content": [
					"[convoy_darkness] The caravan fell silently in absolute darkness until you lost all sense of time and place. Before hallucination and madness set in, you felt Juno's touch pillow you into a sleep state and protect you from the worst of it. Now, dim light finally reveals approaching ground, like an island rising from a midnight sea.",
					{
						"linkPath": "folkasaved",
						"ifConditions": [
							{
								"ifCondition": "19_folka_died==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "folkadied",
						"ifConditions": [
							{
								"ifCondition": "19_folka_died==1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkadied": {
				"content": [
					"[convoy_darkness] Nobody talked about the loss of Folka in that time, but the memory of her fell alongside everyone. Touching ground now finally feels like moving on. Walking feels like you've never done it before.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkasaved": {
				"content": [
					"[convoy_darkness] You touch the ground lightly, then heavily, and your stomach lurches. Your face still burns from the wound Bolverk gave you. Walking feels like you've never done it before. \"I made sick in my hat,\" announces Sparr.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue": {
				"content": [
					"[juno] \"This is the Inner Earth,\" Juno tells everyone. \"This is a cave,\" grumbles Oli. \"I'm not impressed.\" In the gloom, Juno looks absolutely ghostly, beckoning you to follow. \"Reserve judgment till we emerge.\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
