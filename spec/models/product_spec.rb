require_relative '../rails_helper'

describe Product do

  it '.convert_to_ua' do
    tv = Product.new(name: 'TV', price: 10)

    expect(tv.convert_to_ua).to eq(80)
  end
  
end
