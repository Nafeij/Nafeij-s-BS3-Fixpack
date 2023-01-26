{
	"data": {
		"initial": "__hidefolka",
		"stitches": {
			"__hidefolka": {
				"content": [
					{
						"divert": "_YoufindJunos"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=folka"
					},
					{
						"ifCondition": "!folka_state"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoufindJunos": {
				"content": [
					"[iver] /=You find Juno's body laying out on the ice. She is mangled, barely recognizable, grotesque.=/",
					{
						"divert": "_Nocomingback"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nocomingback": {
				"content": [
					"[iver] No coming back from that.",
					{
						"divert": "_Iftheserpent"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iftheserpent": {
				"content": [
					"[valgard] If the serpent and the fall didn't kill her, the slag did.",
					{
						"linkPath": "_Nottomention",
						"ifConditions": [
							{
								"ifCondition": "!folka_state"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "_Nottomentionf",
						"ifConditions": [
							{
								"ifCondition": "folka_state"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nottomention": {
				"content": [
					"[valgard] Not to mention she's just been laying out in the darkness. Who knows how long?",
					{
						"divert": "_Thisistheend"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisistheend": {
				"content": [
					"[valgard] This is the end, isn't it? We failed.",
					{
						"divert": "_Whatdowedo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdowedo": {
				"content": [
					"[valgard iver] What do we do?",
					{
						"divert": "_Whatdowedo0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdowedo0": {
				"content": [
					"[valgard iver] What do we do?",
					{
						"linkPath": "_Nothingisove",
						"option": "Eyvind?"
					},
					{
						"linkPath": "_TryitandIkil",
						"option": "Screw this. We go back to Arberrang."
					},
					{
						"linkPath": "_Eyvindsfacea0",
						"option": "We finish what we came to do."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nottomentionf": {
				"content": [
					"[folka] And the fact that she's been laying out here in darkness all this time...",
					{
						"divert": "_Thisistheendf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisistheendf": {
				"content": [
					"[folka] Damn, I guess it's over then.",
					{
						"divert": "_Whatdowedof"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdowedof": {
				"content": [
					"[folka iver] What now?",
					{
						"divert": "_Whatdowedo0f"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdowedo0f": {
				"content": [
					"[folka iver] What now?",
					{
						"linkPath": "_Nothingisove",
						"option": "Eyvind?"
					},
					{
						"linkPath": "_TryitandIkil",
						"option": "Screw this. We go back to Arberrang."
					},
					{
						"linkPath": "_Eyvindsfacea0",
						"option": "We finish what we came to do."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothingisove": {
				"content": [
					"[eyvind] Nothing is over.",
					{
						"divert": "_Eyvindsfacea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindsfacea": {
				"content": [
					"[eyvind] /=Eyvind's face and voice are expressionless, but tears streak his cheeks.=/",
					{
						"divert": "__renown22"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown22": {
				"content": [
					{
						"divert": "__21_handling"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=22"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_handling": {
				"content": [
					{
						"divert": "keeponkeepinon"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_handling_juno=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TryitandIkil": {
				"content": [
					"[eyvind] Try it, and I kill you all where you stand.",
					{
						"divert": "_Eyvindlockse"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindlockse": {
				"content": [
					"[eyvind] /=Eyvind locks eyes with you. His stare physically hurts. You feel the light shrinking around you.=/",
					{
						"divert": "__renown6"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown6": {
				"content": [
					{
						"divert": "__morale5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=6"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale5": {
				"content": [
					{
						"divert": "keeponkeepinon"
					},
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
			"_Thisisnotthe": {
				"content": [
					"[eyvind] This is not the end.",
					{
						"divert": "_Eyvindsfacea0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindsfacea0": {
				"content": [
					"[eyvind] /=Eyvind's face and voice are expressionless, but tears streak his cheeks.=/",
					{
						"divert": "__renown38"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown38": {
				"content": [
					{
						"divert": "__21_handling0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=38"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_handling0": {
				"content": [
					{
						"divert": "keeponkeepinon"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_handling_juno=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"keeponkeepinon": {
				"content": [
					"[eyvind] We take her to the white tower.",
					{
						"divert": "_IverPleasepi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IverPleasepi": {
				"content": [
					"[eyvind] Iver. Please pick her up.",
					{
						"divert": "_Itdoesntsoun"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itdoesntsoun": {
				"content": [
					"[iver] /=It doesn't sound like a request.=/",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
