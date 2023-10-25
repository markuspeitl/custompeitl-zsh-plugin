_rep(){
	
	#echo "Running for rep"
	#compadd $(_cd ~/repos/)
	compadd $(_call_program ls ls ~/repos/)
	#local service=ls
		
}

hellos(){
	printf 'Hello world.'
	printf 'second'
	printf 'third'

	echo "1: $1"
	echo "2: $1"
}

_hellos(){
	#local out_lines
	#out_lines=(${(f)"$(_call_program nmcli nmcli --terse --fields NAME,UUID,DEVICE connection show --active | sed 's/:/ --  /')"})
	
	#compadd -- 
	#compadd -a out_lines
	
	#compadd $(_call_program nmcli nmcli --terse --fields NAME,DEVICE connection show)
	compadd $(_call_program nmcli nmcli --terse --fields NAME,DEVICE connection show)
	#compadd -- ${(f)"$(_call_program nmcli nmcli -t -f DEVICE)"}
	
	
	#compadd $(_call_program nmcli nmcli --terse --fields NAME,DEVICE connection show --active)
	# | sed 's/:/ --  /'
	
	#compadd -- ${(f)"$(_call_program nmcli nmcli -t -f ssid device wifi list)"}
	
	
	#local service=ssh
	#  _ssh "$@"
	
	#local service=cd
	#_cd '$@'
	
	#local -a subcmds
	#subcmds=('c:description for c command' 'd:description for d command')
	#_describe 'command' subcmds
	
	#local -a any_files
	#any_files=( ~/repos/* )
	#_describe 'command' any_files
}

_conf(){
	#compdef conf
	#autoload
	
	#echo "Running for rep"
	#compadd $(_cd ~/repos/)
	compadd $(_call_program ls ls ~/.config/)
	#local service=ls
}


