class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end


  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.create( params[:id] )
    if @entry.save
      redirect_to "/entries/#{@entry.id}"
    else
      redirect_to "/posts/new"
    end
  end

  def update
    @entry = Entry.find( params[:id] )
    @entry.update( params[:entry] )
  end

    def edit
      @entry = Entry.find( params[:id] )
    end

    def show
         @entry = Entry.find( params[:id] )
    end

    def delete
      @entry = Entry.find( params[:id] )
      @entry.destroy
      redirect_to "/index"
    end
end
