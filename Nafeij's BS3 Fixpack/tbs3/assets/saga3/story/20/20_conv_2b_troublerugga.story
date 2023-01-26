{
	"data": {
		"initial": "_Ahaoursavior",
		"stitches": {
			"_Ahaoursavior": {
				"content": [
					"[rugga] Aha, our savior has joined us. Maybe now we can hear some sense!",
					{
						"linkPath": "rookhero",
						"ifConditions": [
							{
								"ifCondition": "hero_rook=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alettehero",
						"ifConditions": [
							{
								"ifCondition": "hero_alette=1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookhero": {
				"content": [
					"[rugga] I am tired of listening to your bitch yap.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alettehero": {
				"content": [
					"[rugga] A pleasant voice will be a welcome change to this bitch's yapping.",
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
					"[oddleif] You'd prefer it to my bite.",
					{
						"divert": "_Thatswhyavic"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatswhyavic": {
				"content": [
					"[rugga] That's why a vicious dog should be muzzled.",
					{
						"divert": "_Thatswhyavic0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatswhyavic0": {
				"content": [
					"[rugga $hero] That's why a vicious dog should be muzzled.",
					{
						"linkPath": "_Enoughofthis",
						"option": "Disrespect Oddleif again and see what happens."
					},
					{
						"linkPath": "_Idontknowwha",
						"option": "You don't see the irony in that, coming from you, Rugga?"
					},
					{
						"linkPath": "_Asimpledisag",
						"option": "What is this all about?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Enoughofthis": {
				"content": [
					"[rugga] Enough of this sparring. I wouldn't want distract from the issue to hand.",
					{
						"divert": "troublerugga1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontknowwha": {
				"content": [
					"[rugga] I don't know what you mean.",
					{
						"divert": "troublerugga1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Asimpledisag": {
				"content": [
					"[rugga] A simple disagreement.",
					{
						"divert": "troublerugga1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"troublerugga1": {
				"content": [
					"[rugga] As usual, I only want to protect our people, but Oddleif hears what she pleases.",
					{
						"divert": "_Youonlywantt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youonlywantt": {
				"content": [
					"[oddleif] You only want to condemn. It starts with the dredge, how long before you convince them we're the next enemy?",
					{
						"divert": "_Whatdoyoumea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoyoumea": {
				"content": [
					"[$hero] What do you mean 'starts with the dredge'?",
					{
						"divert": "_Shewouldthro"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shewouldthro": {
				"content": [
					"[rugga] She would throw away all of our sacrifice, to let them walk through the gates.",
					{
						"divert": "_Justastherea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justastherea": {
				"content": [
					"[oddleif] Just as there are varl here! Horseborn! Many of those outside these gates are women and children, too! We've known this!",
					{
						"linkPath": "yesbaby",
						"ifConditions": [
							{
								"ifCondition": "dredge_baby"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "continuebaby",
						"ifConditions": [
							{
								"ifCondition": "!dredge_baby"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"yesbaby": {
				"content": [
					"[oddleif] We've even taken in a dredge infant whose mother was slain. It has been amongst you this whole time!",
					{
						"divert": "_Ruggaseyesgr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggaseyesgr": {
				"content": [
					"[rugga] /=Rugga's eyes grow wide at this. A disapproving murmur ripples through the crowd.=/",
					{
						"divert": "continuebaby"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continuebaby": {
				"content": [
					"[hakon] Be that as it may, tell me why I just lost good varl fighting them. For hundreds of years...",
					{
						"divert": "_Whenourleade"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whenourleade": {
				"content": [
					"[oddleif] When our leaders tell us to fight, we fight! The dredge are no different.",
					{
						"divert": "_Bellowerisgo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Bellowerisgo": {
				"content": [
					"[oddleif] Bellower is gone. Eyeless and Ruin are gone. Are the rest beating down our doors, crying for blood?",
					{
						"divert": "_NoTheycryout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NoTheycryout": {
				"content": [
					"[oddleif] No! They cry out for mercy!",
					{
						"divert": "_AllImsuggest"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AllImsuggest": {
				"content": [
					"[oddleif] All I'm suggesting is that we don't leave them to suffer in the darkness. We can find a way!",
					{
						"divert": "_Beforehedied"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Beforehedied": {
				"content": [
					"[oddleif] Before he died, our king said everyone lives. Who is Rugga to disagree? He is no king!",
					{
						"divert": "_Oddleifisrig"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oddleifisrig": {
				"content": [
					"[rugga] Oddleif is right.",
					{
						"divert": "_Thereisnokin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thereisnokin": {
				"content": [
					"[rugga] There is no king here.",
					{
						"linkPath": "joinedbanners1",
						"ifConditions": [
							{
								"ifCondition": "18_rugga_prison_chat==2"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nojoinedbanners",
						"ifConditions": [
							{
								"ifCondition": "18_rugga_prison_chat!=2"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"joinedbanners1": {
				"content": [
					"[rugga] But there was an agreement made, if I remember correctly. I'm glad you brought your banner.",
					{
						"divert": "_Ruggaagaintu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggaagaintu": {
				"content": [
					"[rugga] /=Rugga again turns to the crowds, speaking loudly.=/",
					{
						"linkPath": "rookbanner",
						"ifConditions": [
							{
								"ifCondition": "hero_rook==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alettebanner",
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
			"rookbanner": {
				"content": [
					"[rugga] The Sundr-slayer, the great hero from Skogr, has seen fit in his wisdom to join his banner to mine!",
					{
						"divert": "_Hewantedyoua"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hewantedyoua": {
				"content": [
					"[rugga] He wanted you all to witness this great union!",
					{
						"divert": "joinedbanners2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alettebanner": {
				"content": [
					"[rugga] The Sundr-slayer, the great hero from Skogr, has seen fit in her wisdom to join her banner to mine!",
					{
						"divert": "_Shewantedyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shewantedyou": {
				"content": [
					"[rugga] She wanted you all to witness this great union!",
					{
						"divert": "joinedbanners2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"joinedbanners2": {
				"content": [
					"[$hero] /=A collective gasp goes up from the crowd, followed by laughter from some, murmur and disbelief from others.=/",
					{
						"divert": "_Letthispoint"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Letthispoint": {
				"content": [
					"[rugga] Let this pointless debate over dredge end here! Let there be peace between the clans!",
					{
						"divert": "_Heturnsquiet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Heturnsquiet": {
				"content": [
					"[rugga] /=He turns quietly back to you, a sinister grin on his face.=/",
					{
						"divert": "_Peaceundermy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Peaceundermy": {
				"content": [
					"[rugga] Peace, under my rule.",
					{
						"pageNum": 0
					}
				]
			},
			"nojoinedbanners": {
				"content": [
					"[rugga] Look at the faces around you, some who just lost children, trampled beneath bloody dredge hooves.",
					{
						"divert": "_Shallweinvit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shallweinvit": {
				"content": [
					"[rugga] Shall we invite the dredge in for another go?",
					{
						"divert": "_Idontseehowa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontseehowa": {
				"content": [
					"[hakon] I don't see how any of this matters. When the darkness covers us, we'll all be the same sort of dead.",
					{
						"divert": "_Butallthings"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butallthings": {
				"content": [
					"[hakon] But all things being equal, I'll shed no tears for the dredge now.",
					{
						"divert": "_Hearhearsome"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hearhearsome": {
				"content": [
					"[rugga] Hear hear, some common sense. And what does our heroic sundr-slayer believe?",
					{
						"divert": "_SpeakupWevea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SpeakupWevea": {
				"content": [
					"[rugga] Speak up! We've all been waiting for your wisdom.",
					{
						"divert": "_SpeakupallWe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SpeakupallWe": {
				"content": [
					"[rugga $hero] Speak up! We've all been waiting for your wisdom.",
					{
						"linkPath": "_Keeptellingy",
						"option": "We should not be listening to criminals who cowered in chains, while we died on the battlefield."
					},
					{
						"linkPath": "_Allowmetopro",
						"option": "We could fight the dredge when they come again. Or we could take a chance on peace."
					},
					{
						"linkPath": "_Youtelltheta",
						"option": "/=Make a heartfelt appeal to the masses.=/"
					},
					{
						"linkPath": "_Oddleifgives",
						"option": "I won't defend the dredge if it leads to war amongst ourselves."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Keeptellingy": {
				"content": [
					"[rugga] Keep telling your fellow men that they're led by criminals and traitors, see how well it plays.",
					{
						"divert": "troublerugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__20_breaking": {
				"content": [
					{
						"divert": "__num_peasant"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "20_breaking_days=9"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_peasant": {
				"content": [
					{
						"divert": "__num_fighter"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_peasants+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_fighter": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "num_fighters+=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Allowmetopro": {
				"content": [
					"[rugga] Allow me to prove that once again you're answering the wrong question.",
					{
						"divert": "troublerugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__20_breaking0": {
				"content": [
					{
						"divert": "__num_peasant0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "20_breaking_days=12"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_peasant0": {
				"content": [
					{
						"divert": "__num_fighter0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_peasants+=50"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_fighter0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "num_fighters+=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youtelltheta": {
				"content": [
					"[$hero] /=You tell the tale of your travels, the things you've seen, and the discovery that the dredge are running from the darkness, same as you. As the story meanders you can tell the mob is becoming restless.=/",
					{
						"divert": "_Unbelievable"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Unbelievable": {
				"content": [
					"[rugga] Unbelievable. Death knocks and you invite it in out of pity.",
					{
						"divert": "troublerugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__20_breaking1": {
				"content": [
					{
						"divert": "__num_peasant1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "20_breaking_days=10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_peasant1": {
				"content": [
					{
						"divert": "__num_fighter1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_peasants+=20"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_fighter1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "num_fighters+=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oddleifgives": {
				"content": [
					"[oddleif] /=Oddleif gives you a disappointed look, and Rugga notices, seizing the moment.=/",
					{
						"divert": "_Ahbutthiswom"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ahbutthiswom": {
				"content": [
					"[rugga] Ah, but this woman comes at us barking the opposite!",
					{
						"divert": "_Sowhichisitl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sowhichisitl": {
				"content": [
					"[rugga] So which is it, lies straight from your mouth? Or is this traitor the one making decisions?",
					{
						"divert": "troublerugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__20_breaking2": {
				"content": [
					{
						"divert": "__num_peasant2"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "20_breaking_days=8"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__num_peasant2": {
				"content": [
					{
						"divert": "troublerugga2"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "num_peasants+=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"troublerugga2": {
				"content": [
					"[rugga] /=Rugga appeals to the crowd now, speaking loudly.=/",
					{
						"divert": "_FriendsShall"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_FriendsShall": {
				"content": [
					"[rugga] Friends! Shall we fling the gates open wide to the murderous dredge? Embrace their hammers and stones?!",
					{
						"divert": "_ShouldIletth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ShouldIletth": {
				"content": [
					"[rugga] Should I let this hysterical woman endanger your families? Your kin? For murderous, stinking slag?!",
					{
						"divert": "_Angryshoutse"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Angryshoutse": {
				"content": [
					"[$hero] /=Angry shouts erupt in response. Fury fills the faces of those closing in. Rugga's faithful draw steel.=/",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
