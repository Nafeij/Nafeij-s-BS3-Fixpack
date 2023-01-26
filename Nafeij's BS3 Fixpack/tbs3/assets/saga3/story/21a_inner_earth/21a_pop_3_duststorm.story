{
	"data": {
		"initial": "_Iseveryonehe",
		"stitches": {
			"_Iseveryonehe": {
				"content": [
					"[iver] \"Is everyone here?\" you shout. Ravens rub soot from their faces and cough into their hands. Thick black dust haunts the air, kicked up by the leviathan's thrashing.",
					{
						"divert": "_IcanseeherEy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IcanseeherEy": {
				"content": [
					"[eyvind] \"I can see her!\" Eyvind shouts. A globe of light detaches from the convulsing silhouette of the serpent, blazing through the air and crashing like a meteor, far in the distance. Eyvind darts ahead with his own light. The rest follow.",
					{
						"divert": "_Youcrawlthro"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcrawlthro": {
				"content": [
					"[convoy_darkness] You crawl through curtains of dust. It's suddenly as dark as a moonless night. Juno's light dims, and winks out. \"Hurry!\" shouts Eyvind.",
					{
						"divert": "choices"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choices": {
				"content": [
					"[convoy_darkness] Soon you admit it's impossible to know if you're heading the right direction anymore. Eyvind begins to panic.",
					{
						"linkPath": "_Alfrunprotes",
						"option": "Separate into two groups to search a larger area."
					},
					{
						"linkPath": "_Yousweepthea",
						"option": "Methodically comb back and forth as you go."
					},
					{
						"linkPath": "_Aneternitypa",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Keep heading in your current direction."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Alfrunprotes": {
				"content": [
					"[convoy_darkness] Alfrun protests, but has no better ideas. She takes half the Ravens while you go with Eyvind and the others, careful to keep each other in sight.",
					{
						"divert": "darknessambush"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yousweepthea": {
				"content": [
					"[convoy_darkness] You sweep the area, leaving markings as guideposts. It's frustratingly slow. \"Hold,\" Oli puffs after a long silence. Shapes ahead shamble towards you.",
					{
						"divert": "__timer_dusts"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_dusts": {
				"content": [
					{
						"divert": "__21_duststor"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_duststorm+=1.1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_duststor": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "21_duststorm_battle=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aneternitypa": {
				"content": [
					"[convoy_darkness] An eternity passes. More? Could it be days? You've no idea, or even what direction you're heading anymore. You tread over identical flat earth. \"We're not going to find her just randomly wandering around,\" you concede to an exhausted crew.",
					{
						"divert": "__timer_dusts0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__timer_dusts0": {
				"content": [
					{
						"divert": "choices"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "timer_duststorm+=2.7"
					},
					{
						"pageNum": 0
					}
				]
			},
			"darknessambush": {
				"content": [
					"[convoy_darkness] A trill shout in the distance is followed by ringing weapons.",
					{
						"linkPath": "bakdies",
						"ifConditions": [
							{
								"ifCondition": "bak_state=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nobak",
						"ifConditions": [
							{
								"ifCondition": "bak_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bakdies": {
				"content": [
					"[bak] You race toward the light to discover the broken body of Bak at the feet of warped dredge. \"They jumped us in the dark!\" shouts Valgard, blood streaming down his arm.",
					{
						"divert": "__bak_state0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__bak_state0": {
				"content": [
					{
						"divert": "__21_duststor0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "bak_state=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_duststor0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "21_duststorm_battle=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nobak": {
				"content": [
					"[valgard] You race toward the light to discover a horde of warped dredge. \"They jumped us in the dark!\" shouts Valgard, blood streaming down his arm.",
					{
						"divert": "__21_duststor1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_duststor1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "21_duststorm_battle=1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
