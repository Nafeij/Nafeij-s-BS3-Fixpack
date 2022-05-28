{
	"data": {
		"initial": "_Asoursmellfi",
		"stitches": {
			"_Asoursmellfi": {
				"content": [
					"[convoy_darkness] A sour smell fills the air, acid vomited forth by the digging things. Warriors brag about the hard battles they've fought, but no one will be bragging about this.",
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
					"[convoy_darkness] \"I'm regretting this already,\" says Valgard, examining a limp tentacle. \"Courage,\" replies Juno. \"We'll see stranger things before we're done.\"",
					{
						"pageNum": 0
					}
				]
			},
			"ulost": {
				"content": [
					"[convoy_darkness] Wildly dancing shapes of warped dredge fill your memory, but when you come to, you realize it's just shadows on the cave's walls. Juno is gliding silently between Ravens, treating their wounds. The strange burrowing creatures are nowhere to be seen.",
					{
						"flagName": "@happening=losing_time"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
