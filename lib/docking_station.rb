require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  # This method is no longer needed because of the attribute reader
  # def bike
  #   @bike
  # end
  
end