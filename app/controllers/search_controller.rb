class SearchController < ApplicationController
  def index
    house = params['house']
    render locals: {
      search_results: HouseMembersFacade.new(house)
    }
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
