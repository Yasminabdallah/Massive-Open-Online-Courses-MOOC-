class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :file
      t.string :content
      t.integer :course_id

      t.timestamps
    end
  end
end
