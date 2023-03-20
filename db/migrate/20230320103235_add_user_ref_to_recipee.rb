class AddUserRefToRecipee < ActiveRecord::Migration[7.0]
  def change
    add_reference :recipees, :user, null: false, foreign_key: true
  end
end
