
# Data Objects

Hackertracker.Test.Seeds =
  users:
    bob: {id: 1, email: 'bob@test.com'}


# Data Responses

Hackertracker.Test.ResponseJSON =
  bobInitial:
    id: Hackertracker.Test.Seeds.users.bob.id
    email: Hackertracker.Test.Seeds.users.bob.email

Hackertracker.Test.Response =
  bobInitial: 
    status: 200
    responseText: JSON.stringify Hackertracker.Test.ResponseJSON.bobInitial


# Data Accessors

@users = (name) ->
  User.find Hackertracker.Test.Seeds.users[name].id


# AJAX Requests

@initApplication = (callback) =>
  callback()
