class CreateComments < ActiveRecord::Migration[5.2]
    def change
        create_table :comments do |t|
            t.references :article, index: true
            t.string :subject
            t.text :message

            t.timestamps
        end
    end
end
