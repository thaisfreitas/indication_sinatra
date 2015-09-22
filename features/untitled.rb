require 'httparty'

# When(/^I create a new indicaiton with following values:$/) do |table|
#   data = table.hashes.first
#   print data
#   indication = Indication.new(data)
#   post_data = {body: {indication: data}}
#   print indication
#   url = 'http://localhost:9393/indication'
#   @response = HTTParty.post(url, post_data)
# end

# Then(/^I should see the succefull create message "([^"]*)"$/) do |text|
#   # body = JSON.parse(@response.body)
#   # expect(body["mensagem"]).to eq(text)
# end

# When(/^The system has the following indication$/) do |indications|
# 	print indications
# 	File.open('indications.json', 'w') do |io|
#     	io.write(indications.hashes.to_json)
# 	end
# end

# Then(/^the response should be a JSON:$/) do |string|
# end

# When(/^the client resuqest GET "([^"]*)"$/) do |path|
#   @response = HTTParty.get('http://localhost:9393/' + path)
# end
# Then /^the response should be JSON:$/ do |json|
# 	print @response 
# 	JSON.parse(@response.body).should != JSON.parse(json)
# end

# post '/indication' do
	# 	response = {}
	# 	response[:mensagem] = 'The indication was created!!!'
	# 	response.to_json
	# end

	# get '/indication' do
	# 	form =  '<form action="/indication" method="post">
	# 		Name: <input type="text" name="name">
	# 		<br/>
	# 		Address: <input type="text" name="address">
	# 		<br/>
	# 		Tel: <input type="text" name="tel">
	# 		<br/>	
	# 		<br/>
	# 		<input type="submit">
	# 	</form>'
	# 	erb form
	# end

	# post '/indication' do 
	# 	new_indication = Indication.new(params)
	# 	new_indication.save
	# 	new_indication.to_json
	# end

	# get '/indications' do
	#   list = Indication.all.map do |indication|
	#            "Name: #{indication.name} Address: #{indication.address} Tel: #{indication.tel}"
	#          end.join '<br/>'
	#   erb list

	# end
