# decorator - yep
# composite - yep
# observer - yep
# memento - yep
# prototype -

require_relative 'Composite/invoice.rb'
require_relative 'Composite/block.rb'
require_relative 'Composite/window.rb'
require_relative 'Composite/door.rb'
require_relative 'Composite/house.rb'
require_relative 'Observer/subject.rb'
require_relative 'Observer/accounts_department.rb'
require_relative 'Decorator/FancyDoorDecorator.rb'
require_relative 'Prototype/prototype.rb'

class InvoiceCreator < Subject
  include Prototype

  attr_reader :invoice

  def initialize()
    super
    @invoice = Invoice.new
    @invoice.add(House.new)
    @invoice.add(Window.new)
    @invoice.add(FancyDoorDecorator.new(Door.new))
    @invoice.add(House.new)
  end
  def print_invoice
    notify_observers
    puts @invoice.to_s
  end
  def recover_from_power_outtage
    #invoice creator is the caretaker
    @invoice_memento = @invoice.save
    @invoice.reset_changes
    # set the last state of the invoice
    @invoice.recover_document(@invoice_memento)
  end

end


accounts = AccountsDepartment.new
my_invoice_creator = InvoiceCreator.new
my_invoice_creator_cloned = my_invoice_creator.create_clone
#simulates what would happen if invoice object lost its subcomponents
my_invoice_creator.recover_from_power_outtage
puts 'Printing Clone'
my_invoice_creator_cloned.print_invoice
puts ''
my_invoice_creator.add_observer(accounts)
puts 'Printing original'
puts my_invoice_creator.print_invoice

