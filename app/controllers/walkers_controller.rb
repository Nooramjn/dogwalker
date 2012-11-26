class WalkersController < ApplicationController
  # GET /walkers
  # GET /walkers.json
  def index
  @title = "Walkers"
    @walkers = Walker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @walkers }
    end
  end

  # GET /walkers/1
  # GET /walkers/1.json
  def show
    @walker = Walker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @walker }
    end
  end

  # GET /walkers/new
  # GET /walkers/new.json
  def new
    @walker = Walker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @walker }
    end
  end

  # GET /walkers/1/edit
  def edit
    @walker = Walker.find(params[:id])
  end

  # POST /walkers
  # POST /walkers.json
  def create
    @walker = Walker.new(params[:walker])

    respond_to do |format|
      if @walker.save
        format.html { redirect_to @walker, notice: 'Walker was successfully created.' }
        format.json { render json: @walker, status: :created, location: @walker }
      else
        format.html { render action: "new" }
        format.json { render json: @walker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /walkers/1
  # PUT /walkers/1.json
  def update
    @walker = Walker.find(params[:id])

    respond_to do |format|
      if @walker.update_attributes(params[:walker])
        format.html { redirect_to @walker, notice: 'Walker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @walker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /walkers/1
  # DELETE /walkers/1.json
  def destroy
    @walker = Walker.find(params[:id])
    @walker.destroy

    respond_to do |format|
      format.html { redirect_to walkers_url }
      format.json { head :no_content }
    end
  end
end
