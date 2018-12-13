class CreateAddresses < ActiveRecord::Migration[5.2]
    def change
        create_table :addresses do |t|
            t.references :user, index: true
            t.string :building_number
            t.string :secondary_address
            t.string :street_name
            t.string :street_address
            t.string :area_location
            t.string :postal_code
            t.float :latitude
            t.float :longitude
            t.jsonb :extras

            t.timestamps
        end

        add_index :addresses, [:latitude, :longitude]
    end
end
