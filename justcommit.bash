justcommit () {
  if [[ -z "$1" ]] ; then
    copyright="(C) whatthecommit.com"
    joke="$(curl -s http://whatthecommit.com/index.txt)"
    suffix="${joke} ${copyright}"
    git commit -am "${suffix}"
  else
    git commit -am "$1"
  fi
}

###
#justcommit () {
#  copyright="(C) whatthecommit.com"
#  joke="$(curl -s http://whatthecommit.com/index.txt)"
#  suffix="${joke} ${copyright}"
#  if [[ -z "$1" ]] ; then
#    git commit -am "${suffix}"
#  else
#    git commit -am "$1 | ${suffix}"
#  fi
#}
###
