class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :username
      t.string :email

      t.timestamps
    end

    add_index :users, :username, unique:true
    add_index :users, :email, unique:true
  end
end
