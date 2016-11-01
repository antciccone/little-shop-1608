class Cart
  attr_reader :contents

  def initialize(initial_contents)
    @contents = initial_contents || {}
  end

  def add_trip(trip_id)
    contents[trip_id.to_s] ||= 0
    contents[trip_id.to_s] += 1
  end

  def total
    contents.values.sum
  end

  def count_of(trip_id)
    contents[trip_id.to_s]
  end

end
