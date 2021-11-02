;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 4 Op-blocks world
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain BLOCKS)
	(:requirements :strips :derived-predicates :conditional-effects :negative-preconditions)
	(:predicates 
		(on ?x ?y)
		(ontable ?x)
		(clear ?x)
		(handempty)
		(holding ?x)

		; alternation + check-goal
		(act)
		(goal)

		; prime predicates
		(p_onBA)
		(p_not_onBA)
		(p_ontableC)
		(p_not_ontableC)
		(p_O-ontableC)
		(p_not_O-ontableC)
		(p_onBA-and-O-ontableC)
		(p_not_onBA-and-O-ontableC)
		(p_once-tt)
		(p_not_once-tt)

		; non-prime predicates
		(top)
		(onBA)
		(not_onBA)
		(ontableC)
		(not_ontableC)
		(O-ontableC)
		(not_O-ontableC)
		(onBA-and-O-ontableC)
		(not_onBA-and-O-ontableC)
		(once-tt)
		(not_once-tt)
	)

	; (:derived (predicate) (condition))
	(:derived (p_once-tt) (top))
	(:derived (p_onBA) (on B A))
	(:derived (p_ontableC) (ontable C))
	(:derived (p_O-ontableC) (and (ontableC) (once-tt)))
	(:derived (p_onBA-and-O-ontableC) (and (p_onBA) (p_O-ontableC)))

	(:derived (p_not_onBA) (not (onBA)))
	(:derived (p_not_ontableC) (not (ontableC)))
	(:derived (p_not_O-ontableC) (not (p_O-ontableC)))
	(:derived (p_not_onBA-and-O-ontableC) (not (p_onBA-and-O-ontableC)))

	(:action pick-up
		:parameters (?x)
		:precondition (and (clear ?x) (ontable ?x) (handempty) (act))
		:effect
		(and (not (ontable ?x))
		(not (clear ?x))
		(not (handempty))
		(holding ?x)
		(not (act))
		)
	)
	(:action put-down
		:parameters (?x)
		:precondition (and (holding ?x) (act))
		:effect
		(and (not (holding ?x))
		(clear ?x)
		(handempty)
		(ontable ?x)
		(not (act))
		)
	)
	(:action stack
		:parameters (?x ?y)
		:precondition (and (holding ?x) (clear ?y) (act))
		:effect
		(and (not (holding ?x))
		(not (clear ?y))
		(clear ?x)
		(handempty)
		(on ?x ?y)
		(not (act))
		)
	)
	(:action unstack
		:parameters (?x ?y)
		:precondition (and (on ?x ?y) (clear ?x) (handempty) (act))
		:effect
		(and (holding ?x)
		(clear ?y)
		(not (clear ?x))
		(not (handempty))
		(not (on ?x ?y))
		(not (act))
		)
	)

	(:action prog
		:parameters ()
		:precondition (and (not (act)) (not (goal)))
		:effect (and 
		(when (p_onBA) (onBA))
		(when (p_not_onBA) (not (onBA)))
		(when (p_ontableC) (ontableC))
		(when (p_not_ontableC) (not (O-ontableC)))
		(when (p_O-ontableC) (O-ontableC))
		(when (p_not_O-ontableC) (not (O-ontableC)))
		(when (p_onBA-and-O-ontableC) (onBA-and-O-ontableC))
		(when (p_not_onBA-and-O-ontableC) (not (onBA-and-O-ontableC)) )
		(when (p_once-tt) (once-tt))
		(when (p_not_once-tt) (not (once-tt)))
		(act)
		)
	)
	(:action check
		:parameters ()
		:precondition (and (onBA-and-O-ontableC))
		:effect (and 
		(goal)
		)
	)
)