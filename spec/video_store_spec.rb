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
                Rental Record for Dave Richards
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
        it 'records the movie on their statement' do
            # Arrange
            video_store = VideoStore.new(customer_name: "Dave Richards", movies: ["Transporter"])

            expected_statement = <<~STATEMENT
                Rental Record for Dave Richards
                Transporter £2.0
                You owe £2.0
                You gained 1 frequent renter points
            STATEMENT

            # Act
            statement = video_store.statement_builder

            # Assert
            expect(statement).to eq(expected_statement)
        end

        it 'records a different movie on their statement' do
            # Arrange
            video_store = VideoStore.new(customer_name: "Dave Richards", movies: ["Triple Frontier"])

            expected_statement = <<~STATEMENT
                Rental Record for Dave Richards
                Triple Frontier £2.0
                You owe £2.0
                You gained 1 frequent renter points
            STATEMENT

            # Act
            statement = video_store.statement_builder

            # Assert
            expect(statement).to eq(expected_statement)
        end
    end
end


