class CreateContactInformations < ActiveRecord::Migration[8.0]
  def change
    create_table :contact_informations do |t|
      t.references :leader, null: false, foreign_key: true
      t.string :physical_street_address1
      t.string :physical_street_address2
      t.string :physical_street_address3
      t.string :physical_city
      t.string :physical_state
      t.string :physical_zip
      t.string :physical_country
      t.string :permanent_street_address1
      t.string :permanent_street_address2
      t.string :permanent_street_address3
      t.string :permanent_city
      t.string :permanent_state
      t.string :permanent_zip
      t.string :permanent_country
      t.string :email
      t.string :phone
      t.string :phone_type
      t.string :alternate_phone

      t.timestamps
    end
  end
end
