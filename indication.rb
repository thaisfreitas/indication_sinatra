require 'rubygems'
require 'sinatra'
require 'httparty'
require 'mongo'


get '/' do
	'Hello World!'
end


post '/indication' do
	response = {}
	response[:mensagem] = 'The indication was created!!!'
	response.to_json
end



