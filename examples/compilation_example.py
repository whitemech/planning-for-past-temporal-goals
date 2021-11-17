# -*- coding: utf-8 -*-
#
# Copyright 2021 Francesco Fuggitti, Marco Favorito
#
# ------------------------------
#
# This file is part of planning-with-past.
#
# planning-with-past is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# planning-with-past is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with planning-with-past.  If not, see <https://www.gnu.org/licenses/>.
#
from pylogics.parsers import parse_pltl

from pddl.parser.domain import DomainParser
from pddl.parser.problem import ProblemParser
from planning_with_past import PACKAGE_ROOT
from planning_with_past.compiler import Compiler

EXAMPLES_DIR = PACKAGE_ROOT.parent / "examples"

if __name__ == '__main__':
    domain_parser = DomainParser()
    problem_parser = ProblemParser()
    domain = domain_parser((EXAMPLES_DIR / "pddl" / "domain.pddl").read_text())
    problem = problem_parser((EXAMPLES_DIR / "pddl" / "p-0.pddl").read_text())

    formula = parse_pltl("tt")

    compiler = Compiler(domain, problem, formula)
    compiler.compile()
    result = compiler.result