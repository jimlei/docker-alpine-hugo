Alpine Linux docker image with Hugo with "hugo" as entrypoint.

```bash
$ docker run --rm -it -v $(pwd):/data jimlei/alpine-hugo help
```

#### Alias
Add to `~/.bashrc`
```bash
alias composer='docker run --rm -it -v $(pwd):/data jimlei/alpine-hugo'
```

Load the changes
```bash
$ source ~/.bashrc
```

Usage
```bash
$ hugo help
```
