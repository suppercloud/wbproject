function guessfilenum {
    local real_num=$(ls -l | grep "^-" | wc -l)
    
    while true
    do
	echo "How many files are in the current directory?"
        read guess_num
	if [[ $guess_num -gt $real_num ]]
	then
	    echo "It's too high.Try again!"
	elif [[ $guess_num -lt $real_num ]]
	then
	    echo "It's too low.Try again!"
	else
	    echo "Congratulations!You are right!"
	    break
	fi
    done
}

guessfilenum
