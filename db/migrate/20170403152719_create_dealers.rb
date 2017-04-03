class CreateDealers < ActiveRecord::Migration[5.0]
  def change
    create_table :dealers do |t|
      t.string :title
      t.text :description
      t.integer :vote

      t.timestamps
    end
  end
end
