(define (problem blocks-5-0)
(:domain blocks-domain)
(:objects b e a c d - block)
(:init (clear d) (clear c) (ontable d) (ontable a) (on c e) (on e b) (on b a)
 (emptyhand))
(:goal (and (on a e) (on e b) (on b d) (on d c)))
)