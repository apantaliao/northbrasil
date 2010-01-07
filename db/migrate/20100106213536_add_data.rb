class AddData < ActiveRecord::Migration
  def self.up
	Resultado.create(:etapa => 1, :equipe => 'dojo1', :cidade => 'sao paulo')
  end

  def self.down
  end
end
