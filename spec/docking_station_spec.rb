require 'docking_station.rb'

describe DockingStation do

  #Long Syntax for respond_to test
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  #Short syntax for respond_to test
  it { is_expected.to respond_to :release_bike}

end
