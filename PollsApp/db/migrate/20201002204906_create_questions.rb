class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.integer :question_id, null: false
      t.timestamps
    end
    add_foreign_key :questions, :polls
  end
end

#poll_id(foreign)
      #text of the question(str)
      #has_many -> #answer_choices (responses) ->  
    
      #ID  |  question_title    | Poll_id(foreign) |
       #1      favorite color?  1(foreign key)
