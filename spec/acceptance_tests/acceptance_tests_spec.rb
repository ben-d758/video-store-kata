require 'video_store'

RSpec.describe 'given a statement is requested by Dave Richards' do
    context 'when there are currently no rentals' do
        it 'returns a statement with with no rentals, no fees and no frequent renter points' do
            # Arrange
            video_store = VideoStore.new(customer_name: "Dave Richards", movies: [])
            expected_statement = <<~STATEMENT 
                Welcome Dave Richards
                You have no rentals
                You owe £0.0
                You gained 0 frequent renter points
            STATEMENT


            # Act
            statement = video_store.statement_builder

            # Assert
            expect(statement).to eq(expected_statement)
        end
    end
end