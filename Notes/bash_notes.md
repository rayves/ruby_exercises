# Bash notes

bash script file = .sh

declare type of script: 
    declare as bash script = **#!/bin/bash**

bash script = series of commands that can be run from the terminal
            - commands will be run synchronously

## Commands list:
eg.
Ruby petstore.rb

## File Permissions
ls -l run_app.sh

-rw-r--r-- 1 user
-w = write permission
-r = read permission
-x = execute permission
need to give executable permissions

chmod = command that changes permission of a file
chmod +x FILE = give execute permissions to FILE


executable files are bolded in list files


## PATH for system environment:

echo $PATH

system environment variables begin with **$**

1. add script file to existing PATH directory
2. add current directory to PATH
3. not depend on PATH to execute file
   1. use entire PATH from root to file or
   2. use ./ to state current directory