DIR="/mnt/c/Users/Leon.hergesic.adamov/Desktop/"
if [ -d "$DIR" ]; then
	BASE="/mnt/c/Users/Leon.hergesic.adamov/"
else
	BASE="/mnt/c/Users/Leon/"
fi

# Moving around
alias dt="cd ${BASE}Desktop"
alias dc="cd ${BASE}OneDrive/Dokumenti/ucenje/main && nvim ."
