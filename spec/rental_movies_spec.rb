require 'rental_movies'

RSpec.describe MovieRentals do
    context 'given no movies are rented' do
        it 'returns an empty array of rentals' do
            # Arrange
            rentals_list = MovieRentals.new(customer_name: "Michael Dapper", movies: [])
            expected_output = []

            # Act
            movie_rentals = rentals_list.movies

            # Assert
            expect(movie_rentals).to eq(expected_output)
        end
    end
end