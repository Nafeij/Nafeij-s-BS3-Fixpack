{
	"data": {
		"initial": "_SomehowIknew",
		"stitches": {
			"_SomehowIknew": {
				"content": [
					"[ubin] Somehow I knew they'd do it.",
					{
						"divert": "_Whateveritis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whateveritis": {
				"content": [
					"[aleo] Whatever \"it\" is.",
					{
						"divert": "_Butthesunsac"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butthesunsac": {
				"content": [
					"[aleo] But the sun's actually moving again. For a long time, things were looking pretty hopeless.",
					{
						"divert": "_Imdefinitely"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imdefinitely": {
				"content": [
					"[ubin] I'm definitely the oldest at this point.",
					{
						"divert": "_Thegodsarede"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thegodsarede": {
				"content": [
					"[zefr] The gods are dead, the world turned to dust, and on we go.",
					{
						"divert": "_Thegodsarede0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thegodsarede0": {
				"content": [
					"[ubin $hero] The gods are dead, the world turned to dust, and on we go.",
					{
						"linkPath": "_Timepasses",
						"option": "So what do we do now?"
					},
					{
						"linkPath": "_Idontthinkso",
						"option": "Are we all that's left?"
					},
					{
						"linkPath": "_Nobutenough",
						"option": "Not all of us."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Timepasses": {
				"content": [
					"[zefr] Time passes.",
					{
						"divert": "gameover1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontthinkso": {
				"content": [
					"[zefr] I don't think so.",
					{
						"divert": "gameover1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nobutenough": {
				"content": [
					"[zefr] No, but enough.",
					{
						"divert": "gameover1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"gameover1": {
				"content": [
					"[zefr] Life will return.",
					{
						"divert": "_Grassandgree"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Grassandgree": {
				"content": [
					"[zefr] Grass and green will sprout from the dust.",
					{
						"divert": "_EventhoughAr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_EventhoughAr": {
				"content": [
					"[zefr] Even though Arberrang is gone, I believe there are other survivors. Varl in the north, perhaps huddled around godstones.",
					{
						"divert": "_Southoftheda"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Southoftheda": {
				"content": [
					"[zefr] South of the darkness there may still be horseborn fleeing across the fields, or ships of men. Or dredge without Sundr.",
					{
						"divert": "_Sowerebuild"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sowerebuild": {
				"content": [
					"[$hero] So we rebuild.",
					{
						"linkPath": "rook",
						"ifConditions": [
							{
								"ifCondition": "hero_rook && !16_oddleif_preggers"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "rookodd",
						"ifConditions": [
							{
								"ifCondition": "hero_rook && 16_oddleif_preggers"
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
						"pageNum": 0
					}
				]
			},
			"rook": {
				"content": [
					"[$hero] I just wish that Alette could be here to see this.",
					{
						"divert": "_Ihaveafeelin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihaveafeelin": {
				"content": [
					"[ubin] I have a feeling she did see it, somehow.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookodd": {
				"content": [
					"[$hero] I just wish that Alette and Oddleif could be here to see this.",
					{
						"divert": "_Ihaveafeelin1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihaveafeelin1": {
				"content": [
					"[ubin] I have a feeling they did see it, somehow.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alette": {
				"content": [
					"[$hero] I just wish that my dad could be here to see this.",
					{
						"divert": "_Iknowhowprou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iknowhowprou": {
				"content": [
					"[ubin] I know how proud he'd be.",
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
					"[aleo] For a long time now I've been thinking of an epic poem. You'll never guess the inspiration.",
					{
						"divert": "_Wouldyoucare"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wouldyoucare": {
				"content": [
					"[aleo] Would you care to hear what I've got?",
					{
						"divert": "_Wouldyoucare0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wouldyoucare0": {
				"content": [
					"[aleo $hero] Would you care to hear what I've got?",
					{
						"linkPath": "_Aleosmilesan",
						"option": "It would be a pleasure."
					},
					{
						"linkPath": "_Aleomeltsben",
						"option": "Maybe another time, Aleo."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleosmilesan": {
				"content": [
					"[aleo] /=Aleo smiles, and draws his lute from around his back. He sings with a brightness in a his voice.=/",
					{
						"divert": "_Onlythesunha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onlythesunha": {
				"content": [
					"[aleo] Only the sun has stopped, cut with keen-edged Sword.",
					{
						"divert": "_Littledidthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Littledidthe": {
				"content": [
					"[aleo] Little did they sleep, lest they not come home.",
					{
						"divert": "_Wearytheweig"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wearytheweig": {
				"content": [
					"[aleo] Weary, the weight of the Sun! Of our bones, the hills...",
					{
						"divert": "_TheSlayerand"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheSlayerand": {
				"content": [
					"[aleo] The Slayer, and the Slain.",
					{
						"divert": "_Fromtheirhom"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fromtheirhom": {
				"content": [
					"[aleo] From their homes must all flee, and cast their Hone into the air!",
					{
						"divert": "_Tospeakinall"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Tospeakinall": {
				"content": [
					"[aleo] To speak in all tongues where a foe may lurk, the destined day shall come:",
					{
						"divert": "_TheFetterswi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheFetterswi": {
				"content": [
					"[aleo] The Fetters will burst, brothers fight, and kinship stain...",
					{
						"divert": "_AndinFearqua"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndinFearqua": {
				"content": [
					"[aleo] And in Fear quake all.",
					{
						"divert": "_ThetrueHeroc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThetrueHeroc": {
				"content": [
					"[aleo] The true Hero comes reluctantly, raising high their Shining light...",
					{
						"divert": "_Alastheseais"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Alastheseais": {
				"content": [
					"[aleo] Alas, the sea is still dead and wide, the hounds are a-hungered.",
					{
						"divert": "_Weliveaswewi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Weliveaswewi": {
				"content": [
					"[aleo] We live as we will live, with the mighty grief that was ours and theirs.",
					{
						"divert": "_Onlywefewrem"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onlywefewrem": {
				"content": [
					"[aleo] Only we few remember it now.",
					{
						"divert": "_Aleorestshis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleorestshis": {
				"content": [
					"[aleo] /=Aleo rests his throat, and then gives a little cough to indicate he's done.=/",
					{
						"divert": "_Itsnotbadasf"
					},
					{
						"flagName": "22_poetic_justice=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsnotbadasf": {
				"content": [
					"[ubin] It's not bad, as far as poetry goes.",
					{
						"divert": "_Likeanygoodh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Likeanygoodh": {
				"content": [
					"[ubin] Like any good historical account, it could use more verses, at the end there.",
					{
						"divert": "_Aleolaughs"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleolaughs": {
				"content": [
					"[aleo] /=Aleo laughs.=/",
					{
						"divert": "_Ayeyourerigh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ayeyourerigh": {
				"content": [
					"[aleo] Aye, you're right. It certainly could.",
					{
						"linkPath": "gameover2",
						"ifConditions": [
							{
								"ifCondition": "22_eyvind_choice==1||22_eyvind_choice==5"
							}
						],
						"option": "{branch}"
					},
					{
						"ifConditions": [
							{
								"ifCondition": "22_eyvind_choice>1&&22_eyvind_choice<5"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aleomeltsben": {
				"content": [
					"[aleo] /=Aleo melts beneath the rejection, then laughs a long, hearty laugh that echoes far into the distance.",
					{
						"divert": "_Ayetherewill"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ayetherewill": {
				"content": [
					"[aleo] Aye, there will always be stories for another time.",
                    {
						"linkPath": "gameover2",
						"ifConditions": [
							{
								"ifCondition": "22_eyvind_choice==1||22_eyvind_choice==5"
							}
						],
						"option": "{branch}"
					},
					{
						"ifConditions": [
							{
								"ifCondition": "22_eyvind_choice>1&&22_eyvind_choice<5"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"gameover2": {
				"content": [
					"[ubin] Wait, what is that? Do you see it?",
					{
						"divert": "_Yousquintint"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yousquintint": {
				"content": [
					"[$hero] /=You squint into the ashes of twisted land, spread out across the horizon.=/",
					{
						"divert": "_UbinsrightSo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_UbinsrightSo": {
				"content": [
					"[$hero] /=Ubin's right. Something there is moving. It looks like a line of people, and at the front...=/",
					{
						"divert": "_Isthat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Isthat": {
				"content": [
					"[$hero] Is that Iver?",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
