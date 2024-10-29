class AddConcluidaToTarefas < ActiveRecord::Migration[7.2]
  def change
    add_column :tarefas, :concluida, :boolean
  end
end
