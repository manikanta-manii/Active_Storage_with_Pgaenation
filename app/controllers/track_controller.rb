class TrackController < ApplicationController
    def new
        @track = Track.new
    end 
    def create
        @track = Track.new(track_params)
        @track.save
        redirect_to show_track_path
    end

    def show
      
        @tracks = Track.all.paginate(page: params[:page], per_page: 2)
        
    end
    private
    def track_params
        params.require(:track).permit(:img,:aud)
    end
end