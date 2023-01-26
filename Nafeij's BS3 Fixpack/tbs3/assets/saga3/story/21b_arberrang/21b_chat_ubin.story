{
	"data": {
		"initial": "__hidescathac",
		"stitches": {
			"__hidescathac": {
				"content": [
					{
						"divert": "_Thescrivener"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=scathach"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thescrivener": {
				"content": [
					"[$hero] /=The scrivener is scratching diligently at his papers. He looks up.=/",
					{
						"linkPath": "keepgoing",
						"ifConditions": [
							{
								"ifCondition": "scathach_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "horsepower",
						"ifConditions": [
							{
								"ifCondition": "scathach_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"horsepower": {
				"content": [
					{
						"divert": "_Scathachhalt"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@show=scathach"
					},
					{
						"pageNum": 0
					},
					{
						"ifCondition": "scathach_state>0"
					}
				]
			},
			"_Scathachhalt": {
				"content": [
					"[scathach] /=Scathach halts whatever conversations he and Ubin were having.=/",
					{
						"divert": "keepgoing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"keepgoing": {
				"content": [
					"[ubin] Hello, hunter. Found yourself a little patch of quiet, and don't know what do with yourself?",
					{
						"divert": "_Somethinglik"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somethinglik": {
				"content": [
					"[$hero] Something like that.",
					{
						"divert": "_Theeyeofthes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theeyeofthes": {
				"content": [
					"[ubin] The eye of the storm, as the poets say. You start predicting the weather when you've been around long enough. Or maybe you just talk about it more.",
					{
						"divert": "ubinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ubinchat1": {
				"content": [
					"[ubin] /=The old varl stops scratching notes to talk.=/",
					{
						"divert": "_Theoldvarlsc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theoldvarlsc": {
				"content": [
					"[ubin $hero] /=The old varl stops scratching notes to talk.=/",
					{
						"linkPath": "_YouknowIvehe",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Ever seen anything like this before in your many years?"
					},
					{
						"linkPath": "_Storiesmostl",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What have you been writing in your book?"
					},
					{
						"linkPath": "_Whydontyouas",
						"ifConditions": [
							{
								"ifCondition": "scathach_state>0"
							},
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "I've been curious for more detail about Dalalond, the horseborn's homeland."
					},
					{
						"linkPath": "_AhDalalondYo",
						"ifConditions": [
							{
								"ifCondition": "scathach_state==0"
							},
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "I've been curious for more detail about Dalalond, the horseborn's homeland."
					},
					{
						"linkPath": "_NoworriesIfy",
						"option": "I'll leave you to your work."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknowIvehe": {
				"content": [
					"[ubin] You know, I've heard mankind take being called \"old\" an insult, but I never knew why. Now let me think...",
					{
						"divert": "_Wellthefallo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellthefallo": {
				"content": [
					"[ubin] Well, the fall of Skrymirstead was something to behold; half a city sinking into the Silverstone.",
					{
						"divert": "_AndGrofheimw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndGrofheimw": {
				"content": [
					"[ubin] And Grofheim was even bigger.",
					{
						"divert": "_Butsomething"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butsomething": {
				"content": [
					"[ubin] But something like this? No, I have not.",
					{
						"divert": "_Funnyhowourm"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Funnyhowourm": {
				"content": [
					"[ubin] Funny how our memories measure worth, isn't it?",
					{
						"divert": "_Iremembermyc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iremembermyc": {
				"content": [
					"[ubin] I remember my companion Gunnulf telling me I look like an eggplant better than I recall a city sinking beneath the waves.",
					{
						"divert": "_ThatswhyIlik"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThatswhyIlik": {
				"content": [
					"[ubin] That's why I like to write these things down.",
					{
						"linkPath": "ubinchat1",
						"ifConditions": [
							{
								"ifCondition": "scathach_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "horsepower2",
						"ifConditions": [
							{
								"ifCondition": "scathach_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Storiesmostl": {
				"content": [
					"[ubin] Stories, mostly. But not like the menders and scalds, no.",
					{
						"divert": "_Themenderswr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Themenderswr": {
				"content": [
					"[ubin] The menders write about what's in the past, and the skalds stretch fantasies about what happened.",
					{
						"divert": "_Thehistorica"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thehistorica": {
				"content": [
					"[ubin] The historical writings are mostly useless if you ask me.",
					{
						"divert": "_Evenaperfect"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Evenaperfect": {
				"content": [
					"[ubin] Even a perfect record is only as good as the man reading it, and most of us aren't that good.",
					{
						"divert": "_Youmeanwerem"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youmeanwerem": {
				"content": [
					"[$hero] You mean we remember things the way that suits us best.",
					{
						"divert": "_Youcanspinad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcanspinad": {
				"content": [
					"[ubin] You can spin a dozen different morals from the same yarn. Indeed, we're all a bunch of liars at heart.",
					{
						"divert": "_Iwritestorie"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwritestorie": {
				"content": [
					"[ubin] I write stories about people.",
					{
						"divert": "_Whensomeoner"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whensomeoner": {
				"content": [
					"[ubin] When someone reveals their own hopes and fears? That's the truth of things, even if it's a lie. Understand?",
					{
						"divert": "_Oneofthereas"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oneofthereas": {
				"content": [
					"[ubin] One of the reasons I learned to talk to people, like the horseborn.",
					{
						"divert": "_Idliketospea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idliketospea": {
				"content": [
					"[ubin] I'd like to speak with the dredge too, one day. If they'll have me.",
					{
						"divert": "ubinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whydontyouas": {
				"content": [
					"[ubin] Why don't you ask them yourself?",
					{
						"divert": "_Ubinsaysafew"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ubinsaysafew": {
				"content": [
					"[ubin] /=Ubin says a few words to Scathach, who nods. Ubin translates the best he can.=/",
					{
						"divert": "_IamatraderIv"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IamatraderIv": {
				"content": [
					"[ubin scathach] \"I am a trader. I've traveled more than most and never seen the end of our lands. Maybe they are endless.\"",
					{
						"divert": "_Menhavesaidi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Menhavesaidi": {
				"content": [
					"[ubin scathach] \"Men have said it is empty, but they are wrong. They only think it is empty because they move too slowly.\"",
					{
						"divert": "_Whenthesunst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whenthesunst": {
				"content": [
					"[ubin scathach] \"When the sun stops, we celebrate. It is a blessing, it is warmth and freedom.\"",
					{
						"divert": "_Butthenthesh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butthenthesh": {
				"content": [
					"[ubin scathach] \"But then the shattering split our land into pieces. Now each piece is small and empty.\"",
					{
						"divert": "_Ithinkmykind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithinkmykind": {
				"content": [
					"[ubin scathach] \"I think my kind becomes restless here. They talk a lot about the brave who tried to outrun the darkness. They have already become legend.\"",
					{
						"divert": "_Maybetheyare"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybetheyare": {
				"content": [
					"[ubin scathach] \"Maybe they are still running across the Dalalond.\"",
					{
						"divert": "_Iliketoimagi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iliketoimagi": {
				"content": [
					"[ubin scathach] \"I like to imagine this. Your city is heavy and cold, and made for men to walk slowly in circles but go nowhere.\"",
					{
						"divert": "_Iwillbegladt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwillbegladt": {
				"content": [
					"[ubin scathach] \"I will be glad to see the sun again.\"",
					{
						"divert": "_Helooksalitt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Helooksalitt": {
				"content": [
					"[scathach] /=He looks a little wistful, and nods his head to say he's done.=/",
					{
						"divert": "ubinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AhDalalondYo": {
				"content": [
					"[ubin] Ah, Dalalond. You wouldn't believe it, hunter.",
					{
						"divert": "_Citiesofsoli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Citiesofsoli": {
				"content": [
					"[ubin] Cities of solid gold, and rivers of wine!",
					{
						"divert": "_Yourejoking"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yourejoking": {
				"content": [
					"[$hero] You're joking.",
					{
						"divert": "_Youreawilyon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youreawilyon": {
				"content": [
					"[ubin] You're a wily one. No, it was wide fields and tall sky.",
					{
						"divert": "_TheywanderEv"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheywanderEv": {
				"content": [
					"[ubin] They wander. Everything they build has to wander with them.",
					{
						"divert": "_Didyouknowth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Didyouknowth": {
				"content": [
					"[ubin] Did you know they believed the sun stopping was a blessing? They loved it, before the earthquakes.",
					{
						"divert": "_Thentheirlan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thentheirlan": {
				"content": [
					"[ubin] Then their land was shattered just like yours and ours, and dredge came from everywhere.",
					{
						"divert": "_Ifyouaskmeth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyouaskmeth": {
				"content": [
					"[ubin] If you ask me there's something a lot bigger beneath our feet than we realized.",
					{
						"divert": "_Inawayitmake"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Inawayitmake": {
				"content": [
					"[ubin] In a way, it makes me glad.",
					{
						"divert": "_Idbequitesad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idbequitesad": {
				"content": [
					"[ubin] I'd be quite sad to live in a time when we've mapped everything the world has to show us.",
					{
						"divert": "_ThenwhatAsma"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThenwhatAsma": {
				"content": [
					"[ubin] Then what? A small world makes for small thinking.",
					{
						"divert": "ubinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NoworriesIfy": {
				"content": [
					"[ubin] No worries. If you want to talk I'm glad for the company.",
					{
						"divert": "_Outofcuriosi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Outofcuriosi": {
				"content": [
					"[$hero] Out of curiosity, what are you planning to do with your writings if the darkness overtakes us?",
					{
						"divert": "_Leaveitforso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Leaveitforso": {
				"content": [
					"[ubin] Leave it for someone else to fi...",
					{
						"divert": "_Ubinssmilesu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ubinssmilesu": {
				"content": [
					"[ubin] /=Ubin's smile suddenly falls from his face as he realizes it'll become warped.=/",
					{
						"divert": "_Wouldyoubeli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wouldyoubeli": {
				"content": [
					"[ubin] Would you believe I hadn't thought of that?",
					{
						"divert": "_Maybeahorseb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybeahorseb": {
				"content": [
					"[ubin] Maybe a horseborn could... no, not without a mender.",
					{
						"divert": "_Maybewecould"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybewecould": {
				"content": [
					"[ubin] Maybe we could spare a mender to...",
					{
						"divert": "_Damnation"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Damnation": {
				"content": [
					"[ubin] Damnation.",
					{
						"divert": "_Wellhavetoli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellhavetoli": {
				"content": [
					"[ubin] We'll have to live, there's no way around it now.",
					{
						"flagName": "morale+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"horsepower2": {
				"content": [
					"[scathach] /=Scathach says something in his own tongue and Ubin laughs.=/",
					{
						"divert": "_HesaysIdontl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HesaysIdontl": {
				"content": [
					"[ubin] He says I don't look like an eggplant.",
					{
						"divert": "ubinchat1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
