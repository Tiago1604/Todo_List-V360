class CreateLista < ActiveRecord::Migration[7.2]
  def change
    create_table :lista do |t|
      t.string :nome

      t.timestamps
    end
  end
end
