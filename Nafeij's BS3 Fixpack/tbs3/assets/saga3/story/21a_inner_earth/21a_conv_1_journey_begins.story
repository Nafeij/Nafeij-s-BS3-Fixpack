{
	"data": {
		"initial": "_Thewhitetowe",
		"stitches": {
			"_Thewhitetowe": {
				"content": [
					"[iver] /=The white tower crouches in the distance, small against the vastness of the Inner Earth. You feel tired just thinking about the march to come.=/",
					{
						"divert": "_Thattoweriso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thattoweriso": {
				"content": [
					"[juno] That tower is our only goal now.",
					{
						"divert": "_Thatthingsta"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatthingsta": {
				"content": [
					"[iver] That thing stands out like blood on snow. It doesn't belong here, does it?",
					{
						"divert": "_Noitwasbuilt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Noitwasbuilt": {
				"content": [
					"[juno] No, it was built by the Valka. It's where Eyvind and I will undo this.",
					{
						"divert": "_Whatisthaten"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatisthaten": {
				"content": [
					"[iver] What is that enormous dome laying behind it?",
					{
						"divert": "_Afallensun"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Afallensun": {
				"content": [
					"[juno] A fallen sun.",
					{
						"divert": "_Andwhendoyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andwhendoyou": {
				"content": [
					"[iver] And when do you plan to explain any of this?",
					{
						"divert": "_Theremaycome"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theremaycome": {
				"content": [
					"[juno] There may come a point when I have little choice.",
					{
						"divert": "_Thatpointisn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatpointisn": {
				"content": [
					"[juno] That point is not now. It will not be a short conversation, or a happy one.",
					{
						"linkPath": "folkasaved",
						"ifConditions": [
							{
								"ifCondition": "19_folka_died==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "folkadied",
						"ifConditions": [
							{
								"ifCondition": "19_folka_died>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkasaved": {
				"content": [
					"[juno] Iver, speaking of unhappy things, I'm sorry that we had no time to save your eye when Bolverk struck.",
					{
						"divert": "_Ifearthereis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifearthereis": {
				"content": [
					"[juno] I fear there is no restoring it now.",
					{
						"divert": "_Itsnotthefir"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsnotthefir": {
				"content": [
					"[iver] It's not the first time I've lost something.",
					{
						"divert": "_Thoughtheydo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thoughtheydo": {
				"content": [
					"[juno] Though they do not say it, I can sense the Ravens admire you greatly, as does Folka.",
					{
						"divert": "folkacontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkadied": {
				"content": [
					"[juno] Speaking of unhappy things, I can sense the loss of Folka is a dire blow to the Ravens.",
					{
						"divert": "_Itmaybewiset"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itmaybewiset": {
				"content": [
					"[juno] It may be wise to try and keep their spirits up.",
					{
						"divert": "folkacontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkacontinue": {
				"content": [
					"[juno] And I'm afraid there is something else you should know...",
					{
						"divert": "_AswefellIcou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AswefellIcou": {
				"content": [
					"[juno] As we fell, I could feel a change. In Arberrang.",
					{
						"linkPath": "junocontinue",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "askaboutrook",
						"ifConditions": [
							{
								"ifCondition": "hero_was_rook==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "askaboutalette",
						"ifConditions": [
							{
								"ifCondition": "hero_was_alette==1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"askaboutrook": {
				"content": [
					"[iver] Is Rook alright? Can you tell?",
					{
						"divert": "junocontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"askaboutalette": {
				"content": [
					"[iver] Alette? Is she safe?",
					{
						"divert": "junocontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"junocontinue": {
				"content": [
					"[juno] ...Their days are numbered. We no longer have the luxury of not knowing.",
					{
						"divert": "_Everysingled"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everysingled": {
				"content": [
					"[juno] Every single day we lose is another day Arberrang may fall.",
					{
						"divert": "_Enoughtalkth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Enoughtalkth": {
				"content": [
					"[iver] Enough talk, then.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
