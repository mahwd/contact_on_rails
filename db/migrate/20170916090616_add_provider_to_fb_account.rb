class AddProviderToFbAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :fb_accounts, :provider, :string
    add_column :fb_accounts, :uid, :string
    add_column :fb_accounts, :name, :string
    add_column :fb_accounts, :admin, :boolean
  end
end
