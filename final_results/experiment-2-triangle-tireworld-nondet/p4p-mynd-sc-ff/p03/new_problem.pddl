(define (problem triangle-tire-3)
    (:domain triangle-tire)
    (:objects l1x1 l1x2 l1x3 l1x4 l1x5 l1x6 l1x7 l2x1 l2x2 l2x3 l2x4 l2x5 l2x6 l2x7 l3x1 l3x2 l3x3 l3x4 l3x5 l3x6 l3x7 l4x1 l4x2 l4x3 l4x4 l4x5 l4x6 l4x7 l5x1 l5x2 l5x3 l5x4 l5x5 l5x6 l5x7 l6x1 l6x2 l6x3 l6x4 l6x5 l6x6 l6x7 l7x1 l7x2 l7x3 l7x4 l7x5 l7x6 l7x7)
    (:init (act) (notflattire) (road l1x1 l1x2) (road l1x1 l2x1) (road l1x2 l1x3) (road l1x2 l2x2) (road l1x3 l1x4) (road l1x3 l2x3) (road l1x4 l1x5) (road l1x4 l2x4) (road l1x5 l1x6) (road l1x5 l2x5) (road l1x6 l1x7) (road l1x6 l2x6) (road l2x1 l1x2) (road l2x1 l3x1) (road l2x2 l1x3) (road l2x3 l1x4) (road l2x3 l3x3) (road l2x4 l1x5) (road l2x5 l1x6) (road l2x5 l3x5) (road l2x6 l1x7) (road l3x1 l2x2) (road l3x1 l3x2) (road l3x1 l4x1) (road l3x2 l3x3) (road l3x2 l4x2) (road l3x3 l2x4) (road l3x3 l3x4) (road l3x3 l4x3) (road l3x4 l3x5) (road l3x4 l4x4) (road l3x5 l2x6) (road l4x1 l3x2) (road l4x1 l5x1) (road l4x2 l3x3) (road l4x3 l3x4) (road l4x3 l5x3) (road l4x4 l3x5) (road l5x1 l4x2) (road l5x1 l5x2) (road l5x1 l6x1) (road l5x2 l5x3) (road l5x2 l6x2) (road l5x3 l4x4) (road l6x1 l5x2) (road l6x1 l7x1) (road l6x2 l5x3) (road l7x1 l6x2) (sparein l2x1) (sparein l2x2) (sparein l2x3) (sparein l2x4) (sparein l2x5) (sparein l2x6) (sparein l3x1) (sparein l3x5) (sparein l4x1) (sparein l4x2) (sparein l4x3) (sparein l4x4) (sparein l5x1) (sparein l5x3) (sparein l6x1) (sparein l6x2) (sparein l7x1) (vehicleat l1x1))
    (:goal (and (val_vehicleat_l1x7) (act)))
)