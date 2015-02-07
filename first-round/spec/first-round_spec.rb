require('./lib/first-round')

describe('#to_wavecase') do

  it('formats a word as wavecase') do
    expect('surfspot'.to_wavecase).to eq('SuRfSpOt')
  end

  it('formats a sentence into wavecase, accounting for spaces') do
    expect("Colourless green ideas sleep furiously.".to_wavecase).to eq('CoLoUrLeSs GrEeN iDeAs SlEeP fUrIoUsLy.')
  end
end

describe 'upcase?' do

  it 'returns true if a string is upcase' do
    expect('A'.upcase?).to eq(true)
  end

  it 'returns false for a string that is downcase' do
    expect('a'.upcase?).to eq(false)
  end

end