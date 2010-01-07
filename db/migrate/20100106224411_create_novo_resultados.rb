class CreateNovoResultados < ActiveRecord::Migration
  def self.up
    create_table :novo_resultados do |t|
      t.string :equipe
      t.integer :etapa
      t.string :cidade
      t.integer :pontos
      t.integer :posicao

      t.timestamps
    end
  end

  def self.down
    drop_table :novo_resultados
  end
end
