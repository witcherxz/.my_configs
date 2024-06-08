check_sync(){
	git -C ~/.my_configs/ fetch origin main > /dev/null 2>&1
	if [ ! x"$(git rev-parse main)" = x"$(git rev-parse origin/main)" ]
	then
    		echo 'WARN: .my_config is out of sync !!'
	fi
}

set +m
check_sync & disown
set -m

source ~/.my_configs/aliases.bash
