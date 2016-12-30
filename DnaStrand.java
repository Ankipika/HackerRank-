public class DnaStrand {
  public static String makeComplement(String dna) {
    String output = "";
    String [] dnaArray = dna.split("");
    for(String base : dnaArray){
    	output += getDNACompliment(base);
		}
    return output;
  }

	private static String getDNACompliment(String base){
      String complement = "";
      switch (base){
        case "A": complement = "T";
                  break;
        case "T": complement = "A";
                 break;
        case "G": complement = "C";
                  break;
        case "C": complement = "G";
                  break;
      }
      return complement;
  }
}

