{
	"data": {
		"initial": "_AsJunoreleas",
		"stitches": {
			"_AsJunoreleas": {
				"content": [
					"[juno] /=As Juno releases her grip over the caravan, the images fade.=/",
					{
						"divert": "_Eyvindcarrie"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindcarrie": {
				"content": [
					"[juno] Eyvind carried me all the way back to Ridgehorn before he could go no further. That's where Hakon's warriors found us.",
					{
						"divert": "_Theyundersta"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyundersta": {
				"content": [
					"[juno] They understandably believed I was dead and left me there.",
					{
						"divert": "_Eyvindliveds"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindliveds": {
				"content": [
					"[juno] Eyvind lived still, if only barely. By the time he awoke, the varl had taken him most of the way to Einartoft.",
					{
						"divert": "_WhenIrealize"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIrealize": {
				"content": [
					"[juno] When I realized what had happened, I traveled by ship down the river to meet Eyvind at Sigrholm, but the serpent's chasms prevented this.",
					{
						"divert": "_Ibelieveyouk"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ibelieveyouk": {
				"content": [
					"[juno] I believe you know the rest.",
					{
						"divert": "_Imcertainyou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imcertainyou": {
				"content": [
					"[juno] I'm certain you have many questions. I will answer them clearly.",
					{
						"divert": "junoquestions"
					},
					{
						"pageNum": 0
					}
				]
			},
			"junoquestions": {
				"content": [
					"[juno iver] /=She waits patiently for your reply.=/",
					{
						"linkPath": "_Thiscanbecom",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "This goes back all the way to the time of the gods?",
						"flagName": "cnv.juno_count += 1"
					},
					{
						"linkPath": "_Illadmiteven",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What does the serpent have to do with any of this?",
						"flagName": "cnv.juno_count += 1"
					},
					{
						"linkPath": "_Thestonesing",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "If the dredge were taught by the Valka, why are they attacking us?",
						"flagName": "cnv.juno_count += 1"
					},
					{
						"linkPath": "_Nowwereturnt",
						"ifConditions": [
							{
								"ifCondition": "cnv.juno_count>0"
							}
						],
						"option": "I've heard enough. What now?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thiscanbecom": {
				"content": [
					"[juno] This can become long and complicated. I'll keep it simple.",
					{
						"divert": "_TheLoommothe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheLoommothe": {
				"content": [
					"[juno] The Loom-mother first discovered weaving, and with it created this world and those living on it.",
					{
						"divert": "_Theotherbein"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theotherbein": {
				"content": [
					"[juno] The other beings in the tapestry, other gods, reacted in many different ways.",
					{
						"divert": "_Somewantedto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somewantedto": {
				"content": [
					"[juno] Some wanted to learn weaving, and they took the creations she made and changed them, forming varl and horseborn.",
					{
						"divert": "_Onegodbecame"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onegodbecame": {
				"content": [
					"[juno] One god became jealous. He took mankind, reshaped them into dredge, and hid them within the world to grow and torment the other creations.",
					{
						"divert": "_WhentheLoomm"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhentheLoomm": {
				"content": [
					"[juno] When the Loom-mother learned of this, she became furious.",
					{
						"divert": "_Asshehaddisc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Asshehaddisc": {
				"content": [
					"[juno] As she had discovered creation she had also unwittingly created death, and accidentally killed the jealous god in anger.",
					{
						"divert": "_Theothergods"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theothergods": {
				"content": [
					"[juno] The other gods were terrified. They had never imagined not existing.",
					{
						"divert": "_Theyturnedon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyturnedon": {
				"content": [
					"[juno] They turned on each other out of fear. The gods died, but their creations continued on.",
					{
						"divert": "_TheValkawere"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheValkawere": {
				"content": [
					"[juno] The Valka were the Loom-mother's favored few. She taught them weaving. Eyvind and I are descendants of those first people.",
					{
						"divert": "junoquestions"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Illadmiteven": {
				"content": [
					"[juno] I'll admit, even I was uncertain until recently.",
					{
						"divert": "_Buttheeasies"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Buttheeasies": {
				"content": [
					"[juno] But the easiest way to understand it is to imagine an egg.",
					{
						"divert": "_Theserpentse"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentse": {
				"content": [
					"[juno] The serpent's egg was made inside this Inner Earth, a black sun mirroring our own.",
					{
						"divert": "_Withinitaser"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Withinitaser": {
				"content": [
					"[juno] Within it, a serpent would grow slowly over the ages.",
					{
						"divert": "_Itwasputhere"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwasputhere": {
				"content": [
					"[juno] It was put here to eventually swallow the Loom-mother's creations. A cruel trick to destroy them in secret.",
					{
						"divert": "_Whentheblack"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whentheblack": {
				"content": [
					"[juno] When the black sun fell to the earth it cracked. The serpent and its power spilled out, well before its time.",
					{
						"divert": "_Everythingha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everythingha": {
				"content": [
					"[iver] Everything happening now is because of petty grudges between the gods?",
					{
						"divert": "_InawayEyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_InawayEyvind": {
				"content": [
					"[juno] In a way, Eyvind unwittingly did us all a favor. If the serpent had grown to full size...",
					{
						"divert": "_Wellatleasta"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellatleasta": {
				"content": [
					"[juno] Well, at least as things are now, there may be a chance to reverse it.",
					{
						"divert": "_Imnotexactly"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imnotexactly": {
				"content": [
					"[iver] I'm not exactly bursting with gratitude at the moment.",
					{
						"divert": "_Understandab"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Understandab": {
				"content": [
					"[juno] Understandable.",
					{
						"divert": "junoquestions"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thestonesing": {
				"content": [
					"[juno] The stonesingers believe we have betrayed them.",
					{
						"divert": "_Earlyonwedis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Earlyonwedis": {
				"content": [
					"[juno] Early on, we discovered that the black sun was a far greater source of power than our own.",
					{
						"divert": "_Afterthewors"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Afterthewors": {
				"content": [
					"[juno] After the worst of the great wars, everyone believed the Valka utterly defeated the dredge. In truth we offered them peace.",
					{
						"divert": "_Inexchangefo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Inexchangefo": {
				"content": [
					"[juno] In exchange for use of the sun's power, we showed them how to flourish within their own lands, and create more of their own kind.",
					{
						"divert": "_Soyoucreated"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Soyoucreated": {
				"content": [
					"[iver] So you created the stonesingers?",
					{
						"divert": "_InawayWeonly"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_InawayWeonly": {
				"content": [
					"[juno iver] In a way. We only shared knowledge. It has always been a difficult question of how much control to exert.",
					{
						"divert": "_Butnowtheybe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butnowtheybe": {
				"content": [
					"[juno] But now they believe we caused this destruction on purpose.",
					{
						"divert": "_Theythinktha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theythinktha": {
				"content": [
					"[juno] They think that we wish to wipe them out, and like anyone would, they fight back.",
					{
						"divert": "_Theyrescared"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyrescared": {
				"content": [
					"[juno] They're scared and frenzied, and will not listen.",
					{
						"divert": "_Wehavefailed"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wehavefailed": {
				"content": [
					"[juno] We have failed them as much as we have failed everyone else.",
					{
						"divert": "junoquestions"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowwereturnt": {
				"content": [
					"[juno] Now we return to the source of the power.",
					{
						"divert": "_Iamnotdeadbu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iamnotdeadbu": {
				"content": [
					"[juno] I am not dead, but neither am I alive. This energy within me was stolen.",
					{
						"divert": "_Eyvindwillpl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindwillpl": {
				"content": [
					"[juno] Eyvind will place me within the black sun. The celestial spheres will circle again, the darkness will be absorbed, and without that, the serpent will wither.",
					{
						"divert": "junoend"
					},
					{
						"pageNum": 0
					}
				]
			},
			"junoend": {
				"content": [
					"[juno] /=She suddenly looks very tired, but tries to smile.=/",
					{
						"divert": "_Shesuddenlyl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesuddenlyl": {
				"content": [
					"[juno iver] /=She suddenly looks very tired, but tries to smile.=/",
					{
						"linkPath": "_Ihavecometot",
						"option": "You'll be trapped within the sun?"
					},
					{
						"linkPath": "_Iwillnotforc",
						"option": "How can I trust you?"
					},
					{
						"linkPath": "_PerhapsIdobu",
						"option": "You caused all this. You deserve it."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihavecometot": {
				"content": [
					"[juno] I have come to terms with it.",
					{
						"divert": "_Andnowyoukno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andnowyoukno": {
				"content": [
					"[juno] And now you know everything. Make sure Eyvind does what is right.",
					{
						"pageNum": 0
					}
				]
			},
			"_Iwillnotforc": {
				"content": [
					"[juno] I will not force you. I can only hope.",
					{
						"divert": "_Andnowyoukno0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andnowyoukno0": {
				"content": [
					"[juno] And now you know everything. Make sure Eyvind does what is right.",
					{
						"pageNum": 0
					}
				]
			},
			"_PerhapsIdobu": {
				"content": [
					"[juno] Perhaps I do, but the rest of the world does not.",
					{
						"divert": "_Nowyouknowev"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowyouknowev": {
				"content": [
					"[juno] Now you know everything. Even if you hate me, it's still crucial that you make sure Eyvind does what is right.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
