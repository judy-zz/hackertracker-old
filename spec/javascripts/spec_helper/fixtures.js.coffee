
# Data Objects

HackerTracker.Test.Seeds =
  users:
    bob: {id: 1, email: 'bob@test.com'}


# Data Responses

HackerTracker.Test.ResponseJSON =
  bobInitial:
    id: HackerTracker.Test.Seeds.users.bob.id
    email: HackerTracker.Test.Seeds.users.bob.email

HackerTracker.Test.Response =
  bobInitial: 
    status: 200
    responseText: JSON.stringify HackerTracker.Test.ResponseJSON.bobInitial


# Data Accessors

@users = (name) ->
  User.find HackerTracker.Test.Seeds.users[name].id


# AJAX Requests

@initApplication = (callback) =>
  callback()
