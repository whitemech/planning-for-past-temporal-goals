(define (problem t-tw_6)
  (:domain triangle-tire)
  (:objects l1x1 l2x1 l1x2 l3x1 l2x2 l1x3 l4x1 l3x2 l2x3 l1x4 l5x1 l4x2 l3x3 l2x4 l1x5 l6x1 l5x2 l4x3 l3x4 l2x5 l1x6 - location)
  (:init (vehicleat l1x1) (notflattire) (road l1x1 l1x2) (road l1x1 l2x1) (road l2x1 l1x1) (road l2x1 l1x2) (road l2x1 l2x2) (road l2x1 l3x1) (road l1x2 l1x1) (road l1x2 l2x1) (road l1x2 l1x3) (road l1x2 l2x2) (road l3x1 l2x1) (road l3x1 l2x2) (road l3x1 l3x2) (road l3x1 l4x1) (road l2x2 l1x2) (road l2x2 l2x1) (road l2x2 l1x3) (road l2x2 l3x1) (road l2x2 l2x3) (road l2x2 l3x2) (road l1x3 l1x2) (road l1x3 l2x2) (road l1x3 l1x4) (road l1x3 l2x3) (road l4x1 l3x1) (road l4x1 l3x2) (road l4x1 l4x2) (road l4x1 l5x1) (road l3x2 l2x2) (road l3x2 l3x1) (road l3x2 l2x3) (road l3x2 l4x1) (road l3x2 l3x3) (road l3x2 l4x2) (road l2x3 l1x3) (road l2x3 l2x2) (road l2x3 l1x4) (road l2x3 l3x2) (road l2x3 l2x4) (road l2x3 l3x3) (road l1x4 l1x3) (road l1x4 l2x3) (road l1x4 l1x5) (road l1x4 l2x4) (road l5x1 l4x1) (road l5x1 l4x2) (road l5x1 l5x2) (road l5x1 l6x1) (road l4x2 l3x2) (road l4x2 l4x1) (road l4x2 l3x3) (road l4x2 l5x1) (road l4x2 l4x3) (road l4x2 l5x2) (road l3x3 l2x3) (road l3x3 l3x2) (road l3x3 l2x4) (road l3x3 l4x2) (road l3x3 l3x4) (road l3x3 l4x3) (road l2x4 l1x4) (road l2x4 l2x3) (road l2x4 l1x5) (road l2x4 l3x3) (road l2x4 l2x5) (road l2x4 l3x4) (road l1x5 l1x4) (road l1x5 l2x4) (road l1x5 l1x6) (road l1x5 l2x5) (road l6x1 l5x1) (road l6x1 l5x2) (road l5x2 l4x2) (road l5x2 l5x1) (road l5x2 l4x3) (road l5x2 l6x1) (road l4x3 l3x3) (road l4x3 l4x2) (road l4x3 l3x4) (road l4x3 l5x2) (road l3x4 l2x4) (road l3x4 l3x3) (road l3x4 l2x5) (road l3x4 l4x3) (road l2x5 l1x5) (road l2x5 l2x4) (road l2x5 l1x6) (road l2x5 l3x4) (road l1x6 l1x5) (road l1x6 l2x5) (sparein l1x1) (sparein l2x1) (sparein l1x2) (sparein l3x1) (sparein l2x2) (sparein l1x3) (sparein l4x1) (sparein l3x2) (sparein l2x3) (sparein l1x4) (sparein l5x1) (sparein l4x2) (sparein l3x3) (sparein l2x4) (sparein l1x5) (sparein l6x1) (sparein l5x2) (sparein l4x3) (sparein l3x4) (sparein l2x5) (sparein l1x6))
  (:goal (and (vehicleat l1x6)))
)
