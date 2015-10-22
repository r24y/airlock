function airlock
{
	case "$1" in
		"add") airlock_add $2;;
		"del") airlock_del $2;;
	esac
}

# Add a file to your airlock
function airlock_add
{
	echo "Adding $1 to airlock"
	mv $HOME/$1 $HOME/.airlock/user-files/$1
	ln -s $HOME/.airlock/user-files/$1 $HOME/$1
}

# Remove a file from your airlock
function airlock_del
{
	echo "Removing $1 from airlock"
	rm $HOME/$1
	mv $HOME/.airlock/user-files/$1 $HOME/$1
}
