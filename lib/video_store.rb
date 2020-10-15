class VideoStore
    attr_accessor :customer_name,

    def initialize(customer_name: "", movies: [])
        @customer_name = customer_name
        @movies = movies
    end

end