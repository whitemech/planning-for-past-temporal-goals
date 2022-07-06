from utils import _eventually, _and, _next, LTL_EXP_POLY, PLTL

def generate_problem_blocksworld(nb_blocks: int) -> str:
    objects = [f"b{i}" for i in range(1, nb_blocks + 1)]
    init_on_table = [f"(ontable b{i})" for i in range(1, nb_blocks + 1)]
    init_clear = [f"(clear b{i})" for i in range(1, nb_blocks + 1)]
    problem = f"""(define (problem bw_{nb_blocks})
  (:domain blocks-domain)
  (:objects {' '.join(objects)} - block)
  (:init (emptyhand) {' '.join(init_on_table)} {' '.join(init_clear)})
  (:goal (and (emptyhand)))
)
"""
    return problem


def generate_formula_blocksworld(nb_blocks: int):
    """Generate formula from number of blocks."""
    assert nb_blocks >= 2
    formula = f"on_b{nb_blocks - 1}_b{nb_blocks}"
    for i in range(nb_blocks - 1, 1, -1):
        formula = f"on_b{i - 1}_b{i} & Y(O({formula}))"
    formula = f"O({formula})"
    return formula


def generate_future_formula_blocksworld(nb_blocks: int):
    """Generate future formula."""
    assert nb_blocks >= 2
    formula = f'"on b1 b2"'
    for i in range(2, nb_blocks):
        formula = f'"on b{i} b{i + 1}"&X(F({formula}))'
    formula = f"F({formula})"
    return formula

def generate_future_formula_blocksworld_poly_exp(nb_blocks: int):
    """Generate future formula for ltlexp and ltlpoly."""
    assert nb_blocks >= 2
    formula = '(on b1 b2)'
    for i in range(2, nb_blocks):
        formula = _and([f'(on b{i} b{i + 1})', _next(_eventually(formula))])
    formula = _eventually(formula)
    return formula

def generate_blowup_formula_blocksworld(nb_blocks: int, mode):
    """Generate future formula for blowup experiment."""
    assert nb_blocks >= 9 
    
    if mode == LTL_EXP_POLY:
        body = []
        if nb_blocks % 2 == 1:
            formula_template = '''
            (eventually (and (on b2 b1) (next 
                (eventually (and (on b3 b2) 
                    {}
                )))))
            '''
            for i in range(4, nb_blocks, 2):
                #print(i)
                body.append(_next(_eventually(f"(on b{i+1} b{i})")))

        else:
            formula_template = '''
            (eventually (and (on b2 b1) (next 
                (eventually (and (on b3 b2) (next
                    (eventually (and (on b4 b3)
                        {}
                    ))))))))
            '''
            for i in range(5, nb_blocks, 2):
                #print(i)
                body.append(_next(_eventually(f"(on b{i+1} b{i})")))
        
        return formula_template.format(' '.join(body))
    else:
        raise NotImplementedError