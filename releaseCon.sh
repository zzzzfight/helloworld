projec
projectDir="zzzzfight"
projectName="$1"


# git clone 
gitClonePro(){
	echo "git clone project"
	cd "$projectName"
	git clone https://github.com/"$projectDir"/"$projectName".git
	ret=$(echo $?)
	if [ $ret -eq 0 ]; then
		echo "error: gitclonePro"
		exit
	else
		echo "success: gitclonePro"
	fi
}


# updateLib 
updateLib(){
	echo "branch judgment"
	$(mkdir projectName)
	ret=$(echo $?)
	if [ $ret -eq 0 ]; then
		echo "mkdir file success"
	else
		echo "file exist and rm file"
		$(rm -rf ./"$projectName")
		updateLib
	fi
}

#main
main(){
	if [ $1 -z ]; then
		echo "error: no projectName"
		echo "please input projectName"
		exit
	else
		updateLib
		gitClonePro
	fi
}

main


# updateLib

# cd "$projectName"

# git clone https://github.com/zzzzfight/"$projectName".git

# git log | grep commit
# q
# echo ${PATH}