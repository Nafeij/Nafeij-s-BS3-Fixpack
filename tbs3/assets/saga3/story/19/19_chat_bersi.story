{
	"data": {
		"initial": "_Bersitossesi",
		"stitches": {
			"_Bersitossesi": {
				"content": [
					"[iver] /=Bersi tosses in his sleep, until he finally huffs and gives up. He sees you're also awake, and comes to sit nearby.",
					{
						"divert": "_Trouble"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Trouble": {
				"content": [
					"[iver] Trouble?",
					{
						"divert": "_Idontknowhow"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idontknowhow": {
				"content": [
					"[bersi] I don't know how these damned Ravens do it. I can't just pass out at a moment's notice.",
					{
						"divert": "_Areyounotone"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Areyounotone": {
				"content": [
					"[iver] Are you not one of the Ravens?",
					{
						"divert": "_Icanseehowyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icanseehowyo": {
				"content": [
					"[bersi] I can see how you might get that impression.",
					{
						"divert": "_IjoinedBolve"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IjoinedBolve": {
				"content": [
					"[bersi] I joined Bolverk at Boersgard because the Valka asked me to, and when that went wrong I got roped into this like everyone else.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"bersichat1": {
				"content": [
					"[bersi] /=Bersi wears a frown and leans on his axe handle.=/",
					{
						"divert": "_Bersiwearsaf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Bersiwearsaf": {
				"content": [
					"[bersi iver] /=Bersi wears a frown and leans on his axe handle.=/",
					{
						"linkPath": "_Letsnotturnt",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Juno and Eyvind asked for you personally?"
					},
					{
						"linkPath": "_Nevercouldge",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "So you work for yourself?"
					},
					{
						"linkPath": "_Ifyoumeanthe",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "What do you think about this job?"
					},
					{
						"linkPath": "_Youkeepthere",
						"option": "/=Sit quietly until the others wake up.=/"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Letsnotturnt": {
				"content": [
					"[bersi] Let's not turn this into something bigger than it is.",
					{
						"divert": "alfrunsaid"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nevercouldge": {
				"content": [
					"[bersi] Never could get into that \"Our bones the hills!\" stuff like the rest of you.",
					{
						"divert": "_WhyshouldIca"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhyshouldIca": {
				"content": [
					"[bersi] Why should I care about the dredge, or dying in battle?",
					{
						"divert": "_Idratherhave"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Idratherhave": {
				"content": [
					"[bersi] I'd rather have the means to do what I want, live comfortably, eat well...",
					{
						"divert": "_Turnsoutther"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Turnsoutther": {
				"content": [
					"[bersi] Turns out there's a lot of men out there thrilled to hire a varl for some blood work, so I thought I'd do that for a little while.",
					{
						"divert": "_Nowitsalifet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowitsalifet": {
				"content": [
					"[bersi] Now it's a lifetime later, and I never got rich from it. Spent my whole life chasing work while others profited.",
					{
						"divert": "_OnetimeItrav"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_OnetimeItrav": {
				"content": [
					"[bersi] One time I traveled with a prince and his tax collector. Thought that was going to be my big payday. People just handed their money over, piled it right into a huge cart because we told them they had to.",
					{
						"divert": "_Practicallyr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Practicallyr": {
				"content": [
					"[bersi] Practically robbery.",
					{
						"divert": "_Eventuallyth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eventuallyth": {
				"content": [
					"[bersi] Eventually the cart fell over a cliff and exploded into a shower of gold coins, never to be seen again...",
					{
						"divert": "_Ivenevershed"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ivenevershed": {
				"content": [
					"[bersi] I've never shed a tear over killing a man, but that? I cried like a lost baby bird.",
					{
						"divert": "_Ithappenedpr"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ithappenedpr": {
				"content": [
					"[bersi] It happened pretty damn close to this very spot, now that I think about it... ah, can't leave this light though.",
					{
						"divert": "_Itsprobablya"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsprobablya": {
				"content": [
					"[bersi] It's probably all twisted up and dark as dog turds now anyway.",
					{
						"divert": "_Maybetheresa"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Maybetheresa": {
				"content": [
					"[bersi] Maybe there's a moral there, but I'm not digging for it.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyoumeanthe": {
				"content": [
					"[bersi] If you mean the Valka, you'd be a fool to trust them. I've done some questionable stuff on their behalf, let me tell you.",
					{
						"divert": "_Andifyoumean"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andifyoumean": {
				"content": [
					"[bersi] And if you mean saving the world?",
					{
						"divert": "_Icouldntcare"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Icouldntcare": {
				"content": [
					"[bersi] I couldn't care less. What has the world ever done for me?",
					{
						"divert": "_ThesedaysImj"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ThesedaysImj": {
				"content": [
					"[bersi] These days I'm just putting one foot in front of the other. There's still the tiniest sparkle of hope that I might profit from this somehow.",
					{
						"divert": "_Prettybleakw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Prettybleakw": {
				"content": [
					"[iver] Pretty bleak way to live.",
					{
						"divert": "_Nothingleftt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nothingleftt": {
				"content": [
					"[bersi] Nothing left to lose. Nothing but sleep, anyway.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youkeepthere": {
				"content": [
					"[iver] /=You keep the rest of your thoughts to yourself. It'd be an awkward silence if you weren't both varl.=/",
					{
						"divert": "_Lookslikeits"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Lookslikeits": {
				"content": [
					"[bersi] Looks like it's time to get going.",
					{
						"divert": "_YouknowIver"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknowIver": {
				"content": [
					"[bersi] You know, Iver...",
					{
						"divert": "_Youcantellhe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcantellhe": {
				"content": [
					"[bersi] /=You can tell he's debating whether to get something off his chest.=/",
					{
						"divert": "_WhenIworkedf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_WhenIworkedf": {
				"content": [
					"[bersi] When I worked for the Valka, one of the jobs they paid me to do was to find you.",
					{
						"divert": "_Youdgoneinto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youdgoneinto": {
				"content": [
					"[bersi] You'd gone into hiding, and they wanted to know where.",
					{
						"divert": "_DoIdareaskwh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_DoIdareaskwh": {
				"content": [
					"[iver] Do I dare ask why?",
					{
						"divert": "_TruthisIdont"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TruthisIdont": {
				"content": [
					"[bersi] Truth is, I don't know why. I don't ask questions. But I never found you.",
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
					"[bersi] I have a feeling if I had, things would have ended up differently between us.",
					{
						"divert": "_SoImgladInev"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_SoImgladInev": {
				"content": [
					"[bersi] So I'm glad I never sniffed around any small towns, like Skogr for example.",
					{
						"divert": "_Bersileavesw"
					},
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Bersileavesw": {
				"content": [
					"[bersi] /=Bersi leaves with a pat on the shoulder, and you realize you'd never mentioned Skogr to him.=/",
					{
						"pageNum": 0
					}
				]
			},
			"alfrunsaid": {
				"content": [
					"[bersi] I do work for money, the menders pay well. I've got some history with them, that's it.",
					{
						"linkPath": "_GoodThatsall",
						"option": "That's enough for me."
					},
					{
						"linkPath": "_Shesaidyoutr",
						"ifConditions": [
							{
								"ifCondition": "19_talked_alfrun"
							}
						],
						"option": "Alfrun had something interesting to say about that."
					},
					{
						"linkPath": "_CantyoutellI",
						"option": "What kind of history?"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_GoodThatsall": {
				"content": [
					"[bersi] Good. That's all I care to say about that.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Shesaidyoutr": {
				"content": [
					"[iver] She said you tried to kill her, when she was training to be a mender.",
					{
						"divert": "_GodsdidIIvet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_GodsdidIIvet": {
				"content": [
					"[bersi] Gods, did I? I've tried to kill so many menders.",
					{
						"divert": "_Thatcameoutw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatcameoutw": {
				"content": [
					"[bersi] That came out wrong.",
					{
						"divert": "_TheValkahave"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_TheValkahave": {
				"content": [
					"[bersi] The Valka have a pretty rigorous final test for new candidates. It involves some stabbing and some shouting. You know, to make sure the menders can do what they need to do under stress and pain.",
					{
						"divert": "_Sotheygetsom"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sotheygetsom": {
				"content": [
					"[bersi] So they get some scary looking varl to play the kidnapping brigand and rough 'em up. They don't all make it back.",
					{
						"divert": "_Stillfeelbad"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Stillfeelbad": {
				"content": [
					"[bersi] Still feel bad for one poor kid, can't remember his name. Some backwoods farm boy, not too bright. I thought for sure he had no chance. He almost made it. Almost.",
					{
						"divert": "_ButanywayAlf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ButanywayAlf": {
				"content": [
					"[bersi] But anyway, Alfrun was one of those kids? I've been doing this longer than I thought.",
					{
						"divert": "_Hopeshedoesn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Hopeshedoesn": {
				"content": [
					"[bersi] Hope she doesn't hold a grudge.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CantyoutellI": {
				"content": [
					"[bersi] Can't you tell I didn't want to talk about it?",
					{
						"divert": "_Ididoddjobss"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ididoddjobss": {
				"content": [
					"[bersi] I did odd jobs, some worse than others. They asked for a lot of weird stuff.",
					{
						"divert": "_ButImnotoneo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ButImnotoneo": {
				"content": [
					"[bersi] But I'm not one of them, if that's what you're wondering.",
					{
						"divert": "_Imjusttrying"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imjusttrying": {
				"content": [
					"[bersi] I'm just trying to finish this and drink it off like every other job.",
					{
						"divert": "bersichat1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
