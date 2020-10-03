class CreatePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.integer :user_id, null:false
      t.timestamps
    end
    add_foreign_key :polls, :users
    add_index :polls, :user_id
  end
end

#title
      #question_id >> table of all the questions
      #text for each question
      #belongs_to >> #author_id -> #user

      #ID  |  Poll_title | User_id(foreign) | Questions?(multiple? Array?) or will questions just reference a poll id?
       #1    Favorites      #2         
       
       #ID  |  question_title    | Poll_id(foreign) |
       #1        favorite color?  1(foreign key)

  # create_table :movies do |t|
  #     t.string :title, null: false
  #     t.integer :yr, null: false
  #     t.float :score, null: false
  #     t.integer :votes, null: false
  #     t.integer :director_id, null: false
  #   end

  #   create_table :castings do |t|
  #     t.integer :movie_id, null: false
  #     t.integer :actor_id, null: false
  #     t.integer :ord, null: false
  #   end