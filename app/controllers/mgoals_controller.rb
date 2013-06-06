class MgoalsController < ApplicationController
  # GET /mgoals
  # GET /mgoals.json
  def index
    @mgoals = Mgoal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mgoals }
    end
  end

  # GET /mgoals/1
  # GET /mgoals/1.json
  def show
    @mgoal = Mgoal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mgoal }
    end
  end

  # GET /mgoals/new
  # GET /mgoals/new.json
  def new
    @mgoal = Mgoal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mgoal }
    end
  end

  # GET /mgoals/1/edit
  def edit
    @mgoal = Mgoal.find(params[:id])
  end

  # POST /mgoals
  # POST /mgoals.json
  def create
    @mgoal = Mgoal.new(params[:mgoal])

    respond_to do |format|
      if @mgoal.save
        format.html { redirect_to @mgoal, notice: 'Mgoal was successfully created.' }
        format.json { render json: @mgoal, status: :created, location: @mgoal }
      else
        format.html { render action: "new" }
        format.json { render json: @mgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mgoals/1
  # PUT /mgoals/1.json
  def update
    @mgoal = Mgoal.find(params[:id])

    respond_to do |format|
      if @mgoal.update_attributes(params[:mgoal])
        format.html { redirect_to @mgoal, notice: 'Mgoal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mgoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mgoals/1
  # DELETE /mgoals/1.json
  def destroy
    @mgoal = Mgoal.find(params[:id])
    @mgoal.destroy

    respond_to do |format|
      format.html { redirect_to mgoals_url }
      format.json { head :no_content }
    end
  end
end
