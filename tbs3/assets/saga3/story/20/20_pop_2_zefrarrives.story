{
	"data": {
		"initial": "_Alullinthefi",
		"stitches": {
			"_Alullinthefi": {
				"content": [
					"[convoy] A lull in the fighting, but it looks far from over. If anything it's just begun, and that's what worries you the most.",
					{
						"linkPath": "uwon",
						"ifConditions": [
							{
								"ifCondition": "battle_victory"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "ulost",
						"ifConditions": [
							{
								"ifCondition": "!battle_victory"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"uwon": {
				"content": [
					"[$hero] \"There's no need for this!\" you shout. It falls on deaf ears as more and more men draw weapons.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ulost": {
				"content": [
					"[$hero] \"I have to get up,\" you think through gritted teeth, but your body feels heavy as lead.",
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
					"[convoy] The wind picks up, tearing at banners that whip above your heads. A growing gale throws men from their feet and bludgeons your sense of balance.",
					{
						"divert": "_Astormfunnel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Astormfunnel": {
				"content": [
					"[zefr] A storm funnel approaches, crawling above the gates. Riding it is a Valka, her platinum hair curiously untouched by the maelstrom. She lands amidst the fighters like a leaf delicately falling from a tree, somehow terrifying in its grace. \"Stop this lunacy!\" she howls.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
