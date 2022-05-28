{
	"data": {
		"initial": "__ludin_state",
		"stitches": {
			"__ludin_state": {
				"content": [
					{
						"divert": "_SometimesIha"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "@hide=ludin"
					},
					{
						"pageNum": 0
					},
					{
						"ifCondition": "ludin_state==0"
					}
				]
			},
			"_SometimesIha": {
				"content": [
					"[zefr] Sometimes I have to wonder about humanity. We're barely holding the walls and all the clans can manage is to rob and kill each other!",
					{
						"divert": "_Captainmymen"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Captainmymen": {
				"content": [
					"[zefr] Captain, my menders need more protection on the walls.",
					{
						"divert": "_Youhaveasman"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youhaveasman": {
				"content": [
					"[petrus] You have as many men as we can spare, Valka. The rest are in the streets.",
					{
						"divert": "_Arberrangisn"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Arberrangisn": {
				"content": [
					"[petrus] Arberrang isn't worth saving if only killers and thieves remain.",
					{
						"linkPath": "goludin",
						"ifConditions": [
							{
								"ifCondition": "ludin_state=1"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "choice",
						"ifConditions": [
							{
								"ifCondition": "ludin_state=0"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"goludin": {
				"content": [
					"[ludin petrus] Even if my father were here, he'd have little control over the city now.",
					{
						"divert": "_Ihaveevenles"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ihaveevenles": {
				"content": [
					"[ludin] I have even less, but I am certain I can find men loyal to my father's banner. Put me in command on the walls.",
					{
						"divert": "_Areyoucertai"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Areyoucertai": {
				"content": [
					"[petrus] Are you certain? I can guarantee no safety here.",
					{
						"divert": "_Ifthereisati"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifthereisati": {
				"content": [
					"[ludin] If there is a time for me to lead, it is now.",
					{
						"divert": "choice"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice": {
				"content": [
					"[$hero] /=They look to you. You realize that whoever is put in charge of the walls may be in serious danger.=/",
					{
						"divert": "_Theylooktoyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theylooktoyo": {
				"content": [
					"[$hero] /=They look to you. You realize that whoever is put in charge of the walls may be in serious danger.=/",
					{
						"linkPath": "_Myfatherwasa",
						"ifConditions": [
							{
								"ifCondition": "ludin_state=1"
							}
						],
						"option": "The walls are yours, Ludin. Your father would be proud."
					},
					{
						"linkPath": "_Welldowhatwe",
						"option": "Petrus, gather your guards. You're in charge here."
					},
					{
						"linkPath": "_Yousendamess",
						"option": "I'm putting the horseborn to work. Get Scathach."
					},
					{
						"linkPath": "_Thatsamistak",
						"option": "We can't spare anyone, Zefr. Hold out as well you can."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Myfatherwasa": {
				"content": [
					"[ludin] My father was a lot of things, but proud of his son is not one of them.",
					{
						"divert": "_Illsendwordt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Illsendwordt": {
				"content": [
					"[ludin] I'll send word to loyal men and keep the menders standing.",
					{
						"divert": "__21_hero_on_"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_hero_on_": {
				"content": [
					{
						"divert": "__doomsday_me"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_hero_on_wall=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_me": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_menderwall+=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Welldowhatwe": {
				"content": [
					"[petrus] We'll do what we can. But if I could make a suggestion, take care of the people below. The innocent ones.",
					{
						"divert": "_Andwishusluc"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Andwishusluc": {
				"content": [
					"[petrus] And wish us luck.",
					{
						"divert": "__21_hero_on_0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_hero_on_0": {
				"content": [
					{
						"divert": "__doomsday_me0"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_hero_on_wall=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_me0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_menderwall+=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yousendamess": {
				"content": [
					"[$hero] /=You send a messenger to gather Scathach and as many horseborn as he can command.=/",
					{
						"divert": "_Theylookconf"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theylookconf": {
				"content": [
					"[$hero] /=They look confused, but understand the weight of the situation. You leave them amidst dubious menders.=/",
					{
						"divert": "__21_hero_on_1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__21_hero_on_1": {
				"content": [
					{
						"divert": "__doomsday_me1"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "21_hero_on_wall=3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_me1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_menderwall+=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thatsamistak": {
				"content": [
					"[zefr] That's a mistake. I can only do so much.",
					{
						"divert": "_Ascanweall"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ascanweall": {
				"content": [
					"[$hero] As can we all.",
					{
						"divert": "__doomsday_me2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_me2": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_menderwall+=1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
