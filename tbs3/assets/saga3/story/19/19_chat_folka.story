{
	"data": {
		"initial": "_YounoticeFol",
		"stitches": {
			"_YounoticeFol": {
				"content": [
					"[iver] /=You notice Folka standing alone, arms crossed, sporting a deadly scowl.=/",
					{
						"divert": "_Everythingal"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Everythingal": {
				"content": [
					"[iver] Everything alright?",
					{
						"divert": "_Yeahweredoin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yeahweredoin": {
				"content": [
					"[folka] Yeah, we're doing great.",
					{
						"divert": "_Ourleaderish"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ourleaderish": {
				"content": [
					"[folka] Our leader is hunting us down, we've been kidnapped by witches, and now we're arguing about how many dredge we can save along the way.",
					{
						"divert": "_Itsthekindof"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsthekindof": {
				"content": [
					"[folka] It's the kind of thing a little girl grows up dreaming about.",
					{
						"divert": "_Igetyourpoin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Igetyourpoin": {
				"content": [
					"[iver folka] I get your point.",
					{
						"divert": "folkachat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkachat1": {
				"content": [
					"[folka] /=She glares at you through narrow eyes.=/",
					{
						"divert": "_Sheglaresaty"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sheglaresaty": {
				"content": [
					"[folka iver] /=She glares at you through narrow eyes.=/",
					{
						"linkPath": "_Isthisthepar",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "How did a woman get accepted by the Ravens, anyway?"
					},
					{
						"linkPath": "_Areyoutrying",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "You still care about Bolverk."
					},
					{
						"linkPath": "_Ineveraskedt",
						"ifConditions": [
							{
								"ifCondition": "ONCE"
							}
						],
						"option": "Are you always this pleasant to be around?"
					},
					{
						"linkPath": "_Igetwhyyouca",
						"option": "We should keep moving."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Isthisthepar": {
				"content": [
					"[folka] Is this the part where you ask me about my past, we talk about family and hug?",
					{
						"divert": "_Eatsomeblack"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eatsomeblack": {
				"content": [
					"[folka] Eat some black snow, varl.",
					{
						"divert": "_Theseguysall"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theseguysall": {
				"content": [
					"[folka] These guys all chose to be here, just like me. That's the truth.",
					{
						"divert": "_Thatsallthef"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsallthef": {
				"content": [
					"[folka] That's all the family you need to know about.",
					{
						"divert": "_Consideringy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Consideringy": {
				"content": [
					"[iver] /=Considering you didn't even mention family, you doubt that's the whole story, but you let it drop.=/",
					{
						"divert": "folkachat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Areyoutrying": {
				"content": [
					"[folka] Are you trying to piss me off?",
					{
						"divert": "_Imaginelittl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imaginelittl": {
				"content": [
					"[folka] Imagine little Alette hunting you through the darkness, trying to rip your throat out.",
					{
						"divert": "_Nowimagineso"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowimagineso": {
				"content": [
					"[folka] Now imagine some arse accuses you of having feelings about it.",
					{
						"divert": "_YounoticeFol0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YounoticeFol0": {
				"content": [
					"[iver] /=You notice Folka's hand instinctively go the axe Bolverk had thrown at Eyvind, a few days back.=/",
					{
						"divert": "_Whatdoyoupla"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdoyoupla": {
				"content": [
					"[iver] What do you plan to do with that axe?",
					{
						"divert": "_ItsnameisCla"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItsnameisCla": {
				"content": [
					"[folka] Its name is Claw.",
					{
						"divert": "_AndwhatIplan"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndwhatIplan": {
				"content": [
					"[folka] And what I plan to do with it is my business.",
					{
						"divert": "_Canweagreeto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Canweagreeto": {
				"content": [
					"[iver] Can we agree to keep it tucked away?",
					{
						"divert": "_Ifthesightof"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifthesightof": {
				"content": [
					"[folka] If the sight of it scares you, then yes, I'll keep it safe and snug right here.",
					{
						"divert": "_Imnotsuicida"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imnotsuicida": {
				"content": [
					"[folka] I'm not suicidal, Iver. I'm not going to plant it in a Valka's skull.",
					{
						"divert": "_Notrightnow"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Notrightnow": {
				"content": [
					"[folka] Not right now.",
					{
						"divert": "folkachat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ineveraskedt": {
				"content": [
					"[folka] I never asked to be around you. I always heard the varl like their space.",
					{
						"divert": "_Yourenotwron"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yourenotwron": {
				"content": [
					"[iver] You're not wrong.",
					{
						"divert": "_Mustbeniceto"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Mustbeniceto": {
				"content": [
					"[folka] Must be nice, to be accepted for something like that.",
					{
						"divert": "_Mykindtreaty"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Mykindtreaty": {
				"content": [
					"[folka] My kind treat you like you're diseased if you don't act right. But the Ravens; they don't judge.",
					{
						"divert": "_ItsnotlikeIw"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItsnotlikeIw": {
				"content": [
					"[folka] It's not like I want to be completely alone. I just don't need tedious, pointless conversations with every idiot who has an idiot opinion...",
					{
						"divert": "_Goon"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Goon": {
				"content": [
					"[iver] Go on.",
					{
						"divert": "_Ohdamnitally"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ohdamnitally": {
				"content": [
					"[folka] Oh, damn it all, you got me talking about myse-- are we done here?",
					{
						"divert": "folkachat1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Igetwhyyouca": {
				"content": [
					"[folka] I get why you came over now. Juno's ready to go.",
					{
						"divert": "_NoIcameonmyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_NoIcameonmyo": {
				"content": [
					"[iver] No, I came on my own.",
					{
						"divert": "_YouknowIused"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_YouknowIused": {
				"content": [
					"[folka] You know, I used to be great at telling when someone is lying. But it sure is harder these days, isn't it? You know what I mean?",
					{
						"divert": "_Letsgetsomet"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Letsgetsomet": {
				"content": [
					"[folka] Let's get something straight- I'll take talking to you over Juno, but you're no Raven.",
					{
						"divert": "_Andwhateverh"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andwhateverh": {
				"content": [
					"[folka] And whatever happened to Bolverk, I'm not convinced that he doesn't have a good reason for what he's doing.",
					{
						"divert": "folkaend"
					},
					{
						"pageNum": 0
					}
				]
			},
			"folkaend": {
				"content": [
					"[folka] So don't give me a reason to let him, and don't try to get close and friendly.",
					{
						"divert": "_Sodontgiveme"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Sodontgiveme": {
				"content": [
					"[folka iver] So don't give me a reason to let him, and don't try to get close and friendly.",
					{
						"linkPath": "_Goodthenwemi",
						"option": "Alright, Folka. You made yourself clear."
					},
					{
						"linkPath": "_Takeiteasy",
						"option": "Take it easy, I don't like this any more than you do."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Goodthenwemi": {
				"content": [
					"[folka] Good, then we might get along.",
					{
						"divert": "_Nowexcusemew"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowexcusemew": {
				"content": [
					"[folka] Now excuse me while I gather the unkindness.",
					{
						"divert": "_Unkindness"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Unkindness": {
				"content": [
					"[iver] Unkindness?",
					{
						"divert": "_Thatswhatthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatswhatthe": {
				"content": [
					"[folka] That's what they call a flock of ravens, Iver.",
					{
						"divert": "_Fittingdonty"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fittingdonty": {
				"content": [
					"[folka] Fitting, don't you think?",
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Takeiteasy": {
				"content": [
					"[folka] Take it easy?",
					{
						"divert": "_Thatsnotpart"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsnotpart": {
				"content": [
					"[folka] That's not part of the job. Bad things happen when I let my guard down.",
					{
						"divert": "_Nowexcusemew0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Nowexcusemew0": {
				"content": [
					"[folka] Now excuse me while I gather the unkindness.",
					{
						"divert": "_Unkindness0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Unkindness0": {
				"content": [
					"[iver] Unkindness?",
					{
						"divert": "_Thatswhatthe0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatswhatthe0": {
				"content": [
					"[folka] That's what they call a flock of ravens.",
					{
						"divert": "_Fitting"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Fitting": {
				"content": [
					"[iver] Fitting.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
