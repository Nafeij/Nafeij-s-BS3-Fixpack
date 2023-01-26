{
	"data": {
		"initial": "_Mylastloaf",
		"stitches": {
			"_Mylastloaf": {
				"content": [
					"[peasant_male_6] My last loaf.",
					{
						"divert": "_IcantKeepit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IcantKeepit": {
				"content": [
					"[$hero] I can't. Keep it.",
					{
						"linkPath": "rook",
						"ifConditions": [
							{
								"ifCondition": "hero_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alette",
						"ifConditions": [
							{
								"ifCondition": "hero_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "oddleif",
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
			"rook": {
				"content": [
					"[peasant_male_6] You don't recognize me, do you Rook?",
					{
						"divert": "continue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alette": {
				"content": [
					"[peasant_male_6] You don't recognize me, do you Alette?",
					{
						"divert": "continue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleif": {
				"content": [
					"[peasant_male_6] You don't recognize me, do you Oddleif?",
					{
						"divert": "continue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue1": {
				"content": [
					"[peasant_male_6] It's been a hard road, I'm sure I look different these days.",
					{
						"divert": "_Onsecondglan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onsecondglan": {
				"content": [
					"[$hero] /=On second glance, he does look familiar, but you can't quite place him.=/",
					{
						"divert": "_DallrenFromS"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DallrenFromS": {
				"content": [
					"[peasant_male_6] Dallren. From Skogr.",
					{
						"divert": "_DallrenFromS0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DallrenFromS0": {
				"content": [
					"[peasant_male_6 $hero] Dallren. From Skogr.",
					{
						"linkPath": "_Forthemostpa",
						"option": "You've been in the caravan this whole time?"
					},
					{
						"linkPath": "_Icantblameyo",
						"option": "I'm sorry, I don't remember."
					},
					{
						"linkPath": "_Imjustassurp",
						"option": "That's amazing!"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Forthemostpa": {
				"content": [
					"[peasant_male_6] For the most part. Had to leave the group once or twice, but found my way back.",
					{
						"divert": "skogrcontinue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icantblameyo": {
				"content": [
					"[peasant_male_6] I can't blame you. Seems like a lifetime ago now.",
					{
						"divert": "skogrcontinue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imjustassurp": {
				"content": [
					"[peasant_male_6] I'm just as surprised as you!",
					{
						"divert": "skogrcontinue1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"skogrcontinue1": {
				"content": [
					"[peasant_male_6] /=He lets out a thin laugh, his eyes twinkle with sincerity.=/",
					{
						"divert": "_Itsalmosthar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsalmosthar": {
				"content": [
					"[$hero] It's almost hard to remember so long ago, back in Skogr.",
					{
						"divert": "_Thingshavece"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thingshavece": {
				"content": [
					"[peasant_male_6] Things have certainly changed. Back then I used to tend the yox.",
					{
						"divert": "_HaIhadnamesf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HaIhadnamesf": {
				"content": [
					"[peasant_male_6] Ha, I had names for them. When we fled, ol' Asti took us to Frostvellr. I don't expect you knew that, but I did.",
					{
						"divert": "_Frostvellrwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Frostvellrwa": {
				"content": [
					"[$hero] Frostvellr was where things started to get hard.",
					{
						"divert": "_AyeMyboybeca"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AyeMyboybeca": {
				"content": [
					"[peasant_male_6] Aye. My boy became ill. He died soon after that. My wife, she just.... she got too tired.",
					{
						"divert": "_Imsorry"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imsorry": {
				"content": [
					"[$hero] I'm sorry.",
					{
						"divert": "_Idontseeacro"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontseeacro": {
				"content": [
					"[peasant_male_6] I don't see a crown on your head, but it's always looked heavy to me.",
					{
						"divert": "_Remindsmeofa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Remindsmeofa": {
				"content": [
					"[peasant_male_6] Reminds me of a story you might care for. Have you time to humor an old man?",
					{
						"divert": "_Remindsmeofa0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Remindsmeofa0": {
				"content": [
					"[peasant_male_6 $hero] Reminds me of a story you might care for. Have you time to humor an old man?",
					{
						"linkPath": "_Nohardfeelin",
						"option": "I can't, not right now."
					},
					{
						"linkPath": "_Youreagoodpe",
						"option": "Of course."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nohardfeelin": {
				"content": [
					"[peasant_male_6] No hard feelings.",
					{
						"divert": "skogrcontinue3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youreagoodpe": {
				"content": [
					"[peasant_male_6] You're a good person.",
					{
						"divert": "skogrcontinue2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"skogrcontinue2": {
				"content": [
					"[peasant_male_6] My father brought me to Skogr when I was just a child. He was a woodcutter, Skogr was just woods back then.",
					{
						"divert": "_Irememberhow"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Irememberhow": {
				"content": [
					"[peasant_male_6] I remember how the snow hung in the branches, was nothing like where we came from. They had put candles in the trees that year.",
					{
						"divert": "_Icanstillsee"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icanstillsee": {
				"content": [
					"[peasant_male_6] I can still see it. It was like the stars had come to visit us.",
					{
						"divert": "_Iwasoneofsix"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwasoneofsix": {
				"content": [
					"[peasant_male_6 $hero] I was one of six children. My twin sister died that winter, she died to the cold. I always think of her in the winter.",
					{
						"divert": "_Wewentandper"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wewentandper": {
				"content": [
					"[peasant_male_6 $hero] We went and performed the rites at the godstone. Hridvaldyr! He had hard eyes, like he was watching, I remember that.",
					{
						"divert": "_Myfatheralwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Myfatheralwa": {
				"content": [
					"[peasant_male_6 $hero] My father always told us gods can't die.",
					{
						"divert": "_Hridvaldyrwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hridvaldyrwa": {
				"content": [
					"[peasant_male_6] Hridvaldyr was the hunter's patron. Not sure what he expected in return, a bunch of elk would wander into town?",
					{
						"divert": "_Anywaywehada"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Anywaywehada": {
				"content": [
					"[peasant_male_6] Anyway, we had a long winter, instead. Skogr almost disappeared that year, buried under snow. No elk, no food.",
					{
						"divert": "_Therestofmyf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Therestofmyf": {
				"content": [
					"[peasant_male_6] The rest of my family survived, luckily. There were a lot who starved.",
					{
						"divert": "_Ahwellyourea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ahwellyourea": {
				"content": [
					"[peasant_male_6 $hero] Ah, well, you're a kind soul to listen to me talk about myself. You must be wondering why I've told you this?",
					{
						"divert": "_Welaidmysist"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Welaidmysist": {
				"content": [
					"[peasant_male_6 $hero] We laid my sister's body down and it was burnt. Her ashes rose up in the branches overhead.",
					{
						"divert": "_Iheardhimwhi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iheardhimwhi": {
				"content": [
					"[peasant_male_6] I heard him whisper. \"No tree grows to the sky.\"",
					{
						"divert": "_Thekindofthi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thekindofthi": {
				"content": [
					"[peasant_male_6] The kind of thing a woodcutter says, isn't it? Didn't make sense at the time, but it stuck in my head.",
					{
						"divert": "_Nothinglasts"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothinglasts": {
				"content": [
					"[peasant_male_6] Nothing lasts forever, hunter. That's what he meant. Now I'm his age when he died.",
					{
						"divert": "_TruthbetoldI"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TruthbetoldI": {
				"content": [
					"[peasant_male_6] Truth be told, I doubt my father believed Hridvaldyr was there, all that time ago. He was pretending for the rest of us.",
					{
						"divert": "_Howyoudieisa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howyoudieisa": {
				"content": [
					"[peasant_male_6 $hero] How you die is as important as how you lived.",
					{
						"divert": "skogrcontinue3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"skogrcontinue3": {
				"content": [
					"[peasant_male_6] Ah, enough from me. What am I trying to say, anyway?",
					{
						"divert": "_Lookatallthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Lookatallthe": {
				"content": [
					"[peasant_male_6] Look at all these people, broken and starving. We're not all going to make it.",
					{
						"divert": "_Thereisnoten"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thereisnoten": {
				"content": [
					"[peasant_male_6] There is not enough food and drink, even for the healthy.",
					{
						"divert": "_Doweallsuffe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Doweallsuffe": {
				"content": [
					"[peasant_male_6] Do we all suffer now, even those who can still stand and fight?",
					{
						"divert": "_Iamgivingyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iamgivingyou": {
				"content": [
					"[peasant_male_6 $hero] I am giving you permission, hunter. Permission to survive.",
					{
						"divert": "_AndifIdienow"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndifIdienow": {
				"content": [
					"[peasant_male_6 $hero] And if I die now, I die with a reason. That's enough for me.",
					{
						"divert": "_Notreegrowst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notreegrowst": {
				"content": [
					"[peasant_male_6 $hero] No tree grows to the sky.",
					{
						"divert": "_Notreegrowst0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notreegrowst0": {
				"content": [
					"[peasant_male_6 $hero] No tree grows to the sky.",
					{
						"linkPath": "savenone",
						"option": "You're right, Dallren. I'll make sure this bread will be put to best use."
					},
					{
						"linkPath": "savesome",
						"option": "I know everyone won't make it, but we have to try."
					},
					{
						"linkPath": "saveall",
						"option": "Nobody starves on my watch. Nobody."
					},
					{
						"pageNum": 0
					}
				]
			},
			"savenone": {
				"content": [
					"[peasant_male_6] Then I suppose all I have left to give is my thanks. You've done for me as much as anyone could.",
					{
						"divert": "_Youendeavort"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youendeavort": {
				"content": [
					"[$hero] /=You endeavor to make sure that the healthy and hale get enough food to continue the fight.=/",
					{
						"divert": "__doomsday_wo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wo": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_wounded+=.5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"savesome": {
				"content": [
					"[peasant_male_6] That is who you are, isn't it? We had this time to talk, and that for that I am glad.",
					{
						"divert": "_Youendeavort0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youendeavort0": {
				"content": [
					"[$hero] /=You endeavor to continue treating those who have a chance of survival. It would feel wrong to do anything else.=/",
					{
						"divert": "__doomsday_wo0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wo0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_wounded+=.3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"saveall": {
				"content": [
					"[peasant_male_6] Aye, and you've given them that chance more than any one of us deserves. Luck to you, hunter.",
					{
						"divert": "_Theideaoflet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theideaoflet": {
				"content": [
					"[$hero] /=The idea of letting the wounded perish doesn't sit right, even if you can't spare the supplies. You thank Dallren for the talk and step away.",
					{
						"divert": "__doomsday_wo1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_wo1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_wounded+=0.1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
