class ShoppinglistsController < ApplicationController
  # GET /shoppinglists
  # GET /shoppinglists.json
  def index
    @shoppinglists = Shoppinglist.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shoppinglists }
    end
  end

  # GET /shoppinglists/1
  # GET /shoppinglists/1.json
  def show
    @shoppinglist = Shoppinglist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shoppinglist }
    end
  end

  # GET /shoppinglists/new
  # GET /shoppinglists/new.json
  def new
    @shoppinglist = Shoppinglist.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shoppinglist }
    end
  end

  # GET /shoppinglists/1/edit
  def edit
    @shoppinglist = Shoppinglist.find(params[:id])
  end

  # POST /shoppinglists
  # POST /shoppinglists.json
  def create
    @shoppinglist = Shoppinglist.new(params[:shoppinglist])

    respond_to do |format|
      if @shoppinglist.save
        format.html { redirect_to @shoppinglist, notice: 'Shoppinglist was successfully created.' }
        format.json { render json: @shoppinglist, status: :created, location: @shoppinglist }
      else
        format.html { render action: "new" }
        format.json { render json: @shoppinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shoppinglists/1
  # PUT /shoppinglists/1.json
  def update
    @shoppinglist = Shoppinglist.find(params[:id])

    respond_to do |format|
      if @shoppinglist.update_attributes(params[:shoppinglist])
        format.html { redirect_to @shoppinglist, notice: 'Shoppinglist was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @shoppinglist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppinglists/1
  # DELETE /shoppinglists/1.json
  def destroy
    @shoppinglist = Shoppinglist.find(params[:id])
    @shoppinglist.destroy

    respond_to do |format|
      format.html { redirect_to shoppinglists_url }
      format.json { head :ok }
    end
  end
end
