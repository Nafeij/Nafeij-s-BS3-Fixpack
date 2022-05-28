{
	"data": {
		"initial": "_Adistantrumb",
		"stitches": {
			"_Adistantrumb": {
				"content": [
					"[convoy_darkness] A distant rumble approaches, and all the things it could be race through your mind. Someone shouts \"Earthquake!\" as the ground bucks beneath your feet.",
					{
						"divert": "_Violentshaki"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Violentshaki": {
				"content": [
					"[convoy_darkness] Violent shaking peels rock sheets off the nearby cliffs. They crash around you in great billowing clouds of dust. \"Is everyone alright?\" you shout in the aftermath.",
					{
						"divert": "_KnewIrecogni"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_KnewIrecogni": {
				"content": [
					"[valgard] \"Knew I recognized you from somewhere!\" Valgard shouts. He's swinging at Oli with clenched fists. \"This bastard tried to push me into the falling rocks!\". As the confusion and the dust clear, frustrated Ravens are letting off steam with chants of \"Fight!\"",
					{
						"linkPath": "_Olimurdereda",
						"option": "What is this about?"
					},
					{
						"linkPath": "_Valgardmanag",
						"option": "I don't care what's going on here, but it stops now!"
					},
					{
						"linkPath": "_Thefistfight",
						"ifConditions": [
							{
								"ifCondition": "eirik_state>0&&eirik_in_strand"
							}
						],
						"option": "Let Valgard and Oli resolve this themselves."
					},
					{
						"linkPath": "_Thefistfight0",
						"ifConditions": [
							{
								"ifCondition": "eirik_state==0||!eirik_in_strand"
							}
						],
						"option": "Let Valgard and Oli resolve this themselves."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Olimurdereda": {
				"content": [
					"[valgard] \"Oli murdered a warlord in Strand, back when I was guard captain. I never got a chance to thank him for all the good friends who were killed as a result!\"",
					{
						"divert": "_LiarretortsO"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_LiarretortsO": {
				"content": [
					"[oli] \"Liar!\" retorts Oli. \"I've never even been to Strand!\"",
					{
						"divert": "_Yourebothlyi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yourebothlyi": {
				"content": [
					"[juno] \"You're both lying,\" Juno interjects, in a dark mood. \"Oli traveled to Strand where he did ignite the war, but no one was pushed toward falling rocks. And if you both wish to keep your history in the past...\" Both men pale from Juno's icy words, realizing they can keep no secrets.",
					{
						"divert": "fallingcliff1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Valgardmanag": {
				"content": [
					"[oli] Valgard manages one last half-hearted punch to Oli's face, but they push each other away. \"True enough,\" says Oli. \"There'll be plenty of time to settle this later.\" Valgard spits. \"Count on it.\"",
					{
						"divert": "fallingcliff1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thefistfight": {
				"content": [
					"[convoy_ravens] The fist fight turns vicious.",
					{
						"divert": "eirikalive"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thefistfight0": {
				"content": [
					"[convoy_ravens] The fist fight turns vicious.",
					{
						"divert": "eirikdead"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eirikalive": {
				"content": [
					"[convoy_darkness] Eirik leaps to Valgard's side, and seeing a pitched battle, Ravens join to defend Oli, until the whole thing becomes a wild brawl. Before you wade in you notice Juno is in a dark mood.",
					{
						"divert": "continue"
					},
					{
						"pageNum": 0
					}
				]
			},
			"eirikdead": {
				"content": [
					"[convoy_darkness] The two continue to trade staggering blows, bloodying each other's face until you start to worry someone may die here.",
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
					"[juno] \"Enough!\" Juno roars, and the fighters fall to the ground holding their heads. \"I have kept my word to leave your minds untouched, but you will not endanger us over this trifling matter!\" The victims crawl to their feet, eyes low.",
					{
						"divert": "fallingcliff1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"fallingcliff1": {
				"content": [
					"[eyvind] \"That earthquake was no coincidence,\" Eyvind says, changing the subject. \"Same as when the serpent carved chasms through the earth above. Be on your guard.\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
