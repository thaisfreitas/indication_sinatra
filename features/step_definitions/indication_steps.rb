require 'httparty'
require 'json'
require 'rspec/expectations'

When(/^I create a new indicaiton with following values:$/) do |table|
  data = table.hashes.first
  url = 'http://localhost:9393/indication'
  @response = HTTParty.post(url, :body => data.to_json, :headers => {'Content-Type' => 'application/json'})
end

Then(/^indication should be created with an id$/) do
  expect(@response.parsed_response).to_not be_nil
  @response =  JSON.parse(@response.parsed_response.to_json)
  puts @response
  expect(@response["_id"]).to_not be_nil
end

Then(/^should have the following attributes:$/) do |table|
  expected =  JSON.parse(table.hashes.first.to_json)
  expect(@response).to include(expected)
end