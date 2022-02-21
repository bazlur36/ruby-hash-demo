class Person

  def set_age(age)
    @age = age
  end

  def life_stage
    create_life_stage
  end

  private
  def create_life_stage
    case @age
    when 0..1
      type = "INFANT"
    when 2..12
      type = "CHILD"
    when 13..19
      type = "YOUNG"
    when 20..50
      type = "ADULT"
    else
      type = "OLD"
    end
    type
  end
end

p = Person.new
p.set_age(0)

puts p.life_stage