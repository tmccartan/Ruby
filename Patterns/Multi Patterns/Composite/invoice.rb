require_relative 'component.rb'
require_relative '../Memento/invoice_memento'

class Invoice < CompositeComponent

  def initialize
    super
    add(House.new)
    add(House.new)
    @invoiceMemento = InvoiceMemento.new
    @invoiceMemento.set_state(@sub_components)
  end
  def save
    @invoiceMemento.set_state(@sub_components)
    @invoiceMemento.get_state
  end
  def recover_document(memento)
    @invoiceMemento.set_state(memento)
    @sub_components = @invoiceMemento.get_state
  end
  def reset_changes
    @sub_components.clear
  end
end