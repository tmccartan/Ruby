require 'rspec'
require '../State/State Exercise'

describe 'Test state tranisiton' do
  it 'should verify state transitions' do
    p = Person.new
    p.age = 1
    p.state.class.name == StateChild.name
    p.age = 9
    p.incr_age
    p.state.class.name == StateTeenager.name
    p.age = 17
    p.incr_age
    p.state.class.name == StateAdult.name
    p.age = 65
    p.incr_age
    p.state.class.name == StateOAP.name

  end

end