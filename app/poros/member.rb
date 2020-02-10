class Member
  attr_reader :name, :role, :house, :patronus

  def initialize(member_attrs)
    @name = member_attrs[:name]
    @role = member_attrs[:role] ||= 'none listed'
    @house = member_attrs[:house]
    @patronus = member_attrs[:patronus] ||= 'none listed'
  end
end
