require 'lazer'

describe 'Lazer' do

  describe 'blast mode' do

    it 'blasts a hole in a string of default size 1' do
      expect("flask".lazer).to eq("fl sk")
    end

    it 'blasts a hole in a string of a given size' do
      expect("spaghetti".lazer(3)).to eq("spa   tti")
    end
  end

  describe 'stun mode' do
    
    it 'scrambles the middle of a string' do
      # No idea how to test this
      puts "spaghetti".lazer(3, :stun)
    end
  end
end
