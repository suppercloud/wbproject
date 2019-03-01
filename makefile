all: readme

clean:
	rm README.md

readme: guessinggame.sh
	touch README.md
	echo "# wbproject\n" > README.md
	date >> README.md
	echo "\nThe lines num of *guessinggame.sh*:\n" >> README.md
	cat guessinggame.sh | wc -l >> README.md
