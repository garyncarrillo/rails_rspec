class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, unique: true, null: false
      t.boolean :is_admin, default: true

      t.timestamps
    end
  end
end
