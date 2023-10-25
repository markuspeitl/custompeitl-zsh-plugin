#autoload

# I guess this overrides the completion function defined with ./_hellos when commented out
#_hellos(){
#	echo "test2"
#}

hellos(){
	echo 'Hello world.'
	echo 'second'
	echo 'third'
	echo 'fourth'

	echo "1: $1"
	echo "2: $1"
}

_local-oh-my-completion(){
	#compdef othertest
	printf "\n\n"
	echo "Hello from '_local-oh-my-completion'"
	echo "i am a zsh completion function"
	echo "that was registered with 'compdef _local-oh-my-completion localohmy'"
}

localohmy(){
	echo "Hello world."
	echo "Executing function of 'localohmy'"
}

# Set _local-oh-my-completion to be the completion function of the function localohmy
compdef _local-oh-my-completion localohmy


# Set crep to have the same completion function as the rep command
compdef crep=rep
# Alternative definition of the same effect than the above command
#compdef _rep crep


#Can be added in ~/.zshrc at the bottom to reload changes when opening a zsh shell (otherwise only changes in plugins reload functions once)
#autoload -Uz compinit
#compinit -u