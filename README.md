## Exchange Online App

### About

Exchange Online App is a open source app for money convert that use http://fixer.io/ API.

Link to access: http://exchange-online-app.herokuapp.com/

### Start docker-compose

`$ docker-compose up --build`

### Run
`$ docker-compose run --rm website rails db:create db:migrate db:seed`

### Tests
`$ docker-compose run --rm website rake`

### Build
Need to execute `$ docker-compose run --rm website rake assets:precompile` and commit with the branch.
Automatically build with Codeship (https://app.codeship.com/) when pushed something to master branch.
