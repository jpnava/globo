class ComidasController < ApplicationController
  # GET /comidas
  # GET /comidas.json
  def index
    @comidas = Comida.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comidas }
    end
  end

  # GET /comidas/1
  # GET /comidas/1.json
  def show
    @comida = Comida.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comida }
    end
  end

  # GET /comidas/new
  # GET /comidas/new.json
  def new
    @comida = Comida.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comida }
    end
  end

  # GET /comidas/1/edit
  def edit
    @comida = Comida.find(params[:id])
  end

  # POST /comidas
  # POST /comidas.json
  def create
    @comida = Comida.new(params[:comida])

    respond_to do |format|
      if @comida.save
        format.html { redirect_to @comida, notice: 'Comida was successfully created.' }
        format.json { render json: @comida, status: :created, location: @comida }
      else
        format.html { render action: "new" }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /comidas/1
  # PUT /comidas/1.json
  def update
    @comida = Comida.find(params[:id])

    respond_to do |format|
      if @comida.update_attributes(params[:comida])
        format.html { redirect_to @comida, notice: 'Comida was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @comida.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comidas/1
  # DELETE /comidas/1.json
  def destroy
    @comida = Comida.find(params[:id])
    @comida.destroy

    respond_to do |format|
      format.html { redirect_to comidas_url }
      format.json { head :ok }
    end
  end
end
