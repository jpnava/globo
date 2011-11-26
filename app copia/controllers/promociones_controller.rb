class PromocionesController < ApplicationController
  # GET /promociones
  # GET /promociones.json
  def index
    @promociones = Promocion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @promociones }
    end
  end

  # GET /promociones/1
  # GET /promociones/1.json
  def show
    @promocion = Promocion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @promocion }
    end
  end

  # GET /promociones/new
  # GET /promociones/new.json
  def new
    @promocion = Promocion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @promocion }
    end
  end

  # GET /promociones/1/edit
  def edit
    @promocion = Promocion.find(params[:id])
  end

  # POST /promociones
  # POST /promociones.json
  def create
    @promocion = Promocion.new(params[:promocion])

    respond_to do |format|
      if @promocion.save
        format.html { redirect_to @promocion, notice: 'Promocion was successfully created.' }
        format.json { render json: @promocion, status: :created, location: @promocion }
      else
        format.html { render action: "new" }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /promociones/1
  # PUT /promociones/1.json
  def update
    @promocion = Promocion.find(params[:id])

    respond_to do |format|
      if @promocion.update_attributes(params[:promocion])
        format.html { redirect_to @promocion, notice: 'Promocion was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @promocion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promociones/1
  # DELETE /promociones/1.json
  def destroy
    @promocion = Promocion.find(params[:id])
    @promocion.destroy

    respond_to do |format|
      format.html { redirect_to promociones_url }
      format.json { head :ok }
    end
  end
end
