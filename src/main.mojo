from sys import argv, exit

from adventofmojo.cli import EXIT_SUCCESS, EXIT_FAILURE, run

fn main():
	args = argv()
	try:
		exit_code = run(args)
	except e:
		exit_code = EXIT_FAILURE
		print(e)
	if exit_code != EXIT_SUCCESS:
		exit(exit_code)
