# Google Cloud Functions Sample

## Development Environment Construction

```
$ docker-compose build
$ docker-compose up -d
```

Attach container and install the bundle.

```
# bundle install
```

## Functions Framework for Ruby

Attach container and start the framework.

```
# bundle exec functions-framework-ruby --target hello
```

In a separate shell, you can send requests to this function using curl:

```
curl http://localhost:8080
# Output: Hello, world!
```

## Deploy

