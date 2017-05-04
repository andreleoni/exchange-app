## Exchange Online App

### About

Exchange Online App is a open source app for money convert that use http://fixer.io/ API.

Link to access: http://exchange-online-app.herokuapp.com/

[![Screen Shot 2017-05-03 at 23.39.35.png](https://s22.postimg.org/keb7ffvg1/Screen_Shot_2017-05-03_at_23.39.35.png)](https://postimg.org/image/43b3j4iy5/)

### Start docker-compose

`$ docker-compose up --build`

### Run
`$ docker-compose run --rm website rails db:create db:migrate db:seed`

### Tests
`$ docker-compose run --rm website rake`

### Build
Need to execute `$ docker-compose run --rm website rake assets:precompile` and commit with the branch.
Automatically build with Codeship (https://app.codeship.com/) when pushed something to master branch.
