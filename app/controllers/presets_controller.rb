class PresetsController < ApplicationController
  # GET /presets
  # GET /presets.json
  def index
    if params[:user_id].present?
      @presets = User.find(params[:user_id]).presets :include => :comments
    else
      @presets = Preset.all :include => :comments
    end
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @presets }
    end
  end

  # GET /presets/1
  # GET /presets/1.json
  def show
    @preset = Preset.find(params[:id])
    @commentable = @preset
    @comments = @commentable.comments
    @comment = Comment.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preset }
    end
  end

  # GET /presets/new
  # GET /presets/new.json
  def new
    @preset = Preset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @preset }
    end
  end

  # GET /presets/1/edit
  def edit
    @preset = Preset.find(params[:id])
  end

  # POST /presets
  # POST /presets.json
  def create
    @preset = Preset.new(params[:preset])
    @preset.user_id = current_user.id
    respond_to do |format|
      if @preset.save
        format.html { redirect_to @preset, notice: 'Preset was successfully created.' }
        format.json { render json: @preset, status: :created, location: @preset }
      else
        format.html { render action: "new" }
        format.json { render json: @preset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /presets/1
  # PUT /presets/1.json
  def update
    @preset = Preset.find(params[:id])
    @preset.user_id = current_user.id
    respond_to do |format|
      if @preset.update_attributes(params[:preset])
        format.html { redirect_to @preset, notice: 'Preset was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @preset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presets/1
  # DELETE /presets/1.json
  def destroy
    @preset = Preset.find(params[:id])
    @preset.destroy

    respond_to do |format|
      format.html { redirect_to presets_url }
      format.json { head :no_content }
    end
  end
end
