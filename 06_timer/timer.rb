class Timer
  #write your code here
  def initialize
    @seconds = 0
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def seconds
    @seconds
  end

  def format(num)
    num = num < 10 ? '0' + num.to_s : num.to_s
  end

  def time_string

    hour = format(self.seconds / 3600)
    min = format(self.seconds % 3600 / 60)
    sec = format(self.seconds % 60)

    "#{hour}:#{min}:#{sec}"

  end

end
