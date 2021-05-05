class CreateMembershipChurchServiceAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :membership_church_service_attendees do |t|
      t.belongs_to(:membership_church_service,
        foreign_key: true,
        index: { name: 'idx_church_attendee_service' }
      )
      t.belongs_to(:person,
        foreign_key: true,
        index: { name: 'idx_church_attendee_person' }
      )

      t.timestamps
    end
  end
end
