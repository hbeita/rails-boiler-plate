# frozen_string_literal: true

class Person < ApplicationRecord
  def self.types
    [
      ['Attendee', 'People::ChurchAttendee'],
      ['Leader', 'People::Leader']
    ]
  end

  def person_type
    type == 'People::Leader' ? 'Leader' : 'Church attendee'
  end
end
