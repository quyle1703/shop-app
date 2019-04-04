class AddPhoneAndProfessionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :integer
    add_column :users, :profession, :text
  end
end
