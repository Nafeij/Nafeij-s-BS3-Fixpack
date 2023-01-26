{
	"data": {
		"initial": "_Acrosscoloss",
		"stitches": {
			"_Acrosscoloss": {
				"content": [
					"[convoy_darkness] Across colossal cliffs you spy countless pockets carved into the stone. \"Those are the sculptor's homes,\" Alfrun points out. The massive web of stairs and chambers must have been a beehive of activity before the dredge fled from the darkness.",
					{
						"divert": "_DontmoveAlfr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DontmoveAlfr": {
				"content": [
					"[alfrun] \"Don't move,\" Alfrun says, pressing her back to the stone. The Ravens do the same. Beyond the monolith floats an immense creature, all tentacles and eyes, swimming in the air. \"What in the depths is that?\" you whisper. \"A victim,\" Alfrun says accusingly, aimed at the Valka.",
					{
						"divert": "_Youveheardof"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youveheardof": {
				"content": [
					"[iver] You've heard of enormous monsters crawling from deep within the earth, but this one has been twisted horrifically by the darkness. Ravens worry that the light will draw its attention, even from this distance.",
					{
						"linkPath": "_Thethingmean",
						"option": "Hide within a dredge dwelling until it passes."
					},
					{
						"linkPath": "_Wedonthaveti",
						"option": "Run for it and hope it doesn't notice."
					},
					{
						"linkPath": "_Yousplittheg",
						"option": "Split into groups in case it gives chase."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thethingmean": {
				"content": [
					"[convoy_darkness] The thing meanders to and fro, sometimes bumping and sliding into walls. After long observation you believe that its many eyes have been made useless. The caravan then leaves with haste, and you feel a twinge of pity for the mangled thing.",
					{
						"divert": "__timer_monst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_monst": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_monster=1.6"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wedonthaveti": {
				"content": [
					"[convoy_darkness] \"We don't have time to play it safe,\" you order, and the caravan breaks into a sprint. It's not long before you realize that it hasn't responded to you at all. You're not sure it's even capable of doing so in its broken condition. Hopefully your luck holds out.",
					{
						"pageNum": 0
					}
				]
			},
			"_Yousplittheg": {
				"content": [
					"[convoy_darkness] You split the group between Eyvind, Juno and Alfrun, drawing lines on the ground to map out your paths. The plan complicates things and Ravens bicker. When you finally break from the cliffs you discover the creature hasn't taken any interest in you. Its many eyes may have been made useless by the darkness, and you feel a twinge of pity for the thing.",
					{
						"divert": "__timer_monst0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_monst0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_monster=1.1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
