![[Pasted image 20260923211608.png]]
Learning how to organize my files better and faster through the [[Command Line Interface (CLI)]]/[[GitHub]]

Learning why having spaces is annoying for navigations; I couldn't tab to get longer files into the command. The solution was to "wrap" using double quotations so that the computer understood.

I also used mv to rename, overwrite the names to begin correcting this for later. I used the same command to organize my folder a bit.
![[Pasted image 20260923221551.png]]
After the changes I made I was about to end up deleting a lot of files because my repo didn't have the full picture. So I moved up to [[akashic_studies]] folder/directory and staged the change from there to get the full picture.
![[Pasted image 20260923221750.png]]
I ran the git add -A to capture all changes across all directories.

Then we got to something new, we created [[09_23_2026_script.sh]]
- command vi to begin writing into it
	-#!/bin/bash  
  
echo "Welcome to the Training Menu"  
echo "1) Check system information"  
echo "2) Check current directory"  
echo "3) Check current user"  
echo "4) Exit"  
  
read -p "Enter your choice [1-4]: " choice  
  
# Conditional logic  
if [[ -z "$choice" ]]; then  
    echo "You did not enter a selection."  
    exit 1  
fi  
  
# Case statement  
case "$choice" in  
    1)  
        echo "System information:"  
        uname -a  
        ;;  
    2)  
        echo "Your current directory is:"  
        pwd  
        ;;  
    3)  
        echo "The current user is:"  
        whoami  
        ;;  
    4)  
        echo "Exiting program."  
        exit 0  
        ;;  
    *)  
        echo "Invalid selection. Please choose 1 through 4."  
        ;;  
esac
- :wq! allowed to save AND quit the edits
	- Note: we could've used w to save and then q to quit separately
		- Note: if you quitted without saving, then it wouldn't have saved the edits we've done to it.
- Lastly, ./09_23_2026_script.sh to run the .sh which is a shell prompt!!! Finish the last chapter, shell prompt was mentioned as part of the commands.
![[Pasted image 20260923215508.png]]


## Homework:

- [ ] Python distilled (Chapters 1-2)
- [ ] Python Killa Coda (Week 1)
- [x] Python YT Video