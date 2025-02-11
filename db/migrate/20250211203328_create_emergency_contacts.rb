class CreateEmergencyContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :emergency_contacts do |t|
      t.references :leader, null: false, foreign_key: true
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.string :phoneNumber
      t.string :streetAddress1
      t.string :streetAddress2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
