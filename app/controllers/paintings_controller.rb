class PaintingsController < ApplicationController

    def index
        @paintings = Painting.order('created_at DESC')
     end


    def show
      @painting = Painting.find(params[:id])

    end

  
end
