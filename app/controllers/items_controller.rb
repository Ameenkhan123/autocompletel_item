class ItemsController < ApplicationController
	# impressionist actions: [:show], unique: [:session_hash]
	# before_action :authenticate_user!, only: [:show]
	autocomplete   :item, :item_list
	def autocomplete_item_list
		# @items = params[:term] || nil
		# @items = []
		@items = Item.order(:item_list).where("item_list like ?", "%#{params[:item]}%")
		render json: @items.map(&:item_list)
	end

	def index
		@items = Item.all
		if params[:item]
			@items = Item.name_like("%#{params[:item]}%")
		else
		end
	end
	def new
		@item = Item.new
		@image = Image.new
	end
	def create
		@item = Item.new(item_params)

		respond_to do |format|
			if @item.save
				format.html { redirect_to @item, notice: 'Post was successfully created.'}
				format.json { render :show, status: :created, location: @item, fileID: @image.id  }
			else
				format.html { render :new }
				format.json { render json: @item.errors, status: :unprocessable_entity, fileID: @image.id }
			end
		end
	end

	def show
		@item = Item.find(params[:id])
	end
	def edit
		@item = Item.find(params[:id])
	end
	def update
		@item= Item.find(params[:id])
		if @item.update(item_params)
			redirect_to @item
		else
			render 'edit'
		end
	end
	def destroy
		@item = Item.find(params[:id])
		@item.destroy
		redirect_to items_path
	end

	def new_welcome
		@welcome = Welcome.new
	end
	def create_welcome
		@user = current_user
		@welcome = @user.welcome.new(welcome_params)
		# impressionist(@welcome, "message...")
		if @welcome.save
			redirect_to items_path
		else
			render 'new_welcome'
		end
	end
	def show_welcome
		if current_user.try(:admin)
			@welcomes = Welcome.approved.newest.page(params[:page]).per_page(5)
		else
			@welcome = Welcome.find(params[:id])
			@welcomes = Welcome.pending.newest.page(params[:welcome_params]).per_page(5)
			impressionist(@welcome, "message...")
		end
	end
	def is_approved
		@welcomes = Welcome.all.where(:pinreview => false)
	end
	private
	def item_params
		params.require(:item).permit(
			:item_list, :list, :item_img, 
			:item_title, :price,:tips, :impressions_count,:name,
			images_attributes: [:images, :_destroy])
	end
	def welcome_params
		params.require(:welcome).permit(:name, :user_id, :email,:item_id)
	end
end
