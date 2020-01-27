class Oystercard
  DEFAULT_MAXIMUM = 90
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise "top up limit breached" if (@balance + amount) > DEFAULT_MAXIMUM

    @balance += amount
  end

end