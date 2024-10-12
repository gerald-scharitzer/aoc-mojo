"""Command Line Interface"""

import .year2023

alias EXIT_SUCCESS = 0
alias EXIT_FAILURE = 1

alias USAGE = """\
Usage: adventofmojo [year [day]]
"""

fn run(args: VariadicList[StringRef]) raises -> Int:
	if len(args) == 1:
		print(USAGE, end = "")
	elif len(args) == 2:
		year = int(args[1])
		if year == 2023:
			year2023.run(1)
		else:
			raise Error("Year " + str(year) + " is not implemented.")
	return EXIT_SUCCESS
