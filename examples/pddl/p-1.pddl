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
        (not (O-ontableC))
        (not (onBA-and-O-ontableC))
        (not (once-tt))

        (not (act))
        (top)
        (not (goal))
)

(:goal (goal))
)