class NovoResultado < ActiveRecord::Base
  validates_presence_of :etapa, :equipe
end
