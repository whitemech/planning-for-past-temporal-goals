(define (problem BLOCKS-7-1)
(:domain blocks-domain)
(:objects E B D F G C A )
(:INIT (CLEAR A) (CLEAR C) (ONTABLE G) (ONTABLE F) (ON A G) (ON C D) (ON D B)
 (ON B E) (ON E F) (EMPTYHAND))
(:goal (AND (ON A E) (ON E B) (ON B F) (ON F G) (ON G C) (ON C D)))
)