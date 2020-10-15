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




