# fedora-jq
Fedora based container for building and using cutting edge version of jq.

Building
--------
```
git clone https://github.com/shaded-enmity/fedora-jq
cd fedora-jq/
docker build -t jqx .
```
Integration
-----------
Add this to your `~/.bashrc`:
```
alias jqx='docker run -t jqx'
```

and use simply as:

```
jqx --version
```

