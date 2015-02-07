require('Cat')

describe Cat do

  let(:cat) { Cat.new }
  let(:cat_unhatted) { Cat.new.doff_hat }

  it 'initializes with a hat' do
    expect(cat).to be_hatted
  end

  it 'can doff its hat' do 
    cat.doff_hat
    expect(cat).to_not be_hatted
  end

  it 'can don a hat' do
    cat_unhatted.don_hat
    expect(cat_unhatted).to be_hatted
  end

end