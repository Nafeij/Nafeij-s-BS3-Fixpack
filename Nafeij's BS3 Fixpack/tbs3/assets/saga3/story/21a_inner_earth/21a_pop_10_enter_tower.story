{
	"data": {
		"initial": "_YouglanceupT",
		"stitches": {
			"_YouglanceupT": {
				"content": [
					"[iver] You glance up. The white tower is much taller than you imagined. Tall enough to reach a sun, you wonder? A trick of perspective? No, there really are that many stairs.",
					{
						"linkPath": "lost",
						"ifConditions": [
							{
								"ifCondition": "21_bolverk_defeated==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "won",
						"ifConditions": [
							{
								"ifCondition": "21_bolverk_defeated==1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"lost": {
				"content": [
					"[iver] This should be the end, but you push past your exhaustion and your many wounds and scoop up Eyvind, dragging Juno along.",
					{
						"divert": "_Youraceupthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youraceupthe": {
				"content": [
					"[iver] You race up the endlessly spiraling stairs, three at a time. The screams of the dying Ravens who delay Bolverk fill your ears.",
					{
						"pageNum": 0
					}
				]
			},
			"won": {
				"content": [
					"[iver] Bolverk doesn't look right, still as he is, but he doesn't rise again. Ravens stare, wearing a wide range of emotions on their faces. You have no time to gape. You drag Eyvind towards the tower where stairs spiral upward beyond sight, and you take the first of many, many steps.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
