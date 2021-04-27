# frozen_string_literal: true

module People
  class ChurchAttendee < Person
    def self.model_name
      superclass.model_name
    end
  end
end
