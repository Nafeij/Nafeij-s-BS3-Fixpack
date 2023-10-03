{
	"data": {
		"initial": "_Thepathcross",
		"stitches": {
			"_Thepathcross": {
				"content": [
					"[convoy] The path crossing the field from the outer gate to the inner black rock is longer than it looks, but you walk through dense, smoky streets, escalating toward the rise in the black rock plateau.",
					{
						"divert": "_Ruggashuffle"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ruggashuffle": {
				"content": [
					"[rugga] Rugga shuffles beside the guards who carry his chains. He has been unusually silent, but now he speaks softly in your ear. \"Careful, hunter,\" he says, even before you hear the shouts. \"Looks like trouble ahead.\"",
					{
						"divert": "_ItistroubleA"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ItistroubleA": {
				"content": [
					"[petrus] It is trouble. A few yards ahead, you spy one of Petrus' guards face down, an arrow in his head. Petrus curses angrily, and runs ahead just as armed men appear from the crowds, surrounding him and attacking his guards. \"It would be a tragedy if something happened to him,\" Rugga taunts.",
					{
						"linkPath": "_Killersemerg",
						"option": "Join Petrus to repel the attackers!"
					},
					{
						"linkPath": "_Itsluckythat",
						"option": "Stay ready and close to Rugga."
					},
					{
						"linkPath": "_Youkeepyourd",
						"option": "Stand aside and let things play out."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Killersemerg": {
				"content": [
					"[$hero] Killers emerge from a well-staged trap to plunge arrows and axeheads into more guards. \"An ambush!\" shouts Petrus.",
					{
						"flagName": "16_rugga_escape_fight=1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itsluckythat": {
				"content": [
					"[$hero] It's lucky that you do, as the guard holding Rugga's chains topples from an unseen axe. Before Rugga can slink away you knock him off his feet, just as assassins approach from the flank!",
					{
						"flagName": "16_rugga_escape_fight=2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youkeepyourd": {
				"content": [
					"[$hero] You keep your distance, washing your hands of whatever is happening here. Ahead, Petrus finds himself surrounded by a sudden excess of steel, while behind, the few guards left to protect Rugga fall to axes and arrows from shadowy side-streets.",
					{
						"divert": "_Petrusrallie"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Petrusrallie": {
				"content": [
					"[petrus] Petrus rallies his men with admirable skill, and the advantage suddenly shifts. Wiping his blade clean of blood, he then comes stomping back to Rugga, then leans into him hard with fists and feet, until the man is curled into a ball on the ground.",
					{
						"divert": "_Thethrashing"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Thethrashing": {
				"content": [
					"[petrus] The thrashing ends when Petrus is satisfied. \"Back to your business!\" he barks at gawking bystanders.",
					{
						"linkPath": "againstrugga",
						"ifConditions": [
							{
								"ifCondition": "14_not_with_rugga"
							}
						],
						"option": "{branch}"
					},
					{
						"linkPath": "withrugga",
						"ifConditions": [
							{
								"ifCondition": "!14_not_with_rugga"
							}
						],
						"option": "{branch}"
					},
					{
						"pageNum": 0
					}
				]
			},
			"withrugga": {
				"content": [
					"[petrus] Once the caravan is ready to move again, Petrus finds you in the crowd and stabs your chest with his finger. \"Next time, you fight for Arberrang,\" he says. \"Or I'll make certain Arberrang does not fight for you.\"",
					{
						"pageNum": 0
					}
				]
			},
			"againstrugga": {
				"content": [
					"[petrus] Once the caravan is ready to move again, Petrus finds you in the crowd and stabs his finger into your chest. \"I'll give you the benefit of the doubt since you didn't throw in with Rugga,\" he says. \"But next time you fight for Arberrang!\"",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
