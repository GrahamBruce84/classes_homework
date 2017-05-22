class Library

  def initialize(books)
    @books = books
  end

  def list_of_books
    list = []
    for book in @books
      full_list = "#{book[:title]} was rented by #{book[:rental_details][:student_name]} and is due back on #{book[:rental_details][:date]}"
      list.push(full_list) 
    end
    return list
  end

  def rental_details
    list = []
    for book in @books
     rental_info = [book [:rental_details]]
     list.push(rental_info)
   end
   return rental_info
 end

 def add_new_book
  @books << [title: "Harry Potter", rental_details:{student_name:"", date: ""}]
 end

end