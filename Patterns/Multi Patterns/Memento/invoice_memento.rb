class InvoiceMemento
  def initialize()
    @state = nil
  end
  def set_state(state)
    @state = state.clone
  end
  def get_state()
    @state
  end
end