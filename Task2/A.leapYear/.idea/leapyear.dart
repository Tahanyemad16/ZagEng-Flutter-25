void main(){
  var year=2024;
  if(year%4==0) {
    if (year % 100 == 0) {
      if (year % 400 == 0)
        print("Leap Year");
      else
        print("Not Leap Year");
    } else {
      print("Leap Year");
    }
  }else
    print("Not Leap Year");
}