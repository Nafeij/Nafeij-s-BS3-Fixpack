{
	"data": {
		"initial": "_Whenyoucatch",
		"stitches": {
			"_Whenyoucatch": {
				"content": [
					"[$hero] /=When you catch up to Oddleif, she's already mid-argument with Hakon and Fasolt.=/",
					{
						"divert": "_Forthistowor"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Forthistowor": {
				"content": [
					"[oddleif] For this to work, we need to cooperate!",
					{
						"divert": "_SlowdownStop"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SlowdownStop": {
				"content": [
					"[hakon] Slow down. Stop shouting at me, woman.",
					{
						"linkPath": "hakonbuds",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "hakonnotbuds",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakonbuds": {
				"content": [
					"[fasolt] You've been around them too long, Hakon. Why are we even listening to this?",
					{
						"divert": "theplan1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakonnotbuds": {
				"content": [
					"[hakon] Now you need us? How convenient.",
					{
						"divert": "_NothingnewHa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NothingnewHa": {
				"content": [
					"[fasolt] Nothing new, Hakon. Why are we even listening to this?",
					{
						"divert": "theplan1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"theplan1": {
				"content": [
					"[oddleif] Gods, you're all starting to sound like Rugga. Don't you get it?",
					{
						"divert": "_Weeitherwork"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Weeitherwork": {
				"content": [
					"[oddleif] We either work together, or we die!",
					{
						"divert": "_Weeitherwork0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Weeitherwork0": {
				"content": [
					"[oddleif] We either work together, or we die!",
					{
						"linkPath": "_Sheexpectsth",
						"option": "What is this even about?"
					},
					{
						"linkPath": "_Sheexpectsth0",
						"option": "Hear her out, she's earned that much."
					},
					{
						"linkPath": "_Butbequickwe",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=1"
							}
						],
						"option": "Ease up, Oddleif, and begin again."
					},
					{
						"linkPath": "_Itwilltakemo",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=0"
							}
						],
						"option": "I was wrong to abandon the varl, Hakon. Let me make amends."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sheexpectsth": {
				"content": [
					"[fasolt] She expects the varl to be her beasts of burden.",
					{
						"divert": "_Thatsnotwhat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsnotwhat": {
				"content": [
					"[oddleif] That's not what I said.",
					{
						"divert": "theplan2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sheexpectsth0": {
				"content": [
					"[fasolt] She expects the varl to be her beasts of burden.",
					{
						"divert": "_Imnotaskinga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imnotaskinga": {
				"content": [
					"[oddleif] I'm not asking anyone to lower themselves, just work to our strengths.",
					{
						"divert": "theplan2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butbequickwe": {
				"content": [
					"[hakon] But be quick, we've got a Sundr breathing down our necks.",
					{
						"divert": "theplan2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwilltakemo": {
				"content": [
					"[hakon] It will take more than words, hunter.",
					{
						"divert": "theplan2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"theplan2": {
				"content": [
					"[oddleif] Look, Ruin's shredding the walls with some kind of thrown anchor. We can't reach him from here.",
					{
						"divert": "_Itmademethin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itmademethin": {
				"content": [
					"[oddleif] It made me think of something Rugga said- 'Everything you throw at me comes back twice as hard...'",
					{
						"divert": "_Ifthevarlgat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifthevarlgat": {
				"content": [
					"[oddleif] If the varl gathered every oil barrel we can find in Arberrang and bring them here, we can wrap them up in netting.",
					{
						"divert": "_ThenexttimeR"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThenexttimeR": {
				"content": [
					"[oddleif] The next time Ruin hurls his anchor into the wall, horseborn race along the top and drop the netting around it.",
					{
						"divert": "_AndRuinpulls"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndRuinpulls": {
				"content": [
					"[hakon] And Ruin pulls the barrels back onto herself.",
					{
						"divert": "_AndRuinpulls0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndRuinpulls0": {
				"content": [
					"[hakon $hero] And Ruin pulls the barrels back onto herself.",
					{
						"linkPath": "_RuinisRazess",
						"option": "Her-self?"
					},
					{
						"linkPath": "_Wellgatherev",
						"option": "What does that gain us?"
					},
					{
						"linkPath": "_Wellgatherev0",
						"option": "I think I see where you're going with this."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_RuinisRazess": {
				"content": [
					"[hakon] Ruin is Raze's sister. Ask Yngvar about it if we all survive this.",
					{
						"divert": "theplan3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgatherev": {
				"content": [
					"[oddleif] We'll gather every archer we can find.",
					{
						"divert": "theplan3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgatherev0": {
				"content": [
					"[$hero] We'll gather every archer we can find.",
					{
						"divert": "theplan3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"theplan3": {
				"content": [
					"[oddleif] Yrsa and the other archers can organize a volley of flaming arrows down on her, and BOOM.",
					{
						"divert": "_Willthatbeen"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Willthatbeen": {
				"content": [
					"[$hero] Will that be enough?",
					{
						"divert": "_Idontknowbut"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontknowbut": {
				"content": [
					"[oddleif] I don't know, but it beats standing here measuring our \"loyalties\".",
					{
						"divert": "_Soundstomeli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Soundstomeli": {
				"content": [
					"[fasolt] Sounds to me like a lot of things ready to go wrong.",
					{
						"divert": "_Thevarlareno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thevarlareno": {
				"content": [
					"[fasolt] The varl are not great lovers of fire, if you've forgotten.",
					{
						"divert": "_Whyhaulbarre"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whyhaulbarre": {
				"content": [
					"[fasolt] Why haul barrels, when we could meet the Sundr on the field of battle? Would Jorundr have lowered himself like this in the great wars?",
					{
						"divert": "_Iwontlietheb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwontlietheb": {
				"content": [
					"[hakon] I won't lie, the battlefield calls to me.",
					{
						"divert": "_Whyareyouvar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whyareyouvar": {
				"content": [
					"[oddleif] Why are you varl so obsessed with rushing off to battle?",
					{
						"divert": "_EversinceFas"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_EversinceFas": {
				"content": [
					"[oddleif] Ever since Fasolt showed up you've been acting like you've got a death wish, Hakon.",
					{
						"divert": "_BahthisoneYo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BahthisoneYo": {
				"content": [
					"[fasolt] Bah, this one! You think we are just large men with simple minds.",
					{
						"divert": "_Ihavebeenali"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihavebeenali": {
				"content": [
					"[fasolt] I have been alive for hundreds of years! You rush around fearing for your short lives, like babies calling for their mothers!",
					{
						"divert": "_Howweliveism"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howweliveism": {
				"content": [
					"[fasolt] How we live is more important than how long!",
					{
						"linkPath": "bridgegone",
						"ifConditions": [
							{
								"ifCondition": "saga1_bridge_destroyed"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "bridgeok",
						"ifConditions": [
							{
								"ifCondition": "!saga1_bridge_destroyed"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bridgegone": {
				"content": [
					"[fasolt] And you destroy our faen bridge, then act like it's nothing?! Like you did us a favor? You short sighted, arrogant...",
					{
						"divert": "_Fasoltisapoo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fasoltisapoo": {
				"content": [
					"[hakon] Fasolt is a poor diplomat, but he's not wrong.",
					{
						"divert": "_Einartoftwas"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Einartoftwas": {
				"content": [
					"[hakon] Einartoft was the last evidence of our existence. That bridge should have outlived the varl who made it.",
					{
						"divert": "bridgecontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bridgeok": {
				"content": [
					"[fasolt] It is why Einartoft was so important! It is why we should have made a stand there, instead of fleeing for the sake of men!",
					{
						"divert": "_Fasoltisapoo0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fasoltisapoo0": {
				"content": [
					"[hakon] Fasolt is a poor diplomat, but he's not wrong.",
					{
						"divert": "bridgecontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bridgecontinue": {
				"content": [
					"[hakon] I do not want to eke out a few weeks, a few more days, cowering behind a wall.",
					{
						"divert": "_Idonotwantto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idonotwantto": {
				"content": [
					"[hakon] I do not want to carry barrels, when I could die with a blade in my hand.",
					{
						"divert": "_Wearethelast"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wearethelast": {
				"content": [
					"[hakon] We are the last of our kind!",
					{
						"divert": "_WeareVARL"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WeareVARL": {
				"content": [
					"[hakon] We are VARL!",
					{
						"divert": "_WeareVARL0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WeareVARL0": {
				"content": [
					"[hakon $hero] We are VARL!",
					{
						"linkPath": "_Hakongruntsc",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=1"
							}
						],
						"option": "Just do us this favor and you'll have your fight, I promise!"
					},
					{
						"linkPath": "_Desperationd",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party=0"
							}
						],
						"option": "Hakon, please help us. We can't do this alone."
					},
					{
						"linkPath": "_Hakongivesyo",
						"option": "Idiot! Use your head, don't throw your life away!"
					},
					{
						"linkPath": "_HmmWarriorsd",
						"option": "Help us and you'll have half our remaining supplies, for your varl. We'll manage with less."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hakongruntsc": {
				"content": [
					"[hakon] /=Hakon grunts, coming down from his battle cry.=/",
					{
						"divert": "_Iftheresacha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iftheresacha": {
				"content": [
					"[hakon] If there's a chance to turn the odds in our favor...",
					{
						"divert": "fasoltdefects"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Desperationd": {
				"content": [
					"[hakon] Desperation doesn't look good on you.",
					{
						"divert": "hakondeclines"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hakongivesyo": {
				"content": [
					"[hakon] /=Hakon gives you a contemptuous glance.=/",
					{
						"divert": "_Youhaventhea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youhaventhea": {
				"content": [
					"[hakon] You haven't heard a word I've said.",
					{
						"divert": "_Iwontkeeptry"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwontkeeptry": {
				"content": [
					"[hakon] I won't keep trying to make you listen.",
					{
						"divert": "__hakon_with_"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hakon_with_": {
				"content": [
					{
						"divert": "hakondeclines"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "hakon_with_party=0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HmmWarriorsd": {
				"content": [
					"[hakon] Hmm. Warriors do fight poorly on an empty stomach.",
					{
						"divert": "_Whatareyousa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatareyousa": {
				"content": [
					"[fasolt] What are you saying?",
					{
						"divert": "_ImsayingImst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ImsayingImst": {
				"content": [
					"[hakon] I'm saying I'm starving. A good meal, followed by a good fight? A good note to end on.",
					{
						"divert": "__supplies2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__supplies2": {
				"content": [
					{
						"divert": "__hakon_with_0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "supplies/2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hakon_with_0": {
				"content": [
					{
						"divert": "hakonaccepts"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "hakon_with_party=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakonaccepts": {
				"content": [
					"[fasolt] You really have become soft as a baby's ass, Hakon.",
					{
						"divert": "_Wellgatherth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgatherth": {
				"content": [
					"[hakon] We'll gather the oil barrels and return quickly. Don't get comfortable telling me what to do.",
					{
						"divert": "_Fasoltshakes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fasoltshakes": {
				"content": [
					"[fasolt hakon] /=Fasolt shakes his head in disgust. Hakon notices.=/",
					{
						"divert": "_Andwhatevery"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andwhatevery": {
				"content": [
					"[hakon] And whatever you do, don't let that fence of toothpicks fall before we're back.",
					{
						"divert": "__18_varl_bar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_varl_bar": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_varl_barrels=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"fasoltdefects": {
				"content": [
					"[fasolt] You used to be harder than steel, Hakon. Now you turn into a lap dog when they ask you to beg.",
					{
						"divert": "_Watchyourton"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Watchyourton": {
				"content": [
					"[hakon] Watch your tone, Fasolt.",
					{
						"divert": "_Ineveraskedt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ineveraskedt": {
				"content": [
					"[hakon] I never asked to lead the varl, now I have to think of more than myself.",
					{
						"divert": "_Dontworrythe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontworrythe": {
				"content": [
					"[fasolt] Don't worry, Hakon. Let me give you a few less varl to lead.",
					{
						"divert": "_Fasoltleaves"
					},
					{
						"flagName": "@hide=fasolt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fasoltleaves": {
				"content": [
					"[$hero] /=Fasolt leaves in a violent mood, yelling obscenities.=/",
					{
						"divert": "_Alwayshadate"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Alwayshadate": {
				"content": [
					"[hakon] Always had a temper, he did.",
					{
						"divert": "_Ishereallytu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ishereallytu": {
				"content": [
					"[oddleif] Is he really turning his back on you like this?",
					{
						"divert": "_Hellcomearou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hellcomearou": {
				"content": [
					"[hakon] He'll come around, eventually. Hopefully. I'll miss his varl in the coming battle, though.",
					{
						"divert": "_Therestofusw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Therestofusw": {
				"content": [
					"[hakon] The rest of us will gather your barrels, but don't get comfortable giving me orders.",
					{
						"divert": "_Andwhatevery0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andwhatevery0": {
				"content": [
					"[hakon] And whatever you do, don't let that fence of toothpicks fall before I'm back.",
					{
						"divert": "__18_varl_bar0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_varl_bar0": {
				"content": [
					{
						"divert": "__fasolt_defe"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "18_varl_barrels=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__fasolt_defe": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "fasolt_defects=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakondeclines": {
				"content": [
					"[hakon] You do things your way, we'll do things ours.",
					{
						"linkPath": "rugga",
						"ifConditions": [
							{
								"ifCondition": "hakon_in_hero_out"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "norugga",
						"ifConditions": [
							{
								"ifCondition": "!hakon_in_hero_out"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rugga": {
				"content": [
					"[hakon] But that's not a new idea for you, is it? I'm sure Rugga will be eager to lend you his men, considering how close you are.",
					{
						"divert": "ruggacontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"norugga": {
				"content": [
					"[hakon] I'm sure you'll find plenty of willing hands on your own.",
					{
						"divert": "ruggacontinue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ruggacontinue": {
				"content": [
					"[oddleif] Are you kiddin-",
					{
						"divert": "_Goodluck"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Goodluck": {
				"content": [
					"[hakon] Good luck.",
					{
						"divert": "_Oddleifshout"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oddleifshout": {
				"content": [
					"[oddleif] /=Oddleif shouts after the varl as they leave, but soon realizes they aren't listening to a word.=/",
					{
						"divert": "__hidehakon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hidehakon": {
				"content": [
					{
						"divert": "__hidefasolt"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=hakon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hidefasolt": {
				"content": [
					{
						"divert": "_Dammitwerego"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=fasolt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dammitwerego": {
				"content": [
					"[$hero] Dammit, we're going to miss their varl in the coming fight.",
					{
						"divert": "_Cmonwevewast"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Cmonwevewast": {
				"content": [
					"[oddleif] C'mon, we've wasted enough time here. We'll gather as many oil barrels as we can without them.",
					{
						"divert": "_Illgethelper"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Illgethelper": {
				"content": [
					"[oddleif] I'll get helpers started, but you need to make sure this wall doesn't fall beforehand!",
					{
						"divert": "__18_varl_bar1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_varl_bar1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_varl_barrels=0"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
