require_relative '../Composite/component.rb'
require_relative '../Composite/block.rb'
require_relative '../Composite/door.rb'
require_relative '../Composite/window.rb'

class House < CompositeComponent
  def initialize
    super()
    add(Block.new)
    add(Window.new)
    add(Door.new)
  end

end