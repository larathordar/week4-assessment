# put step definitions in this file
When(/^user visits index \(`'\/'`\) page$/) do
  visit '/'
end

Then(/^he sees text "([^"]*)"$/) do |message|
  page.should have_content message
end
