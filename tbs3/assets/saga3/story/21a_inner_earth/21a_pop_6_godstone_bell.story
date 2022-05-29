{
	"data": {
		"initial": "_Anenormousbe",
		"stitches": {
			"_Anenormousbe": {
				"content": [
					"[alfrun] An enormous bell hangs from the carved stonework. Even untouched it hums with a strange, deep resonance. Alfrun says, \"The sculptors built this godstone to themselves. They raise bells made of those who have passed. It's said that a part of them lives in the sound of these bells, and they can visit their ancestors this way.\" Sparr crosses his arms. \"That would explain the spooks.\"",
					{
						"linkPath": "stonesinger",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "choice",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"stonesinger": {
				"content": [
					"[dredge_stonesinger_ally_1] The stonesinger approaches the godstone, hands up, shaking his head in warning. He seems to diligently avoid touching anything.",
					{
						"divert": "choice"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice": {
				"content": [
					"[sparr] At the godstone's center an enormous bell dwarfs the other, smaller chimes hanging throughout. The bell's handle calls to you on a primal level. \"Are you thinking of ringing it or kissing it?\" Sparr asks. \"I wouldn't do either.\"",
					{
						"linkPath": "_Thisbellyoua",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Tap the bell with your weapon."
					},
					{
						"linkPath": "_Likeanitchor",
						"option": "Pull hard on the rope hanging beside the bell."
					},
					{
						"linkPath": "_Icanhardlyth",
						"option": "Leave the bell alone."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisbellyoua": {
				"content": [
					"[iver] \"This bell?\" you ask, rapping it lightly. To your surprise, it sounds dull and distant. Weird. Sparr braces himself, but nothing happens.",
					{
						"divert": "choice"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Likeanitchor": {
				"content": [
					"[iver] Like an itch, or a sneeze or an old memory, compulsion takes over. The bell swings hard and... that's it. Silence. Then you feel tapping around your feet, and see loose pebbles scrabbling like insects. You get the unsettling feeling that the ringing is simply too deep for you to hear. But very, very loud.",
					{
						"divert": "rangbell"
					},
					{
						"flagName": "@happening=21_godstone_giveitem"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icanhardlyth": {
				"content": [
					"[iver] \"I can hardly think of a worse idea,\" you reply, stepping away. Curiosity weighs on you for a short while until the caravan separates from the godstone.",
					{
						"pageNum": 0
					}
				]
			},
			"rangbell": {
				"content": [
					"[iver] Before the bell swings back, you grab the clapper to prevent another strike. It comes off in your hand. Like the bell itself, it's distressingly beautiful and fills you with unease, but you pocket the thing. The ground rumbles now for other reasons, and you instinctively draw your weapon.",
					{
						"divert": "__21_godstone"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_godstone": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "21_godstone_bell=1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
