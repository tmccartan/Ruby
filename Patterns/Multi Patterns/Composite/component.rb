class Component
  def name
  ''
  end
  def cost
  0.0
  end
  def to_s
    "#{name}: #{cost}\n"
  end
end
class CompositeComponent < Component
  def initialize
    @sub_components = []
  end
  def add(component)
    @sub_components << component
  end
  def remove(component)
    @sub_components.delete (component)
  end
  def to_s
    text = ''
    total_cost = 0.0
    @sub_components.each { |component|
      text += component.to_s
      total_cost += component.cost
    }
    text
    text += "Total = #{total_cost} \n"
  end
  def cost
    total_cost = 0.0
    @sub_components.each do |component|
      total_cost += component.cost
    end
    total_cost
  end
end