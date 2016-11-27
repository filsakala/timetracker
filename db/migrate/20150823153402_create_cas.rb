class CreateCas < ActiveRecord::Migration
  def change
    create_table :cas do |t|
      t.belongs_to :predmet, index: true
      
      t.integer :trvanie
      t.string :text, length: 1024

      t.timestamps null: false
    end
  end
end
