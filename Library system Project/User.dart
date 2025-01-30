import 'Book.dart';
class user{
  String? _name;
  String? _password;
  List<int>_BorrowedBooksId=[];

  user();
  user.named(this._name,this._password);
  void setName(String name){
    this._name=name;
  }
  String? getName(){
    return _name;
  }

  void SetPassword(String password){
    this._password=password;
  }
  String? getPassword(){
    return _password;
  }

  void BorrowBook(Book book){
    if(!_BorrowedBooksId.contains(book.getId())) {
      _BorrowedBooksId.add(book.getId()!);
      book.borrowBook();
      print(" Borrowed");
    }else{
      print("Already Borrowed");
    }
  }
  void returnBook(Book book){
    if(_BorrowedBooksId.contains(book.getId())) {
      _BorrowedBooksId.remove(book.getId()!);
      book.returnBook();
      print("Returned");
    }else{
      print("Not Borrowed");
    }
  }
}