class Aluno < ApplicationRecord
    validates :nome_completo, :matricula, :data_nascimento, :curso, presence: true
end
