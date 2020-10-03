class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.timestamps
    end
    add_index :users, :username, :unique: true
  end
end

#ID  |  Username(unique)
# class CreateActors < ActiveRecord::Migration[5.1]
#   def change
#     create_table :actors do |t|
#       t.string :name, null: false
#     end
#   end
# end