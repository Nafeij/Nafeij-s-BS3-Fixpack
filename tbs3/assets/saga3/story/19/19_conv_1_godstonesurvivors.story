{
	"data": {
		"initial": "skipMark",
		"stitches": {
			"skipMark": {
				"content": [
					"{skip} mark1=peasant_female1 mark2=iver mark3=dredge_hurler_ally_1 mark4=alfrun",
					{
						"linkPath": "__hidedredge_",
						"option": "{skip}"
					},
					{
						"pageNum": 1
					}
				]
			},
			"__hidedredge_": {
				"content": [
					{
						"divert": "_Praisethegod"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=dredge_hurler_ally_1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Praisethegod": {
				"content": [
					"[peasant_female1] Praise the gods, someone has finally come, carrying a divine light!",
					{
						"divert": "_Notexactly"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notexactly": {
				"content": [
					"[iver] Not exactly.",
					{
						"divert": "_Thematronlyw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thematronlyw": {
				"content": [
					"[peasant_female1] /=The matronly woman's face falls as she gets a better look at you.=/",
					{
						"linkPath": "nostonesinger",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "yesstonesinger",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nostonesinger": {
				"content": [
					"[peasant_female1] I know that crest. Ravens. Did you come all this way to rob us, then? First we're stuck here with that slag...",
					{
						"divert": "continue"
					},
					{
						"flagName": "@show=dredge_hurler_ally_1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"yesstonesinger": {
				"content": [
					"[peasant_female1] I know that crest. Ravens...",
					{
						"divert": "_Shepointswit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shepointswit": {
				"content": [
					"[peasant_female1] /=She points with an accusing, shaking finger toward the stonesinger.=/",
					{
						"divert": "_Whawhatisthi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whawhatisthi": {
				"content": [
					"[peasant_female1] Wha-what is this? Have you brought more dredge to slaughter us?",
					{
						"divert": "continue"
					},
					{
						"flagName": "@show=dredge_hurler_ally_1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continue": {
				"content": [
					"[dredge_hurler_ally_1] /=The stonehurler stands within its ring of stones, warbling loudly as you approach the godstone. The old woman recoils in disgust.=/",
					{
						"divert": "_Wellhowinter"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellhowinter": {
				"content": [
					"[alfrun] Well, how interesting. This one is terrified of you, Iver.",
					{
						"divert": "_Wellhowinter0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellhowinter0": {
				"content": [
					"[alfrun dredge_hurler_ally_1] Well, how interesting. This one is terrified of you, Iver.",
					{
						"linkPath": "_Shecalledyou",
						"option": "Me? Why?"
					},
					{
						"linkPath": "_Becauseshesa",
						"option": "How do you know that?"
					},
					{
						"linkPath": "_Whentheyreno",
						"option": "They have a language?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shecalledyou": {
				"content": [
					"[alfrun] She called you \"Destroyer\".",
					{
						"divert": "denglr1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Becauseshesa": {
				"content": [
					"[alfrun] Because she said so. Called you \"Destroyer\".",
					{
						"divert": "denglr1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whentheyreno": {
				"content": [
					"[alfrun] When they're not twisted into abominations. She called you \"Destroyer\".",
					{
						"divert": "denglr1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"denglr1": {
				"content": [
					"[alfrun] I'd heard of \"The Destroyer\" before, but I had no idea I was traveling with him. Is it really you? They speak of you like we do Bellower.",
					{
						"divert": "_Thoughtyoudb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thoughtyoudb": {
				"content": [
					"[alfrun] Thought you'd be bigger.",
					{
						"divert": "_Itsamisunder"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsamisunder": {
				"content": [
					"[iver] It's a misunderstanding. Where would you hear such a thing?",
					{
						"divert": "_Travellingwi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Travellingwi": {
				"content": [
					"[alfrun] Travelling with the Valka, but you do not know where we are headed?",
					{
						"divert": "_Youreaninter"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youreaninter": {
				"content": [
					"[alfrun] You're an interesting one, Iver. We should talk more.",
					{
						"divert": "_Theoldwomanr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theoldwomanr": {
				"content": [
					"[peasant_female1] /=The old woman rejoins you again, after a heated battle of whispers with her kin. She clears her throat.=/",
					{
						"divert": "_IamcalledHil"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IamcalledHil": {
				"content": [
					"[peasant_female1] I am Hilde. We came here to pray when the skies darkened.",
					{
						"divert": "_IguessIdontn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IguessIdontn": {
				"content": [
					"[peasant_female1] I guess I don't need to tell you we're only alive now because of this godstone. A miracle! And they say the gods are dead.",
					{
						"divert": "_Thenthisslag"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenthisslag": {
				"content": [
					"[peasant_female1] Then this slag comes from nowhere, it attacks us! Killed their husbands, and mine as well. Ay, a right miserable sow-sucker he was, but an injustice to be killed by this thing...",
					{
						"divert": "_Shegesturesr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shegesturesr": {
				"content": [
					"[peasant_female1] /=She gestures rudely at the stonehurler. It makes a hissing sound like escaping steam.=/",
					{
						"divert": "_Quietfilthyt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Quietfilthyt": {
				"content": [
					"[peasant_female1] Quiet, filthy thing!",
					{
						"divert": "_Youlltakeuss"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youlltakeuss": {
				"content": [
					"[peasant_female1] You'll take us somewhere safe, surely? Surely you will.",
					{
						"divert": "_TheoppositeY"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheoppositeY": {
				"content": [
					"[alfrun] The opposite. You don't want to go where we're going.",
					{
						"divert": "_GodsaliveHas"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_GodsaliveHas": {
				"content": [
					"[peasant_female1] Gods alive. Has everyone lost their minds? At least give us justice?",
					{
						"divert": "_Dontleavethi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontleavethi": {
				"content": [
					"[peasant_female1] Don't leave this slag alive to kill us and eat our children!",
					{
						"divert": "_Dontleavethi0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontleavethi0": {
				"content": [
					"[peasant_female1 iver] Don't leave this slag alive to kill us and eat our children!",
					{
						"linkPath": "_YoumotiontoO",
						"option": "We can do that much."
					},
					{
						"linkPath": "_Hildebristle",
						"option": "Alfrun, what's the dredge's side of the story?"
					},
					{
						"linkPath": "_Nochoiceisst",
						"option": "They don't eat children, and this isn't our problem."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoumotiontoO": {
				"content": [
					"[iver] /=You motion to Oli, who seems more than happy to oblige. The dredge never sees the throwing axe coming.=/",
					{
						"divert": "_Flithyvileth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Flithyvileth": {
				"content": [
					"[peasant_female1] Flithy, vile thing. Well? What are you waiting for? Praise, for killing slag? Go on, get away if you're so eager.",
					{
						"divert": "_Oliroarswith"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oliroarswith": {
				"content": [
					"[iver] /=Oli roars with laughter at the woman's foul mood, joking that she'd make a fine match for Sparr. He claims she's too old. You move on.=/",
					{
						"divert": "__19_denglr_c"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__19_denglr_c": {
				"content": [
					{
						"divert": "__renown14"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "19_denglr_convo_outcome=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown14": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=14"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hildebristle": {
				"content": [
					"[dredge_hurler_ally_1] /=Hilde bristles at the implication. Alfrun taps her spear, and the horns vibrate with a faint hum. The dredge sings a soft response.",
					{
						"divert": "_Shesaystheyl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesaystheyl": {
				"content": [
					"[alfrun] She says they left her no choice but to defend herself. Stuck here, same as them.",
					{
						"divert": "denglr2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nochoiceisst": {
				"content": [
					"[alfrun] No choice is still a choice.",
					{
						"divert": "denglr2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"denglr2": {
				"content": [
					"[peasant_female1] By the gods, we've been found by the only slag-lovers in the dying world.",
					{
						"divert": "_Shesnatchess"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesnatchess": {
				"content": [
					"[peasant_female1] /=She snatches something shiny from the hands of one of her kin, waving it in front of you.=/",
					{
						"divert": "_Thisiswhatth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisiswhatth": {
				"content": [
					"[peasant_female1] This is what the Ravens need, isn't it? You disgusting vultures. Family heirloom, worth more than it looks!",
					{
						"linkPath": "nosinger",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state==0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "yessinger",
						"ifConditions": [
							{
								"ifCondition": "stonesinger_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nosinger": {
				"content": [
					"[alfrun] I say we just bring the stonehurler along with us, Iver. She can obviously fight.",
					{
						"divert": "bringalong"
					},
					{
						"pageNum": 0
					}
				]
			},
			"yessinger": {
				"content": [
					"[alfrun] I say we just bring the stonehurler along with us. I mean, we've already got one.",
					{
						"divert": "bringalong"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bringalong": {
				"content": [
					"[iver] You said it was terrified of me.",
					{
						"divert": "_Thenshewontp"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenshewontp": {
				"content": [
					"[alfrun] Then she won't put up much of a struggle, will she?",
					{
						"divert": "_Whatareyouta"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatareyouta": {
				"content": [
					"[peasant_female1] What are you talking about? Kill it already! Kill it!",
					{
						"divert": "_Whatareyouta0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatareyouta0": {
				"content": [
					"[peasant_female1 iver] What are you talking about? Kill it, already! Kill it!",
					{
						"linkPath": "_Hildeandherk",
						"option": "Enough. Keep your trinkets and the dredge, both. We're leaving."
					},
					{
						"linkPath": "_Alfrunspeaks",
						"option": "Convince the stonehurler to come along, Alfrun."
					},
					{
						"linkPath": "_Youdropthedr",
						"option": "It did slay all these men. We can't take the risk. I'll do as the woman asks."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hildeandherk": {
				"content": [
					"[iver] /=Hilde and her kin bury you beneath curses. The stonehurler sits back down quietly, closing its eyes.=/",
					{
						"divert": "_Imsuretheyll"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imsuretheyll": {
				"content": [
					"[iver] /=\"I'm sure they'll work things out,\" Oli chuckles.=/",
					{
						"flagName": "renown+=24"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Alfrunspeaks": {
				"content": [
					"[alfrun] /=Alfrun speaks to the dredge again. It shows little emotion, but that may just be because it lacks facial expression.=/",
					{
						"divert": "_Quitethemotl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Quitethemotl": {
				"content": [
					"[alfrun] Quite the motley crew you've gathered, Destroyer.",
					{
						"divert": "_Dontcallmeth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontcallmeth": {
				"content": [
					"[iver] Don't call me that. I'm serious.",
					{
						"divert": "_Hildepockets"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hildepockets": {
				"content": [
					"[iver] /=Hilde pockets her heirloom, offering only low curses, angry that the dredge lives on.=/",
					{
						"divert": "__renown34"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown34": {
				"content": [
					{
						"divert": "__19_denglr_c0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=34"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__19_denglr_c0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "19_denglr_convo_outcome=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdropthedr": {
				"content": [
					"[iver] /=You drop the dredge with a single, unexpected swing, blackening the snow. Hilde tosses the heirloom at your feet.=/",
					{
						"divert": "_Wellthenwhat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellthenwhat": {
				"content": [
					"[peasant_female1] Well then, what are you waiting around for? Praise for killing a slag?",
					{
						"divert": "_Oliroarswith0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oliroarswith0": {
				"content": [
					"[iver] /=Oli roars with laughter at the woman's foul mood, joking that she'd make a fine match for Sparr. Sparr claims she's too old. You move on.=/",
					{
						"divert": "__renown340"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__renown340": {
				"content": [
					{
						"divert": "__19_denglr_c1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "renown+=34"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__19_denglr_c1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "19_denglr_convo_outcome=2"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
