/* Briefing
 * The briefing can be defined by calling FHQ_TT_addBriefing.
 * The array is built like this.
 * The first element should be a filter (side, group, faction, or a piece of script). All units matching the
 * filter will see the briefing
 * This is followed by pairs of strings, a head line, and an actual text.
 * Briefings are added in the order in which they appear for any unit that matches
 * the last filter.
 */
[
	{true},
		["Mission",
			"Perditus and Derelictus will eliminate the local extremist group <marker name='obj1'>courier</marker> and <marker name='obj2'>commander</marker>.
Retrieve <marker name='obj3'>two Zamak ammo trucks</marker> from the extremist main base and <marker name='obj4'>two off-road vehicles</marker> from the local civilians.
All vehicles are to be delivered to <marker name='fob_cuprum'>FOB Cuprum</marker>."],

		["Situation",
			"October 19th 2024: welcome to Greece, Private Military Company Aegis. The reason behind Aegis presence on Altis is a contract made with the Takistani militia group Al-Azif. 
The assignment is simple: PMC Aegis is to establish a covert base on the island and use all means imaginable to destabilize the Altian government for the next eight months. To what end,
the contract does not say. The commission for this whole operation is 4.2 million euros.<br/><br/>PMC Aegis is doing good financially, but smuggling military equipment to Altis has been
unsuccessful thus far because of the heavy presence of Altian Armed Forces (AAF) along the coast. PMC Aegis high command, however, made a deal with an Altian extremist group, Nekron Chelia.
The group saw Aegis operators as an aid to their cause for 'freedom in Altis' and promised to supply Aegis with weapons and equipment. After negotiating the co-operation details between Aegis
and Nekron Chelia, Aegis local <marker name='fob_aurum'>high command</marker> on Altis (callsign 'Corona') has evaluated the group's methods unsatisfactory. The extremists are reluctant to use
their weapons againts Altian citizens or the AAF forces and haven't delivered the weapons and explosives they promised. Instead, the Nekron Chelia courier has delived Aegis
<marker name='perditus_start'>operators</marker> (callsign 'Perditus') ancient pre-2000 weapons and not nearly enough ammunition.<br/><br/>Corona wants Aegis operators to eliminate the whole
Nekron Chelia organization structure and assume their identities. This way it will be difficult for the locals to suspect any third party involvement in what is to come. Corona has mobilized an
additional Aegis <marker name='derelictus_start'>team</marker> (callsign 'Derelictus') to help Perditus eliminate the weapon <marker name='obj1'>courier</marker> and the NC
<marker name='obj2'>commander</marker>.<br/><br/>After that, the operators will attack the NC base and steal two <marker name='obj3'>ammo trucks</marker> which are believed to contain
lots of weapons and equipment. Lastly, the operators will steal <marker name='obj4'>two off-road vehicles</marker> from the local civilians. Corona plans to attach weaponry on the platforms.
All vehicles are to be delivered to the newly established <marker name='fob_cuprum'>FOB Cuprum</marker> which serves as a base to Perditus."],

		["Enemy",
			"Although the Nekron Chelia fighters are expecting to work alongside PMC Aegis, an armed approach will most likely result in a firefight since Aegis is not supposed to make
contact with anyone else besides the courier. Corona estimates that the NC have about 20-30 fighters in total, not all of which are present in the AO.<br/><br/>Corona believes
that the Nekron Chelia fighters have just received a shipment of weapons from Northern Africa. It is still unclear whether or not they have had time to familiarize themselves with
the new weapons but Corona believes that most of the weapons and ammo are still in the trucks they were delivered in.<br/><br/>Intel indicates that the NC has three bases in the region.
The main base with the ammo trucks is located <marker name='obj3'>here</marker> and an auxillary base with the commander <marker name='obj2'>here</marker>. The location of the third base
is still unknown. All Aegis personnel in the area have already changed uniforms to blend in with the NC and Corona reminds Perditus and Derelictus to double check their targets before
engaging to avoid blue on blue fire.<br/><br/>The AAF military presence is concentrated around the gulf of Pyrgos and is not believed to be a problem. The civilians, however are likely to
be armed and will not take lightly on fighters wearing NC uniforms."],

		["Callsigns",
			"Corona: local high command operating at FOB Aurum.<br/>Perditus: surgical element, based at FOB Cuprum.<br/>Derelictus: supporting element, based at FOB Ferrum."],

        ["Additional",
			"PMC Aegis uses FHQ Task Tracker to provide operators with briefings and tasks."]

] call FHQ_TT_addBriefing;

[
	{true},                                                         // Filter
    	["task1",										// Task name
         "Eliminate the <marker name='obj1'>courier</marker> leaving the meeting point.",				       // Task text in briefing
         "Eliminate the courier",							// Task title in briefing
         "courier"										// Waypoint text

        ],
        ["task2",										// Task name
         "Eliminate the Nekron Chelia <marker name='obj2'>commander</marker>.",				       // Task text in briefing
         "Eliminate the commander",							// Task title in briefing
         "commander"										// Waypoint text

        ],
		["task3",										// Task name
         "Steal two <marker name='obj3'>ammo trucks</marker> from the Nekron Chelia base and deliver them to FOB Cuprum.",				       // Task text in briefing
         "Steal the ammo trucks",							// Task title in briefing
         "ammo trucks"										// Waypoint text

        ],
        ["task4",										// Task name
         "Steal two <marker name='obj4'>off-roads</marker> from the locals and deliver them to FOB Cuprum.",				       // Task text in briefing
         "Steal the off-roads",							// Task title in briefing
         "offroads"											// Waypoint text

        ]
] call FHQ_TT_addTasks;
