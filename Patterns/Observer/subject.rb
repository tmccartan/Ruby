module Subject
  attr_accessor :state
  def initialize
    @observers=[]

  end
  def add_observer(observer)
    @observers << observer
  end
  def delete_observer(observer)
    @observers.delete(observer)
  end
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
  def state=(value)
    if@state != value
      @state = value
      notify_observers
    end
  end

end