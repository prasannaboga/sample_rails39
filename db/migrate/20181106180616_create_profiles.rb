class CreateProfiles < ActiveRecord::Migration[5.2]
    def change
        create_table :profiles do |t|
            t.references :user, index: true
            t.string :first_name
            t.string :last_name
            t.date :dob

            t.timestamps
        end
    end
end
