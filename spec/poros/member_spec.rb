require 'rails_helper'

describe Member do
  it 'exists' do
    attrs = {
      name: 'Ryan',
      role: 'Student',
      house: 'Turing',
    }

    member = Member.new(attrs)

    expect(member).to be_a Member
    expect(member.name).to eq(attrs[:name])
    expect(member.role).to eq(attrs[:role])
    expect(member.house).to eq(attrs[:house])
    expect(member.patronus).to eq('none listed')
  end
end
