class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.integer :status
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
