import 'Book.dart';
import 'User.dart';

class Library
{
  List<Book> _books = [];
  List<user> _users = [];

  Library();
  void RegisterUser(user u)
  {
    _users.add(u);
    print("Registered Successfully");
  }
  void ShowAllBook()
  {
     if (_books.isEmpty)
       {
         print("No Books Available");
         return;
       }
     print("All Book :");
     print("================================");
     _books.forEach((book){
      book.display();
      print("=======");
    });
  }
  void AddBook(Book book)
  {
    _books.add(book);
  }
  void RemoveBook(Book book)
  {
    _books.remove(book);
  }
  void BorrowBook(Book book, user u)
  {
    u.BorrowBook(book);
  }
  void ReturnBook(Book book,user u)
  {
    u.returnBook(book);
  }
  List<Book> getBooks()
  {
    return _books;
  }
  List<user> getUsers()
  {
    return _users;
  }
}