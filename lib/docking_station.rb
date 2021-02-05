require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = []
  end

  def release_bike
    if bike.empty?
      raise "No bikes available"
    else
      bike.pop
    end
  end

  def dock(bike)
    raise 'Capacity full!!!' unless self.bike.empty?
    self.bike << bike
  end



  # This method is no longer needed because of the attribute reader
  # def bike
  #   @bike
  # end

end
