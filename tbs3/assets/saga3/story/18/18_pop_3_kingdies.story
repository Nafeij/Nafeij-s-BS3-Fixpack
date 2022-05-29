{
	"data": {
		"initial": "_Moreloyalist",
		"stitches": {
			"_Moreloyalist": {
				"content": [
					"[convoy] More loyalists lurk in the shadows, unsure whether to press the attack.",
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
					"[petrus] An unexpected sound begins to seep into the cacophony of battle. The tolling of bells. \"What is it now? Another breach?\" shouts Oddleif. \"Worse,\" replies Petrus. \"Tradition. The king is dead.\"",
					{
						"divert": "continue2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ulost": {
				"content": [
					"[convoy] Your head throbs, but is thankfully still attached to your neck, which is more than can be said for the piles of dead guards and loyalists before you. Petrus's men must have moved in after you fell. The ringing continues like bells in the distance. Then you realize there really are bells.",
					{
						"divert": "continue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue1": {
				"content": [
					"[oddleif] \"What is it now, another warning?\" shouts Oddleif. \"Worse,\" replies Petrus. \"Tradition. The king is dead.\"",
					{
						"divert": "continue2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue2": {
				"content": [
					"[convoy] You look up to the great hall resting on the black rock plateau and see thin blue smoke rising from the flue. Rugga's loyalists cheer and laugh, raising their axes to the sky even as they retreat from the fight.",
					{
						"divert": "_Aknotformsin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aknotformsin": {
				"content": [
					"[$hero] A knot forms in your stomach and you're already heading toward the prison. \"Rugga's going to suffer for this,\" insists Oddleif.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
