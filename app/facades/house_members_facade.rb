class HouseMembersFacade
  attr_reader :house

  def initialize(house)
    @house = house
  end

  def members
    response_body.map do |member_attrs|
      Member.new(member_attrs)
    end
  end

  def member_count
    response_body.count
  end

  def response_body
    @response_body ||= conn
  end

  def conn
    response = Faraday.get "https://www.potterapi.com/v1/characters?house=#{@house}&key=#{ENV['POTTER_API_KEY']}&orderOfThePhoenix=true"
    JSON.parse(response.body, symbolize_names: true)
  end
end
