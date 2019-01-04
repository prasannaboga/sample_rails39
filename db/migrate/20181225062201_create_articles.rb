class CreateArticles < ActiveRecord::Migration[5.2]
    def up
        create_table :articles do |t|
            t.string :title
            t.text :post
            t.integer :comments_count
            t.timestamps
        end

        add_column :articles, :lock_version, :integer, default: 0, null: false
    end

    def down
        drop_table :articles
    end
end
