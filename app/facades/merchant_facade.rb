class MerchantFacade 
    def service 
        MerchantService.new
    end 

    def all_merchants 
        service.get_all_merchants[:data].map do |merchant_data|
            Merchant.new(merchant_data)
        end 
    end 
end 