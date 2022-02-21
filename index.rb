class Person
  def set_hight(h)
    @height = h
  end

  def show_height
    return @height
  end
end

p = Person.new
p.set_hight("180cm")
puts p.show_height