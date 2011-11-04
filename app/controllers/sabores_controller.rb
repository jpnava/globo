class SaboresController < ApplicationController
  # GET /sabores
  # GET /sabores.json
  def index
    @sabores = Sabor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sabores }
    end
  end

  # GET /sabores/1
  # GET /sabores/1.json
  def show
    @sabor = Sabor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sabor }
    end
  end

  # GET /sabores/new
  # GET /sabores/new.json
  def new
    @sabor = Sabor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sabor }
    end
  end

  # GET /sabores/1/edit
  def edit
    @sabor = Sabor.find(params[:id])
  end

  # POST /sabores
  # POST /sabores.json
  def create
    @sabor = Sabor.new(params[:sabor])

    respond_to do |format|
      if @sabor.save
        format.html { redirect_to @sabor, notice: 'Sabor was successfully created.' }
        format.json { render json: @sabor, status: :created, location: @sabor }
      else
        format.html { render action: "new" }
        format.json { render json: @sabor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sabores/1
  # PUT /sabores/1.json
  def update
    @sabor = Sabor.find(params[:id])

    respond_to do |format|
      if @sabor.update_attributes(params[:sabor])
        format.html { redirect_to @sabor, notice: 'Sabor was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sabor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sabores/1
  # DELETE /sabores/1.json
  def destroy
    @sabor = Sabor.find(params[:id])
    @sabor.destroy

    respond_to do |format|
      format.html { redirect_to sabores_url }
      format.json { head :ok }
    end
  end
end
