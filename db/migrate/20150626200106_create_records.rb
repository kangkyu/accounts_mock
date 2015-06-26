class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.date :date
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
