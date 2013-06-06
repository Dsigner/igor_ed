class SgoalsController < ApplicationController
  # GET /sgoals
  # GET /sgoals.json
  def index
    @sgoals = Sgoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sgoals }
    end
  end

  # GET /sgoals/1
  # GET /sgoals/1.json
  def show
    @sgoal = Sgoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sgoal }
    end
  end

  # GET /sgoals/new
  # GET /sgoals/new.json
  def new
    @sgoal = Sgoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sgoal }
    end
  end

  # GET /sgoals/1/edit
  def edit
    @sgoal = Sgoal.find(params[:id])
  end

  # POST /sgoals
  # POST /sgoals.json
  def create
    @sgoal = Sgoal.new(params[:sgoal])

    respond_to do |format|
      if @sgoal.save
        format.html { redirect_to @sgoal, notice: 'Sgoal was successfully created.' }
        format.json { render json: @sgoal, status: :created, location: @sgoal }
      else
        format.html { render action: "new" }
        format.json { render json: @sgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sgoals/1
  # PUT /sgoals/1.json
  def update
    @sgoal = Sgoal.find(params[:id])

    respond_to do |format|
      if @sgoal.update_attributes(params[:sgoal])
        format.html { redirect_to @sgoal, notice: 'Sgoal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sgoals/1
  # DELETE /sgoals/1.json
  def destroy
    @sgoal = Sgoal.find(params[:id])
    @sgoal.destroy

    respond_to do |format|
      format.html { redirect_to sgoals_url }
      format.json { head :no_content }
    end
  end
end
