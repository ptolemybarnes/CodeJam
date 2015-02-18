require 'net/http'

class Time

  def self.auspicious_time?(time)
    time = time.strftime("%H%M")
    time == time.reverse
  end

  def self.zen_clock
    time = Time.now
    if Time.auspicious_time?(time)
      Net::HTTP.get(URI('https://api.github.com/zen'))
    else
      time.strftime("%H:%M")
    end
  end

end