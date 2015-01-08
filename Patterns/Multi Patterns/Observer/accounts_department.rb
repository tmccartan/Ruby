class AccountsDepartment
  def initialize

  end
  def update(context)
    puts "Accounts told that a Invoice was requested for #{context.invoice.cost} \n"
  end
end