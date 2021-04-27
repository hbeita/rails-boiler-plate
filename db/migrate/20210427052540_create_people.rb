# frozen_string_literal: true

class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :phone_number
      t.date :birthday
      t.string :address
      t.string :type

      t.timestamps
    end
  end
end
