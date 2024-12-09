class HotelsController < ApplicationController
    def index
         @hotels = Hotel.all 
    end

    def show
        @hotel = Hotel.find(params[:id]) 
    end

    def new 
        @hotel = Hotel.new 
    end 
    def create 
        @hotel = Hotel.new(hotel_params) 
        if @hotel.save
             redirect_to @hotel, notice: 'Hotel was successfully created.' 
            else 
                render :new 
        end 
    end 
    def edit 
        @hotel = Hotel.find(params[:id]) 
    end
     def update
         @hotel = Hotel.find(params[:id]) 
         if @hotel.update(hotel_params) 
            redirect_to @hotel, notice: 'Hotel was successfully updated.' 
        else 
            render :edit 
        end 
    end 
    def destroy 
        @hotel = Hotel.find(params[:id]) 
        @hotel.destroy 
        redirect_to hotels_url, notice: 'Hotel was successfully destroyed.' 
    end 
    
    private 
    def hotel_params
         params.require(:hotel).permit(:name, :address, :rating) 
    end
end
