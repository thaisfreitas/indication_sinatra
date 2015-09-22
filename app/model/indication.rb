require 'mongoid'	

class Indication
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :tel, type: String
end