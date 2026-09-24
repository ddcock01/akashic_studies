Basic [[Command Line Interface (CLI)]]


|                                     |                                                                                                                                                                                 |
| ----------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Command/Concept                     | Purpose                                                                                                                                                                         |
| pwd                                 | Print Working Directory (shows where you are)                                                                                                                                   |
| ls                                  | List files and folders in the current directory                                                                                                                                 |
| ls -l                               | l = long listing format = more details                                                                                                                                          |
| ls -1                               | formats list in 1(number) column                                                                                                                                                |
| ls -n                               |                                                                                                                                                                                 |
| ls -a                               | a = list all = list hidden file                                                                                                                                                 |
| ls -al                              | a = all + l =long listing format = list all in long list format                                                                                                                 |
| ls -A                               | A = Almost all                                                                                                                                                                  |
| ls .                                | .= current directory = list current directory                                                                                                                                   |
| ls ..                               | .. = parent directory = list parent directory                                                                                                                                   |
| ls -lt                              | sorts files in newest files to oldest                                                                                                                                           |
| ls -ltc                             |                                                                                                                                                                                 |
| ls -ltu                             |                                                                                                                                                                                 |
| ls -s                               | s= size/space = list w/ size/space                                                                                                                                              |
| ls -ls                              | list long form with size                                                                                                                                                        |
| ls -lS                              | list files largest to smallest                                                                                                                                                  |
| ls --help                           | help                                                                                                                                                                            |
| cd [folder]                         | Change Directory (move into a folder).                                                                                                                                          |
| cd ..                               | Move back (up) one folder level.                                                                                                                                                |
| mkdir [name]                        | Make Directory (create a new folder).                                                                                                                                           |
| touch [name]                        | Create a new empty file.                                                                                                                                                        |
| file                                |                                                                                                                                                                                 |
| cat                                 | print files, the WHOLE file                                                                                                                                                     |
| more                                | prints files in parts, allows to slowly go through file                                                                                                                         |
| less                                | less = less is more, allows for search option and better navigation through printed file than "more" command. search [[strings]] using /                                        |
| head                                | prints the first 10 lines = the head OR use -n(#) to get specific on how many lines. E.G. -n22 means first 22 lines.                                                            |
| tail                                | prints last 10 lines by default OR modify with -n(#) to specify the number of lines                                                                                             |
| Clear                               | Clears prompt cat=concatenate                                                                                                                                                   |
| man                                 | Manual                                                                                                                                                                          |
| man ls                              | Manual; list of commands                                                                                                                                                        |
| man - f intro                       | show's different sections/pages of manual                                                                                                                                       |
| man -k ls                           | searches for given command through all man pages, and returns all of them as output                                                                                             |
| man -w ls                           | returns the location of the file from where the page is rendered                                                                                                                |
| mkdir (name)                        | make directory (folder)                                                                                                                                                         |
| mkdir (name){number of directories} | Make multiple directories                                                                                                                                                       |
| mkdir -p(/{01..100})                | make parent directory                                                                                                                                                           |
| rmdir                               | remove/delete directory                                                                                                                                                         |
| rmdir -p                            | remove/delete parent directory                                                                                                                                                  |
| rm -rf                              | remove objects (recursively) by force.                                                                                                                                          |
| whatis (command)                    | shows short description of function                                                                                                                                             |
| vim                                 | Creates, enters and allows to add text simultaneously.                                                                                                                          |
| tree                                | recursively shows content of directory/folder/repository; recursively extends this to subdirectory and its content as well. Prints in hierarchical, linear, tree like structure |
| cp                                  | cp = copy cp (name of target file)                                                                                                                                              |
| diff                                | examines differences between 2 files                                                                                                                                            |
| vi                                  | text editor                                                                                                                                                                     |
| :q                                  | quit                                                                                                                                                                            |
| wc                                  | wc = word count. Used to cound lines, words, characters, and bytes in text files or pipeline output.                                                                            |
| type                                | how a command name is interpreted                                                                                                                                               |
| which                               | display which executable program will be executed                                                                                                                               |
| help                                | help for shell builtins                                                                                                                                                         |
| apropos                             | Display a command's manual page                                                                                                                                                 |
| info                                | Display a list of appropriate commands                                                                                                                                          |
| whatis                              | display one-line manual page descriptions                                                                                                                                       |
| alias                               | Create an alias for a command                                                                                                                                                   |
| Code .                              | Open [[Visual Studio (VS) Code]]                                                                                                                                                |

- What passes after the - is an argument.
	- - = one letter argument
	- -- = more than one letter, often times an English word
- . files
	- . first directory of user
	- .. parent directory
- You can only delete parent directory when it is empty.
Line structure
- Command= an executable program
	- compiled binaries
		- programs written in C and C++
	- Scripting Languages
		- shell, python etc.
	- Shell functions
	- Alias:  commands that we define ourselves, designed form other commands
- Shell functions
- arguments
- Pipes
- strings
- options

![[Pasted image 20260921213937.png]]============