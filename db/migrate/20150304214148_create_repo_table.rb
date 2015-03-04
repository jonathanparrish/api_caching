class CreateRepoTable < ActiveRecord::Migration
  def change
    create_table :repositories do |t|

      t.string :name
      t.text :body
      t.string :url
      t.datetime :changed_at
      t.string :language
      t.integer :number_of_forks
      t.integer :number_of_stars

      t.timestamps null: false
    end
  end
end
