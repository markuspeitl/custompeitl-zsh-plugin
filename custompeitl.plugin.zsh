#compdef conf
#autoload


hellos(){
	echo 'Hello world.'
	echo 'second'
	echo 'third'
	echo 'fourth'

	echo "1: $1"
	echo "2: $1"
}

compdef crep=rep
#compdef `_hellos` hellos