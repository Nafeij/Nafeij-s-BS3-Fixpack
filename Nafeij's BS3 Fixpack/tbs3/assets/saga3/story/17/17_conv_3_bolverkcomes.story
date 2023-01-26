{
	"data": {
		"initial": "__hidevalgard",
		"stitches": {
			"__hidevalgard": {
				"content": [
					{
						"divert": "_Thatwasntjus"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=valgard"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatwasntjus": {
				"content": [
					"[folka] That wasn't just chance.",
					{
						"divert": "_Maybeallyour"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybeallyour": {
				"content": [
					"[iver] Maybe all your shouting had something to do with it.",
					{
						"divert": "_Nothiswasorg"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothiswasorg": {
				"content": [
					"[folka iver] No, this was organized, strategic. A little too familiar...",
					{
						"divert": "_Listenheadwi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Listenheadwi": {
				"content": [
					"[folka] Listen, head-witch, if you're expecting us to play along you better start explaining.",
					{
						"divert": "_WegotoRidgeh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WegotoRidgeh": {
				"content": [
					"[juno iver] We go to Ridgehorn. There we'll find a secret path, a shortcut to our destination.",
					{
						"divert": "_Whichis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whichis": {
				"content": [
					"[folka iver] Which is?",
					{
						"divert": "_Theplacewher"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theplacewher": {
				"content": [
					"[juno iver] The place where the darkness began.",
					{
						"divert": "_Howaboutalit"
					},
					{
						"flagName": "@show=valgard"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howaboutalit": {
				"content": [
					"[folka] How about a little more--",
					{
						"divert": "_Holdupareyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Holdupareyou": {
				"content": [
					"[valgard] Hold up, are you guys expecting anyone?",
					{
						"divert": "_Youallseeito"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youallseeito": {
				"content": [
					"[iver] /=You all see it, off on the horizon. An imposing figure, cloaked in white, leads a legion of the warped.=/",
					{
						"divert": "_CantbeBolver"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CantbeBolver": {
				"content": [
					"[folka] Can't be. Bolverk?",
					{
						"divert": "_CantbeBolver0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CantbeBolver0": {
				"content": [
					"[folka iver] Can't be. Bolverk?",
					{
						"linkPath": "_Iagreewithth",
						"option": "We need to get away from here."
					},
					{
						"linkPath": "_Youwhat",
						"ifConditions": [
							{
								"ifCondition": "15_bolverk_defeated"
							}
						],
						"option": "I killed him at Manaharr."
					},
					{
						"linkPath": "_Youdidwhat",
						"ifConditions": [
							{
								"ifCondition": "!15_bolverk_defeated"
							}
						],
						"option": "He was left buried beneath rubble at Manaharr."
					},
					{
						"linkPath": "_Weveseenless",
						"option": "How is that possible?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iagreewithth": {
				"content": [
					"[valgard] I agree with that. Looks like we'll be joining you.",
					{
						"divert": "leavingstrand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youwhat": {
				"content": [
					"[folka] You what?!",
					{
						"divert": "_Deathislessc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Deathislessc": {
				"content": [
					"[juno] Death is less certain than it used to be.",
					{
						"divert": "leavingstrand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdidwhat": {
				"content": [
					"[folka] You did what?!",
					{
						"divert": "_Deathislessc0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Deathislessc0": {
				"content": [
					"[juno] Death is less certain than it used to be.",
					{
						"divert": "leavingstrand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Weveseenless": {
				"content": [
					"[juno] We've seen less likely things, but... this has troublesome implications.",
					{
						"divert": "leavingstrand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"leavingstrand": {
				"content": [
					"[valgard] How did things get this bad? Where are the other Valka?",
					{
						"divert": "_EyvindandIwe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_EyvindandIwe": {
				"content": [
					"[juno] Eyvind and I went to Manaharr. Bolverk came for us with a vengeance, destroying any chance we had of cooperating with the other Valka.",
					{
						"divert": "_FromwhereIst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_FromwhereIst": {
				"content": [
					"[iver] From where I stood, it looked more like Eyvind completely lost his mind.",
					{
						"divert": "_Junolooksawa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Junolooksawa": {
				"content": [
					"[juno] /=Juno looks away, and returns to her point.=/",
					{
						"divert": "_Everydaythed"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everydaythed": {
				"content": [
					"[juno] Every day, the darkness draws closer to Arberrang. I fear they have no defense against it.",
					{
						"divert": "_Thenwhatarew"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenwhatarew": {
				"content": [
					"[iver] Then what are we doing standing here? Ridgehorn's several days away.",
					{
						"divert": "_Ingoodcondit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ingoodcondit": {
				"content": [
					"[valgard] In good conditions, maybe. I can safely say these are not.",
					{
						"divert": "_Ifthatreally"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifthatreally": {
				"content": [
					"[folka] If that really is Bolverk--",
					{
						"divert": "_Ifitislethim"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifitislethim": {
				"content": [
					"[iver] If it is, let him chase us. It'll keep him away from Arberrang.",
					{
						"divert": "_Theyvegoteno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyvegoteno": {
				"content": [
					"[iver] They've got enough problems as it is.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
