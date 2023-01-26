{
	"data": {
		"initial": "skipMark",
		"stitches": {
			"skipMark": {
				"content": [
					"{skip} mark1=$hero mark2=rugga mark3=oddleif mark4=new_rugga",
					{
						"linkPath": "__hidenew_rug",
						"option": "{skip}"
					},
					{
						"pageNum": 1
					}
				]
			},
			"__hidenew_rug": {
				"content": [
					{
						"divert": "_Youcrashfuri"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=new_rugga"
					},
					{
						"flagName": "@show=rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcrashfuri": {
				"content": [
					"[$hero] /=You crash furiously through Rugga's cell door, grabbing his full attention.=/",
					{
						"divert": "_Thishastoend"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thishastoend": {
				"content": [
					"[$hero] This ends, now!",
					{
						"divert": "_Therearepeop"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Therearepeop": {
				"content": [
					"[$hero] There are people dying by the minute to a Sundr, the wall's falling as we speak and still, still your clansmen fight against us!",
					{
						"divert": "_Idontdeserve"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontdeserve": {
				"content": [
					"[rugga] I don't deserve all the credit. There are many players in this game.",
					{
						"divert": "_Thisisnofaen"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisisnofaen": {
				"content": [
					"[$hero] This is no faen board game!",
					{
						"linkPath": "kingdead",
						"ifConditions": [
							{
								"ifCondition": "18_deal_with_loyalists=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "kingalive",
						"ifConditions": [
							{
								"ifCondition": "18_deal_with_loyalists=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"kingdead": {
				"content": [
					"[$hero] Meinolf is dead, and your men revel in it? We're all about to join him!",
					{
						"divert": "_Youhadeveryo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youhadeveryo": {
				"content": [
					"[rugga] You had every opportunity to come sooner and make a deal.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"kingalive": {
				"content": [
					"[$hero] /=From what feels far away, bells toll above the din of the carnage outside.=/",
					{
						"divert": "_Whatarethose"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatarethose": {
				"content": [
					"[oddleif] What are those bells?",
					{
						"divert": "_TraditionAsh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TraditionAsh": {
				"content": [
					"[rugga] Tradition. A shame I didn't get to see the blue smoke that goes with it. I've been dreaming of this day.",
					{
						"divert": "_MeinolfFinal"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_MeinolfFinal": {
				"content": [
					"[rugga] Meinolf. Finally dead.",
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
					"[rugga] Sounds like you need me now, more than ever.",
					{
						"divert": "_Areyoukiddin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Areyoukiddin": {
				"content": [
					"[oddleif] Are you kidding me? You've lost your only-- why should we even let you live?",
					{
						"divert": "_LassMeinolfd"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LassMeinolfd": {
				"content": [
					"[rugga] Lass, Meinolf died days ago, he just didn't know it. That poison had no cure.",
					{
						"divert": "_WhenIlearned"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIlearned": {
				"content": [
					"[rugga] When I learned the menders were forbidden from touching the mind I found a suitable venom.",
					{
						"divert": "_Hediedinhiss"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hediedinhiss": {
				"content": [
					"[rugga] He died in his sleep, dreaming the most horrific visions. Or so I've been told.",
					{
						"divert": "_Youviciousso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youviciousso": {
				"content": [
					"[oddleif rugga] /=You vicious son of a bitch!=/",
					{
						"divert": "_Haveyoueverw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Haveyoueverw": {
				"content": [
					"[rugga] Have you ever witnessed a city turn, hungrily, upon itself? Like a starving wolf eating its own cubs?",
					{
						"divert": "_Haveyouwitne"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Haveyouwitne": {
				"content": [
					"[rugga] Have you witnessed the rape, slaughter and torture of thousands, the sounds and the smells of it?",
					{
						"divert": "_Ihave"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihave": {
				"content": [
					"[rugga] I have.",
					{
						"divert": "_Ohandwhentha"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ohandwhentha": {
				"content": [
					"[rugga] Oh, and when that chaos spills over the edge, there is no cure. Just like Meinolf.",
					{
						"divert": "_ShouldIdieyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ShouldIdieyo": {
				"content": [
					"[rugga] Should I die, you will see these things for yourself. I promise you that.",
					{
						"divert": "_Somaybenowyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somaybenowyo": {
				"content": [
					"[rugga] So maybe now you will listen carefully to what I want.",
					{
						"divert": "_Somaybenowyo0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Somaybenowyo0": {
				"content": [
					"[rugga $hero] So maybe now you will listen carefully to what I want.",
					{
						"linkPath": "_Theycouldbec",
						"option": "Only if your followers raise a hand to help instead of hunting us."
					},
					{
						"linkPath": "_Youdontpully",
						"option": "No, you're going to listen to me! (Pummel Rugga)"
					},
					{
						"linkPath": "_Idratherkill",
						"option": "You know what? I don't have time for this. (Leave)"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theycouldbec": {
				"content": [
					"[rugga] They could be convinced.",
					{
						"divert": "ruggapowerplay"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idratherkill": {
				"content": [
					"[$hero] I'd rather kill every motherless wretch you throw at me than spend another minute dancing to your tune, Rugga.",
					{
						"divert": "_Youreturntot"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youreturntot": {
				"content": [
					"[$hero] /=You return to the siege raging along the walls, leaving Rugga speechless in his cell.=/",
					{
						"divert": "_Asyoudeparta"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Asyoudeparta": {
				"content": [
					"[$hero] /=As you depart, an excited man runs to meet you. \"They're ready with the barrels!\" he shouts.=/",
					{
						"pageNum": 0
					}
				]
			},
			"ruggapowerplay": {
				"content": [
					"[rugga] All it would take is joining your banner to mine.",
					{
						"divert": "_Andmakeyouth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andmakeyouth": {
				"content": [
					"[oddleif] And make you the ruler of the end of the world?",
					{
						"divert": "_DontworryIll"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DontworryIll": {
				"content": [
					"[rugga] Don't worry, I'll leave you in charge of the war. It's peace-time I care about.",
					{
						"divert": "_Illevenremai"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Illevenremai": {
				"content": [
					"[rugga] I'll even remain locked up here for now, if it makes this easier for you to swallow.",
					{
						"divert": "_WhywouldIbel"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhywouldIbel": {
				"content": [
					"[$hero] Why would I believe a word you say?",
					{
						"divert": "_YoushouldntL"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoushouldntL": {
				"content": [
					"[rugga] You shouldn't. Let the banner speak for us. You will be under my protection, and nobody will dare touch you.",
					{
						"divert": "_Imamanofpeac"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imamanofpeac": {
				"content": [
					"[rugga] I'm a man of peace, at heart.",
					{
						"divert": "_Imamanofpeac0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imamanofpeac0": {
				"content": [
					"[rugga $hero] I'm a man of peace, at heart.",
					{
						"linkPath": "_Onceyourbann",
						"option": "I'll do it if your men join the fight, instead of giving us trouble."
					},
					{
						"linkPath": "_Youdontpully",
						"option": "I've heard as much as I can stand. (pummel Rugga)"
					},
					{
						"linkPath": "_Thisisnotaga",
						"option": "Just another game. Forget it."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Onceyourbann": {
				"content": [
					"[rugga] Once your banner is sewn to mine, there will be nothing to trouble you about. See how this works?",
					{
						"divert": "_OhandIdliket"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_OhandIdliket": {
				"content": [
					"[rugga] Oh, and I'd like to do this in front a crowd, so there won't be any disagreements about what has happened.",
					{
						"divert": "_Oddleiffumes"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Oddleiffumes": {
				"content": [
					"[$hero] /=Oddleif fumes. She turns on you, and you're not sure you've ever seen her this upset.=/",
					{
						"divert": "_Thisbannerwa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisbannerwa": {
				"content": [
					"[oddleif] This banner was my husband's. I could have taken it when he died, but I entrusted it to you! Not this scheming piece of...",
					{
						"divert": "_Arattleatthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Arattleatthe": {
				"content": [
					"[$hero] /=A rattle at the gates interrupts, it's one of your clansmen. \"They're ready!\" he shouts excitedly! \"The oil barrels are gathered!\"=/",
					{
						"divert": "__18_rugga_pr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_rugga_pr": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_rugga_prison_chat=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thisisnotaga": {
				"content": [
					"[rugga] This is not a game you win by choosing not to play.",
					{
						"divert": "ruggabeating"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ruggabeating": {
				"content": [
					"[rugga $hero] Do you know why I do this?",
					{
						"divert": "_Dowhatyoupie"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dowhatyoupie": {
				"content": [
					"[oddleif] Do what, you piece of trash? Deceive? Leech on mankind?",
					{
						"divert": "_WhyIspeakonb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhyIspeakonb": {
				"content": [
					"[rugga] Why I speak on behalf of the people you despise so much? Why I have always done so?",
					{
						"divert": "_Becausetheyw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Becausetheyw": {
				"content": [
					"[rugga] Because they will always be here, no matter how hard you pretend they don't exist.",
					{
						"divert": "_Thereisnothi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thereisnothi": {
				"content": [
					"[rugga] There is nothing more infuriating, or terrifying, than not being heard!",
					{
						"divert": "_Sotheygiveme"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sotheygiveme": {
				"content": [
					"[rugga] So they give me their power. I am the will of the people.",
					{
						"divert": "_Aslongasthat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aslongasthat": {
				"content": [
					"[rugga] As long as that's true, you can't brush me aside. I will always be here!",
					{
						"divert": "_Aslongasthat0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aslongasthat0": {
				"content": [
					"[rugga $hero] As long as that's true, you can't brush me aside. I will always be here!",
					{
						"linkPath": "_Wellseewhich",
						"option": "You've poisoned enough minds for one lifetime. Stay here and rot."
					},
					{
						"linkPath": "_YoubludgeonR",
						"option": "You won't come back from this. (kill Rugga)"
					},
					{
						"linkPath": "_Hestammerssu",
						"option": "/=Leave without a response.=/"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellseewhich": {
				"content": [
					"[rugga] We'll see which of us ends up rotting first.",
					{
						"divert": "_Youdontliket"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdontliket": {
				"content": [
					"[$hero] /=You don't like the implication. As you call for extra guards on the cell, an excited man runs to meet you. \"They're ready with the barrels!\" he shouts.=/",
					{
						"divert": "__18_rugga_pr0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_rugga_pr0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_rugga_prison_chat=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoubludgeonR": {
				"content": [
					"[$hero] /=You bludgeon Rugga mercilessly, laying into him again and again with your fists. He keels over and chokes on blood as you continue.=/",
					{
						"divert": "ruggadies"
					},
					{
						"flagName": "@hide=rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hestammerssu": {
				"content": [
					"[$hero] /=He stammers, surprised, as the cell door slams behind you.=/",
					{
						"divert": "__hiderugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hiderugga": {
				"content": [
					{
						"divert": "_Asyoudeparta0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Asyoudeparta0": {
				"content": [
					"[$hero] /=As you depart, an excited man runs to meet you. \"They're ready with the barrels!\" he shouts.=/",
					{
						"divert": "__18_rugga_pr1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_rugga_pr1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_rugga_prison_chat=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ruggadies": {
				"content": [
					"[oddleif] Wait... what if he's right, about Arberrang turning on itself?",
					{
						"divert": "_StstopHesunc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StstopHesunc": {
				"content": [
					"[oddleif] St-stop. He's unconscious.",
					{
						"divert": "_StstopHesunc0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_StstopHesunc0": {
				"content": [
					"[oddleif] St-stop. He's unconscious.",
					{
						"linkPath": "_YoudropRugga",
						"option": "No more chances. (Finish Rugga)"
					},
					{
						"linkPath": "_Iwouldntputi",
						"option": "He's lucky you're here, Oddleif. (Leave)"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoudropRugga": {
				"content": [
					"[$hero oddleif] /=You drop Rugga, and feel his neck snap beneath your boot heel. For better or worse, it's done.=/",
					{
						"divert": "_Asyoudeparta1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Asyoudeparta1": {
				"content": [
					"[$hero] /=As you depart, an excited man runs to meet you. \"They're ready with the barrels!\" he shouts.=/",
					{
						"divert": "__18_rugga_pr2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_rugga_pr2": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_rugga_prison_chat=4"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iwouldntputi": {
				"content": [
					"[oddleif] I wouldn't put it that way.",
					{
						"divert": "_Youfeelthehe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youfeelthehe": {
				"content": [
					"[$hero oddleif] /=You feel the heat coming off your face as you drop Rugga's limp body to the floor.=/",
					{
						"divert": "_Leavingthebo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Leavingthebo": {
				"content": [
					"[$hero] /=Leaving the body behind, an excited man meets you at the door. \"They're ready with the barrels!\" he shouts.=/",
					{
						"divert": "__18_rugga_pr3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__18_rugga_pr3": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "18_rugga_prison_chat=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdontpully": {
				"content": [
					"[$hero] /=You don't pull your punches and Rugga's head whips back as if on a hinge. He is no longer smiling.",
					{
						"divert": "_MythanksThes"
					},
          {
						"flagName": "@hide=rugga"
					},
					{
						"flagName": "@show=new_rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_MythanksThes": {
				"content": [
					"[new_rugga] My thanks. These bruises are the clearest evidence that you are who I say you are.",
					{
						"divert": "ruggabeatingb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"ruggabeatingb": {
				"content": [
					"[new_rugga $hero] Do you know why I do this?",
					{
						"divert": "_Dowhatyoupieb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Dowhatyoupieb": {
				"content": [
					"[oddleif] Do what, you piece of trash? Deceive? Leech on mankind?",
					{
						"divert": "_WhyIspeakonbb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhyIspeakonbb": {
				"content": [
					"[new_rugga] Why I speak on behalf of the people you despise so much? Why I have always done so?",
					{
						"divert": "_Becausetheywb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Becausetheywb": {
				"content": [
					"[new_rugga] Because they will always be here, no matter how hard you pretend they don't exist.",
					{
						"divert": "_Thereisnothib"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thereisnothib": {
				"content": [
					"[new_rugga] There is nothing more infuriating, or terrifying, than not being heard!",
					{
						"divert": "_Sotheygivemeb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sotheygivemeb": {
				"content": [
					"[new_rugga] So they give me their power. I am the will of the people.",
					{
						"divert": "_Aslongasthatb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aslongasthatb": {
				"content": [
					"[new_rugga] As long as that's true, you can't brush me aside. I will always be here!",
					{
						"divert": "_Aslongasthat0b"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aslongasthat0b": {
				"content": [
					"[new_rugga $hero] As long as that's true, you can't brush me aside. I will always be here!",
					{
						"linkPath": "_Wellseewhichb",
						"option": "You've poisoned enough minds for one lifetime. Stay here and rot."
					},
					{
						"linkPath": "_YoubludgeonRb",
						"option": "You won't come back from this. (kill Rugga)"
					},
					{
						"linkPath": "_Hestammerssub",
						"option": "/=Leave without a response.=/"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellseewhichb": {
				"content": [
					"[new_rugga] We'll see which of us ends up rotting first.",
					{
						"divert": "_Youdontliketb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdontliketb": {
				"content": [
					"[$hero] /=You don't like the implication. As you call for extra guards on the cell, an excited man runs to meet you. \"They're ready with the barrels!\" he shouts.=/",
					{
						"divert": "__18_rugga_pr0"
					},
          {
						"flagName": "@hide=new_rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YoubludgeonRb": {
				"content": [
					"[$hero] /=You bludgeon Rugga mercilessly, laying into him again and again with your fists. He keels over and chokes on blood as you continue.=/",
					{
						"divert": "ruggadies"
					},
					{
						"flagName": "@hide=new_rugga"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hestammerssub": {
				"content": [
					"[$hero] /=He stammers, surprised, as the cell door slams behind you.=/",
					{
						"divert": "__hideruggab"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hideruggab": {
				"content": [
					{
						"divert": "_Asyoudeparta0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=new_rugga"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
