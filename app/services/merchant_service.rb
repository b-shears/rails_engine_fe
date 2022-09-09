class MerchantService

    def get_all_merchants
        response = conn.get("/api/v1/merchants")
        json = JSON.parse(response.body, symbolize_names: true) 
    end 

    private 

    def conn
        response = Faraday.new("http://localhost:3000")
    end 

end 