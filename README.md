# bash
- All about bash in Linux

# echo

# Argument
- `$1`
  - This will take `1` word right after the name of the file during execution.
- `$*`
  - This will take all the words right after the name if the file during execution
- `PATH=$PATH:~/bin`
  - Adding your new directory to the OS path

# Commands
- `type <name>`
- `var="hola"`
- `echo $hola`
- `printf 'hello\n'`
- `printf "p%st" a e i o u`
- `chmod u+x <file>`
  - This will add the executable rights for the file owner only
- `export EDITOR=vi`
- `IFS=: read a b` ---> 1:2
  - `echo $a` igual a `1`
  - `echo $b` igual a `2`

## Command READ
- `read <var_name>` # Will prompt in the terminal and anything you type will be send to the variable `var_name`
- `read help`
- `read -p <var_name>`

## Command if
- Using `if` inside a bash script file
  ```
  if [[ <testcode> ]]; then
    # Code you want to run
    # Only if the <testcode> succeeds
  else
    # Code you want to run
    # Only if the <testcode> fails
  fi
  ```
- `[[ Expression ]]`  MORE INFO at `help test`
  *Expression*              --->    *True if*
  [[ $str ]]                --->    str is not empty
  [[ $str = "something" ]]  --->    str equals "something"
  [[ $str="something" ]]    --->    `always returns true!`
  [[ -e $filename ]]        --->    file $filename exists
  [[ -d $dirname ]]         --->    $dirname is a directory
  [[ ! $1 ]]                --->    ! is NOT. Evaluate NOT argument?

- Using `if` in the Command line
`if <testcode>; then successcode; else failcode; fi`

- *For help use*:
  `help if`
  `help [[`
  `help test`

## Debugging
- `{}` helps to keep the var intact inside an string: ${USER}_filename_${date}.txt
- `#!/bin/bash -x` Starts the debug mode for the entire file
- `set -x` and `set +x` will debug only the section where you have the `set`
-
