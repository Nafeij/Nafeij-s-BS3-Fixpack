{
	"data": {
		"initial": "_Ekkillsbeeng",
		"stitches": {
			"_Ekkillsbeeng": {
				"content": [
					"[iver] /=Ekkill's been giving you looks for quite a while now, and he seems to have finally decided to approach.=/",
					{
						"divert": "_YoureRooksfr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoureRooksfr": {
				"content": [
					"[ekkill] You're Rook's friend.",
					{
						"linkPath": "rookalive",
						"ifConditions": [
							{
								"ifCondition": "rook_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "rookdead",
						"ifConditions": [
							{
								"ifCondition": "rook_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookdead": {
				"content": [
					"[iver] Yes. You know he's dead, don't you?",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookalive": {
				"content": [
					"[iver] Yes. You do know we've traveled together before? After Frostvellr.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue": {
				"content": [
					"[ekkill] Yeah, I know. I know.",
					{
						"divert": "_Justseeingyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justseeingyo": {
				"content": [
					"[ekkill] Just seeing you around is digging up some ancient history. I don't like how we left things, me and Rook.",
					{
						"divert": "ekkillchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ekkillchat1": {
				"content": [
					"[ekkill] /=Ekkill stares off into the distance, unsure of what to say next.=/",
					{
						"divert": "_Ekkillstares"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ekkillstares": {
				"content": [
					"[ekkill iver] /=Ekkill stares off into the distance, unsure of what to say next.=/",
					{
						"linkPath": "_Idontknowand",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "How did you leave things with Rook?"
					},
					{
						"linkPath": "_Surewellenou",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "You seem to do well with the Ravens."
					},
					{
						"linkPath": "_Feelslikesol",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What really did happen at Frostvellr, anyway?"
					},
					{
						"linkPath": "_Yeahitstooda",
						"option": "Let's leave things here."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontknowand": {
				"content": [
					"[ekkill] I don't know, and it still sticks in my craw. I don't care if people think I'm a bit, you know, myself. But I'm no liar!",
					{
						"divert": "_IbeggedRookf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IbeggedRookf": {
				"content": [
					"[ekkill] I begged Rook for my life like a worm, and he never apologized for how he treated me.",
					{
						"divert": "_OhDoyouwantm"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_OhDoyouwantm": {
				"content": [
					"[iver] Oh. Do you want me to apologize for him?",
					{
						"divert": "_Nobutdidheev"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nobutdidheev": {
				"content": [
					"[ekkill] No, but did he ever say anything to you...?",
					{
						"divert": "_Youknowforge"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youknowforge": {
				"content": [
					"[ekkill] You know, forget it. I don't know what I'm saying, alright?",
					{
						"divert": "_Itstrikesyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itstrikesyou": {
				"content": [
					"[iver] /=It strikes you as odd that Ekkill seems to care so much about Rook's opinion of him.=/",
					{
						"divert": "_Justbeenthin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justbeenthin": {
				"content": [
					"[ekkill] Just been thinking about it for a long time, that's all.",
					{
						"divert": "_Wantedtomake"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wantedtomake": {
				"content": [
					"[ekkill] Wanted to make sure I said it, while I still can.",
					{
						"divert": "ekkillchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Surewellenou": {
				"content": [
					"[ekkill] Sure, well enough.",
					{
						"divert": "_Iguesstheres"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iguesstheres": {
				"content": [
					"[ekkill] I guess there's a couple reasons I had a bit of a reputation with the old caravan, huh?",
					{
						"divert": "_Ekkillsmiles"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ekkillsmiles": {
				"content": [
					"[ekkill] /=Ekkill smiles from the memory. You can't tell whether he finds it funny or is trying to lighten the mood.=/",
					{
						"divert": "_Itsaspecialf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsaspecialf": {
				"content": [
					"[ekkill] It's a special feeling when a woman clutches her husband's arm just because you walked too close!",
					{
						"divert": "_Yournamedoes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yournamedoes": {
				"content": [
					"[iver] Your name does mean \"widower\".",
					{
						"divert": "_Notevenmyrea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notevenmyrea": {
				"content": [
					"[ekkill] Not even my real name. It's what Onef started calling me to scare the locals.",
					{
						"divert": "_ReallyWhatsy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ReallyWhatsy": {
				"content": [
					"[iver] Really? What's your name?",
					{
						"divert": "_Ekkillchange"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ekkillchange": {
				"content": [
					"[ekkill] /=Ekkill changes the topic quickly.=/",
					{
						"divert": "_AnywaytheRav"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AnywaytheRav": {
				"content": [
					"[ekkill] Anyway, the Ravens? None of these folk care about the past. And they don't judge, either.",
					{
						"divert": "_Suitsmejustf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Suitsmejustf": {
				"content": [
					"[ekkill] Suits me just fine.",
					{
						"divert": "ekkillchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Feelslikesol": {
				"content": [
					"[ekkill] Feels like so long ago now, even though it really wasn't that long. You remember Onef?",
					{
						"divert": "_Hetriedtokil"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hetriedtokil": {
				"content": [
					"[iver] He tried to kill half the caravan.",
					{
						"divert": "_Wellthebigna"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellthebigna": {
				"content": [
					"[ekkill] Well, the big names in Frostvellr, when the dredge started showing up they went for each others throats. They were all trying to come out on top.",
					{
						"divert": "_Nothingsurpr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothingsurpr": {
				"content": [
					"[ekkill] Nothing surprising about that. Onef, though, he almost did it.",
					{
						"divert": "_Madeitlookli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Madeitlookli": {
				"content": [
					"[ekkill] Made it look like I was in charge, and everybody believed it, because... well, I'm pretty convincing.",
					{
						"divert": "_Onefhesgotth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onefhesgotth": {
				"content": [
					"[ekkill] Onef, he's got them fighting each other, and he's got me acting like an absolute madman, doing all kinds of foul stuff.",
					{
						"divert": "_Imnotthekind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imnotthekind": {
				"content": [
					"[ekkill] I'm not the kind to have regrets, but...",
					{
						"divert": "_Idontknowwhy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontknowwhy": {
				"content": [
					"[ekkill] I don't know why I ever listened to him. He'd been telling me what to do since I was a boy.",
					{
						"divert": "_Itgavemesome"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itgavemesome": {
				"content": [
					"[ekkill] It gave me some power, I guess. Gave a young, crazy boy the freedom to do what I do. Fun at first.",
					{
						"divert": "_Butwhenthing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butwhenthing": {
				"content": [
					"[ekkill] But when things started looking bad, Onef tried to leave me in Frostvellr to save his own skin, let me take the fall.",
					{
						"divert": "_Afterallthat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Afterallthat": {
				"content": [
					"[ekkill] After all that time, and all those things I did for him.",
					{
						"divert": "_ImnogeniusIl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ImnogeniusIl": {
				"content": [
					"[ekkill] I'm no genius, I'll admit it. But I'm no damned liar! Not like Onef.",
					{
						"divert": "_Ekkillspitsa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ekkillspitsa": {
				"content": [
					"[ekkill] /=Ekkill spits, as if trying to get the name out of his mouth.=/",
					{
						"divert": "_Whosstillali"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whosstillali": {
				"content": [
					"[ekkill] Who's still alive now, ya backstabbing son of a bitch? Me, that's who.",
					{
						"divert": "ekkillchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yeahitstooda": {
				"content": [
					"[ekkill] Yeah, it's too damned cold to flap our jaws for no reason like this.",
					{
						"divert": "_Isaidmypiece"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Isaidmypiece": {
				"content": [
					"[ekkill] I said my piece, varl. See you around.",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
