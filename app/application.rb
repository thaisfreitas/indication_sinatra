require 'rubygems'
require 'sinatra'
require 'httparty'
require 'mongoid'
require 'json'

	get '/' do
		{:a =>'hello world'}.to_json
	end
	
	get '/indication' do
		erb :indication
	end

	post '/indication' do
		data = JSON.parse(request.body.read) rescue {}
		content_type 'application/json'
		i = {:name => data["name"],:address => data["address"],:tel => data["tel"]}
		new_indication = Indication.new(i)
		new_indication.save
		new_indication.to_json
	end	