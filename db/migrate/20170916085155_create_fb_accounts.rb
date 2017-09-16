class CreateFbAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :fb_accounts do |t|

      t.timestamps
    end
  end
end
