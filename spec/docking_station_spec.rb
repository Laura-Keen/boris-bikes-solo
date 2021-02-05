require 'docking_station.rb'

describe DockingStation do

  #Long Syntax for respond_to test
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  #Short syntax for respond_to test
  it { is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).arguments }

  it { is_expected.to respond_to(:bike)}

  it 'docks something' do
    bike = Bike.new
    # return the bike we just docked
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # return the bike we just docked
    expect(subject.bike).to eq bike
  end


end
