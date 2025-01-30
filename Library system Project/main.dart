import 'dart:io';
import 'Book.dart';
import 'User.dart';
import 'Library.dart';

void main() {
  Library library = Library();

  while(true)
    {
      showMenu();
      stdout.write("Choose An Option : ");
      String? input = stdin.readLineSync();
      int option = int.parse(input!);
      switch (option) {
        case 1:
          RegisterUser(library);
        case 2:
          ShowALlBooks(library);
        case 3:
          AddNewBook(library);
        case 4:
          RemoveBook(library);
        case 5:
          BorrowBook(library);
        case 6:
          ReturnBook(library);
        case 7:
          print("baraka Ya 5oya");
          return ;
      }
    }

}

void showMenu() {
  print("---------------------------------------------------------------------");
  print("|                          Library Menu                             |");
  print("---------------------------------------------------------------------");
  print("|     1. Register User                                              |");
  print("|     2. Show All Books                                             |");
  print("|     3. Add New Book                                               |");
  print("|     4. Remove Book                                                |");
  print("|     5. Borrow Book                                                |");
  print("|     6. Return Book                                                |");
  print("|     7. Exit                                                       |");
  print("---------------------------------------------------------------------");
}

void RegisterUser(Library library) {
  String name;
  String password;
  stdout.write("User Name : ");
  name = stdin.readLineSync()!;
  stdout.write("Password :");
  password=stdin.readLineSync()!;
  user u = user();
  u.setName(name);
  library.RegisterUser(u);
}

void ShowALlBooks(Library library) {
  library.ShowAllBook();
}

void AddNewBook(Library library) {
  stdout.write("ID : ");
  int id = int.parse(stdin.readLineSync()!);
  stdout.write("Title : ");
  String title = stdin.readLineSync()!;
  stdout.write("Author : ");
  String author = stdin.readLineSync()!;
  Book book = Book();
  book.setId(id);
  book.setTitle(title);
  book.setAuthor(author);
  library.AddBook(book);
  print("Added Successfully");
}

void RemoveBook(Library library) {
  String title;
  Book b = Book();
  stdout.write("Title : ");
  title = stdin.readLineSync()!;
  library.getBooks().forEach((book) {
    if (book.getTitle() == title) {
      b =  book;
    }
  });
  library.RemoveBook(b);
}

void BorrowBook(Library library) {
  String title;
  stdout.write("Title : ");
  title = stdin.readLineSync()!;
  stdout.write("User Name : ");
  String username;
  username = stdin.readLineSync()!;
  user u = user();
  library.getUsers().forEach((user)
  {
    if(user.getName() == username)
      u = user;
  });
  library.getBooks().forEach((book) {
    if (book.getTitle() == title) {
      library.BorrowBook(book,u);
    }
  });
}
void ReturnBook(Library library) {
  String title;
  stdout.write("Title : ");
  title = stdin.readLineSync()!;
  stdout.write("User Name : ");
  String username;
  username = stdin.readLineSync()!;
  user u = user();
  library.getUsers().forEach((user)
  {
    if(user.getName() == username)
      u = user;
  });
  library.getBooks().forEach((book) {
    if (book.getTitle() == title) {
      library.ReturnBook(book,u);
    }
  });
}
