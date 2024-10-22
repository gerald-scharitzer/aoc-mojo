"""Day of Advent of Code"""

trait Day:

	fn get_name(self) -> String:
		...
	fn set_name(inout self, name: String):
		...
	fn run(self, input_path: String = "") raises -> List[String]:
		...

fn read_input(input_path: String) raises -> String: # TODO static trait method?
	file = open(input_path, "r")
	text = file.read()
	file.close()
	return text
