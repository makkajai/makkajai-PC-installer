git reset --hard HEAD >> ./logs/update.log
git stash save
git pull --rebase >> ./logs/update.log