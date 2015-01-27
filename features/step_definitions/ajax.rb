Given(/^I am on the ATDD demo site$/) do
  @browser.goto "localhost:8000/"
end


When(/^I import the text$/) do
  @browser.span(:text => 'Import').click
end

Then(/^I expect the information message to appear$/) do
  expect(@browser.text.include? 'This site is designed to teach you').to be(true)
end