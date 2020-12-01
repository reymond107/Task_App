class CategoriesController < ApplicationController
    #   before_action :set_category, only: [:show, :edit, :update, :destroy]
    def index
        @categories = Category.all
      end
    
      def new 
          @category = Category.new
      end
    
      def create
          @category = Category.new(category_params)
    
          if @category.save
              redirect_to categories_path
          else 
              render :new
          end
      end
    
      def update
          @category = Category.find(params[:id])
    
          if @category.update(category_params)
              redirect_to categories_path
          else
              render :edit
          end
      end
    
      def show 
          @category = Category.find(params[:id])
      end
    
      def delete
          @category = Category.find(params[:id])
          @category.delete
          redirect_to categories_path
      end
    
      def edit
          @category = Category.find(params[:id])
      end
    
      private
    
      def category_params
          params.require(:category).permit(:title, :description)
      end
end
