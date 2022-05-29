{
	"data": {
		"initial": "_YoufindZefrn",
		"stitches": {
			"_YoufindZefrn": {
				"content": [
					"[$hero] /=You find Zefr near the keep, where she's preparing the menders. She turns as you approach.=/",
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
					"[zefr] Captain Petrus! I told everyone to stop fighting!",
					{
						"divert": "_Myfriendishu"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Myfriendishu": {
				"content": [
					"[$hero] My friend is hurt badly. You have to help her... do something, please!",
					{
						"divert": "_Yourevealthe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Yourevealthe": {
				"content": [
					"[$hero] /=You reveal the lifeless body of Oddleif wrapped in your banner.=/",
					{
						"divert": "_Zefrshakeshe"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Zefrshakeshe": {
				"content": [
					"[zefr] /=Zefr shakes her head.=/",
					{
						"divert": "_ImsorryEvent"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_ImsorryEvent": {
				"content": [
					"[zefr] I'm sorry. Even the Valka should not meddle with the dead.",
					{
						"divert": "_Howdidithapp"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howdidithapp": {
				"content": [
					"[zefr] How did it happen?",
					{
						"divert": "_Howdidithapp0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Howdidithapp0": {
				"content": [
					"[zefr $hero] How did it happen?",
					{
						"linkPath": "_Itriedtotell",
						"option": "You left us!"
					},
					{
						"linkPath": "_Imsorryforyo",
						"option": "It doesn't matter anymore. Just tell us what to do."
					},
					{
						"linkPath": "_IregretIcoul",
						"option": "This has been coming since Meinolf died."
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itriedtotell": {
				"content": [
					"[$hero] I tried to tell you! If you had just stayed...",
					{
						"divert": "_Manymorearea"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Manymorearea": {
				"content": [
					"[zefr] Many more are about to die to the darkness.",
					{
						"divert": "defendhero1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Imsorryforyo": {
				"content": [
					"[zefr] I'm sorry for your loss. At least there's a few decent people left in this city.",
					{
						"divert": "defendhero1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IregretIcoul": {
				"content": [
					"[zefr] I regret I could not have come sooner, but many more are about to die.",
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
					"[zefr] Listen carefully. I devised a shield of light that holds back the darkness, but its reach is limited.",
					{
						"divert": "_Withthemende"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Withthemende": {
				"content": [
					"[zefr] With the menders joining their efforts, we may be able to encircle all of Arberrang.",
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
						"divert": "_IllhaveOddle"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_IllhaveOddle": {
				"content": [
					"[petrus] I'll have Oddleif taken somewhere safe. Just until we can pay our respects properly.",
					{
						"divert": "_Younodnumb"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Younodnumb": {
				"content": [
					"[$hero] /=You nod, numb.=/",
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
					"[zefr] Assuming the plan works at all? Perhaps if we rest in shifts...",
					{
						"divert": "_Anumberofday"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Anumberofday": {
				"content": [
					"[zefr] A number of days. It depends on our food supplies, and stopping the warped from slaughtering our menders.",
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
						"divert": "_Whatdothewar"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Whatdothewar": {
				"content": [
					"[petrus] What do the warped even want with Arberrang?",
					{
						"divert": "_AsfarasIcant"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_AsfarasIcant": {
				"content": [
					"[zefr] As far as I can tell, only mindless death and destruction. It is why I wanted the dredge inside the walls.",
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
					"[$hero] And the other Valka? Juno and Eyvind? They can stop all of this?",
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
						"divert": "_Butnoneofitm"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Butnoneofitm": {
				"content": [
					"[zefr] But none of it matters unless we get these menders safely on the walls.",
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
