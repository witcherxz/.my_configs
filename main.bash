check_sync(){
	GDIR=~/.my_configs/

	git -C $GDIR fetch origin main > /dev/null 2>&1
	if [ ! x"$(git -C $GDIR rev-parse main)" = x"$(git -C $GDIR rev-parse origin/main)" ]
	then
    		echo 'WARN: .my_config is out of sync !!'
	fi
}

set +m
check_sync & disown
set -m

source ~/.my_configs/aliases.bash
