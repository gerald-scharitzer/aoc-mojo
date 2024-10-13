"""Year 2023"""

import .day1

fn run(day: Int) raises:
	if day == 1:
		print(day1.run())
	else:
		raise Error("Year 2023 day " + str(day) + " is not implemented.")
