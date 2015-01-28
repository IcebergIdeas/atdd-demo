Given(/^I am on the welcome page$/) do
  @browser.goto 'http://localhost:8000/welcome.html'
end

When(/^I select the Rangers$/) do
  @browser.li(:id => 'testRow1').click
  sleep 5
end

Then(/^I can see the Rangers stats$/) do
  expect(@browser.text.include? 'Rangers Stats')
end

When(/^I select the Kings$/) do
  @browser.li(:id => 'testRow2').click
  sleep 5
end

Then(/^I don't see the Rangers stats$/) do
  expect(@browser.text.include? 'Rangers Stats').to be(false)
end