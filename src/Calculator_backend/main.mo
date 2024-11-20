import Float "mo:base/Float"


actor Web3Calculator{
   var cell : Float = 0;

  // Addition +
  public func addition(n : Float) : async Float {
    cell += n;
    cell;
  };

  // Subtraction -
  public func substraction(n : Float) : async Float {
    cell -= n;
    cell;
  };

  // Multiplication *
  public func multiplication(n : Float) : async Float {
    cell *= n;
    cell;
  };

  // Division /
  public func division(n : Float) : async ?Float {

    if (n == 0) {
      return null;
    } else {
      cell /= n;
      ?cell;
    };
  };

  // Exponential **
 public func exp(n : Float) : async Float {
  cell **= n;
  cell;
  };


  // Resets the state of the cell variable
  public func resetl() : async Float {
    cell := 0;
    cell;
  };
   public func Nat2Hex(number : Nat) : async Text {
    let hexChars:[Text]= ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"];
    var result : Text = "";
    var n = number;

    // Special Case
    if(n==0){
      return "0"
    };

    while (n > 0){
      let remainder= n%16;
      result := hexChars[remainder] #result;
      n := n/16;
    };
    return result;
  };
};
