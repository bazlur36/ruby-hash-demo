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
      shifts = ['INFANT']
    when 2..12
      shifts = ['CHILD']
    when 13..19
      shifts = ['YOUNG']
    when 20..50
      shifts = ['ADULT']
    else
      shifts = ['OLD']
    end
    shifts
  end
end

p = Prescription.new(0)
puts p.prescription