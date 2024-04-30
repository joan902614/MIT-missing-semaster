import sys
def fizz_buzz(limit):
	for i in range(0, limit):
		if i % 5 == 0 and i % 3 == 0:
			print('fizzbuzz')
		elif i % 3 == 0:
			print('fizz')
		elif i % 5 == 0:
			print('buzz')
		if i % 3 and i % 5:
			print(i)

def main():
    fizz_buzz(int(sys.argv[1]))

main()
