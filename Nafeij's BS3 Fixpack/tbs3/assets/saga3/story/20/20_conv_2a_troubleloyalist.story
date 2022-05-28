{
	"data": {
		"initial": "_Lookwhoitis",
		"stitches": {
			"_Lookwhoitis": {
				"content": [
					"[josurr] Look who it is!",
					{
						"divert": "_Knewitwouldn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Knewitwouldn": {
				"content": [
					"[josurr] Knew it wouldn't be long before you'd come telling us what to do.",
					{
						"divert": "_Ruggasaidthi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggasaidthi": {
				"content": [
					"[josurr] Rugga said this would happen, before you murdered him.",
					{
						"divert": "_Ruggasaidthi0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggasaidthi0": {
				"content": [
					"[josurr $hero] Rugga said this would happen, before you murdered him.",
					{
						"linkPath": "_Ohisthatrigh",
						"option": "Rugga was only using you."
					},
					{
						"linkPath": "_Maybewellget",
						"option": "You have no idea what a huge favor I've done you."
					},
					{
						"linkPath": "_Commonsensey",
						"option": "What is this all about?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ohisthatrigh": {
				"content": [
					"[josurr] Oh, is that right? Seems to us he just said things you didn't like.",
					{
						"divert": "troublerugga1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybewellget": {
				"content": [
					"[josurr] Maybe we'll get a chance to return the favor.",
					{
						"divert": "troublerugga1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Commonsensey": {
				"content": [
					"[josurr] Common sense, you fool!",
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
					"[josurr] She wants to get us all killed!",
					{
						"divert": "_Nothisisabou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothisisabou": {
				"content": [
					"[oddleif] No, this is about hatred. It starts with the dredge, how long before you believe that we're you're next enemy?",
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
						"divert": "_Thismadwoman"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thismadwoman": {
				"content": [
					"[josurr] This mad woman wants to open the gates and let the dredge run amok!",
					{
						"divert": "_Notrunamokgi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notrunamokgi": {
				"content": [
					"[oddleif] Not run amok, give them a chance to live. Just as there are varl here! Horseborn!",
					{
						"divert": "_Thosedredgeo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thosedredgeo": {
				"content": [
					"[oddleif] Those dredge outside these gates include women and children! We know this!",
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
						"divert": "_Theloyalists"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theloyalists": {
				"content": [
					"[josurr] /=The loyalists show some genuine surprise at this. A disapproving murmur ripples through the crowd.=/",
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
					"[hakon] Then tell me why I just lost good varl fighting the dredge. For hundreds of years...",
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
					"[oddleif] Bellower is gone. Ruin is gone, thanks to us. Are their survivors beating down our doors, crying for blood?",
					{
						"divert": "_Notheycryout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notheycryout": {
				"content": [
					"[oddleif] No! They cry out for mercy!",
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
					"[oddleif] Before he died, the king said everyone lives.",
					{
						"divert": "_Yourerightab"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yourerightab": {
				"content": [
					"[josurr] You're right about one thing.",
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
					"[josurr] There is no king here, which means we don't have to listen to a damn thing you say.",
					{
						"divert": "_Donttellmeit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Donttellmeit": {
				"content": [
					"[josurr] Don't tell me it ain't about families just because you got none! You want to see our children trampled by slag?",
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
					"[hakon] I don't see how any of this matters. When the darkness rolls over the city, we'll all be the same sort of dead.",
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
					"[hakon] But all things being equal, I'll shed no tears for the dredge.",
                    {
						"linkPath": "_Youretelling",
						"ifConditions": [
							{
								"ifCondition": "18_ruin_battle_lose=0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "_YouretellingRAlive",
						"ifConditions": [
							{
								"ifCondition": "18_ruin_battle_lose=1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youretelling": {
				"content": [
					"[josurr] You're telling me you all killed Bellower, you killed Ruin, and now it's perfectly safe to let em all in here?",
					{
						"divert": "_SpeakupWhata"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouretellingRAlive": {
				"content": [
					"[josurr] You're telling me you all killed Bellower, you fought Ruin, and now it's perfectly safe to let em all in here?",
					{
						"divert": "_SpeakupWhata"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SpeakupWhata": {
				"content": [
					"[josurr] Speak up! What are you trying to say?",
					{
						"divert": "_SpeakupWhata0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SpeakupWhata0": {
				"content": [
					"[josurr $hero] Speak up! What are you trying to say?",
					{
						"linkPath": "_Keeptellingu",
						"option": "Don't let fear tear us apart! Rugga was a criminal and a traitor! He lied to you!"
					},
					{
						"linkPath": "_Theresnochan",
						"option": "We could fight dredge again in a few days. Or we could take a chance on peace."
					},
					{
						"linkPath": "_Youtelltheta",
						"option": "/=Make a heartfelt appeal to the masses.=/"
					},
					{
						"linkPath": "_Oddleifgives",
						"option": "I can't defend the dredge."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Keeptellingu": {
				"content": [
					"[josurr] Keep telling us we're all criminals and traitors, see how well it does for you.",
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
			"_Theresnochan": {
				"content": [
					"[josurr] There's no chance about it!",
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
						"divert": "_Whogivesahor"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whogivesahor": {
				"content": [
					"[josurr] Who gives a horse's ass about any of that right now?",
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
					"[oddleif] /=Oddleif gives you a disappointed look, but the riled up man seizes the moment.=/",
					{
						"divert": "_Sowhichisitt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sowhichisitt": {
				"content": [
					"[josurr] So which is it, the dredge are still the enemy? Or is this traitor making decisions for you?",
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
					"[josurr] /=The man appeals to the crowd now, speaking loudly.=/",
					{
						"divert": "_Whyareweeven"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whyareweeven": {
				"content": [
					"[josurr] Why are we even listening to this? First they kill Meinolf, then Rugga, now they want to open the gates? How much is enough?!",
					{
						"divert": "_UskillMeinol"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_UskillMeinol": {
				"content": [
					"[oddleif] Us kill Meinolf? Are you-",
					{
						"divert": "_Lookstomelik"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Lookstomelik": {
				"content": [
					"[josurr] Looks to me like they won't rest until we're all dead, and nobody's left to keep them from the throne!",
					{
						"divert": "_Whohereareth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whohereareth": {
				"content": [
					"[josurr] Who here are the real criminals? Which of us are the traitors?!",
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
					"[$hero] /=Angry shouts erupt in agreement. Fury fills the faces of those crowding in close. Rugga's faithful draw steel.=/",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
