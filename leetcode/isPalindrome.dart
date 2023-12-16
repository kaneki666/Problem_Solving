bool isPalindrome(int x) {
  String inverse = '';
 List<String> listString = x.toString().split("");
 for(int x = listString.length - 1; x > -1; x --){
   inverse  += listString[x];
 }
  return x.toString() == inverse ? true: false;
}
