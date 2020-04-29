class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :url
      t.string :detail
      t.string :genre
      t.timestamps
    end
  end
end
