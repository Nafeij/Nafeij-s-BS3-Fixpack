{
	"data": {
		"initial": "_Theringingof",
		"stitches": {
			"_Theringingof": {
				"content": [
					"[convoy_darkness] The ringing of the battle still echoes in your head and turns into a dull ache in your bones.",
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
					"[convoy_darkness] \"How about we don't do that again,\" says Sparr, motioning to the large dredge bell. \"We're lucky that's all we faced. At least now we know there aren't any more of those things around.\"",
					{
						"pageNum": 0
					}
				]
			},
			"ulost": {
				"content": [
					"[convoy_darkness] You open your eyes to the face of Juno, leaning over you, and feel your aching muscles and burning lacerations soften. She moves on to other Ravens, each in various states of distress, and try not to think about what she's been through, herself.",
					{
						"flagName": "timer_losebattle=1.2"
					},
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
