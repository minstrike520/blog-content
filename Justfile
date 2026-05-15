git_files := ".git .github .gitignore"

alias r := recover
alias a := archive
alias c := clean

recover:
  tar xf git.tar

archive:
  tar cf git.tar {{git_files}}

clean:
  rm -rf {{git_files}}
