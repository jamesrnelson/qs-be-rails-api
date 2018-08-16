# README

## Quantified Self

Quantified Self is available in production at https://jamesrnelson.github.io/qs-fe-express/foods.html

Quantified Self is the rails api that supports a preexisting frontend. The frontend and backend together allow an individual to create foods and add them to certain preexisting meals in order to keep track of their daily caloric intake.

### Ruby version

Quantified self was built using Ruby 2.4.3 and Rails 5.1.6 and tested with RSpec.

### Set up and Use

1. In order to run Quantified Self locally, you will first need to set up the front end by following the instructions at the following link: https://github.com/jamesrnelson/qs-fe.

2. After you have set up the front end, set up the back end by running

```shell
git clone git@github.com:jamesrnelson/qs-be-rails-api.git
```

3. Install all required gems by running bundler:

```shell
bundle
```

4. In your local backend directory, run the server on http://localhost:3000 by running the following command:

```shell
rails server
```

5. In your local frontend directory, run the server on http://localhost:8080 by running the following command:

```shell
npm start
```

6. In  your browser, navigate to http://localhost:8080. If everything has installed correctly you should be able to interact with the frontend app, which will communicate with the rails api to store your nutritional and caloric data in the appropriate places.

### How to run the test suite

Quantified Self was thoroughly tested using RSpec. In order to run the tests, from your backend root directory run the rspec command:

```shell
rspec
```
