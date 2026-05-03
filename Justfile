git_files := ".git .github .gitignore"

archive:
  tar cvf git.tar {{git_files}} && rm -rf {{git_files}}

recover:
  tar xvf git.tar
