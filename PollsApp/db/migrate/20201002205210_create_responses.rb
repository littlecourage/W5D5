class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.integer :answer_choice_id, null: false
      t.integer :question_id, null: false
      t.integer :user_choice_id, null: false      
    end
    add_foreign_key :responses, :answer_choices
    add_foreign_key :responses, :questions
    add_foreign_key :responses, :users
  end
end

#user_id

      #FOREIGN KEYS -> question_id
      #             -> 
      #Question: 'What's your favorite programming laguage?

      #Answerchoices: 
      # Ruby 1, 6, 8
      #Python 2, 5, 7
      #CSS 3

      #ID  |  #answer_choice_id | #question_id | #user_id
      #1         

