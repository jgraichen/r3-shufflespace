require 'spec_helper'

describe User do
  let(:user) { User.create!(login: 'jsmith') }
  before { user }

  it "should have a unique login" do
    another_user = User.new login: 'jsmith'
    another_user.login.should == user.login
    another_user.should_not be_valid
  end
end
