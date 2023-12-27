# Custom Linux CMD Maker
 This is a script that turns your bash scripts into terminal commands without losing the original script.

 # How do you use it?

 Just execute the maker.sh script and fill out the fields.

 ## !!MPORTANT!!

 1. The filename has to be **exactly** introduced.

 For example: ```shell.sh```, ```test.sh``` or ```my_shell_script.sh```.

 2. The command name will rename the script and copy it on **/bin** directory.

 3. Note that if you change the original shell script, it will not change the one on **/bin**.

 4. I've left a log.txt file so you don't forget the commands you've made (if you remove a command it will persist on log.txt) :D

 5. The script will require **sudo** or **root** for execution.
 
 6. Check if you have **readlink** installed.