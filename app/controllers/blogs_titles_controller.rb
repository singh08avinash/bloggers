class BlogsTitlesController < ApplicationController
  before_action :set_blogs_title, only: [:show, :edit, :update, :destroy]

  # GET /blogs_titles
  # GET /blogs_titles.json
  def index
    @blogs_titles = BlogsTitle.all
  end

  # GET /blogs_titles/1
  # GET /blogs_titles/1.json
  def show
  end

  # GET /blogs_titles/new
  def new
    @blogs_title = BlogsTitle.new
  end

  # GET /blogs_titles/1/edit
  def edit
  end

  # POST /blogs_titles
  # POST /blogs_titles.json
  def create
    @blogs_title = current_user.blogs_titles.build(blogs_title_params)

    respond_to do |format|
      if @blogs_title.save
        format.html { redirect_to @blogs_title, notice: 'Blogs title was successfully created.' }
        format.json { render :show, status: :created, location: @blogs_title }
      else
        format.html { render :new }
        format.json { render json: @blogs_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs_titles/1
  # PATCH/PUT /blogs_titles/1.json
  def update
    respond_to do |format|
      if @blogs_title.update(blogs_title_params)
        format.html { redirect_to @blogs_title, notice: 'Blogs title was successfully updated.' }
        format.json { render :show, status: :ok, location: @blogs_title }
      else
        format.html { render :edit }
        format.json { render json: @blogs_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs_titles/1
  # DELETE /blogs_titles/1.json
  def destroy
    @blogs_title.destroy
    respond_to do |format|
      format.html { redirect_to blogs_titles_url, notice: 'Blogs title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blogs_title
      @blogs_title = BlogsTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blogs_title_params
      params.require(:blogs_title).permit(:name, :body)
    end
end
