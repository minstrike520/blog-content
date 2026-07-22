git_files := ".git .github .gitignore"

alias r := recover
alias a := archive
alias c := clean
alias ex := export
alias im := import

recover:
  tar xf git.tar

archive:
  tar cf git.tar {{git_files}}

clean:
  rm -rf {{git_files}}

export dest:
  rm -rf {{dest}}/posts
  rm -rf {{dest}}/spec
  rm -rf {{dest}}/config.ts
  cp -r posts/ {{dest}}/
  cp -r spec/ {{dest}}/
  cp config.ts {{dest}}/

import dest:
  rm -rf posts
  rm -rf spec
  rm -rf config.ts
  cp -r {{dest}}/posts/ ./
  cp -r {{dest}}/spec/ ./
  cp {{dest}}/config.ts ./
