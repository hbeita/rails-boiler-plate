class CreateMembershipChurchServices < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_church_services do |t|
      t.date :date

      t.timestamps
    end
  end
end
