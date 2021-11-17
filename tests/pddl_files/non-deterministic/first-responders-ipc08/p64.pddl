(define (problem FR_6_4)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6  - location
	    f1 f2 f3 f4 f5 f6 - fire_unit
	    v1 v2 v3 v4 - victim
	    m1 - medical_unit
)
 (:init 
	;;strategic locations
     (hospital l3)
     (hospital l6)
     (hospital l3)
     (water-at l1)
     (water-at l4)
     (water-at l1)
     (water-at l3)
     (water-at l6)
	;;disaster info
     (fire l3)
     (victim-at v1 l5)
     (victim-status v1 hurt)
     (fire l2)
     (victim-at v2 l5)
     (victim-status v2 dying)
     (fire l2)
     (victim-at v3 l4)
     (victim-status v3 dying)
     (fire l3)
     (victim-at v4 l6)
     (victim-status v4 hurt)
	;;map info
	(adjacent l1 l1)
	(adjacent l2 l2)
	(adjacent l3 l3)
	(adjacent l4 l4)
	(adjacent l5 l5)
	(adjacent l6 l6)
   (adjacent l1 l1)
   (adjacent l1 l1)
   (adjacent l1 l2)
   (adjacent l2 l1)
   (adjacent l2 l1)
   (adjacent l1 l2)
   (adjacent l2 l2)
   (adjacent l2 l2)
   (adjacent l2 l3)
   (adjacent l3 l2)
   (adjacent l2 l4)
   (adjacent l4 l2)
   (adjacent l3 l1)
   (adjacent l1 l3)
   (adjacent l3 l2)
   (adjacent l2 l3)
   (adjacent l3 l3)
   (adjacent l3 l3)
   (adjacent l3 l4)
   (adjacent l4 l3)
   (adjacent l4 l1)
   (adjacent l1 l4)
   (adjacent l5 l1)
   (adjacent l1 l5)
   (adjacent l6 l1)
   (adjacent l1 l6)
   (adjacent l6 l2)
   (adjacent l2 l6)
   (adjacent l6 l3)
   (adjacent l3 l6)
	(fire-unit-at f1 l4)
	(fire-unit-at f2 l1)
	(fire-unit-at f3 l4)
	(fire-unit-at f4 l6)
	(fire-unit-at f5 l3)
	(fire-unit-at f6 l6)
	(medical-unit-at m1 l2)
	)
 (:goal (and  (nfire l3) (nfire l2) (nfire l2) (nfire l3)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy)))
 )
