class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :year
      t.integer :exam
      t.integer :subject
      t.integer :number
      t.integer :answer
      t.string :explanation
      t.string :img
      

      t.timestamps
    end
  end
end
