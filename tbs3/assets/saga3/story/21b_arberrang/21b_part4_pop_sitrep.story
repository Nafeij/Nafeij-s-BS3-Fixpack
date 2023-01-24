{
	"data": {
		"initial": "_Whenthewarpe",
		"stitches": {
			"_Whenthewarpe": {
				"content": [
					"[convoy] When the warped emerged from below, the few who survived retreated to the center of the plateau. Zefr and the last two menders can only protect an area slightly larger than the great hall itself.",
					{
						"divert": "_Clansmenpres"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Clansmenpres": {
				"content": [
					"[convoy] Clansmen pressed together on the front doorstep are trying to find space within the already dangerously cramped inner hall, and you take fighters to protect them from warped as the light shrinks again.",
					{
						"divert": "_Butthedarkne"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butthedarkne": {
				"content": [
					"[convoy] But the darkness does weird things to the places where it touches the ceiling. Stuck between light and dark, timbers in the ceiling wobble and stretch unnaturally as if turning to animal fat.",
					{
						"linkPath": "gunnulfdead",
						"ifConditions": [
							{
								"ifCondition": "gunnulf_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "gunnulfalive",
						"ifConditions": [
							{
								"ifCondition": "gunnulf_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"gunnulfalive": {
				"content": [
					"[gunnulf] As the timbers at the entrance buckle and collapse, Gunnulf is already there, holding up the whole wall for the terrified people to crawl through. Snarling warped decide to make their move. \"Hurry!\" he shouts.",
					{
						"pageNum": 0
					}
				]
			},
			"gunnulfdead": {
				"content": [
					"[$hero] As the timbers at the entrance buckle and collapse, the front wall falls inward, threatening to close off an escape route into the great hall. Survivors desperately claw at the rubble, but make slow progress. Snarling warped decide to make their move. \"Buy them time!\" you shout.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
