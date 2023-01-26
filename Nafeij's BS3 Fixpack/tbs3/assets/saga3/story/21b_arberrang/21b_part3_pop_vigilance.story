{
	"data": {
		"initial": "_Thewarpedhav",
		"stitches": {
			"_Thewarpedhav": {
				"content": [
					"[$hero] The warped have not been able to scale the black wall since coming here a day ago. Many want to take full advantage of the respite; others call it folly. Keeping a full watch now means forcing fatigued and wounded survivors to take turns. Some haven't slept in days.",
					{
						"linkPath": "choice1",
						"option": "Forget the watch. Exhaustion is a bigger threat right now."
					},
					{
						"linkPath": "choice2",
						"option": "The strong protect the weak. Let volunteers take watch."
					},
					{
						"linkPath": "choice3",
						"ifConditions": [
							{
								"ifCondition": "hogun_state=0"
							}
						],
						"option": "Force everyone to take their fair turn."
					},
					{
						"linkPath": "choice4",
						"ifConditions": [
							{
								"ifCondition": "hogun_state>0"
							}
						],
						"option": "Force everyone to take their fair turn."
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice1": {
				"content": [
					"[convoy] The few who protest loudest begin yawning through their arguments. They soon give up. Vigilance falls to the wayside, but the warped do not come, for now. They say it was luck. If it means everyone has a chance to recover, the risk was worth it.",
					{
						"divert": "__doomsday_vi"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_vi": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_vigilance+= 1.3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice2": {
				"content": [
					"[convoy] Unfair, some say. Life's unfair, reply others. Stress is starting to seep into every decision. Nobody comes away happy, but enough capable men and women volunteer, and the dreaming face of a sleeping child convinces you it was the right decision.",
					{
						"divert": "__doomsday_vi0"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_vi0": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_vigilance+=.9"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice3": {
				"content": [
					"[convoy] Fair is fair, you declare. \"Either we all survive, or we don't.\" You hear arguments on behalf of an ailing cousin or a sickly father. \"Everyone pulls their weight!\" brays a varl. You're happy to let someone else take the brunt of complaints for a change.",
					{
						"divert": "_Menfallbutno"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Menfallbutno": {
				"content": [
					"[convoy] Men fall, but not to warped. They perish on their feet, or staring out windows. Death comes for the weary. If enemies were spotted you might consider it a worthy cause, but as all remains quiet you're not as certain. The watch continues.",
					{
						"divert": "__doomsday_vi1"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_vi1": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_vigilance+=0.3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"choice4": {
				"content": [
					"[hogun] Fair is fair, you declare. \"Either we all survive, or we don't.\" You hear arguments on behalf of an ailing cousin or a sickly father. \"Everyone pulls their weight!\" shouts Hogun. He looks like death warmed over, but you're happy to let someone else take the brunt of complaints for a change.",
					{
						"divert": "_Itisthelastt"
					},
					{
						"pageNum": 0
					}
				]
			},
			"_Itisthelastt": {
				"content": [
					"[convoy] It is the last time you speak with him. Hogun is found sitting by a window; his eyes open but his heart stopped. They tell you he had been awake for a week. The last thing he mumbled was that he saw his brother, but nothing has come over the black rock walls, warped or otherwise. The watch continues with one less warrior.",
					{
						"divert": "__doomsday_vi2"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__doomsday_vi2": {
				"content": [
					{
						"divert": "__hogun_state"
					},
					{
						"runOn": "true"
					},
					{
						"flagName": "doomsday_vigilance+=0.3"
					},
					{
						"pageNum": 0
					}
				]
			},
			"__hogun_state": {
				"content": [
					{
						"runOn": "true"
					},
					{
						"flagName": "hogun_state=0"
					},
                    {
						"flagName": "21_hogun_dies_arb"
					},
					{
						"pageNum": 0
					}
				]
			}
		}
	}
}
