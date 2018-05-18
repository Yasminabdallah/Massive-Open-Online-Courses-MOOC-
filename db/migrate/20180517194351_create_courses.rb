class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
