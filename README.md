# just commit

## installation

requires curl

```bash
brew reinstall curl
echo 'function justcommit() {
  if [[ -z "$1" ]] ; then
    joke="$(curl -s https://whatthecommit.com/index.txt)"
    git commit -am "${joke} (C) whatthecommit.com"
  else
    git commit -am "$1"
  fi
}' >> ~/.bash_profile # or ~/.zshrc
source ~/.bash_profile # or ~/.zshrc
```

## usage

```bash
git add .
justcommit
git psuh
```
