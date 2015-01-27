
Given(/^I am on the login page$/) do
  # @browser.goto "http://puppies.herokuapp.com/login"
  @browser.goto 'http://localhost:8000/login.html'
  @home = LoginPage.new(@browser)
end

When(/^I enter a valid username and password$/) do
  @home.username = 'user'
  @home.password = 'pass'
  @home.login
end

Then(/^I should see the welcome page$/) do
  expect(@browser.text).to include 'Welcome'
  sleep @delay
end


When(/^I enter an invalid username or password$/) do
  @home.username = 'resu'
  @home.password = 'ssap'
  @home.login
end

Then(/^I expect to be on the login page$/) do
  expect(@browser.title).to include 'Login'
  sleep @delay
end

And(/^I expect to see an error message$/) do
  expect(@browser.p(:id => 'message').text).to include 'Incorrect Username/Password.'
  sleep @delay
end

When(/^I am missing a username$/) do
  @home.username = ''
  @home.password = 'pass'
  @home.login
  sleep @delay
end

And(/^I expect to see an missing field error$/) do
  expect(@browser.p(:id => 'message').text).to include 'Missing Username'
  sleep @delay
end