class VideoStore
    attr_accessor :customer_name, :movies

    def initialize(customer_name: "", movies: [])
        @customer_name = customer_name
        @movies = movies
    end

    def statement_builder
        <<~STATEMENT
            Welcome #{@customer_name}
            You have no rentals
            You owe £0.0
            You gained 0 frequent renter points
        STATEMENT
    end
end