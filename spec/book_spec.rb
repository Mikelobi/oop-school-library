require './book'

describe Book do
    context 'testing Book class' do
        it 'must be instatiated' do
            title = 'What the wise man fear'
            author = 'William'
           rentals = '2022/07/24'
           id = 12

           book = Book.new(title: title, author: author, id: id)
           expect(book). to be_instance_of Book
           expect(book.add_rental(rentals)). to match(['2022/07/24'])
        end
    end
end