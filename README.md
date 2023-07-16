# GitOps tickets-actions

git clone <url>
git checkout -b <newBranchname>
git add .
git commit
git push
pr
git pull --rebase  #if there are other branches associated with the pull, this will rebase all the branches with the main branch


# custom commit message:

create custom message and save in .gitmessage 

save .gitmessage in the home directory

run this command 

git config --global commit.template ~/.gitmessage
