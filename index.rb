class Person

  def set_age(age)
    @age = age
  end

  def life_stage
    @age
  end

end

p = Person.new
p.set_age(10)

puts p.life_stage