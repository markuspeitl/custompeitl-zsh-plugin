#! /usr/bin/env sh

ZSH_RC="$HOME/.zshrc"

append_if_not_in(){
    file="$1"
    to_append="$2"

    is_in_file=$(grep "$to_append" < "$file")

    if [ -z "$is_in_file" ];then 
        echo "$to_append" | tee -a "$file"
    fi
}

init_zsh_completions_plugin(){
    to_install_dir_rel=$(dirname "$0")
    to_install_dir=\$HOME/$(realpath --relative-to="$HOME" "$to_install_dir_rel")

    appendage1="\
    autoload -Uz compinit
    compinit -u"
    appendage2="fpath=(\"$to_install_dir\" \$fpath)"

    append_if_not_in "$ZSH_RC" "$appendage1"
    append_if_not_in "$ZSH_RC" "$appendage2"
}

# For debugging it can be useful to use (in ~/.zshrc)
#autoload -Uz hellos
# to tell zsh to look for and reload the "hellos" script every time a new shell is started
#compdef _hellos hellos
# Can be used to tell zsh to use the "_hellos" completion function for the "hellos" script (if autoloading does not work properly)

init_zsh_completions_plugin