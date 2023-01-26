{
	"data": {
		"initial": "skipMark",
		"stitches": {
			"skipMark": {
				"content": [
					"{skip} mark1=iver mark2=serpent mark3=eyvind",
					{
						"linkPath": "__hideserpent",
						"option": "{skip}"
					},
					{
						"pageNum": 1
					}
				]
			},
			"__hideserpent": {
				"content": [
					{
						"divert": "_Theserpentra"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=serpent"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentra": {
				"content": [
					"[serpent] /=The serpent raises its tattered head to the tower top. It speaks in an ancient tongue, as before.=/",
					{
						"divert": "_Begonecreatu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Begonecreatu": {
				"content": [
					"[eyvind] Begone, creature! You don't even have the strength to crush this tower anymore.",
					{
						"divert": "_Theserpentco"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentco": {
				"content": [
					"[serpent] /=The serpent continues its low, undulating speech, like smoke rolling over sea water. Eyvind stops. He's listening.=/",
					{
						"divert": "_Gorthusvavel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Gorthusvavel": {
				"content": [
					"[serpent] Gor thu sva vel...",
					{
						"divert": "_Whatdoesitwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoesitwa": {
				"content": [
					"[iver] What does it want?",
					{
						"divert": "_Itisgivingup"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itisgivingup": {
				"content": [
					"[eyvind] It is giving up. It wants to make a deal...",
					{
						"divert": "_Halfaprophec"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Halfaprophec": {
				"content": [
					"[eyvind] \"Half a prophecy of extinction\" it says. The darkness will lift, and it will spare Arberrang. It consumes only half the world.",
					{
						"divert": "_Halftheworld"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Halftheworld": {
				"content": [
					"[iver] Half the world? In exchange for what?",
					{
						"divert": "_JunosenergyI"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_JunosenergyI": {
				"content": [
					"[eyvind] Juno's energy. If I release it to the Serpent, Juno will be... gone, but she won't suffer.",
					{
						"divert": "_YoucantellEy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoucantellEy": {
				"content": [
					"[eyvind iver] /=You can tell Eyvind is seriously considering it.=/",
					{
						"divert": "_YoucantellEy0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoucantellEy0": {
				"content": [
					"[iver] /=You can tell Eyvind is seriously considering it.=/",
					{
						"linkPath": "_Thingschange",
						"option": "Eyvind. This isn't what we came to do."
					},
					{
						"linkPath": "_Itisoutofyou",
						"option": "No! I won't let you do this!"
					},
					{
						"linkPath": "_Iamnegotiati",
						"option": "You're going to trust this thing to keep its word?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thingschange": {
				"content": [
					"[eyvind] Things change, Iver. This is out of your hands now.",
					{
						"divert": "_TellmewhyHav"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TellmewhyHav": {
				"content": [
					"[iver] Tell me why! Have I not earned that, at least?",
					{
						"divert": "_Eyvindreturn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindreturn": {
				"content": [
					"[iver] /=Eyvind returns his attention to you with frustration on his face. Behind him, the serpent rattles in resentment at being ignored.=/",
					{
						"divert": "_WhyBecauseJu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhyBecauseJu": {
				"content": [
					"[eyvind] Why? Because Juno does not deserve this.",
					{
						"divert": "_Dontyouunder"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontyouunder": {
				"content": [
					"[eyvind] Don't you understand what is happening here?",
					{
						"divert": "_HowcouldIIts"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HowcouldIIts": {
				"content": [
					"[iver] How could I? It's been nothing but lies and secrets since we first met!",
					{
						"divert": "choice1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itisoutofyou": {
				"content": [
					"[eyvind] It is out of your hands now, Iver.",
					{
						"divert": "_NotwhileIhav"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NotwhileIhav": {
				"content": [
					"[iver] Not while I have this axe.",
					{
						"divert": "_Eyvindreturn0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindreturn0": {
				"content": [
					"[iver] /=Eyvind returns his attention to you with anger on his face. Behind him, the serpent rattles in frustration at being ignored.=/",
					{
						"divert": "_Dontyouunder0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontyouunder0": {
				"content": [
					"[eyvind] Don't you understand what is happening here?",
					{
						"divert": "_HowcouldIIts0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HowcouldIIts0": {
				"content": [
					"[iver] How could I? It's been nothing but lies and secrets since we first met!",
					{
						"divert": "choice1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iamnegotiati": {
				"content": [
					"[eyvind] I am negotiating with it.",
					{
						"divert": "_Negotiatewit"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Negotiatewit": {
				"content": [
					"[iver] Negotiate with me.",
					{
						"divert": "_Eyvindreturn1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindreturn1": {
				"content": [
					"[iver] /=Eyvind returns his attention to you with frustration on his face. Behind him, the serpent slithers in resentment at being ignored.=/",
					{
						"divert": "_Dontyouunder1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dontyouunder1": {
				"content": [
					"[eyvind] Don't you understand what is happening here?",
					{
						"divert": "_HowcouldIIts1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_HowcouldIIts1": {
				"content": [
					"[iver] How could I? It's been nothing but lies and secrets since we first met!",
					{
						"divert": "choice1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice1": {
				"content": [
					"[eyvind] What choice did we have? Try to imagine if I told you the truth when we met.",
					{
						"divert": "_Itwashardeno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwashardeno": {
				"content": [
					"[eyvind] It was hard enough convincing anyone to listen in the first place.",
					{
						"divert": "_BackinSigrho"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_BackinSigrho": {
				"content": [
					"[eyvind iver] Back in Sigrholm, when I begged you to wait for Juno... how long did you wait?",
					{
						"linkPath": "yeswait",
						"ifConditions": [
							{
								"ifCondition": "6_sigrday2||6_sigrday3"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "nowait",
						"ifConditions": [
							{
								"ifCondition": "!6_sigrday2&&!6_sigrday3"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"nowait": {
				"content": [
					"[eyvind iver] Not even a single day!",
					{
						"divert": "_Andthatafter"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andthatafter": {
				"content": [
					"[eyvind] And that, after all I did in Einartoft to save the varl from complete extinction!",
					{
						"divert": "_Noifyouknewt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Noifyouknewt": {
				"content": [
					"[eyvind] No, if you knew the truth you'd have drowned me in that lake, yourself.",
					{
						"divert": "choice1_contd"
					},
					{
						"pageNum": 0
					}
				]
			},
			"yeswait": {
				"content": [
					"[eyvind iver] Would you have been so quick to abandon Rook, or Alette?",
					{
						"divert": "_AfterallIdid"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AfterallIdid": {
				"content": [
					"[eyvind] After all I did in Einartoft to save the varl from extinction!",
					{
						"divert": "_Ifyouknewthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyouknewthe": {
				"content": [
					"[eyvind] If you knew the truth you'd have drowned me in that lake, yourself.",
					{
						"divert": "choice1_contd"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice1_contd": {
				"content": [
					"[eyvind] I couldn't even trust you to save yourselves.",
					{
						"divert": "_Icouldnteven"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icouldnteven": {
				"content": [
					"[eyvind iver] I couldn't even trust you to save yourselves.",
					{
						"linkPath": "_Trueenoughbu",
						"ifConditions": [
							{
								"ifCondition": "6_sigrday2||6_sigrday3"
							}
						],
						"option": "We waited, because we trusted you."
					},
					{
						"linkPath": "_Butthatshard",
						"ifConditions": [
							{
								"ifCondition": "6_sigrday2||6_sigrday3"
							}
						],
						"option": "We could have waited at Sigrholm forever, and she would have never come."
					},
					{
						"linkPath": "_DontlietomeI",
						"ifConditions": [
							{
								"ifCondition": "6_sigrday2||6_sigrday3"
							}
						],
						"option": "I wouldn't have waited for Rook or Alette either."
					},
					{
						"linkPath": "_Thatsnotwhat",
						"ifConditions": [
							{
								"ifCondition": "!6_sigrday2&&!6_sigrday3"
							}
						],
						"option": "So you will decide who is to be saved?"
					},
					{
						"linkPath": "_ItoldyouJuno",
						"ifConditions": [
							{
								"ifCondition": "!6_sigrday2&&!6_sigrday3"
							}
						],
						"option": "How were we supposed to know what was going on?"
					},
					{
						"linkPath": "_YouthinkIdon",
						"ifConditions": [
							{
								"ifCondition": "!6_sigrday2&&!6_sigrday3"
							}
						],
						"option": "Trust? All of this was your doing, Eyvind!"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Trueenoughbu": {
				"content": [
					"[eyvind] True enough, but only until you had to consider your own discomfort.",
					{
						"divert": "__cnvright_an"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an": {
				"content": [
					{
						"divert": "choice2"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butthatshard": {
				"content": [
					"[eyvind] But that's... hardly the point.",
					{
						"divert": "__cnvright_an0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an0": {
				"content": [
					{
						"divert": "choice2"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DontlietomeI": {
				"content": [
					"[eyvind] Don't lie to me. I don't believe that.",
					{
						"divert": "choice2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsnotwhat": {
				"content": [
					"[eyvind] That's... not what I mean...",
					{
						"divert": "__cnvright_an1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an1": {
				"content": [
					{
						"divert": "choice2"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItoldyouJuno": {
				"content": [
					"[eyvind] I told you Juno would explain things! You chose not to trust!",
					{
						"divert": "choice2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouthinkIdon": {
				"content": [
					"[eyvind] You think I don't know that?",
					{
						"divert": "choice2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice2": {
				"content": [
					"[eyvind iver] What's the point of this, Iver?",
					{
						"divert": "_Sobrothersan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sobrothersan": {
				"content": [
					"[eyvind iver] So brothers and clansmen can keep killing each other over petty disputes?",
					{
						"divert": "_Sovarlanddre"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sovarlanddre": {
				"content": [
					"[eyvind iver] So varl and dredge can go on destroying each other over ancient history?",
					{
						"divert": "_Evenafterwer"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Evenafterwer": {
				"content": [
					"[eyvind] Even after we realized the dredge were only fleeing the darkness, same as the rest of us...",
					{
						"divert": "_Evenafterdis"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Evenafterdis": {
				"content": [
					"[eyvind] Even after discovering a dredge child dying in the snow... an infant!",
					{
						"divert": "_Everyonewasr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everyonewasr": {
				"content": [
					"[eyvind] Everyone was ready to slaughter it like a pig!",
					{
						"divert": "_Everyonewasr0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everyonewasr0": {
				"content": [
					"[eyvind iver] Everyone was ready to slaughter it like a pig!",
					{
						"linkPath": "_Somaybeonein",
						"ifConditions": [
							{
								"ifCondition": "dredge_baby"
							}
						],
						"option": "And yet, the dredge child lives on, even now."
					},
					{
						"linkPath": "_AfewAfewover",
						"ifConditions": [
							{
								"ifCondition": "dredge_baby"
							}
						],
						"option": "We overcame that fear. Can you ask for more than that?"
					},
					{
						"linkPath": "_Nnobutthisis",
						"ifConditions": [
							{
								"ifCondition": "dredge_baby"
							}
						],
						"option": "You'd rather sink the whole ship than try to patch the hole?"
					},
					{
						"linkPath": "_ThatswhatIde",
						"ifConditions": [
							{
								"ifCondition": "!dredge_baby"
							}
						],
						"option": "It was wrong, but what's done is done."
					},
					{
						"linkPath": "_Ishouldntbes",
						"ifConditions": [
							{
								"ifCondition": "!dredge_baby"
							}
						],
						"option": "You're naive to think that it would stay harmless forever."
					},
					{
						"linkPath": "_Soitsbloodsh",
						"ifConditions": [
							{
								"ifCondition": "!dredge_baby"
							}
						],
						"option": "And what of the dredge killing ours?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somaybeonein": {
				"content": [
					"[eyvind] So out of thousands, one is spared.",
					{
						"divert": "__cnvright_an2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an2": {
				"content": [
					{
						"divert": "interlude1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AfewAfewover": {
				"content": [
					"[eyvind] A few. A few overcame that fear.",
					{
						"divert": "__cnvright_an3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an3": {
				"content": [
					{
						"divert": "interlude1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nnobutthisis": {
				"content": [
					"[eyvind] N-no, but... this isn't about me...",
					{
						"divert": "__cnvright_an4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an4": {
				"content": [
					{
						"divert": "interlude1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThatswhatIde": {
				"content": [
					"[eyvind] That's what I'd expect from you.",
					{
						"divert": "_FromwhatIhea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_FromwhatIhea": {
				"content": [
					"[eyvind] From what I hear, you've had practice killing dredge children before.",
					{
						"divert": "interlude1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ishouldntbes": {
				"content": [
					"[eyvind] I shouldn't be surprised. From what I hear it's not the first dredge child you've murdered.",
					{
						"divert": "interlude1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Soitsbloodsh": {
				"content": [
					"[eyvind] So it's bloodshed forever?",
					{
						"divert": "_Ishouldntbes0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ishouldntbes0": {
				"content": [
					"[eyvind] I shouldn't be surprised. From what I hear it's not the first dredge child you've murdered.",
					{
						"divert": "interlude1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"interlude1": {
				"content": [
					"[iver] Is this really what you want to argue about right now?",
					{
						"linkPath": "good2",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers==2"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "good1",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers==1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "good0",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers==0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"good2": {
				"content": [
					"[eyvind] Put yourself in my position.",
					{
						"divert": "_Askedtoweigh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Askedtoweigh": {
				"content": [
					"[eyvind] Asked to weigh the fate of the world against their loved ones, would anyone choose the world?",
					{
						"divert": "_Theserpentsl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentsl": {
				"content": [
					"[eyvind] /=The serpent slithers anxiously. It is not accustomed to being ignored, but Eyvind seems determined to get this off his chest.=/",
					{
						"divert": "choice3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"good1": {
				"content": [
					"[eyvind] If you're going to ask me to weigh the fate of the world against Juno, then tell me why I should care!",
					{
						"divert": "_Theserpentsl0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentsl0": {
				"content": [
					"[eyvind] /=The serpent slithers anxiously. It is not accustomed to being ignored, but Eyvind continues on in spite of the danger.=/",
					{
						"divert": "choice3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"good0": {
				"content": [
					"[eyvind] So far I haven't heard any good reasons to care about anyone but Juno!",
					{
						"divert": "_Theserpentco0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theserpentco0": {
				"content": [
					"[eyvind] /=The serpent continues to slithers restlessly as if feeding on Eyvind's anxiety. Eyvind continues his tirade.=/",
					{
						"divert": "choice3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice3": {
				"content": [
					"[eyvind] And we both know how this world really is. Remember Denglr's godstone?",
					{
						"divert": "_Thatoldwoman"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatoldwoman": {
				"content": [
					"[eyvind] That old woman lies to our faces about who attacked who, then she mocks us for not butchering that stonehurler on sight?",
					{
						"divert": "_Andevenwitht"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andevenwitht": {
				"content": [
					"[eyvind] And even with the truth laid so bare before us, there was a debate. How can we hope to overcome that kind of spite and ignorance? That hatred?",
					{
						"divert": "_Whatarewefig"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatarewefig": {
				"content": [
					"[eyvind iver] What are we fighting so hard to preserve, exactly?",
					{
						"divert": "_Whatarewefig0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatarewefig0": {
				"content": [
					"[eyvind iver] What are we fighting so hard to preserve, exactly?",
					{
						"linkPath": "_FairenoughId",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome==1"
							}
						],
						"option": "You've had plenty of time to ask that stonehurler how she feels about it."
					},
					{
						"linkPath": "_Iknowyoubeli",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome==1"
							}
						],
						"option": "I will continue to hope until the day there's nothing to hope for."
					},
					{
						"linkPath": "_Dothefleetin",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome==1"
							}
						],
						"option": "I might agree, if it were all nothing but misery."
					},
					{
						"linkPath": "_WhycantIWhyd",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome!=1"
							}
						],
						"option": "You can't expect most people to sympathize with the dredge."
					},
					{
						"linkPath": "_AfewMiseryco",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome!=1"
							}
						],
						"option": "You can't burn everything down over a few mistakes!"
					},
					{
						"linkPath": "_Noteverythin",
						"ifConditions": [
							{
								"ifCondition": "19_denglr_convo_outcome!=1"
							}
						],
						"option": "Don't give in to weakness."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_FairenoughId": {
				"content": [
					"[eyvind] Fair enough. I do understand your meaning. But...",
					{
						"divert": "__cnvright_an5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an5": {
				"content": [
					{
						"divert": "choice4"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iknowyoubeli": {
				"content": [
					"[eyvind] I know you believe that. But...",
					{
						"divert": "__cnvright_an6"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an6": {
				"content": [
					{
						"divert": "choice4"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dothefleetin": {
				"content": [
					"[eyvind] Do the fleeting moments of joy really outweigh the misery, Iver?",
					{
						"divert": "__cnvright_an7"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an7": {
				"content": [
					{
						"divert": "choice4"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhycantIWhyd": {
				"content": [
					"[eyvind] Why can't I? Why don't you expect more of them?",
					{
						"divert": "choice4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AfewMiseryco": {
				"content": [
					"[eyvind] A few? Misery comes over and over again! Are we really better off this way?",
					{
						"divert": "choice4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Noteverythin": {
				"content": [
					"[eyvind] Not everything can be solved by being tough, Iver.",
					{
						"divert": "choice4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice4": {
				"content": [
					"[eyvind] You don't know the depths of it the way I do.",
					{
						"divert": "_Therewasawom"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Therewasawom": {
				"content": [
					"[eyvind] There was a woman near Orsma River, after we somehow survived crossing the chasm.",
					{
						"divert": "_Someofherown"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Someofherown": {
				"content": [
					"[eyvind] Some of her own clansmen had tied her to a stake. \"Witch!\" they screamed. She was meant to starve to death.",
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
					"[eyvind] I can still see her face, the torture and the pain.",
					{
						"divert": "_Doyouremembe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Doyouremembe": {
				"content": [
					"[eyvind] Do you remember how many days she had hung there, starving, before we arrived?",
					{
						"divert": "_Doyouremembe0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Doyouremembe0": {
				"content": [
					"[eyvind iver] Do you remember how many days she had hung there, starving, before we arrived?",
					{
						"linkPath": "_Sotheytoldus",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2==1"
							}
						],
						"option": "Three days."
					},
					{
						"linkPath": "_WrongItprove",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2==1"
							}
						],
						"option": "Whether I remember this proves nothing."
					},
					{
						"linkPath": "_Threedaysthe",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2==1"
							}
						],
						"option": "I only remember that she was not left there to die, thanks to us."
					},
					{
						"linkPath": "_Sotheytoldus0",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2!=1"
							}
						],
						"option": "Three days?"
					},
					{
						"linkPath": "_Yousoundsoco",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2!=1"
							}
						],
						"option": "Four days."
					},
					{
						"linkPath": "_OhbutIdo",
						"ifConditions": [
							{
								"ifCondition": "10_crazy_woman2!=1"
							}
						],
						"option": "To be honest, I do not remember her."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sotheytoldus": {
				"content": [
					"[eyvind] So they told us.",
					{
						"divert": "__cnvright_an8"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an8": {
				"content": [
					{
						"divert": "choice5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WrongItprove": {
				"content": [
					"[eyvind] Wrong. It proves everything.",
					{
						"divert": "choice5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Threedaysthe": {
				"content": [
					"[eyvind] Three days, they said.",
					{
						"divert": "__cnvright_an9"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an9": {
				"content": [
					{
						"divert": "choice5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sotheytoldus0": {
				"content": [
					"[eyvind] So they told us.",
					{
						"divert": "__cnvright_an10"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__cnvright_an10": {
				"content": [
					{
						"divert": "choice5"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yousoundsoco": {
				"content": [
					"[eyvind] You sound so confident. But you're wrong. They told us three.",
					{
						"divert": "choice5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_OhbutIdo": {
				"content": [
					"[eyvind] Oh, but I do.",
					{
						"divert": "choice5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice5": {
				"content": [
					"[eyvind] Maybe those men lied. Or with the sun stopped, maybe they miscounted.",
					{
						"divert": "_Shehadbeenth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shehadbeenth": {
				"content": [
					"[eyvind] She had been there at least seven days already. I could feel her agony, in the tapestry.",
					{
						"divert": "_Accordingtot"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Accordingtot": {
				"content": [
					"[eyvind] According to their own absurd rules it proved she wasn't a witch, she should have been freed.",
					{
						"divert": "_Canyouimagin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Canyouimagin": {
				"content": [
					"[eyvind] Can you imagine suffering like that for a world that doesn't even remember you?",
					{
						"divert": "interlude2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"interlude2": {
				"content": [
					"[iver] That's what this is about, isn't it? This is about Juno.",
					{
						"linkPath": "right3",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers>=3"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "right2",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers==2"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "right1",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers<=1"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"right3": {
				"content": [
					"[eyvind] I'm not trying to make everything about Juno. I just need to... to believe in what I'm supposed to do.",
					{
						"divert": "_Eyvindseemst"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindseemst": {
				"content": [
					"[eyvind] /=Eyvind seems to be swayed by your arguments. The coils of the serpent are wrapping tighter around the tower, and you can feel its patience growing thin.=/",
					{
						"divert": "choice5b"
					},
					{
						"pageNum": 0
					}
				]
			},
			"right2": {
				"content": [
					"[eyvind] You're right, it is about Juno. But why shouldn't I be the one to decide what happens to her?",
					{
						"divert": "_Eyvindseemso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindseemso": {
				"content": [
					"[eyvind] /=Eyvind seems only partially convinced by your answers, still questioning himself. Worse, the coils of the serpent are wrapping tighter around the tower, and you can feel its malice growing.=/",
					{
						"divert": "choice5b"
					},
					{
						"pageNum": 0
					}
				]
			},
			"right1": {
				"content": [
					"[eyvind] Of course this is about Juno! This has always been about Juno!",
					{
						"divert": "_Eyvindislosi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindislosi": {
				"content": [
					"[eyvind] /=Eyvind is losing control, barely listening. Worse, the coils of the serpent are wrapping tighter around the tower, and you can see thin licks of blue flame from its malicious face.=/",
					{
						"divert": "choice5b"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice5b": {
				"content": [
					"[eyvind] When we found Juno's body smashed and broken on the frozen sea, I saw that same fate for her as that poor woman starving to death.",
					{
						"divert": "_Sufferingalo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sufferingalo": {
				"content": [
					"[eyvind] Suffering, alone. Forgotten.",
					{
						"linkPath": "goodiver",
						"ifConditions": [
							{
								"ifCondition": "21_handling_juno"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "badiver",
						"ifConditions": [
							{
								"ifCondition": "!21_handling_juno"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"goodiver": {
				"content": [
					"[eyvind] Everyone else was so quick to give up on her...",
					{
						"divert": "_Imgratefulth"
					},
					{
						"flagName": "cnv.right_answers+=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imgratefulth": {
				"content": [
					"[eyvind] I'm grateful that you did not. But that's what you're asking me to do now.",
					{
						"linkPath": "goodchoices",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers>=3"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "badchoices",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers<3"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"badiver": {
				"content": [
					"[eyvind] Your first instinct was to give up and run back to Arberrang...",
					{
						"divert": "_Youmadeitcle"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youmadeitcle": {
				"content": [
					"[eyvind] You made it clear that you had come only for yourself. I felt completely alone.",
					{
						"divert": "_Ithurtmoreth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithurtmoreth": {
				"content": [
					"[eyvind] It hurt more than anything else we've been through to get here.",
					{
						"linkPath": "goodchoices",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers>=3"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "badchoices",
						"ifConditions": [
							{
								"ifCondition": "cnv.right_answers<3"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"goodchoices": {
				"content": [
					"[eyvind] I must sound pathetic. I realize it has to be hard to sympathize.",
					{
						"divert": "_Butmaybeofal"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butmaybeofal": {
				"content": [
					"[eyvind iver] But maybe of all people, you can, Iver.",
					{
						"divert": "_Whenyoustood"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whenyoustood": {
				"content": [
					"[eyvind iver] When you stood against Bellower on the bridge at Einartoft I finally recognized you. And I knew what you had done to Raze, and her child.",
					{
						"divert": "_Hefollowedus"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hefollowedus": {
				"content": [
					"[eyvind iver] Bellower followed us both to Boersgard, to finish the Valka's job.",
					{
						"linkPath": "rookded",
						"ifConditions": [
							{
								"ifCondition": "hero_was_alette||hero_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "aletteded",
						"ifConditions": [
							{
								"ifCondition": "hero_was_rook||hero_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"rookded": {
				"content": [
					"[eyvind iver] What would you give to have Rook back?",
					{
						"divert": "continuingon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"aletteded": {
				"content": [
					"[eyvind iver] What would you give to have Alette back?",
					{
						"divert": "continuingon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continuingon": {
				"content": [
					"[eyvind] Don't make Juno suffer an even worse fate. Please, Iver.",
					{
						"divert": "_Trustmetofin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Trustmetofin": {
				"content": [
					"[eyvind] Trust me to find a solution.",
					{
						"divert": "_Eyvindturnsb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindturnsb": {
				"content": [
					"[eyvind] /= Eyvind turns back to the serpent, his body radiating immense power as he speaks to it again.=/",
					{
						"linkPath": "alfrunalive1",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alfrundead1",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"flagName": "@hide=eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alfrunalive1": {
				"content": [
					"[iver] /=Alfrun gives you a severe look, as if to say \"He lies!\" You recall her plan to complete the ritual in place of Eyvind.=/",
					{
						"divert": "movingongood"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alfrundead1": {
				"content": [
					"[iver] /=Your muscles tense, your heart races. Is Eyvind even telling you the truth? The axe is already in your hand.=/",
					{
						"divert": "movingongood"
					},
					{
						"pageNum": 0
					}
				]
			},
			"movingongood": {
				"content": [
					"[iver] /=If you're going to do something, it has to be now.=/",
					{
						"divert": "_Ifyouregoing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyouregoing": {
				"content": [
					"[iver] /=If you're going to do something, it has to be now.=/",
					{
						"linkPath": "trust",
						"option": "Trust Eyvind and wait."
					},
					{
						"linkPath": "alfrun",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state>0"
							}
						],
						"option": "Strike down Eyvind, leaving the ritual to Alfrun."
					},
					{
						"linkPath": "noplan",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state=0"
							}
						],
						"option": "Cut down Eyvind while he's distracted."
					},
					{
						"linkPath": "_Eyvindagains",
						"option": "\"Eyvind, this isn't what Juno wanted.\""
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindagains": {
				"content": [
					"[eyvind iver] /=Eyvind again stops speaking to the serpent, but this time he turns to you with sorrow, instead of anger.=/",
					{
						"divert": "_Junoiseveryt"
					},
					{
						"flagName": "@show=eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Junoiseveryt": {
				"content": [
					"[eyvind] Juno is everything this world deserves.",
					{
						"divert": "_Insteadyougo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Insteadyougo": {
				"content": [
					"[eyvind] Instead you got me.",
					{
						"divert": "worldsaved"
					},
					{
						"pageNum": 0
					}
				]
			},
			"badchoices": {
				"content": [
					"[eyvind] Don't look at me like that. I know what you're thinking. I know what everyone is thinking.",
					{
						"divert": "_Thisismyfaul"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisismyfaul": {
				"content": [
					"[eyvind] This is my fault after all, so just toughen up and do it. Hard for anyone to sympathize with what I've done.",
					{
						"divert": "_Butmaybeyouc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butmaybeyouc": {
				"content": [
					"[eyvind iver] But maybe you can, Iver.",
					{
						"divert": "_Bellowercame"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Bellowercame": {
				"content": [
					"[eyvind iver] Bellower came to Einartoft for blood. He came after the one who killed Raze and his child.",
					{
						"divert": "_Whenyoufaced"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whenyoufaced": {
				"content": [
					"[eyvind iver] When you faced off against him on the bridge I finally recognized you. The Valka were supposed to hand you over to the Sundr as part of our peace agreement, but we couldn't find you.",
					{
						"divert": "_Ithoughtabou"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithoughtabou": {
				"content": [
					"[eyvind iver] I thought about leaving you for Bellower then, at Einartoft. But I didn't. It would have saved countless lives.",
					{
						"linkPath": "alsorookdead",
						"ifConditions": [
							{
								"ifCondition": "hero_was_alette||hero_alette"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alsoalettedead",
						"ifConditions": [
							{
								"ifCondition": "hero_was_rook||hero_rook"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alsorookdead": {
				"content": [
					"[eyvind iver] It would have saved Rook's life.",
					{
						"divert": "continuingonbad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alsoalettedead": {
				"content": [
					"[eyvind iver] It would have saved Alette's life.",
					{
						"divert": "continuingonbad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"continuingonbad": {
				"content": [
					"[eyvind] I am not going to let Juno suffer for my mistakes.",
					{
						"divert": "_Donotinterfe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Donotinterfe": {
				"content": [
					"[eyvind] Do not interfere, Iver. This choice is mine to make... trust that it will be to everyone's benefit.",
					{
						"divert": "_Ifyoutrytost"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyoutrytost": {
				"content": [
					"[eyvind] If you try to stop me, I will not hold back.",
					{
						"divert": "_Eyvindturnsa"
					},
					{
						"flagName": "@hide=eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindturnsa": {
				"content": [
					"[eyvind iver] /= Eyvind turns away from you, his body radiating immense power, lightning crackling and tattooing the stonework with scorch marks.=/",
					{
						"linkPath": "alfrunalive2",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state>0"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "alfrundead2",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alfrunalive2": {
				"content": [
					"[iver] /=Alfrun catches your eye, as if saying \"You see?\" She signals her plan to complete the ritual in place of Eyvind.=/",
					{
						"divert": "movingonbad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alfrundead2": {
				"content": [
					"[iver] /=Your muscles tense, your heart races. Is Eyvind even speaking the truth? The axe is already in your hand.=/",
					{
						"divert": "movingonbad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"movingonbad": {
				"content": [
					"[iver] /=If you're going to do something, it has to be now.=/",
					{
						"divert": "_Ifyouregoing0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyouregoing0": {
				"content": [
					"[iver] /=If you're going to do something, it has to be now.=/",
					{
						"linkPath": "trust",
						"option": "Trust Eyvind and wait."
					},
					{
						"linkPath": "alfrun",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state>0"
							}
						],
						"option": "Strike down Eyvind, leaving the ritual to Alfrun."
					},
					{
						"linkPath": "noplan",
						"ifConditions": [
							{
								"ifCondition": "alfrun_state=0"
							}
						],
						"option": "Cut down Eyvind while he's distracted."
					},
					{
						"linkPath": "_Eyvinddoesnt",
						"option": "\"Eyvind, this isn't what Juno wanted.\""
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvinddoesnt": {
				"content": [
					"[eyvind iver] /=Eyvind doesn't turn around, but you can feel his anger boiling over.=/",
					{
						"divert": "_Junoiseveryt0"
					},
					{
						"flagName": "@show=eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Junoiseveryt0": {
				"content": [
					"[eyvind] Juno is everything this world deserves.",
					{
						"divert": "_Insteadyougo0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Insteadyougo0": {
				"content": [
					"[eyvind] Instead you got me.",
					{
						"divert": "worlddoomed"
					},
					{
						"pageNum": 0
					}
				]
			},
			"worldsaved": {
				"content": [
					"[eyvind] I'm so tired... Iver.",
					{
						"divert": "_CourageThisw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CourageThisw": {
				"content": [
					"[iver] Courage. This was the hard part.",
					{
						"divert": "_ForgivemeJun"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ForgivemeJun": {
				"content": [
					"[eyvind iver] Forgive me, Juno. I'll love you always.",
					{
						"divert": "__22_eyvind_c"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__22_eyvind_c": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "22_eyvind_choice=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"worlddoomed": {
				"content": [
					"[eyvind] AND I WILL NOT LET YOU HAVE HER!",
					{
						"divert": "_Eyvindwait"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindwait": {
				"content": [
					"[iver] /=Eyvind, wait!=/",
					{
						"divert": "__22_eyvind_c0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__22_eyvind_c0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "22_eyvind_choice=4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"trust": {
				"content": [
					"[eyvind iver] /=Eyvind debates with the serpent, tension rising, until only a terrifying silence suddenly hangs between them.=/",
					{
						"divert": "_ItsoverThere"
					},
					{
						"flagName": "@show=eyvind"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItsoverThere": {
				"content": [
					"[eyvind] It's over. There has been an agreement.",
					{
						"divert": "_Whathaveyoud"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whathaveyoud": {
				"content": [
					"[iver] What have you done?",
					{
						"divert": "_Donotfearwha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Donotfearwha": {
				"content": [
					"[eyvind] Do not fear what you see now. The world may be changed, but Arberrang will survive. And Juno will finally have peace.",
					{
						"divert": "_Eyvindstands"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindstands": {
				"content": [
					"[iver] /=Eyvind stands before Juno's hovering form, and completes his part of the bargain.=/",
					{
						"divert": "__22_eyvind_c1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__22_eyvind_c1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "22_eyvind_choice=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"alfrun": {
				"content": [
					"[iver] /=Years flash before your eyes; the things you know about Juno and Eyvind, the sacrifices you've made. The ones you've lost.=/",
					{
						"divert": "_Allthathards"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Allthathards": {
				"content": [
					"[iver] /=All that hardship. It won't be in vain.=/",
					{
						"divert": "__22_eyvind_c2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__22_eyvind_c2": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "22_eyvind_choice=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"noplan": {
				"content": [
					"[iver] /=Your mind races for options, alternatives, but they have all slipped away like sand in an hourglass.=/",
					{
						"divert": "_Youhavenooth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youhavenooth": {
				"content": [
					"[iver] /=You have no other choice.=/",
					{
						"divert": "__22_eyvind_c3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__22_eyvind_c3": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "22_eyvind_choice=3"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
