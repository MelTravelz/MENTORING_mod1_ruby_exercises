# require 'rspec'
# require './lib/pirate'

# RSpec.describe Pirate do
#   it 'has a name' do
#     pirate = Pirate.new('Jane')
#     expect(pirate.name).to eq('Jane')
#   end

#   it 'can have a different name' do
#     pirate = Pirate.new('Blackbeard')
#     expect(pirate.name).to eq('Blackbeard')
#   end

#   it 'is a scallywag by default' do
#     pirate = Pirate.new('Jane')
#     expect(pirate.job).to eq('Scallywag')
#   end

#   it 'is not always a scallywag' do
#     pirate = Pirate.new('Jack', 'cook')
#     expect(pirate.job).to eq('cook')
#   end

#   it 'is not cursed by default' do
#     pirate = Pirate.new('Jack')

#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be false

#     pirate.commit_heinous_act
#     expect(pirate.cursed?).to be true
#   end

#   it 'has a booty' do
#     # create a pirate
#     pirate = Pirate.new('Jack')

#     # check that the pirate starts with 0 booty
#     expect(pirate.booty).to eq(0)
#   end

#   it 'gets 100 booty for robbing a ship' do
#     # create a pirate
#     pirate = Pirate.new('Jack')

#     # rob some ships
#     pirate.commit_heinous_act
#     # check that the pirate got 100 booty for each ship it robbed
#     expect(pirate.booty).to eq(100)

#     pirate.commit_heinous_act
#     expect(pirate.booty).to eq(200)

#     pirate.commit_heinous_act
#     expect(pirate.booty).to eq(300)

#     pirate.commit_heinous_act
#     expect(pirate.booty).to eq(400)
#   end
# end

require 'rspec'
require './lib/pirate'

RSpec.describe Pirate do
  let(:pirate_jane) { Pirate.new('Jane') }
  let(:pirate_bb) { Pirate.new('Blackbeard', 'cook') }

  it 'exisits & has attributes' do
    expect(pirate_jane.name).to eq('Jane')
    expect(pirate_jane.job).to eq('Scallywag')
    expect(pirate_jane.booty).to eq(0)

    # expect(pirate_bb.name).to eq('Blackbeard')
    # expect(pirate_bb.job).to eq('cook')
  end

  it 'is not cursed by default, but becomes curesed after commits 3 heinous acts' do
    expect(pirate_jane.cursed?).to be false

    pirate_jane.commit_heinous_act 
    expect(pirate_jane.cursed?).to be false

    pirate_jane.commit_heinous_act
    expect(pirate_jane.cursed?).to be false

    pirate_jane.commit_heinous_act
    expect(pirate_jane.cursed?).to be true
  end

  it 'gets 100 booty for every heinous act commited' do
    # expect(pirate_jane.booty).to eq(0) 

    pirate_jane.commit_heinous_act

    expect(pirate_jane.booty).to eq(100)

    pirate_jane.commit_heinous_act
    pirate_jane.commit_heinous_act

    expect(pirate_jane.booty).to eq(300)
  end
end

