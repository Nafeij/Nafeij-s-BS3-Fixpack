{
	"data": {
		"initial": "_Throughstill",
		"stitches": {
			"_Throughstill": {
				"content": [
					"[$hero] Through still-gaping holes in the splintered walls you glimpse the dredge indolently lurking. Bleary-eyed workers do their best to fill the cracks. The foreman spies you at the head of the caravan; \"Got any fighters with strong arms? Gods know we could use 'em, and they'll be well fed.\"",
					{
						"linkPath": "_Itsallwecans",
						"ifConditions": [
							{
								"ifCondition": "num_fighters>10"
							}
						],
						"option": "Give them a token number of volunteer fighters to help patch the walls and stand guard."
					},
					{
						"linkPath": "_Theforemanpr",
						"ifConditions": [
							{
								"ifCondition": "num_fighters>=30"
							}
						],
						"option": "Give them enough fighters to get the job done quick- a few dozen, at least."
					},
					{
						"linkPath": "_Theforemanwi",
						"option": "Ignore them."
					},
					{
						"linkPath": "_Youvegotplac",
						"option": "Make apologies and decline."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsallwecans": {
				"content": [
					"[convoy] \"It's all we can spare,\" you claim. Some clansmen don't seem to mind the chance to do something productive with their idle hands.",
					{
						"divert": "__num_fighter"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_fighter": {
				"content": [
					{
						"divert": "__morale5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_fighters-=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale5": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theforemanpr": {
				"content": [
					"[convoy] The foreman prowls through your caravan, brow-beating anyone healthy enough to shoulder timber. Not all who join show enthusiasm, weary as the Sundr's assault left them, but the cause is worthy.",
					{
						"divert": "__num_fighter0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_fighter0": {
				"content": [
					{
						"divert": "__morale10"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_fighters-=20"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale10": {
				"content": [
					{
						"divert": "__doomsday_ti"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_ti": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_timer_add+=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theforemanwi": {
				"content": [
					"[convoy] The foreman wipes his brow and hollers as you move on; \"Fix the walls and you won't be needin' to kill so many next time!\" He spits at your disinterest. You feel his stare on the back of your head.",
					{
						"divert": "__morale50"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale50": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale-=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youvegotplac": {
				"content": [
					"[convoy] You've got places to be and no time for debate. The foreman understands, up to a point. \"Walls don't be fixin' themselves, you know! See how you'll be needin' them again soon!\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
