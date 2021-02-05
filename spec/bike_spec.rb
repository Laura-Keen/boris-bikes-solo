require 'bike.rb'

describe Bike do

  # Long syntax for respond to working?
  # it 'responds to working? method' do
  #   expect(subject).to respond_to :working?
  # end

  # Short syntax for respond to working?
  it {is_expected.to respond_to :working?}
end