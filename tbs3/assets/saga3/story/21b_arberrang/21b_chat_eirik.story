{
	"data": {
		"initial": "_IthinkIoweyo",
		"stitches": {
			"_IthinkIoweyo": {
				"content": [
					"[$hero] I think I owe you an apology. We've traveled together for so long and I've never once had a moment to say hello.",
					{
						"divert": "_Betweenattac"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Betweenattac": {
				"content": [
					"[eirik] Between attacks by the dredge, kragsmen and horseborn, I'm impressed we have even this moment. I think we owe that to your leadership.",
					{
						"divert": "_EirikofStran"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_EirikofStran": {
				"content": [
					"[eirik] Eirik, of Strand. Pleasure to formally meet you, $hero.",
					{
						"divert": "_Same"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Same": {
				"content": [
					"[$hero] Same.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eirikchat": {
				"content": [
					"[eirik] /=Eirik's gaze drifts some, ever vigilant. But you know he's listening.=/",
					{
						"divert": "_eiriksgazedr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_eiriksgazedr": {
				"content": [
					"[eirik $hero] /=Eirik's gaze drifts some, ever vigilant. But you know he's listening.=/",
					{
						"linkPath": "_IamwastheGov",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "I've never been to Strand. What did you do there?"
					},
					{
						"linkPath": "_BackwhenIwas",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "How did you learn to... tame bears?"
					},
					{
						"linkPath": "_BeforeIwasth",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Where did you learn to sneak around like that?"
					},
					{
						"linkPath": "_Heinhalessha",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "I heard you might know a little something about managing a city. Any advice?"
					},
					{
						"linkPath": "_TrueIvetaken",
						"option": "Anyway, I think I have some tasks in need of attention."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IamwastheGov": {
				"content": [
					"[eirik] I am... was, the Governor's steward. His right hand man if you will.",
					{
						"divert": "_Was"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Was": {
				"content": [
					"[$hero] Was?",
					{
						"divert": "_Iwastherewhe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwastherewhe": {
				"content": [
					"[eirik] I was there when Ubin's caravan passed through, joining that of Prince Ludin, Vognir and his Kendr Hakon.",
					{
						"divert": "_Afewdaysafte"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Afewdaysafte": {
				"content": [
					"[eirik] A few days after they departed however, varl messengers returned with ill tidings.",
					{
						"divert": "_Vognirwasdea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Vognirwasdea": {
				"content": [
					"[eirik] Vognir was dead. Hakon had assumed command, Prince Ludin was injured and the dredge had been raiding Vedrfell.",
					{
						"divert": "_Thatcouldnth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatcouldnth": {
				"content": [
					"[$hero] That... couldn't have looked good for Strand's Governor.",
					{
						"divert": "_ExactlyItwou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ExactlyItwou": {
				"content": [
					"[eirik] Exactly. It would have been disastrous if Ludin had died in our province.",
					{
						"divert": "_Anywaythemes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Anywaythemes": {
				"content": [
					"[eirik] Anyway, the messengers wanted to purchase men and supplies for a war march into Hraun, using some of our own tithe.",
					{
						"divert": "_Withsomuchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Withsomuchat": {
				"content": [
					"[eirik] With so much at risk, the Governor ordered me to go with them.",
					{
						"divert": "_Yetyoudidntg"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yetyoudidntg": {
				"content": [
					"[$hero] Yet you didn't go back.",
					{
						"divert": "_IshouldhaveI"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IshouldhaveI": {
				"content": [
					"[eirik] I should have. I even had a chance to return. But I let Hakon goad me into traveling on.",
					{
						"divert": "_Neverinmylif"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Neverinmylif": {
				"content": [
					"[eirik] Never in my life have I traveled so far from my birth city. The chance to see so much of the world, places I've only heard of.",
					{
						"divert": "eirikchat2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BackwhenIwas": {
				"content": [
					"[eirik] Back when I was just a watchman, Steward Olvir decided my skills were better served as the new gaoler.",
					{
						"divert": "_Sigketillthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sigketillthe": {
				"content": [
					"[eirik] Sigketill, the prior one, was retiring. He took me under his wing and gave me an odd book on training bears.",
					{
						"divert": "_Waitsomeonew"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Waitsomeonew": {
				"content": [
					"[$hero] Wait... someone wrote a book on that?",
					{
						"divert": "_IndeedHedidT"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IndeedHedidT": {
				"content": [
					"[eirik] Indeed. He did. Told me that if I could dominate a bear, a prisoner was simply no contest.",
					{
						"divert": "_Andyoubeliev"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andyoubeliev": {
				"content": [
					"[$hero] And you believed him?",
					{
						"divert": "_ThedayImetSi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThedayImetSi": {
				"content": [
					"[eirik] The day I met Sigketill, he put an angry varl prisoner in his place with only a few harsh words and a glare. That man knew his job.",
					{
						"divert": "_Soyoubetterb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Soyoubetterb": {
				"content": [
					"[eirik] So you better believe I read that book from beginning to end. A few times, in fact.",
					{
						"divert": "_Andtraveling"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andtraveling": {
				"content": [
					"[$hero] And traveling with us gave you the chance to use what you learned... so, did you become the new gaoler?",
					{
						"divert": "_NoNotlongaft"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NoNotlongaft": {
				"content": [
					"[eirik] No. Not long after, something came up. And Steward Olvir changed his mind about my assignment.",
					{
						"divert": "_Butthatsatal"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butthatsatal": {
				"content": [
					"[eirik] But that's a tale for another time.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BeforeIwasth": {
				"content": [
					"[eirik] Before I was the steward of Strand, I served in the Governor's Guard. An elite unit charged with the toughest assignments.",
					{
						"divert": "_Sometimeswet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sometimeswet": {
				"content": [
					"[eirik] Sometimes, we took the direct approach. Other times, we used stealth and guile, or even went undercover.",
					{
						"divert": "_Strandwasful"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Strandwasful": {
				"content": [
					"[eirik] Strand was full of trouble. Gangs etching out territory, smuggling, larceny, underground fights, gambling... and plenty of murder.",
					{
						"divert": "_Andslavetrad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andslavetrad": {
				"content": [
					"[eirik] And slave trading. Although we managed to shut down the worst of that.",
					{
						"divert": "_Gods"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Gods": {
				"content": [
					"[$hero] Gods...",
					{
						"divert": "_Stickaroundl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Stickaroundl": {
				"content": [
					"[eirik] Stick around long enough and you'll notice the same problems in Arberrang. When enough people live in a place, a kind of...",
					{
						"divert": "_Ofevilleakso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ofevilleakso": {
				"content": [
					"[eirik] Of evil, leaks out. In dealing with it so often, you always risk forgetting how much of what you see is wrong.",
					{
						"divert": "_Sohowdoyouav"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sohowdoyouav": {
				"content": [
					"[$hero] So how do you avoid forgetting?",
					{
						"divert": "_Surroundyour"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Surroundyour": {
				"content": [
					"[eirik] Surround yourself with good, genuine people. And never forget those you lost and loved, because their very memory can judge you.",
					{
						"linkPath": "_Hiswordsstir",
						"ifConditions": [
							{
								"ifCondition": "hero_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "_Hiswordsstir0",
						"ifConditions": [
							{
								"ifCondition": "hero_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "_Eirikseemsdi",
						"ifConditions": [
							{
								"ifCondition": "hero_oddleif"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hiswordsstir": {
				"content": [
					"[$hero] /=His words stir thoughts of Alette. Of her as a child, listening to your every word as you taught her to shoot.=/",
					{
						"divert": "_Eirikseemsdi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hiswordsstir0": {
				"content": [
					"[$hero] /=His words stir thoughts of dad. Of when you splashed stew on your face, making him laugh for the first time since mom died.=/",
					{
						"divert": "_Eirikseemsdi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eirikseemsdi": {
				"content": [
					"[eirik] /=Eirik seems distant. He mumbles something, and you thought you heard the name \"Idunn.\" After a moment he clears his throat.=/",
					{
						"divert": "_Hmsowhatelse"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hmsowhatelse": {
				"content": [
					"[eirik] Hm... so, what else did you want to ask?",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Heinhalessha": {
				"content": [
					"[eirik] /=He inhales sharply through his nostrils and scans the cityscape, lost in thought.=/",
					{
						"divert": "_ThepeopleofA"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThepeopleofA": {
				"content": [
					"[eirik] The people of Arberrang don't know you, although they know your reputation. That makes you a powerful question mark.",
					{
						"divert": "_Sowhatshould"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sowhatshould": {
				"content": [
					"[$hero] So what should I do?",
					{
						"divert": "_Figureouttho"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Figureouttho": {
				"content": [
					"[eirik] Figure out those who you're the biggest threat to. Then either put them in their place or get them firmly on your side.",
					{
						"divert": "_StillIdrecom"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StillIdrecom": {
				"content": [
					"[eirik] Still, I'd recommend more of the latter. You're probably not the only one running around, making alliances.",
					{
						"divert": "_IseeAnything"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IseeAnything": {
				"content": [
					"[$hero] I see. Anything else?",
					{
						"divert": "_YesTherearet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YesTherearet": {
				"content": [
					"[eirik] Yes. There are two kinds of trust. There's trust like faith in someone. And there's trust in their nature, much like an animal.",
					{
						"divert": "_Itrustmyfrie"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itrustmyfrie": {
				"content": [
					"[eirik] I trust my friend Valgard with my life. Done so many times.",
					{
						"linkPath": "_LikewiseItru0",
						"ifConditions": [
							{
								"ifCondition": "18_rugga_prison_chat==4"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "_LikewiseItru",
						"ifConditions": [
							{
								"ifCondition": "18_rugga_prison_chat!=4"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LikewiseItru": {
				"content": [
					"[eirik] Likewise, I trust Rugga to bite you like the venomous snake he is. Watch yourself.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LikewiseItru0": {
				"content": [
					"[eirik] Likewise, I trust Tryggvi would bark and howl at a full moon.",
					{
						"divert": "_Hedoesdothat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hedoesdothat": {
				"content": [
					"[$hero] He does do that! At least, he did until the sun stopped.",
					{
						"divert": "_Thetwoofyous"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thetwoofyous": {
				"content": [
					"[eirik] /=The two of you share a good laugh.=/",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TrueIvetaken": {
				"content": [
					"[eirik] True. I've taken up enough of your time. Good luck $hero, we're all counting on you.",
					{
						"pageNum": 0
					}
				]
			},
			"eirikchat2": {
				"content": [
					"[eirik] In my shoes, what would you have done? Returned home, or carried on?",
					{
						"divert": "_Inmyshoeswha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Inmyshoeswha": {
				"content": [
					"[eirik $hero] In my shoes, what would you have done? Returned home, or carried on?",
					{
						"linkPath": "_IconcurEspec",
						"option": "I like to think I'd have gone home. Duty comes first."
					},
					{
						"linkPath": "_HehBackwhent",
						"option": "Probably make the same choice you did."
					},
					{
						"linkPath": "_EirikStrandi",
						"option": "/=Encourage him to focus on the moment.=/"
					},
					{
						"linkPath": "_Hisgazeharde",
						"option": "I don't know."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IconcurEspec": {
				"content": [
					"[eirik] I concur. Especially if I had known everything that was on the horizon, of this... black dawn. I'd have returned in a heartbeat.",
					{
						"divert": "_Orneverhavel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Orneverhavel": {
				"content": [
					"[eirik] Or never have left Strand in the first place. But I'm here, having had a look, perhaps a final one, of this world.",
					{
						"divert": "_AndIworryfor"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndIworryfor": {
				"content": [
					"[eirik] And I worry for my friend Valgard. I heard from survivors that he never went south with them. He stayed behind to help those he could.",
					{
						"divert": "_Hesighsmoros"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hesighsmoros": {
				"content": [
					"[eirik] /=He sighs morosely.=/",
					{
						"divert": "_AnywayStrand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AnywayStrand": {
				"content": [
					"[eirik] Anyway... Strand is gone. Swallowed by the darkness. I've no right to call myself its steward.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HehBackwhent": {
				"content": [
					"[eirik] Heh. Back when this started, I justified my actions as some... distant protection of Strand.",
					{
						"divert": "_Thateverydre"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thateverydre": {
				"content": [
					"[eirik] That every dredge I slew on the road to Grofheim was one less that could batter at our gates.",
					{
						"divert": "_ThenHakonvee"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThenHakonvee": {
				"content": [
					"[eirik] Then Hakon veered towards Einartoft. More than once, I almost risked venturing home on my own.",
					{
						"divert": "_Eirikthedred"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eirikthedred": {
				"content": [
					"[$hero] Eirik... the dredge were everywhere. You would have gotten killed.",
					{
						"divert": "_IknowStillId"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IknowStillId": {
				"content": [
					"[eirik] I know. Still, I did not hate the journey, even during the worst of times. It scratched my wanderlust.",
					{
						"divert": "_Youwearthere"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youwearthere": {
				"content": [
					"[eirik] You wear the responsibility of this caravan well, yet you too may one day miss that feeling of being unburdened.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_EirikStrandi": {
				"content": [
					"[$hero] Eirik... Strand isn't just a collection of buildings and walls. It's the people. It's the hearth they tend and the banner they raise.",
					{
						"divert": "_Sometimesthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sometimesthe": {
				"content": [
					"[$hero] Sometimes they're a shining city on a hill. And sometimes, they're a trail of light seeking that place.",
					{
						"divert": "_Buteitherway"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Buteitherway": {
				"content": [
					"[$hero] But either way, Strand is here. And it still needs you.",
					{
						"divert": "_Helooksstunn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Helooksstunn": {
				"content": [
					"[eirik] /=He looks stunned for a moment, then a gradual smile creeps on his face.=/",
					{
						"divert": "_YourerightNo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YourerightNo": {
				"content": [
					"[eirik] You're right. Now I see why some say you'd make a good king.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hisgazeharde": {
				"content": [
					"[eirik] /=His gaze hardens some, but he nods.=/",
					{
						"divert": "_AnywayBythet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AnywayBythet": {
				"content": [
					"[eirik] Anyway. By the time I realized Hakon's caravan was swinging south, I was too far from home to head back. Not with the dredge about.",
					{
						"divert": "_IdontblameHa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IdontblameHa": {
				"content": [
					"[eirik] I don't blame Hakon for my choice. He stuck to his duty, better than I did. Now, Strand is gone, inside that... darkness.",
					{
						"divert": "_SoIhavenorig"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SoIhavenorig": {
				"content": [
					"[eirik] So. I have no right to call myself its steward. Not anymore.",
					{
						"divert": "eirikchat"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
