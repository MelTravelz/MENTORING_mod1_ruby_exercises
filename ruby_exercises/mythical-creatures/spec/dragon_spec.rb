require 'rspec'
require './lib/dragon'

RSpec.describe Dragon do
  it 'has a name' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.name).to eq('Ramoth')
  end

  it 'has a rider' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.rider).to eq('Lessa')
  end

  it 'has a color' do
    dragon = Dragon.new('Ramoth', :gold, 'Lessa')
    expect(dragon.color).to eq(:gold)
  end

  xit 'is a different dragon' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.name).to eq('Mnementh')
  end

  xit 'has a different rider' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.rider).to eq('Flar')
  end

  xit 'has a different color' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.color).to eq(:bronze)
  end

  xit 'was born hungry' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
  end

  xit 'eats a lot' do
    dragon = Dragon.new('Mnementh', :bronze, 'Flar')
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be true
    dragon.eat
    expect(dragon.hungry?).to be false
  end
end
