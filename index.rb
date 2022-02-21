class Prescription

  def initialize(age)
    @age = age
  end

  def prescription
    create_prescription
  end

  private
  def create_prescription
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

p = Prescription.new(30)
puts p.prescription