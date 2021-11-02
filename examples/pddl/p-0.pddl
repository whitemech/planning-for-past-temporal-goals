(define (problem BLOCKS-4-0)
(:domain BLOCKS)
(:objects D B A C)

(:INIT  
        (CLEAR A) 
        (CLEAR B) 
        (CLEAR C) 
        (ON C D) 
        (ONTABLE A)
        (ONTABLE B) 
        (ONTABLE D) 
        (HANDEMPTY)

        ; initial assignment
        (not (onBA))
        (not (ontableC))
        (not (Y-ontableC))
        (not (onBA-and-Y-ontableC))
        (not (once-tt))

        ; the environment starts
        (act)
        (top)
        (not (goal))
)

(:goal (goal))
)