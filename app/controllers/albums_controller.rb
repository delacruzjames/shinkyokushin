class AlbumsController < ApplicationController
  before_filter :find_dojo, except: :new

  def show
    #@album = @dojo.albums.find params[:id]
  end

  def new
    @album = Album.new
  end

  def create
    @album = @dojo.albums.build params[:album]
    @album.save
    redirect_to [@dojo, @album], notice: 'Album created successfully'
  end

  protected
  
    def find_dojo
      @dojo = Dojo.find params[:dojo_id]
    end
end
