from adventofmojo.day import Day, read_input

struct Day1(Day):
	var name: String
	
	fn __init__(inout self):
		self.name = "No Time for a Taxicab"
	
	fn get_name(self) -> String:
		return self.name
	
	fn set_name(inout self, name: String):
		self.name = name

	fn run(self, input_path: String = "data/year2026/day1test.txt") raises -> List[String]:
		"""Solve arithmetically to avoid branching

		The bearing maps to increments and decrements of latitude and longitude.

		| bearing | horizontal | vertical |
		|---------|------------|----------|
		| north   |          0 |        1 |
		| east    |          1 |        0 |
		| south   |          0 |       -1 |
		| west    |         -1 |        0 |

		Turning translates these horizontal and vertical differences.

		| bearing | horizontal | vertical | turn  | horizontal | vertical |
		|---------|------------|----------|-------|------------|----------|
		| north   |          0 |        1 | right |          1 |        0 |
		| east    |          1 |        0 | right |          0 |       -1 |
		| south   |          0 |       -1 | right |         -1 |        0 |
		| west    |         -1 |        0 |	right |          0 |        1 |
		| north   |          0 |        1 | left  |         -1 |        0 |
		| east    |          1 |        0 | left  |          0 |       -1 |
		| south   |          0 |       -1 | left  |          1 |        0 |
		| west    |         -1 |        0 | left  |          0 |       -1 |
		"""
		result = List[String]()
		text = read_input(input_path)
		lines = text.splitlines()
		latitude = 0
		longitude = 0
		bearing = 0 # 0 = North, 1 = East, 2 = South, 3 = West
		horizontal = 0
		vertical = 1

		for line in lines:
			chars = line[]
			items = chars.split(", ")
			for item in items:
				chars = item[]
				turn = chars[0]
				if turn == "R":
					pass # FIXME implement bearing change
				elif turn == "L":
					pass # FIXME implement bearing change
				else:
					raise Error("Invalid turn: " + turn)
				steps = chars[1:]
				count = int(steps)

		distance = abs(latitude) + abs(longitude) # taxicab distance
		result.append(str(distance))
		return result
