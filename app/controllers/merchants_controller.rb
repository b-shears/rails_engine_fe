class MerchantsController < ApplicationController 

    def index 
        @merchants = MerchantFacade.new
    end 

    def show 
    end 
end 