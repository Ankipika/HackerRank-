 function groupCheck(s){
   console.log(s);
   var pairs = {'}':'{', ']':'[',')':'('}
   var bracketStack = [];

   if (s.length === 0){
     return true;
   }
   s = s.split("");
   
   for(i = 0; i < s.length; i++){
     if (openBracketCharCheck(s[i])){
       bracketStack.unshift(s[i]); 
     }
     else if (pairs[s[i]] === bracketStack[0]){
       bracketStack.shift()
     }
     else{
       return false;
     }
   }
   return bracketLength === 0;
   
   function openBracketCharCheck(s) {
     return s === '{' || s === '[' || s === '(';
   }
 }