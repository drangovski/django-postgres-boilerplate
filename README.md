# Django - Postgres Boilerplate

This is a dockerized boilerplate for setting a Django project with Postgres database on the backend. 

To start using it for your project be sure to have Docker installed on your machine and follow up the next steps:

### 1. Clone the repo in your projects folder
```
git clone git@github.com:drangovski/django-postgres-boilerplate.git
```

### 2. Create the .env file
You will need to create an .env file in your project's root directory. You can either rename the `.env.example` file to `.env` and modify the values for the variables inside; or you can use the `env_generator.sh` file in order to generate `.env` file for you (this will generate the required Django's SECRET_KEY automatically).

To use the generator, first give the file permission on your system:

```
chmod +x env_generator.sh
```

and after that run the generator file:

```
./env_generator.sh
```

### 3. Build & Run docker-compose

To build and run the project use docker-compose:

```
docker-compose build
docker-compose up
```

This should set up the containers for Postgres and Django and it should start your project on 
```
http://localhost:8000
```