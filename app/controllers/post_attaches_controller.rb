class PostAttachesController < ApplicationController
  before_action :set_post_attach, only: [:show, :edit, :update, :destroy]

  # GET /post_attaches
  # GET /post_attaches.json
  def index
    @post_attaches = PostAttach.all
  end

  # GET /post_attaches/1
  # GET /post_attaches/1.json
  def show
  end

  # GET /post_attaches/new
  def new
    @post_attach = PostAttach.new
  end

  # GET /post_attaches/1/edit
  def edit
  end

  # POST /post_attaches
  # POST /post_attaches.json
  def create
    @post_attach = PostAttach.new(post_attach_params)

    respond_to do |format|
      if @post_attach.save
        format.html { redirect_to @post_attach, notice: 'Post attach was successfully created.' }
        format.json { render :show, status: :created, location: @post_attach }
      else
        format.html { render :new }
        format.json { render json: @post_attach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_attaches/1
  # PATCH/PUT /post_attaches/1.json
  # def update
  #   respond_to do |format|
  #     if @post_attach.update(post_attach_params)
  #       format.html { redirect_to @post_attach, notice: 'Post attach was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @post_attach }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @post_attach.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def update
    respond_to do |format|
      if @post_attach.update(post_attach_params)
        format.html { redirect_to @post_attach.post, notice: 'Post attachment was successfully updated.' }
      end 
    end
  end 

  # DELETE /post_attaches/1
  # DELETE /post_attaches/1.json
  def destroy
    @post_attach.destroy
    respond_to do |format|
      format.html { redirect_to post_attaches_url, notice: 'Post attach was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_attach
      @post_attach = PostAttach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_attach_params
      params.require(:post_attach).permit(:post_id, :avatar)
    end
end
