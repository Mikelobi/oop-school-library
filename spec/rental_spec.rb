require './rental'
require './person'
require './book'

describe Rental do
    context 'testing the Rental class' do
        book = Book.new(title: 'Great Wall', author: 'luther', id: 3)
        person = Person.new(name: 'Collins', age: 11, id: 2, parent_permission: true)
        rental = Rental.new('11/10/2020', book, person)

        it 'should have a title' do
            expect(rental.book.title).to eq('Great Wall')
        end

        it 'person name should be Collins' do
            expect(rental.person.name).to eq('Collins')
        end
    end
end