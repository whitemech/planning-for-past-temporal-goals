(define (problem blocks-6-1)
(:domain blocks-domain)
(:objects f d c e b a - block)
(:init (clear a) (clear b) (clear e) (clear c) (clear d) (ontable f)
 (ontable b) (ontable e) (ontable c) (ontable d) (on a f) (emptyhand))
(:goal (and (on e f) (on f c) (on c b) (on b a) (on a d)))
)