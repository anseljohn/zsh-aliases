alias ee='cd /Users/anseljohn/Documents/School/Freshman/Fall/ee1301Main/EE1301'
alias ohmy='cd ~/.oh-my-zsh'
alias wd='/Volumes/WD_BLACK'
alias gall='git add . ; git commit -m'
alias push='git push'
alias clone='git clone'
alias pull='git pull'
alias ezsh='atom ~/.zshrc'
alias csci1913='python3 ~/Documents/dev/CSCI1913/main.py'

dev () {
	if [ -z "$1" ]
	then
		cd ~/Documents/dev
	else
		cd ~/Documents/dev/$1
	fi
}

ealias () {
	atom /Users/anseljohn/.oh-my-zsh/custom/aliases.zsh
}

lsloop () {
	while true
	do
		ls
	done
}

eecompress () {
	dir=$PWD
	tar -zcvf hw${dir: -1}_ansel054.tgz hw${dir: -1}_directory
}

cpprun () {
	if [ -z "$2" ]
  then
		g++ -g $1 -o run
		./run
	else
		g++ -g $1 -o $2
		./$2
	fi
}

jrun () {
	JAVA=".java"
	javac $1$JAVA && java $1
}

transfer () {
	printf "Current directory: $PWD \n"
	printf "File count: "
	ls -l . | wc -l
	vared -p "Confirm transfer of files to WD_BLACK (yY/nN)... " -c conf

	case $conf in
		[yY])
			echo "**Confirmed... Transfering files..."
			if [ ! -d "/Volumes/WD_BLACK" ]
			then
				echo "WD_BLACK is not connected... Exiting..."
			else
				rsync -R -u -p * /Volumes/WD_BLACK/Cinema/Cam/Pics
			fi
		;;

		[nN])
			echo "**Exited."
		;;

		*)
			echo "Invalid input."
		;;
	esac
}
