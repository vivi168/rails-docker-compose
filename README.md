# How to use

First run the following command to generate a new rails app.

```
$ docker-compose run web rails new myapp --force --database=postgresql --skip-bundle
```

You can also simply create a folder named `myapp` containing your existing rails project.

Now that you have all the necessary files, run this command to build the image again:

You should run this command every time you make a change to the `Gemfile` or the `Dockerfile`.

```
$ docker-compose build
```

Make the following changes to your `config/database.yml`

```
default: &default
  adapter: postgresql
  encoding: unicode
  host: db
  username: postgres
  password:
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
```

You can now start the application with:

```
$ docker-compose up -d
```

In order to create the database run the following command:

```
$ docker-compose run web rails db:create
```

You may use `docker-compose run` for other utilities, like:

```
$ docker-compose run web rails g model product
```
