class CreateTarefas < ActiveRecord::Migration[7.2]
  def change
    create_table :tarefas do |t|
      t.string :nome
      t.references :lista, null: false, foreign_key: true

      t.timestamps
    end
  end
end
