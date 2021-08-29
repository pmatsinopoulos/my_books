require 'rails_helper'

describe SignIn do
  it 'should not be valid without email' do
    sign_in = build(:sign_in, email: nil)

    expect(sign_in).to be_invalid
    expect(sign_in.errors[:email]).to include("can't be blank")
  end

  it 'should not be valid without password' do
    sign_in = build(:sign_in, password: nil)

    expect(sign_in).to be_invalid
    expect(sign_in.errors[:password]).to include("can't be blank")
  end

  it 'should authenticate email and password against the user with these credentials' do
    password = '12345678'
    peter = create(:user, password: password)
    sign_in = build(:sign_in, email: peter.email, password: password)

    expect(sign_in.sign_in).to eq(peter)
  end

  it 'should not authenticate email and password if password does not correspond to email' do
    peter = create(:user)
    sign_in = build(:sign_in, email: peter.email, password: SecureRandom.hex)

    expect(sign_in.sign_in).to eq(false)
    expect(sign_in.errors[:email]).to include('Wrong Credentials!')
    expect(sign_in.errors[:password]).to include('Wrong Credentials!')
  end
end
