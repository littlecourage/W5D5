class CreateAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :choice, null: false
      t.integer :question_id, null: false
      t.timestamps

    end
    add_foreign_key :answer_choices, :questions
  end
end

       #ID  |   choice(str)   | question_id(foreign) |
       # 1        pink               1
       #  2       green              1