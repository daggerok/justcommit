# just commit

## installation

```bash
echo 'function justcommit {
  if [[ -z "$1" ]] ; then
    joke="$(curl -s http://whatthecommit.com/index.txt)"
    git commit -am "${joke} (C) whatthecommit.com"
  else
    git commit -am "$1"
  fi
}' >> ~/.bash_profile # or ~/.zshrc
```

## usage

```bash
git add .
justcommit
git psuh
```