Given(/^I am on the ATDD demo site$/) do
  @browser.goto "localhost:8000/"
end


When(/^I import the text$/) do
  @browser.span(:text => 'Import').click
end

Then(/^I expect the information message to appear$/) do
  expect(@browser.text.include? 'This site is designed to teach you').to be(true)
end

When(/^I go to the search page$/) do
  @browser.goto "localhost:8000/search.html"
end

And(/^I filter selections by Testing$/) do
  @browser.checkbox(:id => 'checkBox1').click
end

Then(/^I expect to see Agile Testing in the list$/) do
  expect(@browser.text.include? 'Agile Testing').to be(true)
end

And(/^I expect to not see Clean Code in the list$/) do
  expect(@browser.text.include? 'Clean Code').to be(false)
end