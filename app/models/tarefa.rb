class Tarefa < ApplicationRecord
  belongs_to :lista
  validates :nome, presence: true
end
