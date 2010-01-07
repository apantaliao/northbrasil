class CreateResultados < ActiveRecord::Migration
  def self.up
    create_table :resultados do |t|
      t.integer :etapa
      t.string :equipe
      t.string :cidade
      t.integer :posicao
      t.integer :pontos

      t.timestamps
    end
  end

  def self.down
    drop_table :resultados
  end
end
