# replace Name with your name 
N=1 # starts counter at 1
for n in $(seq 1 5) # sets the increment to one and sets it to end at 5
do # it makes it start
echo "i love jerjy so much" # displays a message when the script runs
mkdir jerjy${n} #creates 5 directories with the numbers 1 to five
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt #changes xxxx to a number and sends it to input.txt
cd jerjy${n} #opens the directory
cp ../input.txt ./ # copies the changed input.txt to its respective directories
cd ../ # goes back to the previous directory
N=$(( $N + $n ))
done
