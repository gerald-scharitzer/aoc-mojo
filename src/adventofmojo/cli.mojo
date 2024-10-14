"""Command Line Interface"""

import .year2023

alias EXIT_SUCCESS = 0
alias EXIT_FAILURE = 1

alias USAGE = """\
Usage: adventofmojo [year [day [input]]]
"""

fn run(args: VariadicList[StringRef]) raises -> Int:
	argc = len(args)
	if argc == 1:
		print(USAGE, end = "")
		return EXIT_SUCCESS
	
	if argc >= 2:
		year = int(args[1])
	else:
		year = 0

	if argc >= 3:
		day = int(args[2])
	else:
		day = 0
	
	if argc >= 4:
		input = str(args[3])
	else:
		input = "data/year" + str(year) + "/day" + str(day) + "test.txt"
	
	if year == 2023:
		year2023.run(day, input)
	else:
		raise Error("Year " + str(year) + " is not implemented.")
	return EXIT_SUCCESS
