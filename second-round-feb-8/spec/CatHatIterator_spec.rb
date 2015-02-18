require './lib/CatHatIterator'

describe 'cat_hat_iterator' do

  it 'returns array of indices of hatted cats' do
    expect(cat_hat_iterator(cat_count: 3)).to eq([0, 2])
  end 

end