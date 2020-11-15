class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.integer :movie_id
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
