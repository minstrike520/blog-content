git_files := ".git .github .gitignore"

archive:
  tar cf git.tar {{git_files}}

clean:
  rm -rf {{git_files}}

recover:
  tar xvf git.tar
