{
	"data": {
		"initial": "_Icanonlyimag",
		"stitches": {
			"_Icanonlyimag": {
				"content": [
					"[aleo] I can only imagine how hard all this must be for you.",
					{
						"linkPath": "playerisrook",
						"ifConditions": [
							{
								"ifCondition": "!20_hero_killed&&oddleif_state>0&&hero_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "playerisalette",
						"ifConditions": [
							{
								"ifCondition": "!20_hero_killed&&oddleif_state>0&&hero_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "playerwasrook",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&hero_was_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "playerwasalette",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&hero_was_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "oddleifdied",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&oddleif_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"playerisrook": {
				"content": [
					"[aleo] I never had the chance to know Alette, but I've heard people say such wonderful things about her.",
					{
						"divert": "_Ithinkshewou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithinkshewou": {
				"content": [
					"[aleo] I think she would be proud of you right now.",
					{
						"divert": "_RightnowWhy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_RightnowWhy": {
				"content": [
					"[$hero] Right now? Why?",
					{
						"divert": "_WhereIlookId"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhereIlookId": {
				"content": [
					"[aleo] Where I look, I don't see the dead. I see all those who live on, instead.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"playerisalette": {
				"content": [
					"[aleo] I never had the privilege of meeting your father, but I've only heard incredible things about him.",
					{
						"divert": "_Ithinkhewoul"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithinkhewoul": {
				"content": [
					"[aleo] I think he would be very proud of you right now.",
					{
						"divert": "_RightnowWhy0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_RightnowWhy0": {
				"content": [
					"[$hero] Right now? Why?",
					{
						"divert": "_WhereIlookId0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhereIlookId0": {
				"content": [
					"[aleo] Where I look, I don't see the dead. I see all those who live on, instead.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"playerwasrook": {
				"content": [
					"[aleo] I obviously didn't know Rook as well as you, but it hurts my heart that he's gone.",
					{
						"divert": "_StillIcantst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StillIcantst": {
				"content": [
					"[aleo] Still, I can't stay sad.",
					{
						"divert": "_WhereIlookId1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhereIlookId1": {
				"content": [
					"[aleo] Where I look, I don't see the dead. I see all those who live on, instead.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"playerwasalette": {
				"content": [
					"[aleo] I didn't know Alette like you did, but it hurts my heart that she's left us.",
					{
						"divert": "_StillIcantst0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StillIcantst0": {
				"content": [
					"[aleo] Still, I can't stay sad.",
					{
						"divert": "_WhereIlookId2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhereIlookId2": {
				"content": [
					"[aleo] Where I look, I don't see the dead. I see all those who live on, instead.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"oddleifdied": {
				"content": [
					"[aleo] I didn't know Oddleif like you did, but it hurts my heart that she's left us.",
					{
						"divert": "_StillIcantst1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StillIcantst1": {
				"content": [
					"[aleo] Still, I can't stay sad.",
					{
						"divert": "_WhereIlookId3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhereIlookId3": {
				"content": [
					"[aleo] Where I look, I don't see the dead. I see all those who live on, instead.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"aleocontinues": {
				"content": [
					"[aleo] /=Aleo stands quietly beside you, deep in thought.=/",
					{
						"divert": "_Aleostandsqu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleostandsqu": {
				"content": [
					"[aleo $hero] /=Aleo stands quietly beside you, deep in thought.=/",
					{
						"linkPath": "_YoumeanRook",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&hero_was_rook"
							},
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Do you think this is my fault?"
					},
					{
						"linkPath": "_Youretalking",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==1&&hero_was_alette"
							},
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Do you think this is my fault?"
					},
					{
						"linkPath": "_Couldhavedon",
						"ifConditions": [
							{
								"ifCondition": "20_invite_dredge==0"
							},
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Do you think we could have done more?"
					},
					{
						"linkPath": "_Aleolookssli",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "You can't help yourself from rhyming, can you?"
					},
					{
						"linkPath": "_Isupposewemu",
						"option": "I guess it's time we moved on."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoumeanRook": {
				"content": [
					"[aleo] You mean Rook.",
					{
						"divert": "_Ievenaskedhi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ievenaskedhi": {
				"content": [
					"[$hero] I even asked him if I was pushing things too hard, then I went and did it anyway. I killed him.",
					{
						"divert": "thatguiltyfeelin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youretalking": {
				"content": [
					"[aleo] You're talking about Alette.",
					{
						"divert": "_IwasworriedI"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IwasworriedI": {
				"content": [
					"[$hero] I was worried I would push things too hard. I was trying to protect everyone else, and it got her killed.",
					{
						"divert": "thatguiltyfeelin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Couldhavedon": {
				"content": [
					"[aleo] Could have done more what?",
					{
						"divert": "_Moretosaveou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Moretosaveou": {
				"content": [
					"[aleo] More to save our clansmen? More to save the dredge? More to save ourselves?",
					{
						"divert": "_Youreaskingt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youreaskingt": {
				"content": [
					"[aleo] You're asking the wrong guy.",
					{
						"divert": "_Ijustwriteth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ijustwriteth": {
				"content": [
					"[aleo] I just write the songs, I don't right the wrongs.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleolookssli": {
				"content": [
					"[aleo] /=Aleo looks slightly embarrassed, as if you caught him indulging in a vice.=/",
					{
						"divert": "_ImsorryIhope"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ImsorryIhope": {
				"content": [
					"[aleo] I'm sorry. I hope I didn't come off as disrespectful with what I said. I have a hard time putting it to bed.",
					{
						"divert": "_WhenIwasaboy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIwasaboy": {
				"content": [
					"[aleo] When I was a boy, my grandmother was a famous seer in our small town. I was in awe of her.",
					{
						"divert": "_Sheclaimedth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sheclaimedth": {
				"content": [
					"[aleo] She claimed the gods never died, that they still spoke through her. Others would come from far away to hear their fate or feel close to them.",
					{
						"divert": "_SometimesIwo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SometimesIwo": {
				"content": [
					"[aleo] Sometimes I would listen through the wall to the amazing things she told these people, even though it was forbidden.",
					{
						"divert": "_SheknewBefor"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SheknewBefor": {
				"content": [
					"[aleo] She knew. Before she died, she told me a secret.",
					{
						"divert": "_Shesaidshema"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesaidshema": {
				"content": [
					"[aleo] She said she made it all up.",
					{
						"divert": "_IgotupsetIca"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IgotupsetIca": {
				"content": [
					"[aleo] I got upset, I called her a fraud. But she explained that just because she made it up doesn't mean it wasn't real.",
					{
						"divert": "_Thestorieswe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thestorieswe": {
				"content": [
					"[aleo] \"The stories we tell are just as real as all the things we see and feel,\" she said before she died.",
					{
						"divert": "_Irememberedt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Irememberedt": {
				"content": [
					"[aleo] I remembered those last words clear as a bell, and I began to make up stories of my own.",
					{
						"divert": "_Eventuallyit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eventuallyit": {
				"content": [
					"[aleo] Eventually it became hard not to see the world as a story.",
					{
						"divert": "_Andyourealwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andyourealwa": {
				"content": [
					"[$hero] And you're always writing one in your head.",
					{
						"divert": "_WhenIfeltafr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIfeltafr": {
				"content": [
					"[aleo] When I felt afraid or upset as a child, it helped to imagine myself as someone else reading my story.",
					{
						"divert": "_Likethegodsw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Likethegodsw": {
				"content": [
					"[aleo] Like the gods were looking down and seeing that I can create things as well.",
					{
						"divert": "_AnywayImsorr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AnywayImsorr": {
				"content": [
					"[aleo] Anyway... I'm sorry about all the rhymes, I'll try to keep them to more appropriate... moments.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Isupposewemu": {
				"content": [
					"[aleo] I suppose we must. The menders shouldn't be left alone on the walls, and there's already a murmur spreading through the clans of not enough food to go around.",
					{
						"divert": "_Sometimesitf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sometimesitf": {
				"content": [
					"[$hero] Sometimes it feels like too much.",
					{
						"divert": "_Thetrueheroc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thetrueheroc": {
				"content": [
					"[aleo] The true hero comes reluctantly.",
					{
						"divert": "_Thoughwemove"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thoughwemove": {
				"content": [
					"[aleo] Though we move on now with shuffling feet, our hearts will forever be incomplete.",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"thatguiltyfeelin": {
				"content": [
					"[aleo] Did you? It wasn't the one throwing the spear, or the one inciting the crowd, the clansmen who stood by and did nothing, the ones in dark armor outside the gates or the ones who set this calamity in motion? It wasn't the gods, or fate, or chance?",
					{
						"divert": "_Itwasjustyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwasjustyou": {
				"content": [
					"[aleo] It was just you?",
					{
						"divert": "_Itwasjustyou0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwasjustyou0": {
				"content": [
					"[aleo $hero] It was just you?",
					{
						"linkPath": "_Iknowmydearf",
						"option": "I know you mean well."
					},
					{
						"linkPath": "_Everyonewhok",
						"option": "I wish I didn't play any part at all."
					},
					{
						"linkPath": "_Iknowmydearf0",
						"option": "It wasn't all my fault, but it still hurts."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iknowmydearf": {
				"content": [
					"[aleo] I know, my dear friend. I know. There are no words that can soothe this pain, but...",
					{
						"divert": "_Wellgetthrou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgetthrou": {
				"content": [
					"[aleo] We'll get through the worst of it.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everyonewhok": {
				"content": [
					"[aleo] Everyone who knew them played a part, and knowing them was our great privilege. I've no words to soothe this pain, but...",
					{
						"divert": "_Wellgetthrou0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgetthrou0": {
				"content": [
					"[aleo] We'll get through the worst of it.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iknowmydearf0": {
				"content": [
					"[aleo] I know, my dear friend. I know. There are no words that can soothe this pain, but...",
					{
						"divert": "_Wellgetthrou1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellgetthrou1": {
				"content": [
					"[aleo] We'll get through the worst of it.",
					{
						"divert": "aleocontinues"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
