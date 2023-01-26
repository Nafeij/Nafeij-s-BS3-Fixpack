{
	"data": {
		"initial": "_Justdreams",
		"stitches": {
			"_Justdreams": {
				"content": [
					"[iver] Just dreams.",
					{
						"divert": "_Somepeopleth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somepeopleth": {
				"content": [
					"[alfrun] Some people think dreams are omens.",
					{
						"divert": "_Thosepeoplea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thosepeoplea": {
				"content": [
					"[alfrun] Those people are idiots. But they can certainly be a fine distraction from our troubles.",
					{
						"divert": "_Notmysortofd"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notmysortofd": {
				"content": [
					"[iver] Not my sort of distraction.",
					{
						"linkPath": "talked",
						"ifConditions": [
							{
								"ifCondition": "19_talked_alfrun"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nottalked",
						"ifConditions": [
							{
								"ifCondition": "!19_talked_alfrun"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"talked": {
				"content": [
					"[alfrun] I'm sorry if I dredged up old memories back at the godstone. So to speak.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nottalked": {
				"content": [
					"[alfrun] I could take a good guess what that was all about. You said his name clearly enough.",
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
					"[alfrun] There's more to that story. Would you like me to tell you?",
					{
						"divert": "_Theresmoreto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theresmoreto": {
				"content": [
					"[alfrun iver] There's more to that story. Would you like me to tell you?",
					{
						"linkPath": "_Youveheardon",
						"option": "I think you should."
					},
					{
						"linkPath": "_Iwontmakeyou",
						"option": "It might be better if you don't."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youveheardon": {
				"content": [
					"[alfrun] You've heard one half already: how the Valka came forth during the second great war, with fire and fury, to push the sculptors to extinction.",
					{
						"divert": "_Shegesturest"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shegesturest": {
				"content": [
					"[alfrun] /=She gestures theatrically.=/",
					{
						"divert": "_SoIveheard"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SoIveheard": {
				"content": [
					"[iver] So I've heard.",
					{
						"divert": "_PerceptionPa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_PerceptionPa": {
				"content": [
					"[alfrun] Perception. Paint themselves the heroes. What the Valka really did was make their foes a promise.",
					{
						"divert": "_Abandonthewa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Abandonthewa": {
				"content": [
					"[alfrun] Abandon the war and they'd share secret knowledge.",
					{
						"divert": "_TheValkataug"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheValkataug": {
				"content": [
					"[alfrun] The Valka taught them to write, they taught the stonesingers to weave.",
					{
						"divert": "_Andforthefir"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andforthefir": {
				"content": [
					"[alfrun] And for the first time the sculptors learned how to make more sculptors. To thrive.",
					{
						"divert": "_Theykeptthei"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theykeptthei": {
				"content": [
					"[alfrun] They kept their end of the bargain and remained hidden. At least, until recently.",
					{
						"divert": "_Howdoyouknow"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howdoyouknow": {
				"content": [
					"[iver] How do you know this?",
					{
						"divert": "_Theyhavethei"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theyhavethei": {
				"content": [
					"[alfrun] They have their own history, and carvings. I've read it on great black stones in their dark home.",
					{
						"divert": "_Astheirtrust"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Astheirtrust": {
				"content": [
					"[alfrun] As their trusted guest.",
					{
						"divert": "iverdream1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwontmakeyou": {
				"content": [
					"[alfrun] I won't make you hear things you don't want to hear.",
					{
						"divert": "iverdream1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"iverdream1": {
				"content": [
					"[alfrun] What I don't understand is why you trust these Valka.",
					{
						"divert": "_Youstareinto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youstareinto": {
				"content": [
					"[iver] /=You stare into the fire, and it shows you old shapes. When you speak, it's almost as if to yourself.=/",
					{
						"divert": "_WhenIkilledR"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIkilledR": {
				"content": [
					"[iver] When I killed Raze... when I returned to my kind with her head...",
					{
						"divert": "_Yngvartheych"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yngvartheych": {
				"content": [
					"[iver] \"Yngvar!\" they chanted. None had slain a Sundr before. They wanted to make me the king's kendr.",
					{
						"divert": "_IcouldntThey"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IcouldntThey": {
				"content": [
					"[iver] I couldn't. They haunted me, Bellower and Raze, and that damn child. Every night like tonight.",
					{
						"divert": "_Maybeitsound"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybeitsound": {
				"content": [
					"[iver] Maybe it sounds like nothing, to have bad dreams, but it rubs you raw. It gets in your bones.",
					{
						"divert": "_SoIlefttheva"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SoIlefttheva": {
				"content": [
					"[iver] So I left the varl.",
					{
						"divert": "_Ifoundasmall"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifoundasmall": {
				"content": [
					"[iver] I found a small town of men, where nobody knew who I was. Nobody called me Yngvar.",
					{
						"divert": "_Iverneverhad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iverneverhad": {
				"content": [
					"[iver] \"Iver\" never had dreams like that, in Skogr.",
					{
						"divert": "_Sothatswhyyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sothatswhyyo": {
				"content": [
					"[alfrun] So that's why you agreed to come with Juno and Eyvind.",
					{
						"divert": "_ThetruthisJu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThetruthisJu": {
				"content": [
					"[iver] The truth is... Juno didn't ask me to join them.",
					{
						"divert": "_Iaskedher"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iaskedher": {
				"content": [
					"[iver] I asked her.",
					{
						"divert": "_Theflamescon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theflamescon": {
				"content": [
					"[iver] /=The flames continue to dance hypnotically.=/",
					{
						"divert": "_Onthatbridge"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onthatbridge": {
				"content": [
					"[iver] On that bridge in Einartoft... I stood before Bellower...",
					{
						"divert": "_Icouldhavemo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icouldhavemo": {
				"content": [
					"[iver] I could have moved.",
					{
						"divert": "_ButIjustheld"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ButIjustheld": {
				"content": [
					"[iver] But I just held up my shield... and waited for the end.",
					{
						"divert": "_WhatsthatIve"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhatsthatIve": {
				"content": [
					"[alfrun] What's that? Iver?",
					{
						"divert": "_Thenamesnaps"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thenamesnaps": {
				"content": [
					"[iver] /=The name snaps you out of your trance. You stand, and stretch your legs. Your axe is where you left it, and the Ravens are beginning to stir in their tents.=/",
					{
						"divert": "_Itsnothing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsnothing": {
				"content": [
					"[iver] It's nothing.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
