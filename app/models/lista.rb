class Lista < ApplicationRecord
    has_many :tarefas, dependent: :destroy
    validates :nome, presence: true
  end
  