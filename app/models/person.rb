class Person < ApplicationRecord
  def self.types
    [ 
      ["Attendee", "People::ChurchAttendee" ],
      ["Leader", "People::Leader"],
    ]
  end

  def person_type
    self.type == "People::Leader" ? "Leader" : "Church attendee"
  end
end
