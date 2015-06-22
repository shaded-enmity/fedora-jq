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

Edit your `~/.bashrc` and add the following:

```
jqx() {
    docker run -i --entrypoint="/jq/jq" $@
}
```

And use:

```
jqx . < path-to-json
```
or
```
echo '{"a": 1}' | jqx .a
```
