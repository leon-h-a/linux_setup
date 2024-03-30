function cdd(){
	cd *$1*
}

function gen(){
DIR="/mnt/c/Users/Leon.hergesic.adamov/Desktop/"
if [ -d "$DIR" ]; then
	BASE="/mnt/c/Users/Leon.hergesic.adamov/OneDrive/"
else
	BASE="/mnt/c/Users/Leon/OneDrive/"
fi
	cp ${BASE}Backups/latex/ucenje.tex $1.tex
}

# export -f cdd
# export -f gen
