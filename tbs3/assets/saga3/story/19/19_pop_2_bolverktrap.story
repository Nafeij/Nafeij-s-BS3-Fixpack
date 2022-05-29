{
	"data": {
		"initial": "_Someofusstil",
		"stitches": {
			"_Someofusstil": {
				"content": [
					"[folka] \"Some of us still need to sleep,\" Folka blurts, eyeing Juno. You haven't rested since leaving Strand. \"If I know Bolverk, that's what he's waiting for. He's going to tire us out before bringing down the other axe.\"",
					{
						"divert": "_JunorepliesI"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_JunorepliesI": {
				"content": [
					"[juno] \"I cannot sense the warped approaching. We will rest little and lightly,\" Juno replies. The Ravens chafe at being told what to do. Folka is clearly preparing to say something.",
					{
						"linkPath": "_Wellkeepaful",
						"option": "Encourage a full rest, only a few sleeping at a time."
					},
					{
						"linkPath": "_Countonanatt",
						"option": "Let Folka make the call."
					},
					{
						"linkPath": "_Aguarddogsno",
						"option": "Support Juno and keep rest to a minimum."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wellkeepaful": {
				"content": [
					"[iver] \"We'll keep a full fighting party ready and sleep in shifts,\" you say. \"I'll lead the first.\"",
					{
						"divert": "firstambushheavy"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Countonanatt": {
				"content": [
					"[folka] \"Count on an attack tonight,\" Folka says. You seek out a rocky outcropping that covers as much of your back as possible. \"Everyone but the lookouts sleep now,\" she says. \"So we're rested when it comes.\"",
					{
						"divert": "firstambushlight"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Aguarddogsno": {
				"content": [
					"[folka] \"A guard dog's no good if you have to drag him around by the neck,\" Folka spits. You stop briefly and force Ravens back on their feet a couple hours later.",
					{
						"divert": "firstambushlight"
					},
					{
						"pageNum": 0
					}
				]
			},
			"firstambushlight": {
				"content": [
					"[convoy_darkness] As Folka expected, the warped come. Bolverk is nowhere in sight, but you can't shake the feeling he's watching.",
					{
						"pageNum": 0
					}
				]
			},
			"firstambushheavy": {
				"content": [
					"[convoy_darkness] As Folka expected, the warped come. \"Watch your backs, boys!\" she shouts, frustration in her voice.",
					{
						"divert": "__19_first_am"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__19_first_am": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "19_first_ambush=1"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
