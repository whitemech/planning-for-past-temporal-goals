(define (problem roverprob6232) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 - Rover
	rover0store rover1store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 - Waypoint
	camera0 camera1 camera2 - Camera
	objective0 objective1 objective2 - Objective
	)
(:init
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint2 waypoint1)
	(visible waypoint1 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint3 waypoint1)
	(visible waypoint1 waypoint3)
	(atrocksample waypoint1)
	(atsoilsample waypoint2)
	(atsoilsample waypoint3)
	(atrocksample waypoint3)
	(atlander general waypoint2)
	(channelfree general)
	(at rover0 waypoint3)
	(available rover0)
	(storeof rover0store rover0)
	(empty rover0store)
	(equippedforsoilanalysis rover0)
	(equippedforimaging rover0)
	(cantraverse rover0 waypoint3 waypoint1)
	(cantraverse rover0 waypoint1 waypoint3)
	(at rover1 waypoint2)
	(available rover1)
	(storeof rover1store rover1)
	(empty rover1store)
	(equippedforsoilanalysis rover1)
	(equippedforrockanalysis rover1)
	(equippedforimaging rover1)
	(cantraverse rover1 waypoint2 waypoint1)
	(cantraverse rover1 waypoint1 waypoint2)
	(cantraverse rover1 waypoint2 waypoint3)
	(cantraverse rover1 waypoint3 waypoint2)
	(cantraverse rover1 waypoint1 waypoint0)
	(cantraverse rover1 waypoint0 waypoint1)
	(onboard camera0 rover1)
	(calibrationtarget camera0 objective0)
	(supports camera0 colour)
	(supports camera0 high_res)
	(onboard camera1 rover0)
	(calibrationtarget camera1 objective0)
	(supports camera1 colour)
	(supports camera1 low_res)
	(onboard camera2 rover0)
	(calibrationtarget camera2 objective1)
	(supports camera2 low_res)
	(visiblefrom objective0 waypoint0)
	(visiblefrom objective0 waypoint1)
	(visiblefrom objective0 waypoint2)
	(visiblefrom objective0 waypoint3)
	(visiblefrom objective1 waypoint0)
	(visiblefrom objective1 waypoint1)
	(visiblefrom objective2 waypoint0)
	(visiblefrom objective2 waypoint1)
	(visiblefrom objective2 waypoint2)
)

(:goal (and
(communicatedsoildata waypoint3)
(communicatedrockdata waypoint1)
(communicatedimagedata objective0 high_res)
	)
)
)
