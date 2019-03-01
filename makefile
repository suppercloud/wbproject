all: readme

clean:
	rm README.md

readme: guessinggame.sh
	touch README.md
	echo "#This is my workbench project" > README.md
	date >> README.md
	echo "The lines num of *guessinggame.sh*:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
