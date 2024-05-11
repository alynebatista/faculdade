class CreateAlunos < ActiveRecord::Migration[7.1]
  def change
    create_table :alunos do |t|
      t.string :nome_completo
      t.string :matricula
      t.date :data_nascimento
      t.string :curso

      t.timestamps
    end
  end
end
