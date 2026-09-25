
![[Learn-Linux-in-a-Month-of-Lunches-Steven-Ovadia-1st-First-Edition-PS-2016-Manning-Publications-Co_-LLC-9781617293283-9bcad3954120a9b9affea5f864b2b593-Annas-Archive.pdf]]
![[The Linux Command Line, 2nd Edition.pdf]]

[[Graphical User Interface (GUI)]] vs [[Command Line Interface (CLI)]]
> “graphical user interfaces make easy tasks easy, while command line interfaces make difficult tasks possible,” and this is still very true today.[[The Linux Command Line, 2nd Edition.pdf#pagexxvii]]
> 

<u>Shell</u>: program that takes keyboard commands and passes them to the operating system to be carried out
- *Shell Prompt* = username + machine name followed by the current working directory
	- If the last character of the prompt is a # then the terminal session has superuser privileges
		- Superuser = root user or terminal emulator with superuser/administrative privileges
<u>Terminal Emulator</u>: Used to interact with the shell
<u>Hierarchical directory structure</u>: refers to the tree-like organization of files and other directories that Linux utilizes.
- *Root Directory*
- *Parent Directory*
- *Subdirectory*
Being able to examine text files are important. Sometimes they're just information; human-readable text. Other times they are functional *scripts* that program applications. the command less let's us examine to figure out what the contents of such a *txt* file may be. 

| Commands                                       | Funtion                                                                                                 |
| ---------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| .                                              | working directory                                                                                       |
| ..                                             | working directories parent directory                                                                    |
| <br><br>![[Recording 20260923134015.m4a]]<br>* | Matches any characters                                                                                  |
| ?                                              | Matches any single character                                                                            |
| [characters]                                   | Matches any character that is a member of the set characters                                            |
| [!characters]                                  | Matches any character that is a member of the set characters                                            |
| [:class:]                                      | Matches any character that is a member of the specified class                                           |
| [:alnum:]                                      | Matches any alphanumeric                                                                                |
| [:alpha:]                                      | Matches any alphabetic character                                                                        |
| [:digit:]                                      | Matches any numeral                                                                                     |
| [:lower:]                                      | matches any lowercase letter                                                                            |
| [:upper:]                                      | Matches any uppercase letter                                                                            |
| pwd                                            | Print Current Directory                                                                                 |
| cd                                             | Change directory                                                                                        |
| cd -                                           | Changes working directory to Previous directory                                                         |
| cd ~ user_name                                 | Changes working directory to the home directory of user_name.                                           |
| ls                                             | list directory contents                                                                                 |
| file                                           | determine file type                                                                                     |
| less                                           | view file content                                                                                       |
| date                                           | displace dates                                                                                          |
| Cal                                            | displace calendar                                                                                       |
| df                                             | Displays space                                                                                          |
| free                                           | amount of free space                                                                                    |
| ln                                             | Create hard and symbolic links                                                                          |
| exit                                           | end terminal section                                                                                    |
| type                                           | explains the type of command a shell will execute given a particular command                            |
| alias (name='string')                          | Allows you to create your own command as long as the name isn't already in use. (no whitespace allowed) |
| unalias (alias name)                           | Allows for removal of aliases                                                                           |
Command= an executable program
	- compiled binaries
		- programs written in C and C++
	- Scripting Languages
		- shell, python etc.
	- Shell functions
	- *Alias*:  commands that we define ourselves, designed form other command
	- You can link multiple commands together using ;
	 ![[Pasted image 20260924101410.png]]
	
	- An Alias will disappear after the command prompt is closed.
- arguments
- Pipes
- strings
- options
When using wildcards with rm (delete) you should probably test it with ls command first.
	e.g. rm * .html may delete all the .html files. replace rm with ls to know what the targets would be ahead of time before making permanent damage.
*Hard links* are the original Unix way of creating links.
- every file has a single hard link by default; file name
	- creating a hard link means creating an additional directory entry for a file
- Two limitations
	1.  cannot reference a file outside of its own file system
		- link must reference a file on the same disk partition as the link itself
	2. A hard link may not reference a directory
*Symbolic Links* are special files that contains a text pointer that directs to the referenced file or directory.
- Like a windows shortcut
- writing anything to the symbolic like is also written to the the referenced file too.
	- delete the symbolic link only deletes the link, not the referenced file.
	- delete the file, the link would persist but it would point to nothing.
		- *broken link*
	