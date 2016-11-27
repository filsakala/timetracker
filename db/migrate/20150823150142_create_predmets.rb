class CreatePredmets < ActiveRecord::Migration
  def change
    create_table :predmets do |t|
      t.string :nazov

      t.timestamps null: false
    end
  end
end
