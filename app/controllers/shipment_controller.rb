class ShipmentController < ApplicationController
    def new
        @shipment = Shipment.new
    end
    def create
        @shipment=Shipment.new(sh_params)
        if @shipment.save
            puts "=====---------==============------------============------"
            puts "Message Sent"
            ShippingConfirmationMailer.shipping_confirmation_email.deliver_now
        else
            puts "=====---------==============------------============------"
            puts "Message Not Sent"
        end
    end
    private
    def sh_params
        params.require(:shipment).permit(:item)
    end
end