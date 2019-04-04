class AddPostalCodeCountryCityAddressToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :address, :string
    add_column :users, :postal_code, :string
    add_column :users, :country, :string
    add_column :users, :city, :string
  end
end
