all: readme.md
readme.md: guessinggame.sh
	echo "## Johns Hopkins University" > readme.md
	echo "# THE UNIX WORKBENCH" >> readme.md
	echo "## Peer Graded Assignment" >> readme.md
	echo -n "The date and time **make** was run : " >> readme.md
	date >> readme.md
	echo -n "Number of lines in *guessinggame.sh* : " >> readme.md
	grep -c "" guessinggame.sh >> readme.md
clean: 
	rm readme.md



