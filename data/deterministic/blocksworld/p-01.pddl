(define (problem BLOCKS-4-0)
(:domain blocks-domain)
(:objects D B A C - block)
(:INIT (CLEAR C) (CLEAR A) (CLEAR B) (CLEAR D) (ONTABLE C) (ONTABLE A)
 (ONTABLE B) (ONTABLE D) (EMPTYHAND))
(:goal (AND (ON D C) (ON C B) (ON B A)))
)