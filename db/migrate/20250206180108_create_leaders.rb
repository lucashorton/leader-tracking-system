class CreateLeaders < ActiveRecord::Migration[8.0]
  def change
    create_table :leaders do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :preferred_name
      t.string :other_names
      t.string :pronouns
      t.string :self_identified_gender

      t.timestamps
    end
  end
end
