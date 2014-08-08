class StoresController < ApplicationController
	before_action :set_store, only: [:show, :edit, :update, :destroy]

	def index
		@stores = Store.all
	end

	def new
		@store = Store.new
	end

	def create
		@store = Store.create(store_params)
		redirect_to stores_path
	end

	def show
	end

	def edit
	end

	def update
		respond_to do |format|
    	if @store.update(store_params)
        	format.html { redirect_to @store, notice: 'Store was successfully updated.' }
        else
        	format.html { render :edit }
      	end
    	end
	end


	def destroy
		@store.destroy
		redirect_to :back
	end


	private
	def set_store
		@store = Store.find(params[:id])
	end

	def store_params
		params.require(:store).permit(:name)
	end



end