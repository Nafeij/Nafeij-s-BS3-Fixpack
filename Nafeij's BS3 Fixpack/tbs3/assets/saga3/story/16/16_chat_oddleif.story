{
	"data": {
		"initial": "_YourebackSow",
		"stitches": {
			"_YourebackSow": {
				"content": [
					"[oddleif] You're back. So, what was that all about? What did the king have to say?",
					{
						"divert": "_Somethingabo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somethingabo": {
				"content": [
					"[$hero] Something about putting aside our differences. And he wants me to try and wring an antidote out of Rugga.",
					{
						"divert": "_SinceMeinolf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SinceMeinolf": {
				"content": [
					"[$hero] Since Meinolf's dying, everyone's been let into the city, under his protection.",
					{
						"divert": "_IwonderifIdc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IwonderifIdc": {
				"content": [
					"[oddleif] I wonder if I'd change my mind like that if I knew the end was near.",
					{
						"divert": "_Isitnot"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Isitnot": {
				"content": [
					"[$hero] Is it not?",
					{
						"divert": "_ShutupYoukno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ShutupYoukno": {
				"content": [
					"[oddleif] Shut up. You know what I mean.",
					{
						"divert": "_Sohowareyouf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sohowareyouf": {
				"content": [
					"[$hero] So how are you feeling about all of this?",
					{
						"divert": "_AllofthisCar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AllofthisCar": {
				"content": [
					"[oddleif] \"All of this\"? Care to narrow it down?",
					{
						"divert": "oddleifchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifchat": {
				"content": [
					"[oddleif] /=She smiles politely, waiting for your question.=/",
					{
						"divert": "_Shesmilespol"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesmilespol": {
				"content": [
					"[oddleif $hero] /=She smiles politely, waiting for your question.=/",
					{
						"linkPath": "_Thatsatougho",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What would you do in Meinolf's position?"
					},
					{
						"linkPath": "_MmydealWhatd",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What's your deal with the horseborn, anyway?"
					},
					{
						"linkPath": "_GodsIwishhej",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What should we do about Rugga?"
					},
					{
						"linkPath": "_YeahIsuppose",
						"option": "We better get back to camp."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsatougho": {
				"content": [
					"[oddleif] That's a tough one.",
					{
						"divert": "_YouknowmeIwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknowmeIwa": {
				"content": [
					"[oddleif] You know me, I want everyone to live. Maybe even not hate each other!",
					{
						"divert": "_Ruggasmenare"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggasmenare": {
				"content": [
					"[oddleif] Rugga's men are bastards, but... I don't think they deserve to die.",
					{
						"linkPath": "hakonyes",
						"ifConditions": [
							{
								"ifCondition": "hakon_with_party"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "hakonno",
						"ifConditions": [
							{
								"ifCondition": "!hakon_with_party"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_MmydealWhatd": {
				"content": [
					"[oddleif] M-my deal? What do you mean?",
					{
						"divert": "_Ohyouregoing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ohyouregoing": {
				"content": [
					"[$hero] Oh, you're going to pretend like there's nothing up with you?",
					{
						"divert": "_Iheardyougig"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iheardyougig": {
				"content": [
					"[$hero] I heard you giggle the first time you saw one...",
					{
						"divert": "oddleifhorsies"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_GodsIwishhej": {
				"content": [
					"[oddleif] Gods, I wish he just didn't exist.",
					{
						"divert": "oddleifrugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YeahIsuppose": {
				"content": [
					"[oddleif] Yeah, I suppose we should.",
					{
						"divert": "oddleifchat2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakonyes": {
				"content": [
					"[oddleif] I'm just glad the varl are on our side.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"hakonno": {
				"content": [
					"[oddleif] And we're going to have to make amends with the varl.",
					{
						"divert": "_Theyrenothap"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyrenothap": {
				"content": [
					"[oddleif] They're not happy about how things played out.",
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
					"[oddleif] But I'm not the king, so I guess there's not much else to say about it.",
					{
						"divert": "oddleifchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifchat2": {
				"content": [
					"[oddleif] How are you holding up? You ever get tired of doing the right thing?",
					{
						"divert": "_Howareyouhol"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howareyouhol": {
				"content": [
					"[oddleif $hero] How are you holding up? You ever get tired of doing the right thing?",
					{
						"linkPath": "_LeaveGosouth",
						"option": "What choice do we have?"
					},
					{
						"linkPath": "_WellIhavesom",
						"option": "You have no idea."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LeaveGosouth": {
				"content": [
					"[oddleif] Leave? Go south, see what happens.",
					{
						"divert": "_Imjustthinki"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imjustthinki": {
				"content": [
					"[oddleif] I'm just thinking out loud. Some people are talking about ships.",
					{
						"divert": "_Afterwhatwes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Afterwhatwes": {
				"content": [
					"[$hero] After what we saw in Fiskivik? The serpent's blood was eating at the boats, and it killed everything living in the sea.",
					{
						"divert": "_Iknowitsnota"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iknowitsnota": {
				"content": [
					"[oddleif] I know it's not a real option. Now we've got to rely on each other.",
					{
						"divert": "_Justremember"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justremember": {
				"content": [
					"[oddleif] Just remember you've always got a shoulder here. Don't try to carry this all on your own.",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WellIhavesom": {
				"content": [
					"[oddleif] Well, I have some idea.",
					{
						"divert": "_Justremember0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Justremember0": {
				"content": [
					"[oddleif] Just remember you've always got a shoulder here. Don't try to carry this all on your own.",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifhorsies": {
				"content": [
					"[oddleif] I don't giggle!",
					{
						"divert": "_OkokLookjust"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_OkokLookjust": {
				"content": [
					"[oddleif] Ok, ok. Look... just don't repeat this, promise?",
					{
						"linkPath": "_WhenIwasgirl",
						"option": "I promise."
					},
					{
						"linkPath": "_Wellifyoureg",
						"option": "Maybe it's better if I don't know..."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIwasgirl": {
				"content": [
					"[oddleif] When I was a girl, I remember my father showing me pictures of horses.",
					{
						"divert": "_Theylookedam"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theylookedam": {
				"content": [
					"[oddleif] They looked amazing. I wanted one so bad.",
					{
						"divert": "_Thenhetoldme"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenhetoldme": {
				"content": [
					"[oddleif] Then he told me they were all killed, totally wiped out. Do you know this story?",
					{
						"divert": "_Legendsaysth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Legendsaysth": {
				"content": [
					"[oddleif] Legend says the Loom Mother made horses, and another god created the horseborn from them.",
					{
						"divert": "_Buttherewasa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Buttherewasa": {
				"content": [
					"[oddleif] But there was a time when both horseborn and horses existed.",
					{
						"divert": "_Theydseepeop"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theydseepeop": {
				"content": [
					"[oddleif] They'd see people use horses for farming and carrying goods, and wouldn't know how to react. Was it slavery?",
					{
						"divert": "_Werehorsesli"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Werehorsesli": {
				"content": [
					"[oddleif] Were horses like children to them, or some living reminder that they're just dumb beasts?",
					{
						"divert": "_Youcouldaskt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcouldaskt": {
				"content": [
					"[$hero] You could ask the same about varl...",
					{
						"divert": "_Comeonitsnot"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Comeonitsnot": {
				"content": [
					"[oddleif] Come on, it's not the same. Varl look pretty different from yox.",
					{
						"divert": "_Nodebatehowt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nodebatehowt": {
				"content": [
					"[oddleif] No debate how the horseborn were made.",
					{
						"divert": "_Anywayrather"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Anywayrather": {
				"content": [
					"[oddleif] Anyway, rather than let anyone \"own\" horses, the stories say the horseborn went crazy and slaughtered them all.",
					{
						"divert": "_Thentheyfoug"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thentheyfoug": {
				"content": [
					"[oddleif] Then they fought the humans a bit, but eventually retreated far south.",
					{
						"divert": "_Theysaytheho"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theysaytheho": {
				"content": [
					"[oddleif] They say the horseborn felt such shame about the massacre, they just never returned.",
					{
						"divert": "_Whoknowswhat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whoknowswhat": {
				"content": [
					"[oddleif] Who knows what the truth really is? Up til the moment I saw one, I was never even sure the horseborn really existed!",
					{
						"divert": "_Buttheyrerea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Buttheyrerea": {
				"content": [
					"[oddleif] But they're real. They're really real! And they're beautiful.",
					{
						"divert": "_Andtheyrecau"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andtheyrecau": {
				"content": [
					"[$hero] And they're causing us all kinds of problems.",
					{
						"divert": "_Oddleifsbeam"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oddleifsbeam": {
				"content": [
					"[oddleif] /=Oddleif's beaming face and wide grin deflates.=/",
					{
						"divert": "_Tellmeabouti"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Tellmeabouti": {
				"content": [
					"[oddleif] Tell me about it.",
					{
						"divert": "oddleifchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellifyoureg": {
				"content": [
					"[oddleif] Well, if you're going to be like that...",
					{
						"divert": "oddleifchat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifrugga": {
				"content": [
					"[oddleif] You know he's not going to just hand over a cure. Not without a high price, anyway.",
					{
						"divert": "_Hesgamblingw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hesgamblingw": {
				"content": [
					"[oddleif] He's gambling with people's lives for his own benefit.",
					{
						"divert": "_Whydopeoplel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whydopeoplel": {
				"content": [
					"[oddleif] Why do people like him always seem to prosper?",
					{
						"linkPath": "_Meneitherbut",
						"option": "I don't know."
					},
					{
						"linkPath": "_Youmeanmadme",
						"option": "Rule comes to those who have a deep desire to rule."
					},
					{
						"linkPath": "_Icantarguewi",
						"option": "Different people, different needs."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Meneitherbut": {
				"content": [
					"[oddleif] Me neither, but it feels deeply unfair.",
					{
						"divert": "oddleifrugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youmeanmadme": {
				"content": [
					"[oddleif] You mean madmen.",
					{
						"divert": "oddleifrugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icantarguewi": {
				"content": [
					"[oddleif] I can't argue with that. Nobody thinks they're in the wrong.",
					{
						"divert": "oddleifrugga2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifrugga2": {
				"content": [
					"[oddleif] You spend so much time and effort trying to do the right thing, and here comes Rugga.",
					{
						"divert": "_Hemayaswellb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hemayaswellb": {
				"content": [
					"[oddleif] He may as well be stabbing children as he goes and people love him for it.",
					{
						"divert": "_Butanywaywha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butanywaywha": {
				"content": [
					"[oddleif] But anyway, what can we do? Threats and beatings don't seem to work.",
					{
						"divert": "_Themancantak"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Themancantak": {
				"content": [
					"[$hero] The man can take a punch, I'll give him that.",
					{
						"divert": "_Cantkillhimy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Cantkillhimy": {
				"content": [
					"[oddleif] Can't kill him yet either, for Meinolf's sake.",
					{
						"divert": "_Whatdoesheev"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoesheev": {
				"content": [
					"[oddleif] What does he even want? The throne? What's the point of ruling Arberrang for a couple days before the darkness takes it back?",
					{
						"divert": "_UghImsickoft"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_UghImsickoft": {
				"content": [
					"[oddleif] Ugh, I'm sick of thinking about Rugga. Let's change the subject.",
					{
						"divert": "oddleifchat"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
