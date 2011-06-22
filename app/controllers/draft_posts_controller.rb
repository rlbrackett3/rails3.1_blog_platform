class DraftPostsController < ApplicationController
  # GET /draft_posts
  # GET /draft_posts.json
  def index
    @draft_posts = DraftPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @draft_posts }
    end
  end

  # GET /draft_posts/1
  # GET /draft_posts/1.json
  def show
    @draft_post = DraftPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @draft_post }
    end
  end

  # GET /draft_posts/new
  # GET /draft_posts/new.json
  def new
    @draft_post = DraftPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @draft_post }
    end
  end

  # GET /draft_posts/1/edit
  def edit
    @draft_post = DraftPost.find(params[:id])
  end

  # POST /draft_posts
  # POST /draft_posts.json
  def create
    @draft_post = DraftPost.new(params[:draft_post])

    respond_to do |format|
      if @draft_post.save
        format.html { redirect_to @draft_post, notice: 'Draft post was successfully created.' }
        format.json { render json: @draft_post, status: :created, location: @draft_post }
      else
        format.html { render action: "new" }
        format.json { render json: @draft_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /draft_posts/1
  # PUT /draft_posts/1.json
  def update
    @draft_post = DraftPost.find(params[:id])

    respond_to do |format|
      if @draft_post.update_attributes(params[:draft_post])
        format.html { redirect_to @draft_post, notice: 'Draft post was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @draft_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /draft_posts/1
  # DELETE /draft_posts/1.json
  def destroy
    @draft_post = DraftPost.find(params[:id])
    @draft_post.destroy

    respond_to do |format|
      format.html { redirect_to draft_posts_url }
      format.json { head :ok }
    end
  end
end
