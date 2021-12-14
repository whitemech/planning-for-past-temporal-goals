(define (problem t-tw_10)
  (:domain triangle-tire)
  (:objects l1x1 l2x1 l1x2 l3x1 l2x2 l1x3 l4x1 l3x2 l2x3 l1x4 l5x1 l4x2 l3x3 l2x4 l1x5 l6x1 l5x2 l4x3 l3x4 l2x5 l1x6 l7x1 l6x2 l5x3 l4x4 l3x5 l2x6 l1x7 l8x1 l7x2 l6x3 l5x4 l4x5 l3x6 l2x7 l1x8 l9x1 l8x2 l7x3 l6x4 l5x5 l4x6 l3x7 l2x8 l1x9 l10x1 l9x2 l8x3 l7x4 l6x5 l5x6 l4x7 l3x8 l2x9 l1x10 - location)
  (:init (vehicleat l1x1) (notflattire) (road l1x1 l1x2) (road l1x1 l2x1) (road l2x1 l1x1) (road l2x1 l1x2) (road l2x1 l2x2) (road l2x1 l3x1) (road l1x2 l1x1) (road l1x2 l2x1) (road l1x2 l1x3) (road l1x2 l2x2) (road l3x1 l2x1) (road l3x1 l2x2) (road l3x1 l3x2) (road l3x1 l4x1) (road l2x2 l1x2) (road l2x2 l2x1) (road l2x2 l1x3) (road l2x2 l3x1) (road l2x2 l2x3) (road l2x2 l3x2) (road l1x3 l1x2) (road l1x3 l2x2) (road l1x3 l1x4) (road l1x3 l2x3) (road l4x1 l3x1) (road l4x1 l3x2) (road l4x1 l4x2) (road l4x1 l5x1) (road l3x2 l2x2) (road l3x2 l3x1) (road l3x2 l2x3) (road l3x2 l4x1) (road l3x2 l3x3) (road l3x2 l4x2) (road l2x3 l1x3) (road l2x3 l2x2) (road l2x3 l1x4) (road l2x3 l3x2) (road l2x3 l2x4) (road l2x3 l3x3) (road l1x4 l1x3) (road l1x4 l2x3) (road l1x4 l1x5) (road l1x4 l2x4) (road l5x1 l4x1) (road l5x1 l4x2) (road l5x1 l5x2) (road l5x1 l6x1) (road l4x2 l3x2) (road l4x2 l4x1) (road l4x2 l3x3) (road l4x2 l5x1) (road l4x2 l4x3) (road l4x2 l5x2) (road l3x3 l2x3) (road l3x3 l3x2) (road l3x3 l2x4) (road l3x3 l4x2) (road l3x3 l3x4) (road l3x3 l4x3) (road l2x4 l1x4) (road l2x4 l2x3) (road l2x4 l1x5) (road l2x4 l3x3) (road l2x4 l2x5) (road l2x4 l3x4) (road l1x5 l1x4) (road l1x5 l2x4) (road l1x5 l1x6) (road l1x5 l2x5) (road l6x1 l5x1) (road l6x1 l5x2) (road l6x1 l6x2) (road l6x1 l7x1) (road l5x2 l4x2) (road l5x2 l5x1) (road l5x2 l4x3) (road l5x2 l6x1) (road l5x2 l5x3) (road l5x2 l6x2) (road l4x3 l3x3) (road l4x3 l4x2) (road l4x3 l3x4) (road l4x3 l5x2) (road l4x3 l4x4) (road l4x3 l5x3) (road l3x4 l2x4) (road l3x4 l3x3) (road l3x4 l2x5) (road l3x4 l4x3) (road l3x4 l3x5) (road l3x4 l4x4) (road l2x5 l1x5) (road l2x5 l2x4) (road l2x5 l1x6) (road l2x5 l3x4) (road l2x5 l2x6) (road l2x5 l3x5) (road l1x6 l1x5) (road l1x6 l2x5) (road l1x6 l1x7) (road l1x6 l2x6) (road l7x1 l6x1) (road l7x1 l6x2) (road l7x1 l7x2) (road l7x1 l8x1) (road l6x2 l5x2) (road l6x2 l6x1) (road l6x2 l5x3) (road l6x2 l7x1) (road l6x2 l6x3) (road l6x2 l7x2) (road l5x3 l4x3) (road l5x3 l5x2) (road l5x3 l4x4) (road l5x3 l6x2) (road l5x3 l5x4) (road l5x3 l6x3) (road l4x4 l3x4) (road l4x4 l4x3) (road l4x4 l3x5) (road l4x4 l5x3) (road l4x4 l4x5) (road l4x4 l5x4) (road l3x5 l2x5) (road l3x5 l3x4) (road l3x5 l2x6) (road l3x5 l4x4) (road l3x5 l3x6) (road l3x5 l4x5) (road l2x6 l1x6) (road l2x6 l2x5) (road l2x6 l1x7) (road l2x6 l3x5) (road l2x6 l2x7) (road l2x6 l3x6) (road l1x7 l1x6) (road l1x7 l2x6) (road l1x7 l1x8) (road l1x7 l2x7) (road l8x1 l7x1) (road l8x1 l7x2) (road l8x1 l8x2) (road l8x1 l9x1) (road l7x2 l6x2) (road l7x2 l7x1) (road l7x2 l6x3) (road l7x2 l8x1) (road l7x2 l7x3) (road l7x2 l8x2) (road l6x3 l5x3) (road l6x3 l6x2) (road l6x3 l5x4) (road l6x3 l7x2) (road l6x3 l6x4) (road l6x3 l7x3) (road l5x4 l4x4) (road l5x4 l5x3) (road l5x4 l4x5) (road l5x4 l6x3) (road l5x4 l5x5) (road l5x4 l6x4) (road l4x5 l3x5) (road l4x5 l4x4) (road l4x5 l3x6) (road l4x5 l5x4) (road l4x5 l4x6) (road l4x5 l5x5) (road l3x6 l2x6) (road l3x6 l3x5) (road l3x6 l2x7) (road l3x6 l4x5) (road l3x6 l3x7) (road l3x6 l4x6) (road l2x7 l1x7) (road l2x7 l2x6) (road l2x7 l1x8) (road l2x7 l3x6) (road l2x7 l2x8) (road l2x7 l3x7) (road l1x8 l1x7) (road l1x8 l2x7) (road l1x8 l1x9) (road l1x8 l2x8) (road l9x1 l8x1) (road l9x1 l8x2) (road l9x1 l9x2) (road l9x1 l10x1) (road l8x2 l7x2) (road l8x2 l8x1) (road l8x2 l7x3) (road l8x2 l9x1) (road l8x2 l8x3) (road l8x2 l9x2) (road l7x3 l6x3) (road l7x3 l7x2) (road l7x3 l6x4) (road l7x3 l8x2) (road l7x3 l7x4) (road l7x3 l8x3) (road l6x4 l5x4) (road l6x4 l6x3) (road l6x4 l5x5) (road l6x4 l7x3) (road l6x4 l6x5) (road l6x4 l7x4) (road l5x5 l4x5) (road l5x5 l5x4) (road l5x5 l4x6) (road l5x5 l6x4) (road l5x5 l5x6) (road l5x5 l6x5) (road l4x6 l3x6) (road l4x6 l4x5) (road l4x6 l3x7) (road l4x6 l5x5) (road l4x6 l4x7) (road l4x6 l5x6) (road l3x7 l2x7) (road l3x7 l3x6) (road l3x7 l2x8) (road l3x7 l4x6) (road l3x7 l3x8) (road l3x7 l4x7) (road l2x8 l1x8) (road l2x8 l2x7) (road l2x8 l1x9) (road l2x8 l3x7) (road l2x8 l2x9) (road l2x8 l3x8) (road l1x9 l1x8) (road l1x9 l2x8) (road l1x9 l1x10) (road l1x9 l2x9) (road l10x1 l9x1) (road l10x1 l9x2) (road l9x2 l8x2) (road l9x2 l9x1) (road l9x2 l8x3) (road l9x2 l10x1) (road l8x3 l7x3) (road l8x3 l8x2) (road l8x3 l7x4) (road l8x3 l9x2) (road l7x4 l6x4) (road l7x4 l7x3) (road l7x4 l6x5) (road l7x4 l8x3) (road l6x5 l5x5) (road l6x5 l6x4) (road l6x5 l5x6) (road l6x5 l7x4) (road l5x6 l4x6) (road l5x6 l5x5) (road l5x6 l4x7) (road l5x6 l6x5) (road l4x7 l3x7) (road l4x7 l4x6) (road l4x7 l3x8) (road l4x7 l5x6) (road l3x8 l2x8) (road l3x8 l3x7) (road l3x8 l2x9) (road l3x8 l4x7) (road l2x9 l1x9) (road l2x9 l2x8) (road l2x9 l1x10) (road l2x9 l3x8) (road l1x10 l1x9) (road l1x10 l2x9) (sparein l1x1) (sparein l2x1) (sparein l1x2) (sparein l3x1) (sparein l2x2) (sparein l1x3) (sparein l4x1) (sparein l3x2) (sparein l2x3) (sparein l1x4) (sparein l5x1) (sparein l4x2) (sparein l3x3) (sparein l2x4) (sparein l1x5) (sparein l6x1) (sparein l5x2) (sparein l4x3) (sparein l3x4) (sparein l2x5) (sparein l1x6) (sparein l7x1) (sparein l6x2) (sparein l5x3) (sparein l4x4) (sparein l3x5) (sparein l2x6) (sparein l1x7) (sparein l8x1) (sparein l7x2) (sparein l6x3) (sparein l5x4) (sparein l4x5) (sparein l3x6) (sparein l2x7) (sparein l1x8) (sparein l9x1) (sparein l8x2) (sparein l7x3) (sparein l6x4) (sparein l5x5) (sparein l4x6) (sparein l3x7) (sparein l2x8) (sparein l1x9) (sparein l10x1) (sparein l9x2) (sparein l8x3) (sparein l7x4) (sparein l6x5) (sparein l5x6) (sparein l4x7) (sparein l3x8) (sparein l2x9) (sparein l1x10))
  (:goal (and (vehicleat l1x10)))
)
