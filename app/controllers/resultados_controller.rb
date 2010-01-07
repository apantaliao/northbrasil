class ResultadosController < ApplicationController
  def index
    @resultados=Resultado.find(:all, :order => "etapa, posicao, equipe, pontos")
   
  end

  def filter
    @resultados=Resultado.find(:all, :conditions => "#{params[:criterio]}='#{params[:id]}'", :order => "etapa, posicao, equipe, pontos")
	#render index
  end

end
