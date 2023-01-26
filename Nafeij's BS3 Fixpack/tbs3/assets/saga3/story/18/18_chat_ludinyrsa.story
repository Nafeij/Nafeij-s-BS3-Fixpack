{
	"data": {
		"initial": "skipMark",
		"stitches": {
			"skipMark": {
				"content": [
					"{skip} mark1=$hero mark2=ludin mark4=yrsa",
					{
						"linkPath": "_Ludinthereyo",
						"option": "{skip}"
					},
					{
						"pageNum": 1
					}
				]
			},
			"_Ludinthereyo": {
				"content": [
					"[$hero] Ludin, there you are. I wasn't sure where you went after the bells.",
					{
						"divert": "_Iwaswithhimw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwaswithhimw": {
				"content": [
					"[ludin] I was with him when he died. He did not go easily.",
					{
						"divert": "_Yougetthedis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yougetthedis": {
				"content": [
					"[$hero] /=You get the distinct feeling their time together was strained.=/",
					{
						"divert": "_Ithoughtwesh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithoughtwesh": {
				"content": [
					"[$hero] I thought we should, uh, clear the air about...",
					{
						"divert": "_Ludinbeingth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ludinbeingth": {
				"content": [
					"[yrsa] Ludin being the king, now?",
					{
						"divert": "_BelievemeIve"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BelievemeIve": {
				"content": [
					"[ludin] Believe me, I've been thinking of little else since we arrived.",
					{
						"divert": "_Butifyourewo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butifyourewo": {
				"content": [
					"[ludin] But if you're worried about me seizing control, don't be.",
					{
						"divert": "_AsfarasImcon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AsfarasImcon": {
				"content": [
					"[ludin] As far as I'm concerned, nothing changes. Your banner is yours. The varl and horseborn make their own decisions.",
					{
						"divert": "_Ifyoudlikewe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyoudlikewe": {
				"content": [
					"[ludin] If you'd like, we can discuss it further.",
					{
						"divert": "ludinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ludinchat1": {
				"content": [
					"[ludin] /=Ludin waits quietly for your response.=/",
					{
						"divert": "_Ludinwaitsqu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ludinwaitsqu": {
				"content": [
					"[ludin $hero] /=Ludin waits quietly for your response.=/",
					{
						"linkPath": "_IsupposeIama",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "I'm sorry your father has passed."
					},
					{
						"linkPath": "_Notlongagoth",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "So you're just giving up your birthright?"
					},
					{
						"linkPath": "_Istillhaveso",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What do you intend to do now?"
					},
					{
						"linkPath": "_Imgladyoufou",
						"option": "I won't take any more of your time."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IsupposeIama": {
				"content": [
					"[ludin] I suppose I am as well. I know that sounds strange...",
					{
						"divert": "_Therewasalwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Therewasalwa": {
				"content": [
					"[ludin] There was always a sharp edge to him. He wanted to be a ruler, not a leader, if you catch the difference.",
					{
						"divert": "_Ialwaysremem"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ialwaysremem": {
				"content": [
					"[ludin] I always remembered this feeling he'd give me, that he truly believed he deserved to rule men.",
					{
						"divert": "_Ithinkpassin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithinkpassin": {
				"content": [
					"[ludin] I think passing it down to me was just a way to continue glorifying himself.",
					{
						"divert": "_Washischange"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Washischange": {
				"content": [
					"[$hero] Was his change of heart with the refugees a surprise to you?",
					{
						"divert": "_Wasitarealch"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wasitarealch": {
				"content": [
					"[ludin] Was it a real change of heart, or did he hope it would encourage me to take the crown? I don't know.",
					{
						"divert": "_Doesntmatter"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Doesntmatter": {
				"content": [
					"[ludin] Doesn't matter. I've chosen my own path.",
					{
						"divert": "ludinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notlongagoth": {
				"content": [
					"[ludin] Not long ago there was no such thing. We still cling to these banners because men follow deeds, not blood.",
					{
						"divert": "_Myfatherwant"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Myfatherwant": {
				"content": [
					"[ludin] My father wanted to change that. I've come to disagree.",
					{
						"divert": "_Dontlooksosu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontlooksosu": {
				"content": [
					"[ludin] Don't look so surprised.",
					{
						"divert": "_Itsjustthaty"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsjustthaty": {
				"content": [
					"[$hero] It's just that you had a certain reputation, Prince Ludin. What changed?",
					{
						"divert": "_Travelingwit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Travelingwit": {
				"content": [
					"[ludin] Traveling with you.",
					{
						"divert": "_Seeinghowpeo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Seeinghowpeo": {
				"content": [
					"[ludin] Seeing how people live. I know, it sounds cliche.",
					{
						"divert": "_Foralongtime"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Foralongtime": {
				"content": [
					"[ludin] For a long time I was jealous of how others looked to you instead of me, but over time...",
					{
						"divert": "_Whatkindofsa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatkindofsa": {
				"content": [
					"[ludin] What kind of sane person wants to appoint themselves as the one to tell others how they should live?",
					{
						"divert": "_Youdiditouto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdiditouto": {
				"content": [
					"[ludin] You did it out of necessity, not privilege. It's a burden I don't envy anymore.",
					{
						"divert": "_Neverfeelsli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Neverfeelsli": {
				"content": [
					"[ludin] Never feels like we've changed until we look back at what idiots we used to be.",
					{
						"divert": "_Someofusanyw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Someofusanyw": {
				"content": [
					"[yrsa] Some of us, anyway.",
					{
						"divert": "_Butweveallbe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butweveallbe": {
				"content": [
					"[ludin] But we've all been through some changes, haven't we?",
					{
						"divert": "ludinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Istillhaveso": {
				"content": [
					"[ludin] I still have some privileges as Meinolf's son. I intend to use them.",
					{
						"divert": "_Whentheylear"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whentheylear": {
				"content": [
					"[ludin] When they learned of the darkness, my father ordered every mender in Manaharr to Arberrang.",
					{
						"divert": "_Theystillans"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theystillans": {
				"content": [
					"[ludin] They still answer to me. I intend to find a solution that will protect us from the darkness.",
					{
						"divert": "_Howsthatgoin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howsthatgoin": {
				"content": [
					"[$hero] How's that going?",
					{
						"divert": "_Likeafatmanc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Likeafatmanc": {
				"content": [
					"[yrsa] Like a fat man coming home from the mead hall.",
					{
						"divert": "_Slowandstumb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Slowandstumb": {
				"content": [
					"[ludin] Slow and stumbling.",
					{
						"divert": "_Themendersar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Themendersar": {
				"content": [
					"[ludin] The menders are little more than bricklayers and nurses, to be honest. The Valka are another story, but they all stayed in Manaharr against my father's wishes.",
					{
						"divert": "_Nobodyknowsw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nobodyknowsw": {
				"content": [
					"[ludin] Nobody knows what they've been up to, but I hope our goals are the same. We can't exactly go and check...",
					{
						"divert": "_Stillatleast"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Stillatleast": {
				"content": [
					"[$hero] Still, at least someone is working on it.",
					{
						"divert": "ludinchat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imgladyoufou": {
				"content": [
					"[ludin] I'm glad you found me, though. It was good to talk.",
					{
						"divert": "_Listenevenif"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Listenevenif": {
				"content": [
					"[ludin] Listen, even if I wanted to rule now, it would be a struggle. Arberrang needs fewer struggles, not more.",
					{
						"divert": "_Andfewerpeop"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andfewerpeop": {
				"content": [
					"[yrsa] And fewer people trying to rule.",
					{
						"divert": "ludinchat2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ludinchat2": {
				"content": [
					"[$hero] What about when this is all over? Arberrang still needs a leader.",
					{
						"linkPath": "rooktalk",
						"ifConditions": [
							{
								"ifCondition": "hero_rook==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alettetalk",
						"ifConditions": [
							{
								"ifCondition": "hero_alette==1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alettetalk": {
				"content": [
					"[ludin] For what it's worth, Alette, I believe you would make a... fantastic queen.",
					{
						"divert": "_AhnotthatIme"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AhnotthatIme": {
				"content": [
					"[ludin] Ah, not that I mean, to my king. Necessarily.",
					{
						"divert": "_YoucatchYrsa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoucatchYrsa": {
				"content": [
					"[yrsa] /=You catch Yrsa subtly rolling her eyes.=/",
					{
						"divert": "rooktalk"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rooktalk": {
				"content": [
					"[ludin] I'll... consider leadership another time. It will be the decision of the people, and right now they look to you.",
					{
						"divert": "_Thesmartones"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thesmartones": {
				"content": [
					"[yrsa] The smart ones, anyway.",
					{
						"divert": "_Letmeworryab"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Letmeworryab": {
				"content": [
					"[ludin] Let me worry about the menders for now.",
					{
						"divert": "_Itsoundedlik"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsoundedlik": {
				"content": [
					"[ludin] It sounded like they're ready to go against Ruin. I'll gladly stand with you in the fight if you need me.",
					{
						"divert": "_Weboth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Weboth": {
				"content": [
					"[yrsa] We, both.",
					{
						"divert": "_Youimaginear"
					},
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youimaginear": {
				"content": [
					"[$hero] /=You imagine a resemblance between the two you hadn't seen before, but you leave it unsaid, and turn your thoughts to the battle to come.=/",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
