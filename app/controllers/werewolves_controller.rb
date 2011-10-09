class WerewolvesController < ApplicationController
  # GET /werewolves
  # GET /werewolves.xml
  def index
    @werewolves = Werewolf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @werewolves }
    end
  end

  # GET /werewolves/1
  # GET /werewolves/1.xml
  def show
    @werewolf = Werewolf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @werewolf }
    end
  end

  # GET /werewolves/new
  # GET /werewolves/new.xml
  def new
    @werewolf = Werewolf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @werewolf }
    end
  end

  # GET /werewolves/1/edit
  def edit
    @werewolf = Werewolf.find(params[:id])
  end

  # POST /werewolves
  # POST /werewolves.xml
  def create
    @werewolf = Werewolf.new(params[:werewolf])

    respond_to do |format|
      if @werewolf.save
        format.html { redirect_to(@werewolf, :notice => 'Werewolf was successfully created.') }
        format.xml  { render :xml => @werewolf, :status => :created, :location => @werewolf }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @werewolf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /werewolves/1
  # PUT /werewolves/1.xml
  def update
    @werewolf = Werewolf.find(params[:id])

    respond_to do |format|
      if @werewolf.update_attributes(params[:werewolf])
        format.html { redirect_to(@werewolf, :notice => 'Werewolf was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @werewolf.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /werewolves/1
  # DELETE /werewolves/1.xml
  def destroy
    @werewolf = Werewolf.find(params[:id])
    @werewolf.destroy

    respond_to do |format|
      format.html { redirect_to(werewolves_url) }
      format.xml  { head :ok }
    end
  end
end
