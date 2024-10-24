from testing import assert_equal

from adventofmojo.year2023.day1 import Day1

fn test_it() raises:
	day = Day1()
	assert_equal(day.get_name(), "Trebuchet?!")
