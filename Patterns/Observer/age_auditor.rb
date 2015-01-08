class AgeAuditor
  def update(context)
    if(context.state == :success)
      if(context.age < 5)
        puts "Competitor #{context.name} is underage"
      end
    end
  end
end