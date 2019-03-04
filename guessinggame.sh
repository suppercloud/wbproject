function guessfilenum {
    local real_num=$(ls -l | grep "^-" | wc -l)
    local isright=false
    while [[ $isright -eq false ]]
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
	    let isright=!$isright
	fi
    done

    echo "Congratulations!You are right!"
}

guessfilenum
