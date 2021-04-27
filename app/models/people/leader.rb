# frozen_string_literal: true

module People
  class Leader < Person
    def self.model_name
      superclass.model_name
    end
  end
end
