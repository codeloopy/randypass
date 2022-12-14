class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :item_owner, only: %i[ show edit destroy]

  # GET /items
  def index
    @items = current_user.items
  end

  # GET /items/1
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id

    if @item.save
      redirect_to @item, notice: "Item was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      redirect_to @item, notice: "Item was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
    redirect_to items_url, notice: "Item was successfully destroyed."
  end

  def item_owner
    unless @item.user_id == current_user.id
      flash[:notice] = 'Access denied as you are not owner of this Job'
      redirect_to items_path
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:item_name, :website, :website_username, :website_watchword, :item_notes, :user_id)
    end
end
