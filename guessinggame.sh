function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Pleae enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Less then the actual number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater then the actual number"
        else
            echo "Congratulation,you guessed it right!"
        break;
        fi
    done
}
echo "Guess the number of files in the current directory!"
guess
