class AddAdminFieldToFbAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :fb_accounts, :admin, :boolean
  end
end
