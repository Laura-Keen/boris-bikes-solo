require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if bikes.empty?
      raise "No bikes available"
    else
      bikes.pop
    end
  end

  def dock(bike)
    raise 'Capacity full!!!' unless bikes.length < 20
    self.bikes << bike
  end



  # This method is no longer needed because of the attribute reader
  # def bike
  #   @bike
  # end

end
