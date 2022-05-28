{
	"data": {
		"initial": "_Warpeddredge",
		"stitches": {
			"_Warpeddredge": {
				"content": [
					"[convoy_darkness] Warped dredge bodies ornament this hill like crenelations, some sitting or slumped, all dead. \"What happened here?\" grunts Valgard, pushing one over with his foot.",
					{
						"divert": "_Hundredscanb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hundredscanb": {
				"content": [
					"[convoy_darkness] Hundreds can be seen from the hilltop, and they look suspiciously arranged. \"This wasn't a battle,\" Valgard continues, noting the same. Juno and Eyvind have nothing to add. \"Wait. What if this is a warning of some kind, for something ahead?\" suggests Dytch.",
					{
						"linkPath": "_FaenemOliadd",
						"option": "\"I don't know or care. Let's get out of here.\""
					},
					{
						"linkPath": "_Thedredgeswe",
						"option": "Inspect the dredge briefly for clues."
					},
					{
						"linkPath": "_Themenderssp",
						"option": "Tell everyone to spread out and look for anything valuable."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_FaenemOliadd": {
				"content": [
					"[convoy_darkness] \"Faen 'em,\" Oli adds, putting a bookend on the conversation. You leave the bodies to their resting places.",
					{
						"pageNum": 0
					}
				]
			},
			"_Thedredgeswe": {
				"content": [
					"[convoy_dredge] The dredge's weapons are stowed, but they each suffer the same piercing wound. They have no signs of food or supplies, and something feels wrong about the way they sit, loosely propped up in a circle looking at each other. It suddenly dawns on you.",
					{
						"divert": "dredgesuicide"
					},
					{
						"flagName": "renown+=5"
					},
					{
						"flagName": "timer_bodies+=.4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Themenderssp": {
				"content": [
					"[convoy_darkness] The menders split the light into three to cover a larger area. There are no terrified shouts for help before you re-converge, but Dytch does find an unusual trinket clasped tightly in one their hands. A few of you have come to the same conclusion.",
					{
						"divert": "dredgesuicide"
					},
					{
						"flagName": "timer_bodies=1.2"
					},
					{
						"flagName": "21_fieldofbodies_item=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"dredgesuicide": {
				"content": [
					"[convoy_dredge] Mass suicide. These dredge appear to have ended each other before the darkness reached them, rather than be twisted alive. It leaves a pit in your stomach to wonder if the survivors in Arberrang might do the same. The caravan leaves the macabre scene behind.",
					{
						"flagName": "morale-=5"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
