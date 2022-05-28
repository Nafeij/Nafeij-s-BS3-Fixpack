{
	"data": {
		"initial": "_Ravenssweart",
		"stitches": {
			"_Ravenssweart": {
				"content": [
					"[convoy] Ravens swear they see figures lurking from the corners of their eyes and hear the whispers of dead family members. Some accuse the corpse of Juno, others the ominous pillars that have been rising on the horizon. \"The dredge godstone,\" Eyvind tells them.",
					{
						"divert": "_Risesliketee"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Risesliketee": {
				"content": [
					"[sparr] \"Rises like teeth from the hunger'd wolf's maw,\" Sparr sings. \"Swallows brave men and the bright doom star.\" An old song, from before the gods died. Fitting, ambling through tall pillars like teeth, an obsidian forest wreathing the great black godstone.",
					{
						"divert": "_Ifmydeadmoth"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifmydeadmoth": {
				"content": [
					"[oli] \"If my dead mother appears, I'm ending things here and now,\" Oli snarls.",
					{
						"linkPath": "_Ifyourdeadmo",
						"option": "Make a joke at Oli's expense."
					},
					{
						"linkPath": "_Unlessyourac",
						"option": "Encourage everyone to toughen up."
					},
					{
						"linkPath": "_Eyvindshakes",
						"option": "Ask Eyvind if he can do anything to help."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Ifyourdeadmo": {
				"content": [
					"[iver] \"If your dead mother appears,\" you begin, but Oli stares murder at you and the joke curdles in your mouth. Sparr cackles like a mad hen, nobody else dares. Could have gone worse.",
					{
						"pageNum": 0
					}
				]
			},
			"_Unlessyourac": {
				"content": [
					"[iver] \"Unless your actual mothers and sisters start thrusting spears at us, keep your delusions to yourself,\" you threaten. The Ravens don't take it kindly, but get your meaning.",
					{
						"divert": "__morale5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale5": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale-=5"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Eyvindshakes": {
				"content": [
					"[eyvind] Eyvind shakes his head slowly, and you notice his ragged appearance. \"But I can be certain no harm will come from it.\" He says it loud enough for others to hear.",
					{
						"divert": "__morale15"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__morale15": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "morale+=15"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
