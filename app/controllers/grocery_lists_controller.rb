class GroceryListsController < ApplicationController
  
  # GET /grocery_lists
    # GET /grocery_lists.json
    def index
      @grocery_lists = GroceryList.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @grocery_lists }
      end
    end
  
  def new
      @grocery_list = GroceryList.new
      2.times { @grocery_list.items.build }
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @grocery_list }
      end
  end
  
  def create
      @grocery_list = GroceryList.new(params[:grocery_list])

      respond_to do |format|
        if @grocery_list.save

          format.html { redirect_to @grocery_list, notice: 'Grocery list was successfully created.' }
          format.json { render json: @grocery_list, status: :created, location: @grocery_list }
        else
          format.html { render action: "new" }
          format.json { render json: @grocery_list.errors, status: :unprocessable_entity }
        end
      end
  end
  
  def update
    @grocery_list = GroceryList.find(params[:id])

    respond_to do |format|
      if @grocery_list.update_attributes(params[:grocery_list])
        format.html { redirect_to @grocery_list, notice: 'Grocery list was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grocery_list.errors, status: :unprocessable_entity }
      end
    end
  end
 
  
  
  def edit
    @grocery_list = GroceryList.find(params[:id])
  end
  
    # GET /grocery_lists/1
      # GET /grocery_lists/1.json
  def show
    @grocery_list = GroceryList.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grocery_list }
    end
  end
  
  
end
