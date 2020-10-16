class VideoStore
    attr_accessor :customer_name, :movies

    def initialize(customer_name: "", movies: [])
        @customer_name = customer_name
        @movies = movies
    end

    def statement_builder
        if movies.empty?
            <<~STATEMENT
                Rental Record for #{customer_name}
                You have no rentals
                You owe £0.0
                You gained 0 frequent renter points
            STATEMENT

        else
            <<~STATEMENT
                Rental Record for #{customer_name}
                #{create_movie_line(movies)}
                You owe £2.0
                You gained 1 frequent renter points
            STATEMENT
        end
    end

    def create_movie_line(movies)
        movie_line = ''
        movies.each do |movie|
            movie_line = movie + " £2.0"
        end
        movie_line
    end
end

# dynamically include cost of movie

# MovieTitles = {
#     RegularMovies => ["Transformers","Triple Frontier", "The Expert Coder"]
#     NewReleases => [],
#     ChildrenMovies => []
# }
