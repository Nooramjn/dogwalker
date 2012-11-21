class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.date :date
      t.string :subject
      t.string :sendername
      t.text :content
      t.integer :walker_id

      t.timestamps
    end
  end
end
