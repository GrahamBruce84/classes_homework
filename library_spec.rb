require ('minitest/autorun')
require ('minitest/rg')
require_relative ('library')

class TestLibrary < Minitest::Test

  def setup()
    book1 = {title: "Lord of the Rings", rental_details:{student_name: "Graham", date: "22/05/17"}}
    book2 = {title: "Enders Game", rental_details:{student_name: "Tasha", date: "01/07/17"}}
    book3 = {title: "I am number 4", rental_details:{student_name: "Chris", date: "02/01/17"}}

    books = [book1, book2, book3]
    @library = Library.new(books)
  end

def test_list_of_books
  expected = ["Lord of the Rings was rented by Graham and is due back on 22/05/17", "Enders Game was rented by Tasha and is due back on 01/07/17", "I am number 4 was rented by Chris and is due back on 02/01/17"]
  assert_equal(expected, @library.list_of_books())
end

def test_rental_details
  expected = [student_name: "Graham", date: "22/05/17", student_name: "Tasha", date: "01/07/17", student_name: "Chris", date: "02/01/17"]
  assert_equal(expected, @library.rental_details())
end

def test_add_new_book
  expected = [title: "Harry Potter", rental_details:{student_name:"", date: ""}]
  assert_equal(expected, @library.add_new_book())
end


end