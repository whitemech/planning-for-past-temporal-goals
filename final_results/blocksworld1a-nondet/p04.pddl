(define (problem bw_4)
  (:domain blocks-domain)
  (:objects b1 b2 b3 b4 - block)
  (:init (emptyhand) (on-table b1) (on-table b2) (on-table b3) (on-table b4) (clear b1) (clear b2) (clear b3) (clear b4))
  (:goal (and (emptyhand)))
)