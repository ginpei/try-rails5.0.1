# Build docker image

```console
$ docker build -t heroku-rails .
```

# Start server

```console
$ docker run --name xx -d --rm -v `pwd`:/app -p 3000:3000 heroku-rails
142a5ccdae1619a25d02878bacade19c19a03323ff6d38df86c7b49061fe68fd
$ docker stop xx
```

## Windows

Replace `` `pwd` `` with `%CD%`.

```console
> docker run --name xx -d --rm -v %CD%:/app -p 3000:3000 heroku-rails
142a5ccdae1619a25d02878bacade19c19a03323ff6d38df86c7b49061fe68fd
> docker stop xx
```

# CLI

```console
$ docker run -d --rm -v `pwd`:/app heroku-rails rake db:migrate
$ docker run -d --rm -v `pwd`:/app heroku-rails rails g controller misc home
```
