class NovoResultadosController < ApplicationController
  # GET /novo_resultados
  # GET /novo_resultados.xml
  def index
    @novo_resultados = NovoResultado.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @novo_resultados }
    end
  end

  # GET /novo_resultados/1
  # GET /novo_resultados/1.xml
  def show
    @novo_resultado = NovoResultado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @novo_resultado }
    end
  end

  # GET /novo_resultados/new
  # GET /novo_resultados/new.xml
  def new
    @novo_resultado = NovoResultado.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @novo_resultado }
    end
  end

  # GET /novo_resultados/1/edit
  def edit
    @novo_resultado = NovoResultado.find(params[:id])
  end

  # POST /novo_resultados
  # POST /novo_resultados.xml
  def create
    @novo_resultado = NovoResultado.new(params[:novo_resultado])

    respond_to do |format|
      if @novo_resultado.save
        flash[:notice] = 'NovoResultado was successfully created.'
        format.html { redirect_to(@novo_resultado) }
        format.xml  { render :xml => @novo_resultado, :status => :created, :location => @novo_resultado }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @novo_resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /novo_resultados/1
  # PUT /novo_resultados/1.xml
  def update
    @novo_resultado = NovoResultado.find(params[:id])

    respond_to do |format|
      if @novo_resultado.update_attributes(params[:novo_resultado])
        flash[:notice] = 'NovoResultado was successfully updated.'
        format.html { redirect_to(@novo_resultado) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @novo_resultado.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /novo_resultados/1
  # DELETE /novo_resultados/1.xml
  def destroy
    @novo_resultado = NovoResultado.find(params[:id])
    @novo_resultado.destroy

    respond_to do |format|
      format.html { redirect_to(novo_resultados_url) }
      format.xml  { head :ok }
    end
  end
end
