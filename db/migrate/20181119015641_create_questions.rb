class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :category, foreign_key: true
      t.references :question_type, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
