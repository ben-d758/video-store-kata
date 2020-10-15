class MovieRentals
    attr_accessor :movies

    def initialize(customer_name: "", movies: [])
        @customer_name = customer_name
        @movies = movies
    end

    def movies
        @movies
    end
end
