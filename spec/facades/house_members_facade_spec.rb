RSpec.describe 'HouseMembersFacade' do
  it 'exists' do
    house_members_facade = HouseMembersFacade.new('Turing')

    expect(house_members_facade).to be_a HouseMembersFacade
    expect(house_members_facade.house).to eq('Turing')
  end
end
