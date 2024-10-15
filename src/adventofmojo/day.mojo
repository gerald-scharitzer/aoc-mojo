"""Day of Advent of Code"""

trait Day:

	fn get_name(self) -> String:
		...
	fn set_name(inout self, name: String):
		...
