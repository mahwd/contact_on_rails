class CreateForms < ActiveRecord::Migration[5.1]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :messa

      t.timestamps
    end
  end
end
