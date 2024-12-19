void main(){
  var number=1;
  while(number<=9){
    for(int i=1;i<=12;i++) {
      var result=i*number;
      print("$number * $i = $result");
    }
    number++;
  }
}