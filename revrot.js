function revrot(str, sz) {
    
    function sumOfCubesDiv2(value){
      return value.split("").reduce(function(sum, currentVal){
        return sum + Math.pow(currentVal, 3);
      }, 0) % 2 === 0;
    }
    
    function stringManipulation(chunk){
      if (sumOfCubesDiv2(chunk)){
         chunk = chunk.split("").reverse().join("");
      }
      else{
        chunk = chunk.split("");
        chunk.push(chunk.shift());
        chunk = chunk.join("");
      }
      return chunk;
    }
    
    if (sz <= 0 || sz > str.length || str.length === 0){
      return "";
    }
    else{
      var output = "";
      while(str.length >= sz){
        output += stringManipulation(str.substr(0, sz));
        str = str.substr(sz)
			}
    }
		return output;
}
