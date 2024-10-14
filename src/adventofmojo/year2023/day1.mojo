fn run(input_path: String = "data/year2023/day1test.txt") raises -> List[String]:
	result = List[String]()
	file = open(input_path, "r")
	text = file.read()
	lines = text.splitlines()
	digits = str("")
	value = 0

	for line in lines:
		chars = line[]

		for char in chars: # find first digit
			if str(char).isdigit():
				digits = char
				break

		countup = range(len(chars))
		countdown = reversed(countup)
		for x in countdown: # find last digit
			char = chars[x]
			if char.isdigit():
				digits += char
				break
		value += int(digits)
	result.append(str(value))
	return result
