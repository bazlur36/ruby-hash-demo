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
      prescription = {
          ageGroup: 'INFANT',
          medicines: [
              {
                  :type => 'Syrup',
                  :name => 'Napa',
                  :morning => '1 Spoon',
                  :noon => '0.5 Spoon',
                  :evening => '1 Spoon',
                  :lateNight => '2 Spoons'
              }
          ]
      }
    when 2..12
      prescription = {
          ageGroup: 'CHILD',
          medicines: [
              {
                  :type => 'Syrup',
                  :name => 'Napa',
                  :morning => '1',
                  :evening => '1',
              }
          ]
      }
    when 13..19
      prescription = {
          ageGroup: 'CHILD',
          medicines: [
              {
                  :type => 'Tablet',
                  :name => 'Napa',
                  :morning => '1',
                  :evening => '1',
                  :lateNight => '2'
              },
              1,
              "one",
              {
                  football: {
                      color: "black and white"
                  }
              },
              {
                  :type => 'Tablet',
                  :name => 'Cevit',
                  :morning => '1',
                  :evening => '1',
                  :lateNight => '2'
              }
          ]
      }
    when 20..50
      prescription = {
          ageGroup: 'ADULT',
          medicines: [
              {
                  :type => 'Tablet',
                  :name => 'Napa',
                  :morning => '1',
                  :evening => '1',
                  :lateNight => '2'
              },
              {
                  :type => 'Tablet',
                  :name => 'Calbo D',
                  :morning => '1',
                  :evening => '1',
                  :lateNight => '2'
              }
          ]
      }
    else
      prescription = {
          ageGroup: 'OLD',
          medicines: [
              {
                  :type => 'Tablet',
                  :name => 'Napa',
                  :morning => '1',
                  :evening => '1',
                  :lateNight => '2'
              },
              {
                  :type => 'Syrup',
                  :name => 'Basok',
                  :morning => '1 Spoon',
                  :evening => '1 Spoon',
                  :lateNight => '2 Spoon'
              },
              {
                  :type => 'Injection',
                  :name => 'Insuline',
                  :morning => '1',
                  :evening => '1',
                  :night => '1'
              }
          ]
      }
    end
    prescription
  end
end

p = Prescription.new(16)
item = p.prescription
puts item[:medicines][3][:football][:color]