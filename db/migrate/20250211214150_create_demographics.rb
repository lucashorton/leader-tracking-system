class CreateDemographics < ActiveRecord::Migration[8.0]
  def change
    create_table :demographics do |t|
      t.references :leader, null: false, foreign_key: true
      t.boolean :raceAmericanIndian
      t.boolean :raceAsian
      t.boolean :raceBlack
      t.boolean :raceHispanic
      t.boolean :raceHawaiian
      t.boolean :raceWhite
      t.boolean :raceDidNotProvide
      t.string :gender
      t.datetime :dateOfBirth
      t.string :cityOfBirth
      t.string :stateOfBirth
      t.string :language
      t.string :military
      t.string :parent1EducationalLevel
      t.string :parent2EducationalLevel
      t.string :currentHouseholdIncome

      t.timestamps
    end
  end
end
