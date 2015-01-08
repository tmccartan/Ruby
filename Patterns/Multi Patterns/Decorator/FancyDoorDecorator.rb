require_relative '../Composite/component'

class FancyDoorDecorator < Component
  @real_component
  def initialize(component)
    @real_component = component
  end
  def name
    @real_component.name + " with Gold knockers"
  end
  def cost
    @real_component.cost + 10
  end

end