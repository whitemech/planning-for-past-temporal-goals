(define (problem roverprob5624) (:domain Rover)
(:objects
	general - Lander
	colour high_res low_res - Mode
	rover0 rover1 rover2 rover3 rover4 rover5 - Rover
	rover0store rover1store rover2store rover3store rover4store rover5store - Store
	waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 waypoint6 waypoint7 waypoint8 waypoint9 waypoint10 waypoint11 waypoint12 waypoint13 waypoint14 - Waypoint
	camera0 camera1 camera2 camera3 camera4 camera5 camera6 - Camera
	objective0 objective1 objective2 objective3 objective4 objective5 - Objective
	)
(:init
	(visible waypoint1 waypoint0)
	(visible waypoint0 waypoint1)
	(visible waypoint1 waypoint8)
	(visible waypoint8 waypoint1)
	(visible waypoint1 waypoint11)
	(visible waypoint11 waypoint1)
	(visible waypoint1 waypoint14)
	(visible waypoint14 waypoint1)
	(visible waypoint2 waypoint6)
	(visible waypoint6 waypoint2)
	(visible waypoint2 waypoint9)
	(visible waypoint9 waypoint2)
	(visible waypoint3 waypoint0)
	(visible waypoint0 waypoint3)
	(visible waypoint3 waypoint2)
	(visible waypoint2 waypoint3)
	(visible waypoint3 waypoint6)
	(visible waypoint6 waypoint3)
	(visible waypoint3 waypoint7)
	(visible waypoint7 waypoint3)
	(visible waypoint3 waypoint11)
	(visible waypoint11 waypoint3)
	(visible waypoint3 waypoint13)
	(visible waypoint13 waypoint3)
	(visible waypoint4 waypoint1)
	(visible waypoint1 waypoint4)
	(visible waypoint4 waypoint2)
	(visible waypoint2 waypoint4)
	(visible waypoint4 waypoint10)
	(visible waypoint10 waypoint4)
	(visible waypoint4 waypoint14)
	(visible waypoint14 waypoint4)
	(visible waypoint5 waypoint1)
	(visible waypoint1 waypoint5)
	(visible waypoint5 waypoint2)
	(visible waypoint2 waypoint5)
	(visible waypoint5 waypoint3)
	(visible waypoint3 waypoint5)
	(visible waypoint5 waypoint8)
	(visible waypoint8 waypoint5)
	(visible waypoint5 waypoint14)
	(visible waypoint14 waypoint5)
	(visible waypoint6 waypoint0)
	(visible waypoint0 waypoint6)
	(visible waypoint6 waypoint4)
	(visible waypoint4 waypoint6)
	(visible waypoint6 waypoint5)
	(visible waypoint5 waypoint6)
	(visible waypoint6 waypoint7)
	(visible waypoint7 waypoint6)
	(visible waypoint6 waypoint10)
	(visible waypoint10 waypoint6)
	(visible waypoint6 waypoint12)
	(visible waypoint12 waypoint6)
	(visible waypoint6 waypoint13)
	(visible waypoint13 waypoint6)
	(visible waypoint7 waypoint8)
	(visible waypoint8 waypoint7)
	(visible waypoint7 waypoint9)
	(visible waypoint9 waypoint7)
	(visible waypoint8 waypoint2)
	(visible waypoint2 waypoint8)
	(visible waypoint8 waypoint3)
	(visible waypoint3 waypoint8)
	(visible waypoint8 waypoint10)
	(visible waypoint10 waypoint8)
	(visible waypoint9 waypoint8)
	(visible waypoint8 waypoint9)
	(visible waypoint10 waypoint0)
	(visible waypoint0 waypoint10)
	(visible waypoint10 waypoint3)
	(visible waypoint3 waypoint10)
	(visible waypoint11 waypoint2)
	(visible waypoint2 waypoint11)
	(visible waypoint11 waypoint4)
	(visible waypoint4 waypoint11)
	(visible waypoint11 waypoint8)
	(visible waypoint8 waypoint11)
	(visible waypoint11 waypoint9)
	(visible waypoint9 waypoint11)
	(visible waypoint11 waypoint10)
	(visible waypoint10 waypoint11)
	(visible waypoint12 waypoint0)
	(visible waypoint0 waypoint12)
	(visible waypoint12 waypoint1)
	(visible waypoint1 waypoint12)
	(visible waypoint12 waypoint5)
	(visible waypoint5 waypoint12)
	(visible waypoint12 waypoint7)
	(visible waypoint7 waypoint12)
	(visible waypoint13 waypoint0)
	(visible waypoint0 waypoint13)
	(visible waypoint13 waypoint5)
	(visible waypoint5 waypoint13)
	(visible waypoint13 waypoint14)
	(visible waypoint14 waypoint13)
	(visible waypoint14 waypoint2)
	(visible waypoint2 waypoint14)
	(visible waypoint14 waypoint3)
	(visible waypoint3 waypoint14)
	(visible waypoint14 waypoint9)
	(visible waypoint9 waypoint14)
	(visible waypoint14 waypoint10)
	(visible waypoint10 waypoint14)
	(atsoilsample waypoint0)
	(atrocksample waypoint1)
	(atsoilsample waypoint2)
	(atrocksample waypoint2)
	(atsoilsample waypoint3)
	(atrocksample waypoint3)
	(atsoilsample waypoint4)
	(atrocksample waypoint4)
	(atsoilsample waypoint5)
	(atrocksample waypoint5)
	(atrocksample waypoint6)
	(atrocksample waypoint7)
	(atsoilsample waypoint9)
	(atrocksample waypoint9)
	(atrocksample waypoint10)
	(atrocksample waypoint11)
	(atrocksample waypoint12)
	(atsoilsample waypoint13)
	(atrocksample waypoint13)
	(atsoilsample waypoint14)
	(atrocksample waypoint14)
	(atlander general waypoint13)
	(channelfree general)
	(at rover0 waypoint12)
	(available rover0)
	(storeof rover0store rover0)
	(empty rover0store)
	(equippedforrockanalysis rover0)
	(cantraverse rover0 waypoint12 waypoint0)
	(cantraverse rover0 waypoint0 waypoint12)
	(cantraverse rover0 waypoint12 waypoint1)
	(cantraverse rover0 waypoint1 waypoint12)
	(cantraverse rover0 waypoint12 waypoint6)
	(cantraverse rover0 waypoint6 waypoint12)
	(cantraverse rover0 waypoint12 waypoint7)
	(cantraverse rover0 waypoint7 waypoint12)
	(cantraverse rover0 waypoint0 waypoint3)
	(cantraverse rover0 waypoint3 waypoint0)
	(cantraverse rover0 waypoint1 waypoint4)
	(cantraverse rover0 waypoint4 waypoint1)
	(cantraverse rover0 waypoint1 waypoint5)
	(cantraverse rover0 waypoint5 waypoint1)
	(cantraverse rover0 waypoint1 waypoint8)
	(cantraverse rover0 waypoint8 waypoint1)
	(cantraverse rover0 waypoint1 waypoint11)
	(cantraverse rover0 waypoint11 waypoint1)
	(cantraverse rover0 waypoint6 waypoint13)
	(cantraverse rover0 waypoint13 waypoint6)
	(cantraverse rover0 waypoint7 waypoint9)
	(cantraverse rover0 waypoint9 waypoint7)
	(at rover1 waypoint12)
	(available rover1)
	(storeof rover1store rover1)
	(empty rover1store)
	(equippedforimaging rover1)
	(cantraverse rover1 waypoint12 waypoint0)
	(cantraverse rover1 waypoint0 waypoint12)
	(cantraverse rover1 waypoint12 waypoint1)
	(cantraverse rover1 waypoint1 waypoint12)
	(cantraverse rover1 waypoint12 waypoint5)
	(cantraverse rover1 waypoint5 waypoint12)
	(cantraverse rover1 waypoint12 waypoint6)
	(cantraverse rover1 waypoint6 waypoint12)
	(cantraverse rover1 waypoint0 waypoint3)
	(cantraverse rover1 waypoint3 waypoint0)
	(cantraverse rover1 waypoint0 waypoint13)
	(cantraverse rover1 waypoint13 waypoint0)
	(cantraverse rover1 waypoint1 waypoint11)
	(cantraverse rover1 waypoint11 waypoint1)
	(cantraverse rover1 waypoint1 waypoint14)
	(cantraverse rover1 waypoint14 waypoint1)
	(cantraverse rover1 waypoint5 waypoint2)
	(cantraverse rover1 waypoint2 waypoint5)
	(cantraverse rover1 waypoint5 waypoint8)
	(cantraverse rover1 waypoint8 waypoint5)
	(cantraverse rover1 waypoint6 waypoint4)
	(cantraverse rover1 waypoint4 waypoint6)
	(cantraverse rover1 waypoint6 waypoint7)
	(cantraverse rover1 waypoint7 waypoint6)
	(cantraverse rover1 waypoint6 waypoint10)
	(cantraverse rover1 waypoint10 waypoint6)
	(cantraverse rover1 waypoint11 waypoint9)
	(cantraverse rover1 waypoint9 waypoint11)
	(at rover2 waypoint5)
	(available rover2)
	(storeof rover2store rover2)
	(empty rover2store)
	(equippedforimaging rover2)
	(cantraverse rover2 waypoint5 waypoint1)
	(cantraverse rover2 waypoint1 waypoint5)
	(cantraverse rover2 waypoint5 waypoint2)
	(cantraverse rover2 waypoint2 waypoint5)
	(cantraverse rover2 waypoint5 waypoint6)
	(cantraverse rover2 waypoint6 waypoint5)
	(cantraverse rover2 waypoint5 waypoint8)
	(cantraverse rover2 waypoint8 waypoint5)
	(cantraverse rover2 waypoint5 waypoint13)
	(cantraverse rover2 waypoint13 waypoint5)
	(cantraverse rover2 waypoint5 waypoint14)
	(cantraverse rover2 waypoint14 waypoint5)
	(cantraverse rover2 waypoint1 waypoint0)
	(cantraverse rover2 waypoint0 waypoint1)
	(cantraverse rover2 waypoint1 waypoint4)
	(cantraverse rover2 waypoint4 waypoint1)
	(cantraverse rover2 waypoint2 waypoint3)
	(cantraverse rover2 waypoint3 waypoint2)
	(cantraverse rover2 waypoint2 waypoint9)
	(cantraverse rover2 waypoint9 waypoint2)
	(cantraverse rover2 waypoint2 waypoint11)
	(cantraverse rover2 waypoint11 waypoint2)
	(cantraverse rover2 waypoint6 waypoint7)
	(cantraverse rover2 waypoint7 waypoint6)
	(cantraverse rover2 waypoint6 waypoint12)
	(cantraverse rover2 waypoint12 waypoint6)
	(cantraverse rover2 waypoint8 waypoint10)
	(cantraverse rover2 waypoint10 waypoint8)
	(at rover3 waypoint13)
	(available rover3)
	(storeof rover3store rover3)
	(empty rover3store)
	(equippedforsoilanalysis rover3)
	(equippedforimaging rover3)
	(cantraverse rover3 waypoint13 waypoint0)
	(cantraverse rover3 waypoint0 waypoint13)
	(cantraverse rover3 waypoint13 waypoint3)
	(cantraverse rover3 waypoint3 waypoint13)
	(cantraverse rover3 waypoint13 waypoint5)
	(cantraverse rover3 waypoint5 waypoint13)
	(cantraverse rover3 waypoint13 waypoint6)
	(cantraverse rover3 waypoint6 waypoint13)
	(cantraverse rover3 waypoint0 waypoint1)
	(cantraverse rover3 waypoint1 waypoint0)
	(cantraverse rover3 waypoint0 waypoint10)
	(cantraverse rover3 waypoint10 waypoint0)
	(cantraverse rover3 waypoint3 waypoint7)
	(cantraverse rover3 waypoint7 waypoint3)
	(cantraverse rover3 waypoint3 waypoint8)
	(cantraverse rover3 waypoint8 waypoint3)
	(cantraverse rover3 waypoint3 waypoint11)
	(cantraverse rover3 waypoint11 waypoint3)
	(cantraverse rover3 waypoint5 waypoint2)
	(cantraverse rover3 waypoint2 waypoint5)
	(cantraverse rover3 waypoint5 waypoint12)
	(cantraverse rover3 waypoint12 waypoint5)
	(cantraverse rover3 waypoint5 waypoint14)
	(cantraverse rover3 waypoint14 waypoint5)
	(cantraverse rover3 waypoint1 waypoint4)
	(cantraverse rover3 waypoint4 waypoint1)
	(at rover4 waypoint1)
	(available rover4)
	(storeof rover4store rover4)
	(empty rover4store)
	(equippedforrockanalysis rover4)
	(equippedforimaging rover4)
	(cantraverse rover4 waypoint1 waypoint0)
	(cantraverse rover4 waypoint0 waypoint1)
	(cantraverse rover4 waypoint1 waypoint4)
	(cantraverse rover4 waypoint4 waypoint1)
	(cantraverse rover4 waypoint1 waypoint5)
	(cantraverse rover4 waypoint5 waypoint1)
	(cantraverse rover4 waypoint1 waypoint8)
	(cantraverse rover4 waypoint8 waypoint1)
	(cantraverse rover4 waypoint1 waypoint12)
	(cantraverse rover4 waypoint12 waypoint1)
	(cantraverse rover4 waypoint1 waypoint14)
	(cantraverse rover4 waypoint14 waypoint1)
	(cantraverse rover4 waypoint0 waypoint3)
	(cantraverse rover4 waypoint3 waypoint0)
	(cantraverse rover4 waypoint0 waypoint6)
	(cantraverse rover4 waypoint6 waypoint0)
	(cantraverse rover4 waypoint0 waypoint10)
	(cantraverse rover4 waypoint10 waypoint0)
	(cantraverse rover4 waypoint0 waypoint13)
	(cantraverse rover4 waypoint13 waypoint0)
	(cantraverse rover4 waypoint4 waypoint2)
	(cantraverse rover4 waypoint2 waypoint4)
	(cantraverse rover4 waypoint4 waypoint11)
	(cantraverse rover4 waypoint11 waypoint4)
	(cantraverse rover4 waypoint8 waypoint7)
	(cantraverse rover4 waypoint7 waypoint8)
	(cantraverse rover4 waypoint14 waypoint9)
	(cantraverse rover4 waypoint9 waypoint14)
	(at rover5 waypoint8)
	(available rover5)
	(storeof rover5store rover5)
	(empty rover5store)
	(equippedforrockanalysis rover5)
	(equippedforimaging rover5)
	(cantraverse rover5 waypoint8 waypoint1)
	(cantraverse rover5 waypoint1 waypoint8)
	(cantraverse rover5 waypoint8 waypoint3)
	(cantraverse rover5 waypoint3 waypoint8)
	(cantraverse rover5 waypoint8 waypoint5)
	(cantraverse rover5 waypoint5 waypoint8)
	(cantraverse rover5 waypoint8 waypoint7)
	(cantraverse rover5 waypoint7 waypoint8)
	(cantraverse rover5 waypoint8 waypoint9)
	(cantraverse rover5 waypoint9 waypoint8)
	(cantraverse rover5 waypoint8 waypoint10)
	(cantraverse rover5 waypoint10 waypoint8)
	(cantraverse rover5 waypoint8 waypoint11)
	(cantraverse rover5 waypoint11 waypoint8)
	(cantraverse rover5 waypoint1 waypoint4)
	(cantraverse rover5 waypoint4 waypoint1)
	(cantraverse rover5 waypoint1 waypoint12)
	(cantraverse rover5 waypoint12 waypoint1)
	(cantraverse rover5 waypoint1 waypoint14)
	(cantraverse rover5 waypoint14 waypoint1)
	(cantraverse rover5 waypoint3 waypoint0)
	(cantraverse rover5 waypoint0 waypoint3)
	(cantraverse rover5 waypoint3 waypoint6)
	(cantraverse rover5 waypoint6 waypoint3)
	(cantraverse rover5 waypoint5 waypoint2)
	(cantraverse rover5 waypoint2 waypoint5)
	(cantraverse rover5 waypoint5 waypoint13)
	(cantraverse rover5 waypoint13 waypoint5)
	(onboard camera0 rover4)
	(calibrationtarget camera0 objective2)
	(supports camera0 high_res)
	(supports camera0 low_res)
	(onboard camera1 rover3)
	(calibrationtarget camera1 objective2)
	(supports camera1 colour)
	(onboard camera2 rover5)
	(calibrationtarget camera2 objective1)
	(supports camera2 colour)
	(supports camera2 high_res)
	(onboard camera3 rover3)
	(calibrationtarget camera3 objective5)
	(supports camera3 colour)
	(onboard camera4 rover5)
	(calibrationtarget camera4 objective3)
	(supports camera4 colour)
	(supports camera4 high_res)
	(supports camera4 low_res)
	(onboard camera5 rover1)
	(calibrationtarget camera5 objective0)
	(supports camera5 low_res)
	(onboard camera6 rover2)
	(calibrationtarget camera6 objective5)
	(supports camera6 colour)
	(supports camera6 high_res)
	(visiblefrom objective0 waypoint0)
	(visiblefrom objective0 waypoint1)
	(visiblefrom objective0 waypoint2)
	(visiblefrom objective0 waypoint3)
	(visiblefrom objective1 waypoint0)
	(visiblefrom objective1 waypoint1)
	(visiblefrom objective2 waypoint0)
	(visiblefrom objective2 waypoint1)
	(visiblefrom objective2 waypoint2)
	(visiblefrom objective2 waypoint3)
	(visiblefrom objective2 waypoint4)
	(visiblefrom objective2 waypoint5)
	(visiblefrom objective2 waypoint6)
	(visiblefrom objective2 waypoint7)
	(visiblefrom objective2 waypoint8)
	(visiblefrom objective2 waypoint9)
	(visiblefrom objective2 waypoint10)
	(visiblefrom objective2 waypoint11)
	(visiblefrom objective2 waypoint12)
	(visiblefrom objective2 waypoint13)
	(visiblefrom objective2 waypoint14)
	(visiblefrom objective3 waypoint0)
	(visiblefrom objective3 waypoint1)
	(visiblefrom objective3 waypoint2)
	(visiblefrom objective3 waypoint3)
	(visiblefrom objective3 waypoint4)
	(visiblefrom objective3 waypoint5)
	(visiblefrom objective4 waypoint0)
	(visiblefrom objective4 waypoint1)
	(visiblefrom objective4 waypoint2)
	(visiblefrom objective4 waypoint3)
	(visiblefrom objective4 waypoint4)
	(visiblefrom objective4 waypoint5)
	(visiblefrom objective4 waypoint6)
	(visiblefrom objective4 waypoint7)
	(visiblefrom objective4 waypoint8)
	(visiblefrom objective4 waypoint9)
	(visiblefrom objective4 waypoint10)
	(visiblefrom objective4 waypoint11)
	(visiblefrom objective4 waypoint12)
	(visiblefrom objective5 waypoint0)
	(visiblefrom objective5 waypoint1)
)

(:goal (and
(communicatedsoildata waypoint14)
(communicatedsoildata waypoint5)
(communicatedsoildata waypoint2)
(communicatedsoildata waypoint3)
(communicatedrockdata waypoint3)
(communicatedrockdata waypoint5)
(communicatedrockdata waypoint12)
(communicatedrockdata waypoint9)
(communicatedimagedata objective2 colour)
(communicatedimagedata objective2 low_res)
(communicatedimagedata objective3 colour)
(communicatedimagedata objective5 colour)
(communicatedimagedata objective4 colour)
	)
)
)
