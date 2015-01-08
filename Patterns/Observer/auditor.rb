class Auditor

  def initialize
  end
  def update(context)
    if(context.state == :success)
      puts "Auditor told #{context.name} completed in  #{context.num_attempts} attempts"
    else
      puts "Auditor told #{context.name} is #{context.state}"
    end


  end
end