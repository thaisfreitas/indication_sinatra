require 'httparty'

When(/^I create a new indicaiton with following values:$/) do |table|
  data = table.hashes.first
  post_data = {body: {indication: data}}
  url = 'http://localhost:9393/indication'
  @response = HTTParty.post(url, post_data)
end

Then(/^I should see the succefull create message "([^"]*)"$/) do |text|
  body = JSON.parse(@response.body)
  expect(body["mensagem"]).to eq(text)
end