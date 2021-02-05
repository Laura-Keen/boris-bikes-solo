require 'docking_station.rb'

describe DockingStation do
  let(:bike) {Bike.new}
  #Long Syntax for respond_to test
  # it 'responds to release_bike' do
  #   expect(subject).to respond_to :release_bike
  # end

  #Short syntax for respond_to test
  it { is_expected.to respond_to :release_bike}

  it 'releases working bike' do
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).arguments }

  it { is_expected.to respond_to(:bike)}

  it 'docks something' do
    # return the bike we just docked
    subject.dock(bike)
    expect(subject.bike).to include(bike)
  end

  it 'raises error when no bikes available' do
    expect { subject.release_bike }.to raise_error
  end
end
