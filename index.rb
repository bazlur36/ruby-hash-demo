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
      shifts = {ageGroup: 'INFANT', :type => 'Syrup', :morning => '1 Spoon', :noon => '0.5 Spoon', :evening => '1 Spoon', :lateNight => '2 Spoons', }
    when 2..12
      shifts = {ageGroup: 'CHILD', :type => 'Tablet', :morning => '1 tablet', :noon => '1 tablet', :evening => '1 tablet'}
    when 13..19
      shifts = {ageGroup: 'YOUNG', :type => 'Tablet', :morning => '1 tablet', :evening => '1 tablet'}
    when 20..50
      shifts = {ageGroup: 'ADULT', :type => 'Tablet', :morning => '1 tablet', :evening => '1 tablet' }
    else
      shifts = {ageGroup: 'OLD', :type => 'Syrup', :morning => '1 Spoon', :evening => '1 Speen' }
    end
    shifts
  end
end

p = Prescription.new(60)
puts p.prescription