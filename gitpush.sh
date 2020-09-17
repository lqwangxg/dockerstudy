git config --global user.email "lqwangxg@gmail.com"
git config --global user.name "lqwangxg"

#==========================
branch=master
comment=commit
if [ $1 eq "-b" ]; then 
  branch=$2
elif [ $1 eq "-m" ]; then 
  comment=$2
fi

if [ $3 eq "-b" ]; then 
  branch=$4
elif [ $3 eq "-m" ]; then 
  comment=$4
fi
#=------------------------

git add . 
git commit -a -m ${comment}
git push -u origin ${branch}
