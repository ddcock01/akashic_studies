
# What is [[GitHub]]?

Git (The Tool):

- Definition: A free Distributed Version Control System (VCS) created by the founder of Linux.
- Purpose: Tracks changes in source code (snapshots), allowing you to save "checkpoints" of your work.
- Key Feature: It is distributed, meaning you can commit changes and work locally without an internet connection. History is stored on your machine, not just a central server.
- [Git Bash, Bash Basics](https://www.youtube.com/watch?v=oQc-2gsjgDg&pp=ygUUZ2l0IGJhc2ggd2Fsa3Rocm91Z2g%3D)
- [Git Tutorial for Beginners: Learn Git in 1 Hour](https://www.youtube.com/watch?v=8JJ101D3knE&pp=ygUUZ2l0IGJhc2ggd2Fsa3Rocm91Z2g%3D)

  

|   |   |   |
|---|---|---|
|Concept|Definition/Description|Key Difference from Centralized VC|
|Git|A free Version Control System (VCS) created by the creator of Linux to track changes in source code. It allows you to: save code snapshots (commits), work with alternative code versions (branches), and roll back to older snapshots.|Distributed Version Control: Allows you to make changes and commits (savepoints) even without network access. Commitments are updated once network is established, and branching is less expensive.|
|GitHub|A company that helps with storing code in the cloud. It is a cloud Git Repository and Services platform that offers: storage and management of Git repositories, code management, and collaborative development (via issues, projects, and pull requests).|Centralized VCS requires constant server access for commits, and history is stored only on the server. Git (and GitHub) allows local history and saves.|
|Repository (Repo)|A project folder used by Git to track all changes, allowing you to jump back to older snapshots. It is created using the git init command.||

Key Git Commands and Concepts

|   |   |
|---|---|
|Command/Concept|Purpose|
|pwd|Print Working Directory (shows where you are)|
|ls|List files and folders in the current directory|
|cd [folder]|Change Directory (move into a folder).|
|cd ..|Move back (up) one folder level.|
|mkdir [name]|Make Directory (create a new folder).|
|touch [name]|Create a new empty file.|
|git init|Creates a new Git repository in the current folder.|
|git add <files(s)>|Stages changes for the next commit.|
|git commit -m "message"|Creates a commit that includes all staged changes. A commit is a saved snapshot of the code.|
|git push -u origin main|Pushes your local commits to the remote repository on GitHub (origin main).|
|git checkout <id>|Temporarily moves to another commit or branch.|
|git revert|Undoes changes of a commit and creates a new commit to record the undo operation.|
|git reset --hard|Undoes changes by deleting all commits since a specified point (use with extreme caution).|
|.gitignore|A file that specifies which files or folders should be ignored by Git (e.g., to prevent sensitive files like .tfstate from making it to GitHub).|
|git clone|Copy remote repository via URL from GitHub|

The Terraform & Git WorkFlow

- terraform init: Initiates Terraform in the folder (requires being in a Git Bash/Terminal).
    
- terraform validate
    
- terraform plan
    
- terraform apply
    
- The notes emphasize a need to push Terraform files (like 0-auth.tf) to your GitHub repository
    

Note: Use curl command to download a specific .gitignore file to prevent sensitive data from being uploaded to GitHub:

curl -O --ssl-no-revoke [https://raw.githubusercontent.com/aaron-dm-mcdonald/aws-image-resizer/refs/heads/main/.gitignore](https://raw.githubusercontent.com/aaron-dm-mcdonald/aws-image-resizer/refs/heads/main/.gitignore)

**