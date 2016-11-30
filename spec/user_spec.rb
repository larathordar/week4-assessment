require './lib/models/user'

describe User do
  it 'can create a new user' do
    user = User.create(name: "Amber")
    expect(user.name).to eq "Amber"
  end
end