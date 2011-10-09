class MicrohowlsController < ApplicationController
  # GET /microhowls
  # GET /microhowls.xml
  def index
    @microhowls = Microhowl.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @microhowls }
    end
  end

  # GET /microhowls/1
  # GET /microhowls/1.xml
  def show
    @microhowl = Microhowl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @microhowl }
    end
  end

  # GET /microhowls/new
  # GET /microhowls/new.xml
  def new
    @microhowl = Microhowl.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @microhowl }
    end
  end

  # GET /microhowls/1/edit
  def edit
    @microhowl = Microhowl.find(params[:id])
  end

  # POST /microhowls
  # POST /microhowls.xml
  def create
    @microhowl = Microhowl.new(params[:microhowl])

    respond_to do |format|
      if @microhowl.save
        format.html { redirect_to(@microhowl, :notice => 'Microhowl was successfully created.') }
        format.xml  { render :xml => @microhowl, :status => :created, :location => @microhowl }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @microhowl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /microhowls/1
  # PUT /microhowls/1.xml
  def update
    @microhowl = Microhowl.find(params[:id])

    respond_to do |format|
      if @microhowl.update_attributes(params[:microhowl])
        format.html { redirect_to(@microhowl, :notice => 'Microhowl was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @microhowl.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /microhowls/1
  # DELETE /microhowls/1.xml
  def destroy
    @microhowl = Microhowl.find(params[:id])
    @microhowl.destroy

    respond_to do |format|
      format.html { redirect_to(microhowls_url) }
      format.xml  { head :ok }
    end
  end
end
