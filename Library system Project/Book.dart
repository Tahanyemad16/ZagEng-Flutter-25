class Book{
  String? _title;
  int? _id;
  String? _author;
  int _totalCopies = 5;
  int availableCopies=5;

  Book();
  Book.named(this._title,this._id,this._author,this._totalCopies);

  void setTitle(String title){
    this._title=title;
  }
  String? getTitle(){
    return _title;
  }
  void setId(int id){
    this._id=id;
  }
  int? getId() => _id;
  void setAuthor(String author){ this._author=author; }

  String? getAuthor()=> _author;

  void display(){
    print("ID : $_id");
    print("Title : $_title");
    print("Author : $_author");
    if(availableCopies == 0){
      print("Not Available");
    }else{
      print("Available");
    }
  }
  void borrowBook() {
    if (availableCopies > 0) {
      availableCopies--;
    } else {
      print('No Copies Available For "$_title".');
    }
  }

  void returnBook() {
    if (availableCopies < _totalCopies) {
      availableCopies++;
    }
  }
}
