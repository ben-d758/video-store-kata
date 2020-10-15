class VideoStore
    attr_accessor :customer_name, :movies

    def initialize(customer_name: "", movies: [])
        @customer_name = customer_name
        @movies = movies
    end

    def statement_builder
        return @customer_name
    end
end