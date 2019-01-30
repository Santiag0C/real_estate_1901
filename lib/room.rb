class Room
  def initialize(category, my, mx)
    @category = category
    @my = my
    @mx = mx
  end
  def what_category
    @category
  end

  def area
    @my * @mx
  end



end
