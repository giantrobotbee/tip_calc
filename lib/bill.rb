class Bill
  attr_reader :cost, :tip_rate, :tip

  def initialize(cost)
    @cost = cost.to_f
  end

  def tip_rate=(rate)
    @tip_rate = rate.to_f/100
  end

  def calc_tip
    @tip = @cost * @tip_rate
  end
end
