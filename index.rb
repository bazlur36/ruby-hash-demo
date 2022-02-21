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
      shifts = ['INFANT', 'morning', 'noon', 'evening', 'late night']
    when 2..12
      shifts = ['CHILD', 'morning', 'noon', 'evening']
    when 13..19
      shifts = ['YOUNG', 'morning', 'evening']
    when 20..50
      shifts = ['ADULT', 'morning', 'noon', 'evening']
    else
      shifts = ['OLD', 'morning', 'noon', 'evening']
    end
    shifts
  end
end

p = Prescription.new(0)
puts p.prescription