class SearchController < ApplicationController
  def index
    # params["house"] returns string of search parameter
    house = params['house']

    response = Faraday.get "https://www.potterapi.com/v1/characters?house=#{house}&key=#{ENV['POTTER_API_KEY']}&orderOfThePhoenix=true"

    response_body = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
  end

 #  {:_id=>"5a0fa7dcae5bc100213c2338",
 # :name=>"Sirius Black",
 # :house=>"Gryffindor",
 # :school=>"Hogwarts School of Witchcraft and Wizardry",
 # :alias=>"Padfoot",
 # :animagus=>"black dog",
 # :__v=>0,
 # :ministryOfMagic=>false,
 # :orderOfThePhoenix=>true,
 # :dumbledoresArmy=>false,
 # :deathEater=>false,
 # :bloodStatus=>"pure-blood",
 # :species=>"human"}
end
