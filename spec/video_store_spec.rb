require 'video_store'

RSpec.describe VideoStore do
    context 'when no movies are rented' do
        it 'the statement contains the customer name' do
            # Arrange
            video_store = VideoStore.new(customer_name: "Dave Richards")            

            # Act
            statement = video_store.statement_builder

            # Assert
            expect(statement).to include("Dave Richards")

        end

        it 'the statement contains no rentals' do
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

    context 'when a customer has rented one movie for one day' do
        xit 'records that movie on their statement' do
            # Arrange
            video_store = VideoStore.new(customer_name: "Dave Richards", movies: [])

            # Act

            # Assert

        end
    end
end


