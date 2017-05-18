class PCommentsController < ApplicationController
  before_action :set_p_comment, only: [:show, :edit, :update, :destroy]

  # GET /p_comments
  # GET /p_comments.json
  def index
    @p_comments = PComment.all
  end

  # GET /p_comments/1
  # GET /p_comments/1.json
  def show
  end

  # GET /p_comments/new
  def new
    @p_comment = PComment.new
  end

  # GET /p_comments/1/edit
  def edit
  end

  # POST /p_comments
  # POST /p_comments.json
  def create
    @p_comment = PComment.new(p_comment_params)

    respond_to do |format|
      if @p_comment.save
        format.html { redirect_to @p_comment, notice: 'P comment was successfully created.' }
        format.json { render :show, status: :created, location: @p_comment }
      else
        format.html { render :new }
        format.json { render json: @p_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_comments/1
  # PATCH/PUT /p_comments/1.json
  def update
    respond_to do |format|
      if @p_comment.update(p_comment_params)
        format.html { redirect_to @p_comment, notice: 'P comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_comment }
      else
        format.html { render :edit }
        format.json { render json: @p_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_comments/1
  # DELETE /p_comments/1.json
  def destroy
    @p_comment.destroy
    respond_to do |format|
      format.html { redirect_to p_comments_url, notice: 'P comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_comment
      @p_comment = PComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_comment_params
      params.require(:p_comment).permit(:content)
    end
end
