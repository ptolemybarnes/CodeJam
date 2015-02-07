require './lib/auspicious_times'

describe Time do

  describe 'knows that a time' do

    it 'is not auspiciously palindromic' do
      time = Time.new(2015, 02, 03, 5, 15, 10)
      expect(Time.auspicious_time?(time)).to be(false)
    end

    it 'is auspiciously palindromic' do
      time = Time.new(2015, 02, 03, 13, 31, 10)
      expect(Time.auspicious_time?(time)).to be(true)
    end

  end

  describe 'zen_clock' do

    it 'returns time if current time is not auspicious' do
      time = Time.new(2015, 02, 03, 5, 15, 10)
      expect(Time).to receive(:now).and_return(time)

      expect(Time.zen_clock).to eq("05:15")
    end

    it 'returns zen quote if current time is auspicious' do
      time = Time.new(2015, 02, 03, 13, 31, 10)
      expect(Time).to receive(:now).and_return(time)
      expect(Net::HTTP).to receive(:get).and_return("Keep it logically awesome.")

      expect(Time.zen_clock).to eq("Keep it logically awesome.")
    end

  end
end