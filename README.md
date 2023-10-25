clone this repo to ~/.oh-my-zsh/custom/plugins by: 

```sh
git clone https://github.com/markuspeitl/custompeilt-zsh-plugin ~/.oh-my-zsh/custom/plugins/custompeitl
```

Add the plugin to zsh startup by adding 'custompeitl' to the ~/.zshrc plugins array: 
``plugins=(custompeitl) ``

For debugging add 
```sh
autoload -Uz compinit
compinit -u
```
to .zshrc as otherwise the completions files and/or functions are not registered


Apparently a _functionname file has to be created for the completion function to even register and that
file needs to be linked on top of file with 
```sh
#compdef functionname
#autoload
```
if then in script.plugin.zsh the _functionname is specified it masks the function of the completions file,
otherwise it simply does not work as zsh only seems to get for _ files that they contain completion instructions.

### Correction

Apparently it is possible to provide the completion in the same file as the function by adding the line
```sh
compdef _functionname functionname
```
where _functionname is the completion function
and functionname is the command to be executed

to the script (which was registered as a oh-my-zsh plugin or that was added/findable to/by fpath)