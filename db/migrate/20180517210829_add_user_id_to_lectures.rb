class AddUserIdToLectures < ActiveRecord::Migration[5.1]
  def change
    add_column :lectures, :user_id, :integer
  end
end
