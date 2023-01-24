{
	"data": {
		"initial": "_YoufindZefrn",
		"stitches": {
			"_YoufindZefrn": {
				"content": [
					"[$hero] /=You find Zefr near the keep, speaking to the menders she has gathered. She turns as you approach, her face severe.=/",
					{
						"divert": "_CaptainPetru"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CaptainPetru": {
				"content": [
					"[zefr] Captain Petrus. What happened? I told everyone to stop the killing!",
					{
						"divert": "_CaptainPetru0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_CaptainPetru0": {
				"content": [
					"[zefr $hero] Captain Petrus. What happened? I told everyone to stop the killing!",
					{
						"linkPath": "_Wetriedtoexp",
						"option": "And then you left us!"
					},
					{
						"linkPath": "_Youcouldhave",
						"option": "We came to help."
					},
					{
						"linkPath": "_AsIsaidIcoul",
						"option": "This has been coming since Meinolf died."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wetriedtoexp": {
				"content": [
					"[oddleif] We tried to explain, half the people have been trying to kill the other half since we got here!",
					{
						"divert": "_Foolswhocant"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Foolswhocant": {
				"content": [
					"[zefr] Fools who can't see the forest for the trees.",
					{
						"divert": "defendhero1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Youcouldhave": {
				"content": [
					"[zefr] You could have helped by keeping everyone calm, but what's done is done.",
					{
						"divert": "_Petrusbristl"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Petrusbristl": {
				"content": [
					"[petrus] /=Petrus bristles at being scolded, but says nothing.=/",
					{
						"divert": "defendhero1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AsIsaidIcoul": {
				"content": [
					"[zefr] As I said, I could not have come sooner. How quickly things fall apart.",
					{
						"divert": "defendhero1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"defendhero1": {
				"content": [
					"[zefr] Listen carefully. I have devised a shield of light that holds back the darkness, but its reach is limited.",
					{
						"divert": "_Byjoiningthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Byjoiningthe": {
				"content": [
					"[zefr] By joining their efforts, the menders may be able to encircle all of Arberrang.",
					{
						"divert": "_Itwillmeanpo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itwillmeanpo": {
				"content": [
					"[zefr] It will mean positioning them evenly across the walls, and if madmen are running wild in the streets, killing indiscriminately...",
					{
						"divert": "_Illmakesuret"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Illmakesuret": {
				"content": [
					"[petrus] I'll make sure that doesn't happen.",
					{
						"divert": "_Howlongcanyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howlongcanyo": {
				"content": [
					"[$hero] How long can you keep this spell of light going?",
					{
						"divert": "_Assumingthep"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Assumingthep": {
				"content": [
					"[zefr] Assuming the plan works at all? I don't know, perhaps if we rest in shifts...",
					{
						"divert": "_Itdependsono"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itdependsono": {
				"content": [
					"[zefr] It depends on our food supplies, and stopping the warped from slaughtering our menders.",
					{
						"divert": "_Theytoldmeyo"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Theytoldmeyo": {
				"content": [
					"[zefr] They told me you fought off a Sundr. No small thing, but that will be nothing compared to what is coming.",
					{
						"divert": "_AndtheotherV"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AndtheotherV": {
				"content": [
					"[oddleif] And the other Valka? Juno and Eyvind? Can they put an end to all this?",
					{
						"divert": "_Wecrossedpat"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Wecrossedpat": {
				"content": [
					"[zefr] We... crossed paths. They continued into the darkness.",
					{
						"divert": "_Iftheyregoin"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Iftheyregoin": {
				"content": [
					"[zefr] If they're going where I think they're going... and if they actually make it... there is hope.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
