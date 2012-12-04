class CreateMyanswers < ActiveRecord::Migration
  def change
    create_table :myanswers do |t|
      t.string :answers

      t.timestamps
    end
  end
end
