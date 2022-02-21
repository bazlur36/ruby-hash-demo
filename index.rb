class Person

  def set_age(age)
    @age = age
  end

  def life_stage
    @age * 2
  end

end

p = Person.new
p.set_age(1)
puts p.life_stage