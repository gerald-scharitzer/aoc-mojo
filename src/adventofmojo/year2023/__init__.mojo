"""Year 2023"""

import .day1

fn run(day: Int, input: String) raises:
	if day == 1:
		result = day1.run(input)
		for value in result:
			print(value[])
	else:
		raise Error("Year 2023 day " + str(day) + " is not implemented.")
