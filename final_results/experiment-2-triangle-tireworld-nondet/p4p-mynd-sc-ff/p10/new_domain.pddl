(define (domain triangle-tire)
    (:requirements :conditional-effects :derived-predicates :negative-preconditions :non-deterministic :strips :typing)
    (:types location)
    (:predicates (act) (notflattire) (road ?from ?to) (sparein ?loc) (val_vehicleat_l1x21) (vehicleat ?loc))
    (:derived (val_vehicleat_l1x21) (vehicleat l1x21))
    (:action changetire
        :parameters (?loc)
        :precondition (and (sparein ?loc) (vehicleat ?loc) (act))
        :effect (and (and (not (sparein ?loc)) (notflattire)) (not (act)))
    )
     (:action move-car
        :parameters (?from ?to)
        :precondition (and (vehicleat ?from) (road ?from ?to) (notflattire) (act))
        :effect (and (and (oneof (and (vehicleat ?to) (not (vehicleat ?from))) (and (vehicleat ?to) (not (vehicleat ?from)) (not (notflattire))))) (not (act)))
    )
     (:action prog
        :parameters ()
        :precondition (not (act))
        :effect (act)
    )
)