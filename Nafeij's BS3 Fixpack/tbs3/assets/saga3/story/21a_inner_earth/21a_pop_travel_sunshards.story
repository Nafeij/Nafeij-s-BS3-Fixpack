{
	"data": {
		"initial": "_Soaringshard",
		"stitches": {
			"_Soaringshard": {
				"content": [
					"[convoy_darkness] Soaring shards of smoky glass jut askew from the ground, as if flung here. At first it looks like more of the Inner Earth's strangeness until you realize that these are splinters of the black sun. Images reflect off the mirrored surfaces, creating an illusory army of Ravens as you walk through.",
					{
						"linkPath": "folkadead",
						"ifConditions": [
							{
								"ifCondition": "folka_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "folkaalive",
						"ifConditions": [
							{
								"ifCondition": "folka_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkaalive": {
				"content": [
					"[folka] \"Great,\" says Folka. \"I didn't think I could hate this place more. Now there's six of Dytch.\"",
					{
						"divert": "sunshards"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkadead": {
				"content": [
					"[oli] \"Hold on,\" says Oli. \"I thought this place was bad before. Now there's six of Dytch.\"",
					{
						"divert": "sunshards"
					},
					{
						"pageNum": 0
					}
				]
			},
			"sunshards": {
				"content": [
					"[eyvind] The nauseating, sweaty warmth still radiating from the fragments has everyone eager to pass through, except Eyvind. He has stopped at one, with his hand pressed against the glassy surface, looking at his own reflection.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
